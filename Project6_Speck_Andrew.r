is.numeric(loan$loan_amnt)
library(ggplot2)
ggplot(data = loan, aes(loan_amnt)) + geom_histogram(aes(y =..density..), colour = "black", fill = "white")+
  geom_density(alpha = 0.2, fill ="pink")+geom_vline(aes(xintercept=mean(loan_amnt)),
                                                     color ="orange",linetype="dashed", size=1)

is.numeric(loan$annual_inc)
ggplot(data = loan, aes(x = annual_inc, y=loan_amnt))+geom_point()+geom_smooth() 



is.numeric(loan$grade)
is.numeric(loan$term)
loan$grade <- as.factor(loan$grade)
loan$term <- as.factor(loan$term)

ggplot(data = loan, aes(x = grade, y= ..count..)) + geom_bar(aes(fill = term), position = "dodge")



ggplot(data = loan, aes(x = grade, y = loan_amnt)) + geom_dotplot( aes(fill = grade),
                                                                                binaxis = "y",         
                                                                                binwidth = 2,       
                                                                                stackdir = "center" )  



ggplot(data = loan, aes(x=term, y=loan_amnt)) + 
  geom_boxplot(aes(col= term ), notch = TRUE)
ggsave("C:\\Users\\andre\\pictures\\loanweek66.jpg", width = 20, height = 15, units = "cm")