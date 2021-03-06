% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/prepareDoses.R
\name{prepareDoses}
\alias{prepareDoses}
\title{Prepare the Dose Data Set}
\usage{
prepareDoses(
  doseData,
  drugLevelData,
  drugLevelID = "id",
  drugLevelTimeVar = "date.time",
  drugLevelVar = "fent.level",
  idVar = "id",
  dateVar = "date.dose",
  infusionDoseTimeVar = NULL,
  infusionDoseVar = NULL,
  bolusDoseTimeVar = NULL,
  bolusDoseVar = NULL,
  otherDoseTimeVar = NULL,
  otherDoseVar = NULL,
  otherVars = NULL,
  lookForward = 7
)
}
\arguments{
\item{doseData}{data.frame; data set with dose information}

\item{drugLevelData}{data.frame; data set with drug level data}

\item{drugLevelID}{character string; name of ID variable, defaults to id}

\item{drugLevelTimeVar}{character string; name of date-time variable,
defaults to date.time}

\item{drugLevelVar}{character string; name of drug level variable, defaults
to fent.level}

\item{idVar}{character string; name of ID variable, defaults to id}

\item{dateVar}{character string; name of date variable, defaults to date.dose}

\item{infusionDoseTimeVar}{character string; name of infusion dose time
variable}

\item{infusionDoseVar}{character string; name of infusion dose variable}

\item{bolusDoseTimeVar}{character string; name of bolus dose time variable}

\item{bolusDoseVar}{character string; name of bolus dose variable}

\item{otherDoseTimeVar}{character string; name of additional dose time
variable}

\item{otherDoseVar}{character string; name of additional dose variable}

\item{otherVars}{character string; name of other variables within data set}

\item{lookForward}{integer; initializes the time frame window with the number
of days prior to the first drug level data; defaults to 7}
}
\value{
data.frame, containing dose data
}
\description{
Create a dose data set with conforming data, and remove invalid records.
}
\details{
Wrapper function for \code{\link{conformDoses}} and \code{\link{trimDoses}}.
}
\examples{
options(pkdata.tz='America/Chicago')
dose.file <- read.csv(system.file('extdata', 'dosage.csv', package = 'pkdata'),
                      stringsAsFactors = FALSE)
drug.level.file <- read.csv(system.file('extdata', 'druglevel.csv', package = 'pkdata'),
                            stringsAsFactors = FALSE)
prepped <- prepareDoses(dose.file, drug.level.file,
     infusionDoseTimeVar='inf.time', infusionDoseVar='inf.dose',
     bolusDoseTimeVar='bol.time', bolusDoseVar='bol.dose',
     otherDoseTimeVar='patch.time', otherDoseVar='patch.dose',
     otherVars=c('gender','weight'))
}
\author{
Cole Beck
}
