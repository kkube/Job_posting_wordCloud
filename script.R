library(tm)
library(qdap)

text_file <- "C:/Users/Barb/Desktop"
text <- read.delim(file.choose())

text <- text$X
text <- as.character(text)
text_source <- VectorSource(text)
text_corpus <- VCorpus(text_source)


# these common words will be removed from the text
stopwords("en")

clean_corpus <- function(corpus) {
  # Remove punctuation
  corpus <- tm_map(corpus, removePunctuation)
  # Transform to lower case
  corpus <- tm_map(corpus, tolower)
  # Add more stopwords
  corpus <- tm_map(corpus, removeWords, stopwords("en"))
  # Strip whitespace
  corpus <- tm_map(corpus, stripWhitespace)
  return(corpus)
}

clean_corpus(text_corpus)
# stemming words
n_char_vec <- unlist(strsplit(text_data, split = ' '))
stem_doc <- stemDocument(n_char_vec)
