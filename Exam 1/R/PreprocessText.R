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

