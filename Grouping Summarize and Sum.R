#

bdat <- Batting%>%
  group_by(playerID)%>%
  summarize(career_HR=sum(HR,na.rm=TRUE))


bdat
head(bdat)
str(bdat)
summary(bdat)