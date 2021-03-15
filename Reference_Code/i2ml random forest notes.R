#
library(mlr3)
library(mlr3learners)
library(mlr3filters)
library(rpart.plot)
tsk("spam")

task_spam = tsk("spam")
learner = lrn("classif.rpart")
learner$train(task_spam)

rpart.plot(learner$model, roundint =F)

set.seed(21)

subset1 = sample.int(task_spam$nrow, size = 0.8 * task_spam$nrow)
subset2 = sample.int(task_spam$nrow, size = 0.8 * task_spam$nrow)

learner$train(task_spam, row_ids = subset1)
rpart.plot(learner$model, roundint =F)

learner$train(task_spam, row_ids = subset2)
rpart.plot(learner$model, roundint =F)


learner = lrn("classif.ranger", "oob.error" =T)
learner$train(tsk("spam"))

model = learner$model
model$prediction.error

learner = lrn("classif.ranger", importance ="permutation", "oob.error" =T)
filter=flt("importance",learner = learner)
filter$calculate(tsk("spam"))
head(as.data.table(filter),5)
