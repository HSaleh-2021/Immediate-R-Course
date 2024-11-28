# Step 1: Load the file as raw text
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
positive_words <- c("hope", "cooperate", "relief", "happy", "reasonable")
negative_words <- c("fatigue", "nauseous", "frustrating", "trapped", "restless", "heavy", "help")
