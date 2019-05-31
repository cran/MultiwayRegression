\name{MultiwayRegression-package}
\alias{MultiwayRegression}
\docType{package}
\title{
Perform tensor-on-tensor regression
}
\description{
Functions to predict one multi-way array (i.e., a tensor) from another multi-way array, using a low-rank CANDECOMP/PARAFAC (CP) factorization and a ridge (L_2) penalty.  Also includes functions to sample from the Bayesian posterior of a tensor-on-tensor model.  
}
\details{
\tabular{ll}{
Package: \tab MultiwayRegression-package\cr
Type: \tab Package\cr
Version: \tab 1.2\cr
Date: \tab 2019-05-28\cr
License: \tab GPL-3\cr
}

}
\author{
Eric F. Lock

Maintainer: Eric F. Lock <elock@umn.edu>
}

\examples{
data(SimData) ##loads simulated X: 100 x 15 x 20 and Y: 100 x 5 x 10 
Results <- rrr(X,Y,R=2)  ##Fit rank 2 model with no regularization
Y_pred <- ctprod(X,Results$B,2)  ##Array of fitted values
}

\references{
Lock, E. F.  (2018). Tensor-on-tensor regression. Journal of Computational and Graphical Statistics, 27 (3): 638-647, 2018.
}

\keyword{ package }