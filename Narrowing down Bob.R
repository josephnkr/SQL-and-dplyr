#-----Salaries

bdat <- Salaries%>%
  group_by(playerID)%>%
  summarize(avg_career_salary=mean(salary))%>%
  filter(avg_career_salary>1000000)

#-----Narrowing down name

bdat <- inner_join(bdat,Master,by=c("playerID"))%>%
  filter(nameFirst == "Bob")%>%
  select(nameFirst,nameLast)




bdat

