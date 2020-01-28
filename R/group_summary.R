#' Title
#' Summarize by group
#'
#' @param df dataframe
#' @param grp variable to group by
#' @param x variable to take the min and max of
#'
#' @return a tibble
#' @export
#'
#' @examples group_summary(mtcars, mpg, cyl)
group_summary <- function(df, x, ...) {
    df %>%
        group_by(...) %>%
        summarise(
            n = n(),
            min = min({{ x }}, na.rm = TRUE),
            max = max({{ x }}, na.rm = TRUE)
        )
}
