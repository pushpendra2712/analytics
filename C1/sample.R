#sample 

?set.seed
?sample
sample(1:100)

LETTERS[1:26]
sample(x=LETTERS[1:26],size=100,replace=T)

gender = c('M','F')
gender

x=sample(x=gender,size=100,replace=T)
x

table(x)
x2 = sample(x=gender,size=10000,replace=T,prob = c(.4, .6))
x2
table(x2)
prop.table(table(x2))
class = c('MBA','BBA')

y=sample(x=class,size = 1000, replace = T, prob = c(.6, .4))
y
table(y)

prop.table(table(y))
