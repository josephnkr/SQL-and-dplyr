bdat <- Batting%>%
  group_by(playerID)%>%
  summarize(number_of_records=n())
  


bdat
head(bdat)
str(bdat)
summary(bdat)
