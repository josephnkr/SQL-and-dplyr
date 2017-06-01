bdat <- inner_join(Batting,Master,by=c("playerID"))%>%
  group_by(playerID)%>%
  summarize(First=nameFirst[1],Last=nameLast[1],career_HR=sum(HR,na.rm=TRUE))%>%
  select(First,Last,career_HR)
bdat
