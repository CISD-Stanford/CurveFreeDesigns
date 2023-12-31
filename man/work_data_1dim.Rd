% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/work_data_1dim.R
\name{work_data_1dim}
\alias{work_data_1dim}
\title{Calculate the working data for small sample to find MTD efficiently.}
\usage{
work_data_1dim(n.tox, n.assign)
}
\arguments{
\item{n.tox}{a list of no. of toxicities at all dose levels}

\item{n.assign}{a list of no. of patients at all dose levels}
}
\value{
\code{work_data_1dim()} returns (1) tox: the working number of toxicities and; (2) n: the working number of patients
}
\description{
Calculate the working data for small sample to find MTD efficiently.
}
\examples{
work <- work_data_1dim(c(1,1),c(2,3))
}
\seealso{
Fan, S., Lee, B. L., & Lu, Y. (2020). A curve-free bayesian decision-theoretic design for Phase IA/IB trials considering both safety and efficacy outcomes. \emph{Statistics in Biosciences}, 12(2), 146–166. \url{https://doi.org/10.1007/s12561-020-09272-5}
         Fan SK, Lu Y, Wang YG. A simple Bayesian decision-theoretic design for dose-finding trials. \emph{Stat Med}, 2012 Dec 10;31(28):3719-30. doi: 10.1002/sim.5438. Epub 2012 Jul 5. PMID: 22763943. \url{https://doi.org/10.1002/sim.5438}
}
