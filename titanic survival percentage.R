library(dplyr)

titanic <- read.csv("titanic.csv")

dat <- titanic%>%
    group_by(sex)%>%
    summarize(percent_surviving=mean(survived))
  
head(dat)
