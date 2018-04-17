rm(list = ls())

########################################
# prioir x likelihood = posterior
########################################
# define grid
p <- seq( from=0 , to=1 , length.out=1000 )

# compute likelihood at each value in grid
likelihood <- dbinom( 6 , size=9 , prob=p)

computePosterior = function(likelihood, prior){
  # compute product of likelihood and prior
  unstd.posterior <- likelihood * prior
  
  # standardize the posterior, so it sums to 1
  posterior <- unstd.posterior / sum(unstd.posterior)
  
  par(mfrow=c(1,3))
  plot( p , prior, type="l", main="Prioir")
  plot( p , likelihood, type="l", main="Likelihood")
  plot( p , posterior , type="l", main="Posterior")
  
}

# define prior
prior1 <- rep( 1 , 1000 )
prior2 <- ifelse( p < 0.5 , 0 , 1 )
prior3 <- exp( -5*abs( p - 0.5 ) )
computePosterior(likelihood, prior1)
computePosterior(likelihood, prior2)
computePosterior(likelihood, prior3)

#########################################
# Gibbs sampler: simulate data
#########################################
set.seed(938565)
mu <- 4
sigma2 <- 16
n <- 500
y <- rnorm(n=n, mean=mu, sd=sqrt(sigma2))
hist(y)

# Define the hyperparameters
mu0 <- -3
sigma2_0 <- 4
a0 <- 1.6
b0 <- 0.4

# parameters for MCMC
niter = 10000
nwarmup = round(niter/2)
nthin = floor((niter-nwarmup)/500)
nchains = 1
parameters = c("mu", "sigma2", "inv_sigma2")
nparameters = length(parameters)
ntot = nwarmup + niter*nthin

gibbs_samples <- matrix(NA, nrow = niter, ncol = nparameters)
colnames(gibbs_samples) <- parameters
head(gibbs_samples)

mu.sim <- rep(NA, length = ntot)
sigma2.sim <- rep(NA, length = ntot)
inv.sigma2.sim <- rep(NA, length = ntot)

#Set the initial value
sigma2.sim[1] <- 1/runif(nchains)

# set the counter
k <- 1

#Run the for loop (only one chain)
for(i in 2:(nwarmup+niter*nthin)){
  
  mu.sim[i] <- rnorm(1, 
                     mean = (sum(y)/sigma2.sim[i-1] + mu0/sigma2_0) / 
                       (n/sigma2.sim[i-1] + 1/sigma2_0),
                     sd = sqrt(1/(n/sigma2.sim[i-1] + 1/sigma2_0)))
  
  sigma2.sim[i] <- 1/rgamma(1, shape = n/2 + a0, 
                            scale = 1 / (sum((y-mu.sim[i])^2)/2 + b0))
  
  inv.sigma2.sim[i] <- 1/sigma2.sim[i]
  
  # after the burnin save every nthin'th sample
  if((i > nwarmup) && (i%%nthin == 0)){
    gibbs_samples[k,] <- c(mu.sim[i], sigma2.sim[i], inv.sigma2.sim[i])
    k <- k + 1
  }
  
  if(i%%1000 == 0){
    # report on the fly in which iteration the chain is
    cat(i, "\n")
  }
  
}


# niter samples after n.burnin taking every n.thin'th sample
dim(gibbs_samples)

mu_gibbs_samples <- gibbs_samples[,"mu"]
sigma2_gibbs_samples <- gibbs_samples[,"sigma2"]
inv_sigma2_gibbs_samples <- gibbs_samples[,"inv_sigma2"]

# descriptive statistics
# my summary function
my_summary <- function(sim)
{
  return(round(c(mean=mean(sim), sd=sd(sim), quantile(sim, probs=c(0.025, 0.5, 0.975))),3))
}

my_summary(mu_gibbs_samples)
my_summary(sigma2_gibbs_samples)
my_summary(inv_sigma2_gibbs_samples)

# traceplots
library(MASS)
par(mfrow=c(3,3), cex.lab=1.0, cex.axis=1.0, mar=c(5,5,1,1))
plot(mu_gibbs_samples, type="l", ylab=expression(mu))
plot(sigma2_gibbs_samples, type="l", ylab=expression(sigma^2))
plot(inv_sigma2_gibbs_samples, type="l", ylab=expression(1/sigma^2))
truehist(mu_gibbs_samples, xlab=expression(mu))
truehist(sigma2_gibbs_samples, xlab=expression(sigma^2))
truehist(inv_sigma2_gibbs_samples, xlab=expression(1/sigma^2))
acf(mu_gibbs_samples)
acf(sigma2_gibbs_samples)
acf(inv_sigma2_gibbs_samples)


########################################
# Stan example: bernoulli
########################################
# include library
library(rstan) 

theta = 0.2
N = 1000
y = rbinom(N, prob=theta, size=1)
round(sum(y==1)/sum(y==0),2)

# prepare the data
data_stan = list(N=N, y=y)

library(rstan)
# chose your working directory
setwd("~/Dropbox/RLausanne")

# name of the model file
modname = "stan/bernoulli.stan"

# compile
mod = stan_model(modname)

# sample
niter = 500
fit = sampling(mod, 
               data=data_stan, 
               chains = 1, 
               warmup=round(niter/2), 
               iter=niter, 
               thin=5, 
               cores = 1,
               refresh = round(niter/100))
pars = c('theta')
print(fit, pars = pars)
stan_dens(fit, pars = pars)
