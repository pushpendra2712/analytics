#vector
#have only one kind of data - numeric,character, logical or interger
#c() -- c means concatenation - meaning making a string. "c" will always be small


#numeric
x = c(2,3,4,5,6)
x
class(x)#class will tell the data type

#character 
y = c('a','b','c','d','e','f')
y

#logical
z = c(TRUE,FALSE,TRUE,FALSE) #logical operators should be in block capital letters
z

#integer
i = c(1L,2L,3L,4L)

class(x)
class(y)
class(z)
typeof(x)
typeof(a)
typeof(i)

#adding element to vector
y = c(y,'g')
y

#vectors from a sequence of numbers
series=1:10
series
seq(10)
seq(1,10,1.5) # 1.5 will the common difference like in A.P.
seq(1,50,4)

#Missing value in vector
#is.na
#anyNA

u = c('a','c',NA,'d')
is.na(u) #is.na will tell for individual values if the value is NA or not
anyNA(u) #will tell if there is a NA value in entire vector


#slicing the vector
#we can select one or many elements from a vector by using the square bracket[].

k = seq(1,20,1.5)
k
k[5:8] #showing 5,6,7& 8th value

k[c(1,3,5)] # to show individual value at a particular position in vector

y[3]
length(y) # will tell the length of the vector


