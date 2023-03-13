library(ggplot2)
Bank<-read.csv("BankWages.csv")
head(Bank)

Gas<-read.csv("NaturalGas.csv")
head(Gas)

one<-ggplot(Bank, aes(gender))
one + geom_bar() 

two<-ggplot(Gas, aes(year,price, color=year))
two+geom_point()

three<- ggplot(Gas, aes(state,consumption))
three + geom_boxplot()
