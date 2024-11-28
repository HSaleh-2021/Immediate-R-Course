#' Compare Words
#'
#' Matches words in a text vector to positive or negative word lists.
#' @param word_vector A vector of preprocessed words.
#' @param sentiment_words A vector of sentiment words (supports prefixes/suffixes).
#' @return The count of matched words.
#' @examples
#' compare_words(c("hope", "nauseous"), c("hope", "cooperat*"))
compare_words <- function(word_vector, sentiment_words) {
  count <- sum(sapply(word_vector, function(word) {
    any(startsWith(word, sentiment_words) | endsWith(word, sentiment_words))
  }))
  return(count)
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
