#-----Grouping, Summarizing, and Summing

bdat <- Batting%>%
  group_by(playerID)%>%
  summarize(career_HR=sum(HR,na.rm=TRUE))%>%
  arrange(desc(career_HR))


bdat
head(bdat)
str(bdat)
summary(bdat)