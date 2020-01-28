#' Create a bar plot of the mtcars cylinder column
#'
#' @return a bar plot
#' @export
#' @importFrom ggplot2 ggplot geom_bar aes coord_flip
#' @importFrom rlang .data
#' @examples cyl_plot()
cyl_plot <- function() {
    ggplot(mtcars) +
        geom_bar(aes(.data$cyl)) +
        coord_flip()
}
