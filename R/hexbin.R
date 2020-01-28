#' Hex plot
#'
#' @param df dataframe
#' @param x x var
#' @param y y var
#' @param bins number of bins
#'
#' @return a hex plot
#' @export
#'
#' @examples hexbin(ggplot2::diamonds, carat, price)
hexbin <- function(df, x, y, bins = 10) {
    df %>%
        ggplot2::ggplot(ggplot2::aes({{ x }}, {{ y }})) +
        ggplot2::geom_hex(bins = bins)
}
