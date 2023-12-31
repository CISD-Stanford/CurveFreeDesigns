% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sensitivity_randomError_FLW.R
\name{sensitivity_randomError_FLW}
\alias{sensitivity_randomError_FLW}
\title{Conduct sensitivity analysis of Curve-Free Design for Maximum Tolerated Dose in One-Agent Trials based on random errors}
\usage{
sensitivity_randomError_FLW(pTox, error.T, var.ratio, target, T.max, 
n.min.mtd, n.max.mtd, n.sim, seed, alpha = 1, eta = 1, p1 = 0.1, p2 = 0.1)
}
\arguments{
\item{pTox}{a list of true toxicity probabilities at all dose levels}

\item{error.T}{error size for toxicity rates; taken from -0.5 - 0.5}

\item{var.ratio}{an equivalent no. of patients contained in the prior information, chosen such that prior.n.mtd * target is larger than but close to 1}

\item{target}{the target toxicity rate}

\item{T.max}{the absolute overly toxic, usually .05 above target}

\item{n.min.mtd}{the minimal sample size for MTD identification (phase Ia)}

\item{n.max.mtd}{the maximal sample size for MTD identification (phase Ia)}

\item{n.sim}{the total number of trials to be simulated}

\item{seed}{the random seed for simulation}

\item{alpha}{the weight of penalty of toxicity rate below target level; 1 is suggested}

\item{eta}{the weight of penalty of toxicity rate above target level; 1 is suggested}

\item{p1}{the error rate for concluding inadmissible; .10 is suggested}

\item{p2}{the error rate for concluding admissible; .10 is suggested}
}
\value{
\code{sensitivity_randomError_FLW()} returns the operating characteristics of proposed design as a list,
        including:
        (1) \code{$n}: the average sample size over all simulated trials
        (2) \code{$percentFound}: the percentage of trials recommending BEDs
        (3) \code{$percentCorrect}: within those trials recommending BEDs, the percentage of trials of which all recommended doses are truly admissible and acceptable
        (4) \code{$percentTox}: the percentage of in-trial toxicities
        (5) \code{$percentMTD}: the selection percentages of MTD
        (6) \code{$percentPatients}: patient allocation for all doses under CFBD
}
\description{
Conduct sensitivity analysis by adding random errors to the means of the Beta prior distributions to investigate the robustness of proposed design. The random errors follow uniform distribution from \code{lower} to \code{upper}.
}
\seealso{
Fan SK, Lu Y, Wang YG. A simple Bayesian decision-theoretic design for dose-finding trials. \emph{Stat Med}, 2012 Dec 10;31(28):3719-30. doi: 10.1002/sim.5438. Epub 2012 Jul 5. PMID: 22763943. \url{https://doi.org/10.1002/sim.5438}
}
