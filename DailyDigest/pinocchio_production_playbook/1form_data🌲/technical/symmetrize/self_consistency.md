- redundant information from symmetry of $\theta \rightarrow y$ and $y \rightarrow \tilde{\theta}$ provides diagnostics that tests whether prior and posterior is exchangeable given data

$$
\begin{aligned}
\pi\left(\theta^{\prime}, \theta\right) & =\int \mathrm{d} y \pi\left(\theta^{\prime} \mid y\right) \pi(y, \theta) \\
& =\int \mathrm{d} y \pi\left(\theta^{\prime} \mid y\right) \pi(y \mid \theta) \pi(\theta) \\
& =\pi(\theta) \int \mathrm{d} y \pi\left(\theta^{\prime} \mid y\right) \pi(y \mid \theta)
\end{aligned}
$$
or
$$
\begin{aligned}
\pi\left(\theta^{\prime}, \theta\right) & =\int \mathrm{d} y \pi\left(\theta^{\prime} \mid y\right) \pi(y, \theta) \\
& =\int \mathrm{d} y \frac{\pi\left(y \mid \theta^{\prime}\right) \pi\left(\theta^{\prime}\right)}{\pi(y)} \pi(\theta \mid y) \pi(y) \\
& =\int \mathrm{d} y \pi\left(y \mid \theta^{\prime}\right) \pi\left(\theta^{\prime}\right) \pi(\theta \mid y) \\
& =\pi\left(\theta^{\prime}\right) \int \mathrm{d} y \pi(\theta \mid y) \pi\left(y \mid \theta^{\prime}\right)
\end{aligned}
$$
Because $\pi\left(\theta^{\prime}\right)=\pi(\theta)$ - that's the self-consistency condition on which SBC is based - we have
$$
\begin{aligned}
\pi\left(\theta^{\prime}, \theta\right) & =\pi(\theta) \int \mathrm{d} y \pi\left(\theta^{\prime} \mid y\right) \pi(y \mid \theta) \\
& =\pi\left(\theta^{\prime}\right) \int \mathrm{d} y \pi\left(\theta^{\prime} \mid y\right) \pi(y \mid \theta) \\
& =\pi\left(\theta, \theta^{\prime}\right)
\end{aligned}
$$

- testing self-consistency is easier with sbc data structure which includes `prior`. `prior_predictive`, `observed_data`, `posterior`, `posterior_predictive`, `log_likelihood` groups