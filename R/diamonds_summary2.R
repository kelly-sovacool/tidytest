#' Summarize the diamonds dataset
#'
#' @param bins the number of bins
#' @return a plot
#' @export
#' @importFrom rlang .data
#' @example diamonds_summary2(10)
diamonds_summary2 <- function(bins) {
    ggplot2::diamonds %>%
        ggplot2::ggplot(ggplot2::aes(.data$carat, .data$price)) +
        ggplot2::geom_hex(bins = {{ bins }})
}
