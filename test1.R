install.packages("AER")
library(AER)
data(CreditCard)
install.packages("rpart")
install.packages("rpart.plot")
install.packages("rattle")
library("rpart")
library("rpart.plot")
library("rattle")

bankcard <- subset(CreditCard, select = c(card, reports, age, income, owner, months))
bankcard$card <- ifelse(bankcard$card == "yes", 1, 0);

#(2)���ռҫ�
#���o�`����
n <- nrow(bankcard)
#�]�w�H���ƺؤl
set.seed(1117)
#�N�ƾڶ��ǭ��s�ƦC
newbankcard <- bankcard[sample(n),]