bdat <- Batting%>%
  filter(playerID=="ruthba01")%>%
  select(playerID,teamID,yearID,HR)

bdat <- inner_join(bdat,Teams,by=c("teamID","yearID"))%>%
  select(playerID,name,yearID,HR.x)



head(bdat)
bdat



