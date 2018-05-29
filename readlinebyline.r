

path <- "C:/Users/vpulij001c/Desktop/vj/R/ReadLineByLine/SaiArka_Whatapp_chat.txt"
print(path)

conn <- file(path,open="r")
lines <- readLines(conn)
for (i in 1:length(lines)){
  print(lines[i])
}
close(conn)

sentences<-scan("C:/Users/vpulij001c/Desktop/vj/R/ReadLineByLine/SaiArka_Whatapp_chat.txt"
                ,"character",sep="\n");
sentences<-gsub("\\.","",sentences)
sentences<-gsub("\\,","",sentences)
words<-strsplit(sentences," ")
words <- unlist(words)
words.freq<-table(unlist(words))

cbind(names(words.freq),as.integer(words.freq))
cbind.data.frame(names(words.freq),as.integer(words.freq)) 
## You might consider using cbind.data.frame instead of cbind


##corpus <- scan("https://cogcomp.org/page/resource_view/69
