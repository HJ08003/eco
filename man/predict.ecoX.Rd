% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/predict.ecoX.R
\name{predict.ecoX}
\alias{predict.ecoX}
\title{Out-of-Sample Posterior Prediction under the Parametric Bayesian Model for
Ecological Inference in 2x2 Tables}
\usage{
\method{predict}{ecoX}(object, newdraw = NULL, subset = NULL,
  newdata = NULL, cond = FALSE, verbose = FALSE, ...)
}
\arguments{
\item{object}{An output object from \code{eco} or \code{ecoNP}.}

\item{newdraw}{An optional list containing two matrices (or three
dimensional arrays for the nonparametric model) of MCMC draws of \eqn{\mu}
and \eqn{\Sigma}. Those elements should be named as \code{mu} and
\code{Sigma}, respectively. The default is the original MCMC draws stored in
\code{object}.}

\item{subset}{A scalar or numerical vector specifying the row number(s) of
\code{mu} and \code{Sigma} in the output object from \code{eco}. If
specified, the posterior draws of parameters for those rows are used for
posterior prediction. The default is \code{NULL} where all the posterior
draws are used.}

\item{newdata}{An optional data frame containing a new data set for which
posterior predictions will be made. The new data set must have the same
variable names as those in the original data.}

\item{cond}{logical. If \code{TRUE}, then the conditional prediction will
made for the parametric model with contextual effects. The default is
\code{FALSE}.}

\item{verbose}{logical. If \code{TRUE}, helpful messages along with a
progress report on the Monte Carlo sampling from the posterior predictive
distributions are printed on the screen. The default is \code{FALSE}.}

\item{...}{further arguments passed to or from other methods.}
}
\value{
\code{predict.eco} yields a matrix of class \code{predict.eco}
containing the Monte Carlo sample from the posterior predictive distribution
of inner cells of ecological tables. \code{summary.predict.eco} will
summarize the output, and \code{print.summary.predict.eco} will print the
summary.
}
\description{
Obtains out-of-sample posterior predictions under the fitted parametric
Bayesian model for ecological inference. \code{predict} method for class
\code{eco} and \code{ecoX}.
}
\details{
The posterior predictive values are computed using the Monte Carlo sample
stored in the \code{eco} output (or other sample if \code{newdraw} is
specified). Given each Monte Carlo sample of the parameters, we sample the
vector-valued latent variable from the appropriate multivariate Normal
distribution. Then, we apply the inverse logit transformation to obtain the
predictive values of proportions, \eqn{W}. The computation may be slow
(especially for the nonparametric model) if a large Monte Carlo sample of
the model parameters is used. In either case, setting \code{verbose = TRUE}
may be helpful in monitoring the progress of the code.
}
\seealso{
\code{eco}, \code{predict.ecoNP}
}
\author{
Kosuke Imai, Department of Politics, Princeton University,
\email{kimai@Princeton.Edu}, \url{http://imai.princeton.edu}; Ying Lu,
Center for Promoting Research Involving Innovative Statistical Methodology
(PRIISM), New York University \email{ying.lu@nyu.Edu}
}
\keyword{methods}
