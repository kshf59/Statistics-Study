library(randomForest)

# 랜덤 포레스트를 생성
# randomForest(
#    formula, 모델 포뮬러
#    data, 포뮬러를 적용할 데이터
#    ntree= 500, 나무의 개수
#    mtry, 노드를 나눌 기준을 정할 때 고려할 변수의 수
#    importance 변수의 중요도 평가 여부
#    )
# 반환 값은 randomForest 객체


# 랜덤포레스트를 사용한 예측을 수행
# predict.randomForest(
#   object, randomForest 객체
#   newdata, 예측을 수행할 데이터
#   type=c("response","prob","vote")
# )
# 반환 값은 예측 결과

# 랜덤포레스트로부터 변수 중요도를 출력
# importance(
#   x, randomForest 모델
#   출력할 변수 중요도 유형으로 1은 정확도(Accuracy), 2는 노드 불순도로 변수 중요도를 표시
#   type이 지정되지 않으면 정확도, 불순도 모두에 대한 중요도가 출력된다.
#   type = NULL
# )

# 변수 중요도의 그래프를 그린다
# varImpPlot(
#   x,
#   type=NULL
# )
  
  
  