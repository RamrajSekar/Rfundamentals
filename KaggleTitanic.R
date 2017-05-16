#str(train)
print(table(train$Survived))

print(prop.table(table(train$Survived)))

test$Survived <- rep(0, 418)

allperished <- data.frame(PassengerId = test$PassengerId, Survived = test$Survived)
write.csv(allperished, file = "allperished.csv", row.names = FALSE)

print(table(train$Sex))

print(prop.table(table(train$Sex, train$Survived)))

print(prop.table(table(train$Sex, train$Survived),1))

test$Survived <- 0
test$Survived[test$Sex == 'female'] <- 1

allsurbygender <- data.frame(PassengerId = test$PassengerId, Survived = test$Survived)
write.csv(allsurbygender, file = "allsurbygender.csv", row.names = FALSE)


print(summary(train$Age))

print(table(train$Age,train$Sex, train$Survived))

print(prop.table(table(train$Sex,train$Age, train$Survived),1))
