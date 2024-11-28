#' Preprocess Text
#'
#' Reads a text file and preprocesses it for sentiment analysis.
#' @param file_path Path to the text file.
#' @return A vector of preprocessed words.
#' @examples
#' preprocess_text("path/to/file.txt")
preprocess_text <- function(file_path) {
    text_data <- readLines(file_path)
    text_data <- paste(text_data, collapse = " ")
    text_vector <- tolower(text_data)
    words <- unlist(strsplit(text_vector, "\\W+"))
    words <- words[words != ""]
    return(words)
}

#' Preprocess Text
#'
#' Reads a text file and preprocesses it for sentiment analysis.
#'
#' @param file_path Path to the text file (e.g., a .txt file).
#' @return A vector of preprocessed words.
#' @examples
#' # Example usage:
#' file_path <- "Exam 1/Example_negative.txt"
#' words <- preprocess_text(file_path)
#' print(words)
preprocess_text <- function(file_path) {
  text_data <- readLines(file_path)
  text_data <- paste(text_data, collapse = " ")
  text_vector <- tolower(text_data)
  words <- unlist(strsplit(text_vector, "\\W+"))
  words <- words[words != ""]
  return(words)
}


