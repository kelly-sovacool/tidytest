#' Summarize the mtcars mpg & cylinder columns
#'
#' @return a table summarizing columns 'cyl' and 'mpg'
#' @export
#' @importFrom dplyr group_by summarise n %>%
#' @importFrom rlang .data
#' @example cyl_sum()
cyl_sum <- function() {
    mtcars %>%
        group_by(.data$cyl) %>%
        summarise(n = n(), mpg = mean(.data$mpg))
}
