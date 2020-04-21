datax <-  read.delim("C:/Users/admin/Downloads/patient-data-cleaned.txt")
data <- data.frame(datax)
weight <- data$Weight
BMI <-  data$BMI
score <- data$Score
library(ggplot2)


plot1 <- ggplot(data) + geom_point(mapping= aes(x= BMI, y= weight, color= Height))
plot1
plot2 <- ggplot(data) + geom_point(mapping= aes(x= BMI, y= weight, color= Height)) + geom_smooth(mapping= aes(x= BMI, y= weight))
plot2
plot3 <- ggplot(data) + geom_point(mapping= aes(x= BMI, y= weight, color= Height)) + geom_smooth(mapping= aes(x= BMI, y= weight), method= 'lm',se= FALSE)
plot3
plot4 <- ggplot(data) + geom_boxplot(mapping= aes(x= Smokes, y= score, color= Sex))
plot4
plot5 <- ggplot(data= data, mapping= aes(x=Sex, y= Score, fill= factor(Age))) + geom_violin(trim= TRUE) +labs(fill = "Age") 
plot5
plot6 <- ggplot(data, mapping = aes(x = BMI, fill= Sex)) + geom_density(alpha=.4)
plot6
