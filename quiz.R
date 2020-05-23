# Quiz week 3

library(datasets)
data(iris)

?iris
mean(iris$Sepal.Length[iris$Species=='virginica'])

apply(iris[,1:4], 2, mean)

library(datasets)
data(mtcars)
?mtcars

sapply(split(mtcars$mpg,mtcars$cyl),mean)
tapply(mtcars$mpg,mtcars$cyl, mean)
with(mtcars,tapply(mpg, cyl, mean))

sapply(split(mtcars$hp,mtcars$cyl),mean)
abs(sapply(split(mtcars$hp,mtcars$cyl),mean)['4']-
    sapply(split(mtcars$hp,mtcars$cyl),mean)['8'])