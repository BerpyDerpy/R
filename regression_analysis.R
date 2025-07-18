
install.packages(c("ggplot2", "dplyr"))
library(ggplot2)
library(dplyr)

head(mtcars)

ggplot(mtcars, aes(x = hp, y = mpg)) + geom_point() + ggtitle("Horsepower vs MPG")
ggplot(mtcars, aes(x = wt, y = mpg)) + geom_point() + ggtitle("Weight vs MPG")

model1 <- lm(mpg ~ hp + wt, data = mtcars)

summary(model1)

test1 <- data.frame(hp = 120, wt = 2.8)
predict(model1, test1)

head(iris)

ggplot(iris, aes(x = Petal.Length, y = Petal.Width)) + geom_point() + ggtitle("Petal Length vs Petal Width")

model2 <- lm(Petal.Width ~ Petal.Length, data = iris)
summary(model2)

test2 <- data.frame( Petal.Length = 6)
predict(model2, test2)
