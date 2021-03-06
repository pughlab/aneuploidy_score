% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/checkIfWGD.R
\name{checkIfWGD}
\alias{checkIfWGD}
\title{Whole genome doubling checker}
\usage{
checkIfWGD(
  segf,
  tcn_col,
  threshold = 0.5,
  input_ploidy = NA,
  wgd_gf = 0.5,
  ploidy_method = "wmean"
)
}
\arguments{
\item{segf}{.Seg Data [Data frame]}

\item{tcn_col}{Column ID for CN value [String]}

\item{threshold}{The threshold to call a gain or loss relative
to base ploidy (ploidy +/- threshold) (Default: 0.5) [Numeric]}

\item{input_ploidy}{If you want to use a specific ploidy-value}

\item{wgd_gf}{Genomic fraction above base_ploidy + threshold to be
considered genome doubled (Default: 0.5) [Numeric]}

\item{ploidy_method}{Calculates the base ploidy [Character]
- 'wmean': Segment size weighted CN mean
- 'wmedian': Segment size weighted CN median
- 'mean': CN mean
- 'median': CN median
- 'multi_base2': Nearest base ploidy 2 (e.g. CN=3 -> ploidy of 4)
- 'input': Use a specified ploidy value}
}
\value{
A named vector
 ploidy: Ploidy as estimated by ploidy_method 
 WGD: Boolean indicated whether sample is WGD
}
\description{
Takes a .seg file data frame and estimates whether
the tumor is whole-genome doubled (WGD). This function requries
Total Copy Number and will not work using L2R.
}
