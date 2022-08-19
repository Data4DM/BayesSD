import numpy as np
from scipy.stats import norm

from aria.core.models import Model

## Scalar distance
def mape(a, b):
    return np.mean(np.abs(a - b) / (np.abs(a)))


def smape(a, b):
    return np.mean(np.abs(a - b) / ((np.abs(a) + np.abs(b)) / 2))


def rmse(a, b):
    return np.sqrt(np.mean((a - b) ** 2))


## Model distance
def bic(m: Model, df):
    x, y = df['y'], m.predict(df)['yhat']
    log_lik = np.sum(norm.logpdf(x - y, scale=rmse(x, y)))
    return (len(m.get_features_list()) + 1) * np.log(df.shape[0]) - 2 * log_lik


## Time series distance
def dtw_path(s1, s2, global_constraint=None, sakoe_chiba_radius=None,
             itakura_max_slope=None):
    r"""Compute Dynamic Time Warping (DTW) similarity measure between
    (possibly multidimensional) time series and return both the path and the
    similarity.
    DTW is computed as the Euclidean distance between aligned time series,
    i.e., if :math:`\pi` is the alignment path:
    .. math::
        DTW(X, Y) = \sqrt{\sum_{(i, j) \in \pi} (X_{i} - Y_{j})^2}
    It is not required that both time series share the same size, but they must
    be the same dimension. DTW was originally presented in [1]_ and is
    discussed in more details in our :ref:`dedicated user-guide page <dtw>`.
    Parameters
    ----------
    s1
        A time series.
    s2
        Another time series.
    global_constraint : {"itakura", "sakoe_chiba"} or None (default: None)
        Global constraint to restrict admissible paths for DTW.
    sakoe_chiba_radius : int or None (default: None)
        Radius to be used for Sakoe-Chiba band global constraint.
        If None and `global_constraint` is set to "sakoe_chiba", a radius of
        1 is used.
        If both `sakoe_chiba_radius` and `itakura_max_slope` are set,
        `global_constraint` is used to infer which constraint to use among the
        two. In this case, if `global_constraint` corresponds to no global
        constraint, a `RuntimeWarning` is raised and no global constraint is
        used.
    itakura_max_slope : float or None (default: None)
        Maximum slope for the Itakura parallelogram constraint.
        If None and `global_constraint` is set to "itakura", a maximum slope
        of 2. is used.
        If both `sakoe_chiba_radius` and `itakura_max_slope` are set,
        `global_constraint` is used to infer which constraint to use among the
        two. In this case, if `global_constraint` corresponds to no global
        constraint, a `RuntimeWarning` is raised and no global constraint is
        used.
    Returns
    -------
    list of integer pairs
        Matching path represented as a list of index pairs. In each pair, the
        first index corresponds to s1 and the second one corresponds to s2
    float
        Similarity score
    Examples
    --------
    >>> path, dist = dtw_path([1, 2, 3], [1., 2., 2., 3.])
    >>> path
    [(0, 0), (1, 1), (1, 2), (2, 3)]
    >>> dist
    0.0
    >>> dtw_path([1, 2, 3], [1., 2., 2., 3., 4.])[1]
    1.0
    See Also
    --------
    dtw : Get only the similarity score for DTW
    cdist_dtw : Cross similarity matrix between time series datasets
    dtw_path_from_metric : Compute a DTW using a user-defined distance metric
    References
    ----------
    .. [1] H. Sakoe, S. Chiba, "Dynamic programming algorithm optimization for
           spoken word recognition," IEEE Transactions on Acoustics, Speech and
           Signal Processing, vol. 26(1), pp. 43--49, 1978.
    """
    s1 = to_time_series(s1, remove_nans=True)
    s2 = to_time_series(s2, remove_nans=True)

    if len(s1) == 0 or len(s2) == 0:
        raise ValueError(
            "One of the input time series contains only nans or has zero length.")

    if s1.shape[1] != s2.shape[1]:
        raise ValueError("All input time series must have the same feature size.")

    mask = compute_mask(
        s1, s2, GLOBAL_CONSTRAINT_CODE[global_constraint],
        sakoe_chiba_radius, itakura_max_slope
    )
    acc_cost_mat = njit_accumulated_matrix(s1, s2, mask=mask)
    path = _return_path(acc_cost_mat)
    return path, np.sqrt(acc_cost_mat[-1, -1])
## implement compute_mask, GLOBAL_CONSTRAINT_CODE, njit_accumulated_matrix

def to_time_series(ts, remove_nans=False):
    """Transforms a time series so that it fits the format used in ``tslearn``
    models.
    Parameters
    ----------
    ts : array-like
        The time series to be transformed.
    remove_nans : bool (default: False)
        Whether trailing NaNs at the end of the time series should be removed
        or not
    Returns
    -------
    np.ndarray of shape (sz, d)
        The transformed time series. This is always guaraneteed to be a new
        time series and never just a view into the old one.
    Examples
    --------
    >>> to_time_series([1, 2])
    array([[1.],
           [2.]])
    >>> to_time_series([1, 2, np.nan])
    array([[ 1.],
           [ 2.],
           [nan]])
    >>> to_time_series([1, 2, np.nan], remove_nans=True)
    array([[1.],
           [2.]])
    See Also
    --------
    to_time_series_dataset : Transforms a dataset of time series
    """
    ts_out = np.array(ts, copy=True)
    if ts_out.ndim <= 1:
        ts_out = ts_out.reshape((-1, 1))
    if ts_out.dtype != float:
        ts_out = ts_out.astype(float)
    if remove_nans:
        ts_out = ts_out[:ts_size(ts_out)]
    return ts_out

def ts_size(ts):
    """Returns actual time series size.
    Final timesteps that have `NaN` values for all dimensions will be removed
    from the count. Infinity and negative infinity ar considered valid time
    series values.
    Parameters
    ----------
    ts : array-like
        A time series.
    Returns
    -------
    int
        Actual size of the time series.
    Examples
    --------
    >>> ts_size([1, 2, 3, numpy.nan])
    3
    >>> ts_size([1, numpy.nan])
    1
    >>> ts_size([numpy.nan])
    0
    >>> ts_size([[1, 2],
    ...          [2, 3],
    ...          [3, 4],
    ...          [numpy.nan, 2],
    ...          [numpy.nan, numpy.nan]])
    4
    >>> ts_size([numpy.nan, 3, numpy.inf, numpy.nan])
    3
    """
    ts_ = to_time_series(ts)
    sz = ts_.shape[0]
    while sz > 0 and np.all(np.isnan(ts_[sz - 1])):
        sz -= 1
    return sz