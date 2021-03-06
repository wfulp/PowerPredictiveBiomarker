% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/predictive_power_shiny_clean.R
\name{predictive.power.fun}
\alias{predictive.power.fun}
\title{Power calculation of predictive biomarker. Calculation requires a series of parameters to to determine subgroup proportion and subgroup censoring rate. Depending on study type (prospective or retrospective study), parameter setting is different (check the reference).}
\usage{
predictive.power.fun(n.list = c(300), mst.data = data.frame(C_low = c(6.2,
  6.2), C_high = c(3.1, 6.2), T_low = c(6.2, 6.2), T_high = c(7, 6.2)),
  my.p.treat = 0.5, my.p.pos.control = 0.5, my.p.pos.treat = 0.5,
  my.target.event.rate = 0.5, my.follow.time = 2, my.total.time = 5,
  my.mst.overall = NULL, my.mst.treatment = NULL, my.mst.control = NULL,
  my.target.event.rate.overall = NULL,
  my.target.event.rate.treatment = NULL,
  my.target.event.rate.control = NULL, alpha = 0.05,
  study.design = "prospective", my.censoringAndMST = "Overall")
}
\arguments{
\item{n.list}{sample size}

\item{mst.data}{input of median survival time (MST) for 4 subgroups:
\itemize {
\item low (negative) biomarker in control group;
\item high (positive) biomarker in control group;
\item low (negative) biomarker in treatment group;
\item high (positive) biomarker in treatment group
}}

\item{my.p.treat}{prevalence in treatment group}

\item{my.p.pos.control}{prevalence of positive biomarker in control group}

\item{my.target.event.rate}{event rate (For MST, it would be 0.5)}

\item{my.follow.time}{follow time for prospective study}

\item{my.total.time}{total study time for prospective study}

\item{my.mst.overall}{Overall MST for a retrospective study cohort if avaialble}

\item{my.mst.treatment}{MST in treatment group for a retrospective study cohort if avaialble}

\item{my.mst.control}{MST in control group for a retrospective study cohort if avaialble}

\item{my.target.event.rate.overall}{Overall event rate in a retrospective study cohort if available}

\item{my.target.event.rate.treatment}{event rate of treatment group in a retrospective study cohort if available}

\item{my.target.event.rate.control}{event rate of control group in a retrospective study cohort if available}

\item{alpha}{type I error (two-sided)}

\item{study.design}{Study design: 'prospective' for prospective study and 'retrospective' for retorpsective study}

\item{my.censoringAndMST}{'Overall' for available overall MSt and event rate; otherwise for availabel MST and event rate in both tretament and control groups}

\item{my.p.pos.treatment}{prevalence of positive biomarker in treatment group}
}
\value{
statistical power
}
\description{
Power calcuation of predictive predictive biomarker in prospective and retrospective studies.
}
\details{
This statistcial tool is to caculate power of predictive biomarker in survival data based on statsitical interaction model in Cox PH using Peterson et al. and Lachin methods.
}
\examples{
#-----------------Example: Prospective Study ------------------------------
# A prospective study with a sample size of 300
n.tmp=300
# a two sided 5\% type I error
alpha.tmp=0.05
# Median survival time for the 4 subgroups
MSTdata.tmp=data.frame(C_low=3,C_high=1,T_low=4,T_high=3)
# 50\% patients in the treatment group
p.treat.tmp=0.5
# In the treatment group, assume 50\% patients with positive biomarker
p.pos.treat.tmp=0.5
# In the control group, assume 50\% patients with positive biomarker
p.pos.control.tmp=0.5
# 1 years of follow up time
follow.time.tmp=1
# A total study time: 5 years
total.time.tmp=5
predictive.power.fun(n.list=n.tmp,mst.data=MSTdata.tmp,my.p.treat=p.treat.tmp,my.p.pos.control=p.pos.control.tmp,my.p.pos.treat=p.pos.treat.tmp,my.follow.time=follow.time.tmp,my.total.time=total.time.tmp,alpha=alpha.tmp,study.design='prospective')

#-----------------Example: Retrospective Study ------------------------------
# A retrospective study with a sample size of 135
n.tmp=135
# a two sided 5\% type I error
alpha.tmp=0.05
# Median survival time for the 4 subgroups
MSTdata.tmp=data.frame(C_low=10.11,C_high=3.1,T_low=6.66,T_high=11.01)
# 48\% patients in the treatment group
p.treat.tmp=0.48
# In the treatment group, assume 50\% patients with positive biomarker
p.pos.treat.tmp=0.5
# In the control group, assume 50\% patients with positive biomarker
p.pos.control.tmp=0.5
# Available MST and event rate for both treatment and control in study cohort
censoringAndMST.tmp='TreatmentAndControl'
# MST (7.8 years) and event rate (64\% censoring rate) for treatment
MST.treatment.study.cohort.tmp=7.8
event.rate.treatment.study.cohort.tmp=1-0.64
# MST (4.8 years) and event rate (55\% censoring rate) for control
MST.control.study.cohort.tmp=4.8
event.rate.control.study.cohort.tmp=1-0.55
predictive.power.fun(n.list=n.tmp,mst.data=MSTdata.tmp,my.p.treat=p.treat.tmp,my.p.pos.control=p.pos.control.tmp,my.p.pos.treat=p.pos.treat.tmp,alpha=alpha.tmp,my.mst.treatment=MST.treatment.study.cohort.tmp,my.mst.control=MST.control.study.cohort.tmp,my.target.event.rate.treatment=event.rate.treatment.study.cohort.tmp,my.target.event.rate.control=event.rate.control.study.cohort.tmp,study.design='retrospective',my.censoringAndMST=censoringAndMST.tmp)

}
\references{
Strategies for power calculations in predictive biomarker studies in survival data; Chen et al; Oncotarget; 2016; in press
}

