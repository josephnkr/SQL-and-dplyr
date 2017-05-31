#-----Mutate allows you to calculate columns

bdat <- Batting%>%
  filter(AB >= 400)%>%
  mutate(batting_avg=round(H/AB,3))%>%
  select(playerID,batting_avg,yearID)%>%
  arrange(desc(batting_avg))

bdat
head(bdat)
str(bdat)
summary(bdat)
