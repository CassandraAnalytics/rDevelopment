
# Set up VIM ####
install.packages('VIM')
install.packages('Rcpp')

# Explore VIM ####
mydata2 = VIM::sleep
names(mydata2)

VIM::aggr(mydata2)
VIM::aggr(mydata2,plot = F)

# IRIS Example ####
data(iris)
mydata0 = iris[, c(1, 2, 5)]
mydata1 = iris[, c(1, 2, 5)]

ind_missing = c(41:50, 91:100, 141:150)
mydata1[ind_missing,1] = NA

mycolors = rep(c('red','green','blue'),c(50,50,50))
plot(mydata0[,1:2],col= mycolors)

mycolors[ind_missing] = 'black'
plot(mydata0[,1:2],col= mycolors)


# KNN ####

mynames = names(mydata1)
knn1 = VIM::kNN(data = mydata1,variable = mynames[1],k = 1)
knn3 = VIM::kNN(data = mydata1,variable = mynames[1],k = 3)

plot(knn1[,1:2],col= mycolors)
plot(knn3[,1:2],col= mycolors)

# MICE ####

# install.packages('mice')
mice::md.pattern(mydata2)
