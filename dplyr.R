?sapply
head(mtcars)
mtcars
?mtcars
#ques: which car having a v-shaped engine has the lowest 1/4 mile time?
table(mtcars$vs,mtcars$qsec)
df1=mtcars

library('dplyr')

mtcars%>% filter(vs == 1,cyl==6) #== is for equality and = is for assigning value.
mtcars%>% filter(vs ==0) %>% top_n(-1,qsec) #-1 is for last value , make it -2 for last 2 values
mtcars%>% filter(vs ==1) %>% top_n(-1,qsec)
mtcars%>% filter(gear ==3) %>% top_n(1,hp) ##1 is for top value, make it 2 for first 2 values

mtcars%>% group_by(vs) %>% summarise(min(qsec), max(qsec))
mtcars%>% group_by(gear) %>% summarise(total=n(),max(mpg),min(hp))

#arrange
mtcars %>% arrange(am,mpg) %>% head(n=7)

mtcars %>% group_by(gear,cyl) %>% top_n(-1,qsec)

mtcars %>% sample_n(2)

mtcars %>% group_by(am) %>% sample_frac(.1) 
#apply 
x=trunc(rnorm(24,mean=60,sd=10))
(m1=matrix(x,nrow=4, ncol=6))
colSums(m1)
rowSums(m1)
apply(X=m1,MARGIN = 1,FUN = sum)
apply(X=m1,MARGIN = 1,FUN = sd)
apply(X=m1,MARGIN = 2,FUN = mean)

lapply(X=m1,FUN = sum)

?summarise
group_by(vs)
?head
?dplyr

A=1:5;B=4:9; C = 1:10
(list1= list(A,B,C))
lapply(X=list1,FUN = length)
sapply(X=list1, FUN= length)
library(reshape2)
install.packages('reshape2')

(rollno=1:5)
sub1=trunc(rnorm(5,60,10))
sub2=trunc(rnorm(5,65,5))
sub3=trunc(rnorm(5,70,3))
gender=sample(c('m','f'),size=5,replace=TRUE)
(students=data.frame(rollno,gender,sub1,sub2,sub3))

longdata=melt(students,id.vars=c('rollno','gender'))
longdata
head(longdata)
