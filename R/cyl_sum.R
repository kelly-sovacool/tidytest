#' Summarize the mtcars mpg & cylinder columns
#'
#' @param x variable to average
#' @return a table summarizing columns 'cyl' and 'mpg'
#' @export
#' @importFrom dplyr group_by summarise n %>%
#' @importFrom rlang .data
#' @example cyl_sum(wt)
cyl_sum <- function(x){
    mtcars %>%
        dplyr::group_by(.data$cyl) %>%
        dplyr::summarise(n = dplyr::n(), avg = mean({{ x }}))
}
