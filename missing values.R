write.csv(mtcars,'mtcars.csv')
read.csv(file = 'mtcars.csv')
View(mtcars)

#*************************************missing values in R.... ********************************************
df1 = data.frame(A=c(2,NA,9,NA),
                 B=c(4,NA,55,66),
                 C=c(3,44,1,22))
df1
is.na(df1)  #--- indicates which values are missing
any(is.na(df1)) #--- indicates f there are any na
sum(is.na(df1)) #--- counts the number of NAs
summary(df1)  #--- find NAs
complete.cases(df1)   #--- to find rows without missing values.
df1[complete.cases(df1),]  #-- get me rows whic have no missing valuess.

na.omit(df1) #--- deletes rows with any NA value.

df_titanic=read.csv(file='TitanicDataMissingValues.csv')
View('TitanicDataMissingValues.csv')
dim(df_titanic)

list_na = colnames(df_titanic)[apply(df_titanic,2,anyNA)]
list_na

#***************EXclude missing observations*********************************
library(dplyr)
df_titanic_drop=df_titanic %>% na.omit()
dim(df_titanic_drop)

#****************imputing