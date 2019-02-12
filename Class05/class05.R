#Input weight in R
weight <- read.table("bimm143_05_rstats/weight_chart.txt", header =TRUE, sep = ",")

#Plot the function
plot(weight)

#Input our feature count data
mouse <- read.table("feature_counts.txt", header = TRUE, sep= "\t")

barplot(mouse$Count, horiz = FALSE, names.arg = mouse$Feature, las=2)

#change margin so we can see the labels
par(mar=c(5.2, 8.1, 4.1, 2.1))
barplot(mouse$Count, horiz = TRUE, names.arg = mouse$Feature, las=2)

#Make histogram of function
hist(mouse$Count)

#Barplot Male_Female_counts.txt
#barplot("male_female_counts.txt", col=rainbow(10))

#section 3
#Using color

mf <- read.table("bimm143_05_rstats/male_female_counts.txt", sep = "\t", header = TRUE)

barplot(mf$Count, names.arg = mf$Sample, col=c("red", "blue"), las= 2)

#expression data
e <-read.table("bimm143_05_rstats/up_down_expression.txt", header = TRUE)

#How many genes?
nrow(e)

#How many up, down and all around?
table(e$State)

plot(e$condition1, e$condition2, col=e$State)







