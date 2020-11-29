getwd()
setwd("C:/Users/SAFA HURAYN/Desktop/CS5/DataAnalytics/Project")
data <- read.csv('data.csv')
str(data)
data$diagnosis <- as.factor(data$diagnosis)
data<-data[,-33]
summary(data)
any(is.na(data))
data$diagnosis <- as.character.factor(data$diagnosis)
data <- within(data, diagnosis[diagnosis == 'M'] <- 'Malignant')
data <- within(data, diagnosis[diagnosis == 'B'] <- 'Benign')

library(ggplot2)
ggplot(data, aes(x=diagnosis, fill = diagnosis))+
  theme_bw()+ geom_bar()+
  labs(x = "Diagnosis", y = "Data Count")
prop.table(table(data$diagnosis))
corr_mat <- cor(data[,3:ncol(data)])

install.packages("tmvnsim")
library(tmvnsim)
psych::describeBy(data[3:32], group=data$diagnosis)



install.packages("reshape")
library(reshape)
#mean
df.m <- melt(data[,-c(1,13:32)], id.var = "diagnosis")
p <- ggplot(data = df.m, aes(x=variable, y=value)) +
  geom_boxplot(aes(fill=diagnosis)) + facet_wrap( ~ variable, scales="free")+ xlab("Variables") + ylab("")+ guides(fill=guide_legend(title="Group"))
p

#Se
df.m <- melt(data[,-c(1,3:12,23:32)], id.var = "diagnosis")
p <- ggplot(data = df.m, aes(x=variable, y=value)) +
  geom_boxplot(aes(fill=diagnosis)) + facet_wrap( ~ variable, scales="free")+ xlab("Variables") + ylab("")+ guides(fill=guide_legend(title="Group"))
p

#Worst
df.m <- melt(data[,c(2,23:32)], id.var = "diagnosis")
p <- ggplot(data = df.m, aes(x=variable, y=value)) +
  geom_boxplot(aes(fill=diagnosis)) + facet_wrap( ~ variable, scales="free")+ xlab("Variables") + ylab("")+ guides(fill=guide_legend(title="Group"))
p



library(corrplot)
corrplot(corr_mat, order = "hclust", tl.cex = 1, addrect = 8)

#num <- data[,3:ncol(data)]
#data_matrix <- data.matrix(num)
#heatmap(data_matrix, Rowv=NA, Colv=NA, col = heat.colors(256), scale="column", margins=c(5,10))

set.seed(1234)
install.packages("caret", dependencies = c("Depends", "Suggests"))
install.packages("caret",
                 repos = "http://cran.r-project.org",
                 dependencies = c("Depends", "Imports", "Suggests"))
install.packages('devtools')
install.packages("gower")
library(gower)
library(devtools)
install.packages("lava")
library(lava)
library(caret)
data_index <- createDataPartition(data$diagnosis, p=0.7, list = FALSE)
training_data<- data[data_index, -1]
test_data <- data[-data_index, -1]
pca_res <- prcomp(data[,3:ncol(data)], center = TRUE, scale = TRUE)
plot(pca_res, type="l")
summary(pca_res)
pca_df <- as.data.frame(pca_res$x)
ggplot(pca_df, aes(x=PC1, y=PC2, col=data$diagnosis)) + geom_point(alpha=0.5)

ggplot(pca_df, aes(x=PC1, fill=data$diagnosis)) + geom_density(alpha=0.25)
ggplot(pca_df, aes(x=PC2, fill=data$diagnosis)) + geom_density(alpha=0.25)

names(training_data)
names(test_data)
