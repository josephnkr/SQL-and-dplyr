

bdat <- Batting%>%
  filter(AB >= 400)%>%
  group_by(playerID)%>%
  summarize(min_career_SO=min(SO,na.rm=TRUE))%>%
  filter(min_career_SO < 20)%>%
  arrange(min_career_SO)


bdat
head(bdat)
str(bdat)
summary(bdat)
