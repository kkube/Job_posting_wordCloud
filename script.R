library(tm)

text_file <- "C:/Users/Barb/Desktop"
text <- read.delim(file.choose())

text <- text$X
text <- as.character(text)
text_source <- VectorSource(text)
text_corpus <- VCorpus(text_source)
text_corpus

# pre-processing
text_data <- text
text_data <- tolower(text_data)
text_data <- removePunctuation(text_data)


# these common words will be removed from the text
stopwords("en")

text_data <- removeWords(text_data, stopwords("en"))
