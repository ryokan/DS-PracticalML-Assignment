pml.training <- read.csv("./data/pml-training.csv")

pml.testing <- read.csv("~/OneDrive/Projects/courses/08_PracticalMachineLearning/assignment/pml-testing.csv")
library("caret")

model0 <- train(classe ~ . , data=pml.training)

