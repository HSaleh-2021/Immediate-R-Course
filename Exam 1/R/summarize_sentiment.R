#' Summarize Sentiment
#'
#' Summarizes positive and negative word counts and calculates a sentiment ratio.
#' @param words A vector of preprocessed words.
#' @param positive_words Positive sentiment words.
#' @param negative_words Negative sentiment words.
#' @return A list with counts and ratio.
#' @examples
#' summarize_sentiment(c("hope", "nauseous"), c("hope"), c("nauseous"))
summarize_sentiment <- function(words, positive_words, negative_words) {
  positive_count <- compare_words(words, positive_words)
  negative_count <- compare_words(words, negative_words)
  sentiment_ratio <- positive_count / (negative_count + 1)  # Avoid division by zero
  return(list(positive = positive_count, negative = negative_count, ratio = sentiment_ratio))
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

