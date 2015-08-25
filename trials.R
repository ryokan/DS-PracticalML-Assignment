pml.training <- read.csv("./data/pml-training.csv")

pml.testing <- read.csv("~/OneDrive/Projects/courses/08_PracticalMachineLearning/assignment/pml-testing.csv")
library("caret")


model0 <- train(classe~., data=training, preProcess=c("knnImpute"), method="rf", prox=TRUE)
pred0 <- predict(model0, newdata=testing)

confusionMatrix(pred0, testing$classe)

Confusion Matrix and Statistics

Reference
Prediction    A    B    C    D    E
A 1393    4    0    0    0
B    2  940   11    0    0
C    0    5  844   20    0
D    0    0    0  784    3
E    0    0    0    0  898

Overall Statistics

Accuracy : 0.9908          
95% CI : (0.9877, 0.9933)
No Information Rate : 0.2845          
P-Value [Acc > NIR] : < 2.2e-16       

Kappa : 0.9884          
Mcnemar's Test P-Value : NA              

Statistics by Class:

                     Class: A Class: B Class: C Class: D Class: E
Sensitivity            0.9986   0.9905   0.9871   0.9751   0.9967
Specificity            0.9989   0.9967   0.9938   0.9993   1.0000
Pos Pred Value         0.9971   0.9864   0.9712   0.9962   1.0000
Neg Pred Value         0.9994   0.9977   0.9973   0.9951   0.9993
Prevalence             0.2845   0.1935   0.1743   0.1639   0.1837
Detection Rate         0.2841   0.1917   0.1721   0.1599   0.1831
Detection Prevalence   0.2849   0.1943   0.1772   0.1605   0.1831
Balanced Accuracy      0.9987   0.9936   0.9905   0.9872   0.9983

