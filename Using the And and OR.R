#-----using the "&" (and) operation
 
bdat <- Batting%>%
  filter(HR >= 50 & SO <80)%>%
  select(playerID,HR,yearID)%>%
  arrange(desc(HR))

bdat
head(bdat)
str(bdat)
summary(bdat)

#-----Using the "|" (OR) operation

bdat <- Batting%>%
  filter(HR >= 50 | SO <25)%>%
  select(playerID,HR,yearID)%>%
  arrange(desc(HR))

bdat
head(bdat)
str(bdat)
summary(bdat)

#-----Using the "()" (parenthesis) for applying conditions

bdat <- Batting%>%
  filter(AB > 500 &  (HR >= 50 | SO < 25))%>%
  select(playerID,HR,yearID)%>%
  arrange(desc(HR))

bdat
head(bdat)
str(bdat)
summary(bdat)

