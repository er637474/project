library("ProjectTemplate")
load.project("Eduardo Rosillo csx415")

str(projectdata)

1:12
c(1,10,11)
projectdata[1:12,c(1,10,11)]

with(projectdata, summary(Total_Usage))
with(projectdata, summary(Cost_Monthly))

ggplot(data=projectdata, aes(x=Month, y=Total_Usage, group = 1)) + 
  geom_line(color = "black", linetype = "dashed", size =1.5) + 
  geom_point(color = "black", size = 4, shape=21, fill = "black") +
  scale_x_discrete(limits = month.name)


ggplot(data=projectdata, aes(x=Month, y=Cost_Monthly, group = 1))+ 
  geom_line(color = "black", linetype = "dashed", size =1.5) + 
  geom_point(color = "black", size = 4, shape=21, fill = "black") +
  scale_x_discrete(limits = month.name)

pd.quant <- projectdata[c(10,11)]
cor(pd.quant)
cor.test(pd.quant$Total_Usage, pd.quant$Cost_Monthly)
rcorr(as.matrix(pd.quant)) 
