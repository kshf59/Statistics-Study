df<-read.csv('http://www-bcf.usc.edu/~gareth/ISL/Heart.csv')
str(df)
head(df)

# train 셋과 test셋으로 구분하기 위해 caret 사용
# 의사결정트리의 성능을 평가하기 위해서
library(caret)
set.seed(1000)
intrain <- createDataPartition(y=df$AHD, p= 0.7, list=FALSE)
# p=0.7 즉 비율을 70%를 train에 넣겠다
train <- df[intrain, ]
# 나머지 0.3 즉 비율 30%를 test에 넣는다
test <- df[-intrain, ]

# tree 패키지
library(tree)
treemod <- tree(AHD~. , data = train)
plot(treemod)
text(treemod)

?cv.tree

# 의사결정 트리 분류를 위해
cv.trees <- cv.tree(treemod, FUN= prune.misclass)
plot(cv.trees)

# CV그래프를 보니 6개의 가지가 있는 의사결정나무가 가장 분산이 낮다고 함
# 그래서 Pruning(가지치기)를 했다는데 6개 가지가 뭔지 모르겠음
prune.trees <- prune.misclass(treemod, best = 6)
plot(prune.trees)
text(prune.trees, pretty=0)

library(e1071)
treepred <- predict(prune.trees, test, type="class")
confusionMatrix(treepred, test$AHD)

# rpart 패키지해
#library(rpart)
#rpartmod<-rpart(AHD~. , data=train, method="class")
#plot(rpartmod)
#text(rpartmod)

