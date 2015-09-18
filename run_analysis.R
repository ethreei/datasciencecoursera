## Load libraries

    library(dplyr) #Data Manipulation
    library(tidyr) #Data Tidying

## Extract all necessary files into separate variables

    train_data <- read.table("train/X_train.txt")
    train_label <- read.table("train/y_train.txt")
    
    test_data <- read.table("test/X_test.txt")
    test_label <- read.table("test/y_test.txt")
    
    feature_data <- read.table("features.txt")
    activity_data <- read.table("activity_labels.txt")

## Merge the data and labels into 1 data frame each

    merge_data <- rbind(train_data,test_data)
    merge_label <- rbind(train_label,test_label)
    
## Subset the data into variables only including mean or std. Change the colnames appropriately.
    
    clean_data <- merge_data[,grepl("mean\\()|std\\()",feature_data$V2)]
    colnames(clean_data) <- feature_data[grepl("mean\\()|std\\()",feature_data$V2),2]
    
## Change label into descriptive words and merge to clean data
    
    clean_data <- cbind(clean_data,merge_label)
    clean_data <- merge(clean_data, activity_data, by="V1")
    clean_data <- rename(clean_data,activity_value=V1,activity=V2)
    clean_data <- select(clean_data,-activity_value)
    
## Perform tidy operations to tidy the data
    
    tidy_data <- gather(clean_data,features,count,1:66,-activity)
    tidy_data <- separate(tidy_data, features,c("feature","measurement","axis"))
    
## Condense data by grouping and averaging
    
    tidy_data <- tidy_data %>% 
        group_by(feature,activity,measurement,axis) %>% 
        summarise (average=mean(count))
    
## Factoring data & lower casing activities
    
    tidy_data$feature <- as.factor(tidy_data$feature)
    tidy_data$measurement <- as.factor(tidy_data$measurement)
    tidy_data$axis <- as.factor(tidy_data$axis)
    tidy_data$activity <- as.factor(tolower(tidy_data$activity))
    
## Write data into txt format
    
    write.table(tidy_data, file="tidy_data.txt", row.names = FALSE)