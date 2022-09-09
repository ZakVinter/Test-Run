

#command shift enter for running all code


#Basic Arithmetic

1+2

6-7

5/2

2^3

2+4*1^3


#Logical Evaluation

1>2

(1>2) & (1>0.5)

1>2 | 1>0.5

!(1>2)


#Comments

#Comment should come before code and be in the present tense

#Test whether 4 is greater than 3

4>3


#Evaluation

#single = is for assigning variables
"1" = 1

1==1

#for not equals

1 != 2


#Objects

bill = 18.45
percentage = 0.2

bill * percentage

bill = 90

bill*percentage


#challenge



100*(100+1)
10100/2


(100*(100+1))/2


n = 100

n*(n+1)/2


#Function

log(50)

?log

log(50, 10)

log(50, base = 10)

log(base = 10, x = 50)

log(bill)

log(exp(50))


#Data Types

a = 2
class(a)

class("a")

class(TRUE)




#dslabs is now an object so no longer requires ""

library(dslabs)


data(murders)


class(murders)


#structure

str(murders)

summary(murders)

head(murders)

view(murders)


murders$population

length(murders$population)


hist(x = murders$population)

plot(x = murders$population, y = murders$total)

with(murders, plot(x = population, y = total))

rm(a)


#Vectors

countries = c("italy", "canada", "egypt")
codes = c(380, 124, 818)
class(codes)


codes = c(italy = 380, canada = 124, egypt = 818)
codes


#seq

seq(1, 10)
1:10
seq(5, 50, 5)


#subsetting

codes[2]
codes[c(1,3)]
codes[1:2]
codes["canada"]
codes[2] = 125
codes

#challenge

library(dslabs)
data("murders")


names(murders)[5] = "murders"
head(murders)
names(murders)[5] = "total"

#converting

x = 1:5
y = as.character(x)
y
as.numeric(y)

z = c(1, "canada", 3)
z
class(z)
as.numeric(z)

#special values

NA = NA

NA + 0
is.na(NA + 0)


1/0

-1/0

0/0


#vector arithmetic

inches = 1:12
cm = inches * 2.54
cm


murder_rate = murders$total/murders$population * 1e5
murder_rate
mean(murder_rate)

#dataframes in-depth

murders$rate = murders$total/murders$population * 1e5
head(murders)

murders_with_rate = cbind(murders, murder_rate)
head(murders_with_rate)

#subset with logical

low = murder_rate <= 0.6
low


murders$state[low]
sum(low)

#challenge

murders$state[murders$total = max(murders$total)]

#created logical vector


"Montana" %in% murders$state
c("District of Columbia", "Puerto Rico") %in% murders$state


record = list(name = "Jane Doe", id = 1234, grades = c(94, 88, 95))
record

record$id
record[["id"]]
record[[2]]
record$grades[3]
