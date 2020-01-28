#' Create a bar plot of a column in mtcars
#'
#' @param col the name of a column in mtcars
#' @return a bar plot
#' @export
#' @importFrom ggplot2 ggplot geom_bar aes coord_flip
#' @importFrom rlang .data
#' @examples cyl_plot(cyl)
cyl_plot <- function(col) {
    ggplot(mtcars) +
        geom_bar(aes({{ col }})) +
        coord_flip()
}
