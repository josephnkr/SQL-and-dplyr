bdat <- Batting%>%
  group_by(playerID)%>%
  summarize(max_career_HR=max(HR),min_career_SO=min(SO))%>%
  arrange(desc(max_career_HR))


bdat
head(bdat)
str(bdat)
summary(bdat)
