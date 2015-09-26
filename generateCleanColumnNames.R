generateCleanColumnNames <- function(columns=vector()) {
  columns <- gsub("\\(\\)", "", columns)
  columns <- gsub("Mean\\)", "Mean", columns)
  columns <- gsub("gravity\\)", "gravity", columns)
  columns <- make.names(columns)
  columns
}