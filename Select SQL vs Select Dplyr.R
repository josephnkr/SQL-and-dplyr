#-----must use %>% in dplyr

#-----Use filtering before selecting

#-----You are not allowed to filter a category outside of the categories you've selected



bdat <- Batting%>%
  filter(SO < 25)%>%
  select(playerID,HR,yearID)%>%
  arrange(desc(HR))

bdat
head(bdat)

