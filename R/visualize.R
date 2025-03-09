#' Visualization
#'
#' Creates histogram, boxplot and numeric summary
#'
#' @param x A numeric variable.
#'
# Add returning value description and tag
#' @returns Some basic visualization (graphs).
#'
# Export this function
#' @export

#' @importFrom grDevices rainbow
#' @importFrom graphics boxplot hist par
#' @importFrom stats median

visualize <- function(x) {
  # 1 row and 2 columns
  par(mfrow = c(1,2))
  # Histogram
  hist(x, col = rainbow(30))
  # Box plot
  boxplot(x, col = 'green')
  # 1 row and 1 column
  par(mfrow = c(1,1))
  # Numeric summary
  data.frame(min = min(x),
             median = median(x),
             mean = mean(x),
             max = max(x))
}
