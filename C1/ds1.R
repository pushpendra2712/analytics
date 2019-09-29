#Data Structures


#Vectors----  
#data in vector get stored in a sequential format
#4 dashes to make a bookmarks

v1 = c('A', 'B','C')   #create a vector
v1   #print the vector
class(v1)  #print the class of vector
(v2 = c(1,2,3)) #2 round bracket create & print
v2
x = c(1,2,'a')
x
class(v2)
(v3 = c(TRUE, FALSE, TRUE))
class(v3)
V3a <- c(T,F,T) #TRUE - T, FALSE-F
(v4 = 100:200)
length(v4)
(v4a = 1:5000)
length(v4a) #?lenght = no. of items in vector
v5 = seq(1,10,2)
v4; v5  #two commands seperated by semicolon
v4
v4[c(6,14,18,99)] #square bracket are used to print position wise values , 
#c() to concatenate and create a vector.
v4[-c(1,3,4)]  #excluded postion 1,3,4

v4[v4 > 150] #list only values > 150
v7 = c('A','C','E','F')
v1
v1[!v1 %in% v7]  # find values in vector v1 but not in v7
#! = not included.
v1
v7[!v7 %in% v1]
v1['A']  #wrong/ error
v1[1]  # extract by position
v1
#to give name to vector position
v8 = 1:10
v8
names(v8)
#?LETTERS
LETTERS[1:10]
names(v8) = LETTERS[1:10]
month.abb[1:10]
v8  #see headings
v8['B']  #filter by columnname
v8[c('B','F')]
v8[2:8] #by position also

str(v8)
str(v1)
class(v8)
class(v1)

(t23a = 100:105)
names(t23a)
names(t23a) = c('satya','sakshi','akash','tushar','pushpa')

t23a[c('pushpa','akash')]
t23a[3]
#Matrix ----------------------------------------
#2 dim, rows and columns, single datatype ie number, character
?matrix
1:24  #seq of values
(matrix1 = matrix(1:24, ncol=6, byrow=T))
length(1:24)
matrix1[,1]  #first columns
matrix1[1,]
matrix1[2:4,3:5]  #2 to 4th rows, 3 to 4 column
matrix1[4,5]  #particular position
matrix1

(matrix2=matrix(1:24, ncol = 6))#
matrix2[4:5,7:8]                #MATRIX 2
matrix2[4,7]                    #

# fill the values byrow not bycol
(matrix2 = matrix(1:24,ncol=4, byrow=TRUE))

#give names to columns and rows
rn = paste('R',1:4, sep='-')
cn = paste('C',1:6, sep='-')
dimnames(matrix2) = list(c(rn), c(cn))
matrix2
matrix2['R-1',]
matrix2[,'C-1']

matrix1
dimnames(matrix1) = list(c(paste('R',1:4, sep='_')), c(paste('C',1:6,sep='')))
matrix1

#summary on Matrixes
matrix1
colSums(matrix1)
rowSums(matrix1)
rowMeans(matrix1)
colMeans(matrix1)

rowSums(matrix2[c(1,3),])

rowSums(matrix2[seq(1,4,2)],)
colSums(matrix2[,seq(1,6,2)])
matrix2[,seq(1,6,2)]

#Dataframe----
#rollno, name, course, dept

rollno = c(1:4)
name=c('Rohit','Lalit', 'Hitesh', 'Priya')
course=c('MBA','BBA','MCA', 'MBA')
dept=c('Dept1','Dept1','Dept2', 'Dept3')
gender = c('M', 'M', 'M', 'F')
grades = c('A','B','C','F')
?rnorm #normal distribution
rnorm(n=10, mean=50, sd=10)  #normal distributed,10 nos, mean, stddev
floor(12.67)  #remove decimals
?floor
marks=floor(rnorm(4,50,10))
students = data.frame(rollno, name, course, dept, marks, gender, grades)
students
class(students)
str(students)
summary(students)          
?factor
df = students  # save as another Dataframe
#df = fix(df)  #edit DF: small data only
df
str(df)
class(df)
summary(df)

#basic summary
table(df$gender,df$course)
table(df$course)
#more later 

#types of scale
#nominal, ordinal, interval, ratio

# Factors
str(df)
#factor is a category in R
df[1:2,]  # first 2 rows, all columns
df[,1:3]  # 1 to 3 columns, all rows
df[df$course == c('MBA','BBA') &  df$gender == 'M',]
#names should be character
df$name = as.character(df$name)
str(df)  #see the structure now

#grades can be ordered
df$grades = factor(df$grades, ordered=T, levels=c('A','B','C','D','E','F'))
str(df)
df$grades
table(df$grades)  #see the order of display
#reverse the order : A is highest level
df$grades = factor(df$grades, ordered=T, levels=c('F','E','D','C','B','A'))
df$grades
table(df$grades) # order of display

#gender should not be ordered
df$gender = factor(df$gender, ordered=F, levels=c('M','F'))
df$gender

table(df$course,df$gender)

#filter data
df[df$dept == 'Dept1',]
df[df$marks >= 50,]

