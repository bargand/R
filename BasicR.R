#sink('output.txt')
x<- 56
y<- 87

56 ->Z
Z

a = 67
print(a)


#data Types

#logical, numaric, intiger, complex, character, raw

#numaric = -23, 86.78, 96
#intiger = 36L
#complex = 5+2i, 2k-7
#logical= true and false
#character= "Debargha", 'tubai'
#raw
num <- 56
class(num)
typeof(num)

# conversion of data types

num1 <- as.numeric("26")
print(num1)
typeof(num1)

num2 <- as.numeric("12df")
print(num2)
typeof(num2)

#input text

{name <- readline("enter your name: ");
age <- readline(prompt = "enter your age: ")}
print(name)
print(integer(age))
print(paste("My name is",name,"and age is",age))


#operators in R

#Arithmatic Operator
a<-3
b<-6
print(a+b) #addition
print(a-b) #substraction
print(a/b) #div
print(a*b) #multi
print(a%%b) #reminder
print(a%/%b) # quotient
print(a^b) # power of


#Relational < > == <= >= !=
d1 = 34
d2 = 56

print(d1==d2)
print(d1<d2)
print(d1>d2)
print(d1<=d2)
print(d1>=d2)
print(d1!=d2)


#logical & && ! | ||
e1 = c(1,TRUE,3-4i)
e2 = c(2,TRUE,6+4i)
print(e1 & e2)
#print(e1&&e2)
print(!e1)
print(e1 | e2)
print(e1 || e2)

#Assignment


#vector
c1 <- c(1,2,3,4)
c2 <- c(5,6,7,8)

print(c1+c2) #addition
print(c1-c2) #substraction
print(c1/c2) #div
print(c1*c2) #multi
print(c1%%c2) #reminder
print(c1%/%c2) # quotient
print(c1^c2) 


#sink()


#IF Else statements

f <- 35
g <- 45

if(f>g){
  print("yes")
}else{
  print("no")
}

h <- c("Debargha Nandi","is","a","bad","boy")

if("Debargha" %in%h){
  print("yes the word is there")
}else if("boy" %in%h){
  print("boy is present in the H")
}else{
  print("i can't find")
}

#R functions
fun_name <- function(){
  for (i in 99:975) {
    print(i^2)
  }
}
fun_name()

fun_name2 <- function(x,y,z){
  sum <- x+y+z
  print(sum)
}
fun_name2(4,6,10)

k <- 34
l <- 45
print(k+l)

m <- readline(integer("enter first number: "))
n <- readline(integer("enter second number: "))
print(m+n)









































