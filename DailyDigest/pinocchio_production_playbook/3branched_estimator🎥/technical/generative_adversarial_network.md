The main goal of 2022 summer project (advised by Ali Hirsa) is to understand the geology of GAN; how it became diversified and what properties of data generating process each GANs is targeting. If time permits, we target to suggest a new GAN (or other) learning network targeted for time series i.e. sequential model which includes finance.  

##  Previous work in temporal GAN 
Among generative model ([mindmap](marginnote3app://note/BF1C64EC-63C3-44D6-9879-34E37541B690)) whose definition is having proper prior distribution function, GAN is classified as implicit density in the statistical learning methodology family. Getting the maximum likelihood (or with prior, posterior) is the basic setting for statistical inference. This diverges into explicit or implicit density. GANs are the example of implicit density and explicit density can further diverge into tractable (auto-regressive) or approximate density (VAE).  
  
The history of GANs can be described as below; understanding its loss function (prior distribution), network architecture (basis function spcae , and how learning is performed (using gradient descent for instance) are the key. They are

| -                                    | summary                                                                                                                                       | loss function | training | mindmap                                                               |     |
| ------------------------------------ | --------------------------------------------------------------------------------------------------------------------------------------------- | ------------- | -------- | --------------------------------------------------------------------- | --- |
| vallina GANs                         |                                                                                                                                               |               |          |                                                                       |     |
| QuantGAN                             | Temporal convolution network                                                                                                                  |               |          | [mindmap](marginnote3app://note/517EA1FC-1B6E-4D04-A5BA-94F3F387E934) |     |
| RegGAN                               | has additional pre-trained Discriminator2 and uses geometric properties; using stylized facts such as skewness, kurtosis, volatility clusters |               |          | [mindmap](marginnote3app://note/D7CB0AD6-414C-4764-8CA9-F457684AFC33) |     |
| Temporal  attention, transformer GAN |                                                                                                                                               |               |          | [mindmap](marginnote3app://note/2F70AC0C-0CA1-4947-A140-7EDF09EB0729) |     |
|                                      |                                                                                                                                               |               |          |                                                                       |     |


## Proposal: Hierarchical Temporal RegGAN 

Current regularization term from the second discriminator: `E_z[log(1 − D_2(G(z))))]`                                               

### Two procedures:

#### 1. Develop time-series invariant function
a. Fourier transform
b. suprevise learning with score function defined as:
- ignore all components below .3 (tmp. threshold)
- from those above .3, calculate the ratio of the largest peak height over the sum of all (e.g. .1, .3, .5, .1 -> .675)
- with the above label, do supervised learning which aids

Details are in [[Time-series invarinace for GAN]] whose aim is to finding metric in seasonality coefficient space that corresponds to `E_z[1-D2(G(z))]`

#### 2. Develop 1 to hierarchical structure
Q: Regularizing VS Restricting: Angel and Devil in [[Teaching Goal]]

Q. Hierarchical time series (for seasonality) VS Hierarchical time series (for bottom up, conservation constraint)
e.g. of the first: below left (time unit clustering)
e.g. of the second:  https://www.amazon.science/blog/new-take-on-hierarchical-time-series-forecasting-improves-accuracy
![[Pasted image 20220814035901.png]]

Details in [[Hierarchical GAN]]
### Three theories:
1. Bayesian Prior: 
	1. It's basic roles are explained in [[Comp(Stat) 🌀]]Connect loss function (added regularization term) with Bayesian prior
2. Understand how prior in hierarchical model works
3. Develop the current regularization term to a hierarchical version of regularization term

![[Pasted image 20220814011523.png]]

---
### loss
1. D_loss = D_loss_real + D_loss_fake
- $\alpha$-error: D_loss_real = tf.reduce_mean(tf.nn.sigmoid_cross_entropy_with_logits(`D_logit_real`, tf.ones_like(D_logit_real))) 
- $\beta$-error: D_loss_fake = tf.reduce_mean(tf.nn.sigmoid_cross_entropy_with_logits(D_logit_fake, tf.zeros_like(`D_logit_real`)))

2. G_loss
= tf.reduce_mean(tf.nn.sigmoid_cross_entropy_with_logits(D_logit_fake, tf.ones_like(D_logit_fake)))