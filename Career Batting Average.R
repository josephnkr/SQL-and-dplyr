#-----remember to apply library at the restart of projects


library(dplyr)
library(Lahman)

#-----Calculating the batting average for players with over 1000 bats

bdat <- Batting%>%
  group_by(playerID)%>%
  summarize(career_H=sum(H,na.rm=TRUE),career_AB=sum(AB,na.rm=TRUE))%>%
  filter(career_AB > 1000)%>%
  mutate(career_BA=round(career_H/career_AB,3))%>%
  select(playerID,career_BA)%>%
  arrange(desc(career_BA))

bdat
head(bdat)
str(bdat)
summary(bdat)
