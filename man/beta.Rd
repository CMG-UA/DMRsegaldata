\name{beta}
\alias{beta}
\docType{data}
\title{
DNA Methylation Beta Values Matrix
}
\description{
A matrix of DNA methylation beta values for CpG sites across 20 samples (10 healthy and 10 cancer samples). The matrix contains preprocessed beta values from Illumina 450K methylation array data.
}
\format{
  A numeric matrix with CpG sites as rows and sample identifiers as columns. Beta values range from 0 to 1, representing the proportion of methylation at each CpG site.
}
\details{
The beta values have been preprocessed and quality controlled. The data includes measurements from 10 healthy samples (H1-H10) and 10 cancer samples (T1-T10).

\subsection{Data Processing}{
The preprocessing steps included:
\itemize{
  \item Quality control of raw Illumina 450K array data
  \item Normalization of beta values
  \item Filtering of low-quality probes
  \item Sample QC and filtering
}
}
}
\section{Accessing the Data}{
This resource can be accessed via ExperimentHub:

\if{html}{\out{<div class="sourceCode">}}\preformatted{
library(ExperimentHub)
eh <- ExperimentHub()
beta <- eh[["EH10275"]]

}\if{html}{\out{</div>}}
}
\source{
Example data for the DMRsegal package vignette and examples.
}
\examples{
\dontrun{
library(ExperimentHub)
eh <- ExperimentHub()
beta <- eh[["EH10275"]]
head(beta[, 1:5])
# Summary statistics
summary(as.vector(beta[1:100, ]))
}
}
\keyword{datasets}
