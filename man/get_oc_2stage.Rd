% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_oc_2stage.R
\name{get_oc_2stage}
\alias{get_oc_2stage}
\title{Generate operating characteristics of the Rule-Based Design for Agents with Same Dose-Limiting Toxicities}
\usage{
get_oc_2stage(p, pmin, pmax, ns, seed, stages = 2, p.preDLT = NULL)
}
\arguments{
\item{p}{the target toxicity level}

\item{pmin}{the minimum toxicity level}

\item{pmax}{the maximum toxicity level}

\item{ns}{the total number of trials to be simulated}

\item{seed}{the random seed for simulation}

\item{stages}{a number indicate whether to include the stage 0, number 2 indicates not include, otherwise, the stage 0 (Finding the starting combination) will be included}

\item{p.preDLT}{a list of true pre-DLT probabilities at all dose levels, if param \code{$stages} not equal to 2, \code{$p.preDLT} must be specified. Otherwise, an error will be return.}
}
\value{
\code{get_oc_2stage()} returns:
        (1) \code{$recommended_prop}: the selection percentages of each dose combination
        (2) \code{$selection_prop}: the selection percentages of each toxicity level
        (3) \code{$mean_DLT}: the percentage of in-trial toxicities
        (4) \code{$mean_patient}: patient allocation for all doses under CFBD
        (5) \code{$prop_no_move}: the percentage of trials that stopped at starting dose combination
        (6) \code{$found}: the percentage of trials recommending BEDsDLT_list
        (6) \code{$DLT_list}: a list of recommended toxicity level of each trial
}
\description{
Obtain the operating characteristics of the Rule-Based Design for Agents with Same Dose-Limiting Toxicities
}
\details{
This package is developed to generate the operating characteristics of the 2 stage 2+1+3 dose combination finding design
         under the prespecified simulation scenarios. The two stage 2+1+3 dose combination finding design allows the first stage
         (m + n) to search for the potential MTD and a total of six (=m + n + h) patients to confirm and identify the MTD.
}
\seealso{
Fan SK, Venook AP, Lu Y. Design issues in dose-finding Phase I trials for combinations of two agents. J Biopharm Stat. 2009;19(3):509-23. doi: 10.1080/10543400902802433. PMID: 19384692.
}
