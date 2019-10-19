#**************bar plot in R----
#count of categories
View(mtcars)
cylinders=table(mtcars$cyl)
barplot(height=cylinders)
table(mtcars$cyl)

barplot(height = table(mtcars$am))
barplot(height = table(mtcars$gear),col = 9:11,main = 'No of cars of each gear type', xlab = 'Gear type', ylab = 'Count of Cars')
barplot(height = table(mtcars$carb),col = 10:1, horiz=T, main = 'No of cars of each carb tpe', xlab = 'count of cars', ylab = 'no of carb')

#**************** histogram in R----
hist(mtcars$mpg,col = "red", breaks = 12)
?hist
#***************** density plot in R ----
#these plots are effective way to view distribution of variable
#density plots 
d=density(mtcars$mpg,)
plot(d,main = "density of miles per gallon")
polygon(d,col = "green",border = "blue")

#comparing groups via density
#compare mpg distributions

install.packages('sm')
library(sm)
attach(mtcars)
#create value labels.
cyl.f=factor(cyl,levels = c(4,6,8), labels = c("4 cylinders","6 cylinders","8 cylinders"))
#plot densities
sm.density.compare(mpg,cyl,xlab="Miles per gallon")
title(main="MPG distribution by car cylinder")

View(women)
hist(women$height)
#*****************  boxplot in R----
boxplot(mtcars$mpg,col='yellow')
abline(h=mean(mtcars$mpg))

q=c(10,20,30)
boxplot(mtcars$mpg;col = "yellow")
abline(h=q,col=1:3)

#line plots in R----

X=1:10
Y=11:20
plot(x=X,y=Y)
plot(x=X,y=Y,type='s')
plot(x=X,y=Y,type='p',pch = 9,col = 'red') #point plotting symbol
plot(x=X,y=Y,type='p',pch = 10, cex = 1.1) #
