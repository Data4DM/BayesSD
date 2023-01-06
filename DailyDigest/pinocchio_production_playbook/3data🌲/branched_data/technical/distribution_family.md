Is family defined as members or the relation between them? I would say the latter from the definition "a group of related things".

We aim get a glimpse of the family of distribution by tracing the relation starting from three members with the highest degree: Normal, Poisson, Gamma.

## Binomial-Poisson-Normal
![[PoisFam.png]]

I once made the following figure "Gulliver (Poisson)'s travel to Lilliput (Binomial) and Brobdingnag (Normal)" to explain the pattern observed both in Binomial to Poisson and Poisson to Normal.
![[Pasted image 20220622085624.png]]

Binomial-Poisson (BP), Poisson-Normal (PN) approximation are two end of the spectrum

### Binomial to Poisson
 
 Poisson $(\lambda)$
$$
\begin{gathered}
P(N=k)=\frac{\lambda^{k}}{k !} e^{-\lambda} \quad \lambda>0 ,k=0,1,2, \ldots 
\end{gathered}
$$
Using $\sum_{k=0}^{\infty} \frac{d^{k}}{k !}=e^{d}$
Binom $(n, p) \stackrel{\substack{n \rightarrow \infty\\}}{\longrightarrow}$ Poisson $(d)$
$$
\text { verify) } \begin{aligned}
\left(\begin{array}{l}
n \\
k
\end{array}\right) p^{k}(1-p)^{n-k} &=\frac{n !}{k !(n-k) ! n^{k}} \cdot \frac{(n p)^{k}}{(1-p)^{k}}(1-p)^{n} \cdot e^{-\lambda} \\
\text { if } n \text { large } \\
p \text { smal! } &=\frac{n !}{k !\left(n-k ! n^{k}\right.} \cdot \frac{d^{k}}{(1-p)^{k}} \underbrace{\left(1-\frac{d}{n}\right)+\varepsilon}_{\rightarrow 1} \\
&=\frac{d^{k}}{k !} e^{-d} \quad=\frac{n(n-1) \cdots(n-k+1)}{n_{k}^{n-n-n}} \rightarrow 1
\end{aligned}
$$

### Poisson to Normal
Show $\lim _{n \rightarrow \infty} e^{-n} \sum_{k=1}^{n} n^{k} / k !=1 / 2$
This is $P\left[N_{n} \leqslant n\right]$ where $N_{n}$ is a random variable with Poisson distribution of parameter $n$. Hence each $N_{n}$ is distributed like $X_{1}+\cdots+X_{n}$ where the random variables $\left(X_{k}\right)$ are independent and identically distributed with Poisson distribution of parameter 1 .

By the central limit theorem, $Y_{n}=\frac{1}{\sqrt{n}}\left(X_{1}+\cdots+X_{n}-n\right)$ converges in distribution to a standard normal random variable $Z$, in particular, $P\left[Y_{n} \leqslant 0\right] \rightarrow P[Z \leqslant 0]$
Finally, $P[Z \leqslant 0]=\frac{1}{2}$ and $\left[N_{n} \leqslant n\right]=\left[Y_{n} \leqslant 0\right]$ hence $P\left[N_{n} \leqslant n\right] \rightarrow \frac{1}{2}$ (QED).

## Exponential
is Memphis. Standard uniform to exponential $n(1-X_(n))$ is interesting


![[ExpFam.png]]
![[GammaFam.png]]

For more, refer to [this](http://www.math.wm.edu/~leemis/chart/UDR/UDR.html)  interactive site.