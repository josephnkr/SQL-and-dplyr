library(Lahman)
library(dplyr)

bdat <- Teams%>%
  filter(park=="Petco Park")%>%
  select(teamID,yearID)

bdat <- Batting%>%
  filter(teamID=="SDN",yearID >= 2004, yearID <= 2013)%>%
  select(playerID)

bdat <- inner_join(bdat,Master,by=c("playerID"))%>%
  group_by(playerID)%>%
  summarize(First_name=nameFirst[1],Last_name=nameLast[1])%>%
  select(First_name,Last_name)

bdat
