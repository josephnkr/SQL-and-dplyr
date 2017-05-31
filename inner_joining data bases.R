bdat <- Batting%>%
  select(playerID, teamID, yearID, HR)

bdat <- inner_join(bdat,Master,by=c("playerID"))%>%
  select(first_name=nameFirst, last_name=nameLast, teamID, yearID, HR)
  
bdat
head(bdat)
str(bdat)
summary(bdat)

head(Master)
