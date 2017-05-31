#-----Finding the average season hits
#-----This also shows how thinking in SQL helps ---**my opinion

bdat <- Batting%>%
  group_by(playerID)%>%
  summarize(avg_season_H=round(mean(H,na.rm=TRUE),2))%>%
  arrange(desc(avg_season_H))


bdat
head(bdat)
str(bdat)
summary(bdat)
