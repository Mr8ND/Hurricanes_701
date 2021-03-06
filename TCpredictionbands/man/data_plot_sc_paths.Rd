% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sca_estimation_and_visualization.R
\name{data_plot_sc_paths}
\alias{data_plot_sc_paths}
\title{Compresses data from list (to be plotted in ggplot)}
\usage{
data_plot_sc_paths(
  test_list,
  sca_output = list(test_p_estimate = rep(1, length(test_list)), test_weight =
    rep(1/length(test_list), length(test_list))),
  position = 1:2
)
}
\arguments{
\item{test_list}{list of \eqn{s} paths to analysis (each a df)}

\item{sca_output}{a list of diffusion map associated information 
assumed of the form of output provided by 
\code{link{spectral_cluster_process}}. At minimum this list needs 2 elements
\itemize{
\item \code{test_p_estimate}: a \eqn{s} length vector of non-standardized 
probabilities (\eqn{p_i})
\item \code{test_weight}: a \eqn{s} length vector of standardized 
probabilities (\eqn{p_i/\max_k p_k})
}}

\item{position}{positions of lat and long columns in test_list data frames}
}
\value{
data frame that can be used to visualize curves
}
\description{
Compresses data into tidyverse focused dataframe (for ggplot)
}
\details{
\code{sca_output} is expected to be a list with at least 2 components: 
(1) \code{test_p_estimate} - probablity estimates of the test curves 
(\eqn{p_i})
(2) \code{test_weight} - a vector of standardized probabilities 
(\eqn{p_i/\max_k p_k})
}
