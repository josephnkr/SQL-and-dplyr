bdat <- Batting%>%
  filter(playerID=="ruthba01")%>%
  select(playerID,teamID,yearID,HR)

bdat <- inner_join(bdat,Master,by=c("playerID"))%>%
  select(nameFirst,nameLast,teamID,yearID,HR)

bdat <- inner_join(bdat,Teams,by=c("teamID","yearID"))%>%
  select(First=nameFirst,Last=nameLast,name,yearID,HR.x)

bdat
