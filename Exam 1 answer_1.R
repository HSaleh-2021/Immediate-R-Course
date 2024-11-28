#Create a package with an appropriate name for its functionality.
#the package name is semanticAnalysis


#Load the file as raw text
file_path <- "Exam 1/Example_negative.txt"
text_data <- readLines(file_path)

#Combine all lines into a single string
text_data <- paste(text_data, collapse = " ")

#Convert to lowercase
text_vector <- tolower(text_data)

#Split into words
words <- unlist(strsplit(text_vector, "\\W+"))  # Split on non-word characters

#Remove empty strings
words <- words[words != ""]
print(words)

# Define positive and negative words
positive_words <- c("hope", "manage", "cooperate", "reasonable")
negative_words <- c("overwhelming", "fatigue", "strange" , "nauseous", "frustrating", "trapped", "restless", "heavy", "help")

# Count positive words
positive_count <- sum(words %in% positive_words)

# Count negative words
negative_count <- sum(words %in% negative_words)

# Calculate sentiment ratio
sentiment_ratio <- positive_count / (negative_count )  # Add 1 to avoid division by zero

# Display results
cat("Positive words:", positive_count, "\n")
cat("Negative words:", negative_count, "\n")
cat("Sentiment ratio (positive/negative):", sentiment_ratio, "\n")

negative_count <- sum(sapply(words, function(word) any(startsWith(word, negative_words) | endsWith(word, negative_words))))
stopwords <- c("i", "the", "and", "of", "to", "a", "in", "this", "is", "that", "it")
words <- words[!words %in% stopwords]

