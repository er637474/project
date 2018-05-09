#' Random forest model development for Energy Audit
#' 
#'
#'
#'

install_cran("randomForest")
library(randomForest)
projectdata <- pd.csv <- read.csv("C:/Users/eduardo/Desktop/projectdata.csv")
#training Sample with 121 observations
str(projectdata)
1:12
c(1,10,11)
pd = projectdata[1:12,c(1,10,11)]
pd.quant <- projectdata[c(10,11)]

train=sample(1:nrow(pd),12)  
fprojectdata.rf=randomForest(x = "pd$Month", data = pd , subset = train)
projectdata.rf
plot(projectdata.rf)
oob.err=double(2)
test.err=double(2)

