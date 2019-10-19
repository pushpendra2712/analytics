#importing a CSV File
# CSV files - used to store tabular data
# CSV stands for "comma-separated value"

x=read.csv("importation.csv")
x
x=read.csv("importation.csv", header = T)
x
install.packages('xlsx')
library(xlsx)
install.packages("rJava")
library(rJava)

url = "https://docs.google.com/spreadsheets/d/19OQhNIkreK6TSiUzX_DTroOnqXDjJdwu-ojTcQAeCG8/edit?usp=sharing"
install.packages("gsheet")

install.packages("Rtools")
library(Rtools)
library(gsheet)

?sapply
paste("a", "b", sep = ":")

install.packages()