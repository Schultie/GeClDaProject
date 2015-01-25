#Reads in all the data
library(dplyr)

x_test=read.table("X_test.txt")
y_test=read.table("y_test.txt")
subject_test=read.table("subject_test.txt")


x_train=read.table("X_train.txt")
y_train=read.table("y_train.txt")
subject_train=read.table("subject_train.txt")


features=read.table("features.txt",as.is=2) #Read the features in as character vector so that we can apply grepl to select the features we want. 
activities=read.table("activity_labels.txt") 


#Create tidy data set 1 

x=rbind(x_test,x_train)
y=rbind(y_test,y_train)
y=activities[y[[1]],2] #Transform y from numeric to character factor 
subject=rbind(subject_test,subject_train)

tidy_features_index= grepl("[m]ean|[s]td",features[,2]) #Index vector that shows which features have "mean" or "std" in the name 
tidy_features=features[tidy_features_index,2] #The corresponding features
x_tidy=x[,tidy_features_index]
tidy_data=cbind(x_tidy,subject,y)
colnames(tidy_data)=c(tidy_features,"subject","activity")
tidy_data=arrange(tidy_data,subject,activity)

#Create tidy data set 2 

tidy_data_2=aggregate(tidy_data[,1:79],by=list(tidy_data[,81],tidy_data[,80]), FUN= "mean" )
colnames(tidy_data_2)=c("activity","subject",tidy_features)
write.table(tidy_data_2,file="tidy_data_2.txt",row.names=F)





