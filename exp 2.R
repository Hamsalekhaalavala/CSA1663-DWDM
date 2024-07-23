# Given age values
ages <- c(13, 15, 16, 16, 19, 20, 20, 21, 22, 22, 25, 25, 25, 25, 30, 33, 33, 35, 35, 35, 35, 36, 40, 45, 46, 52, 70)

# (a) Calculate the mean and median
mean_age <- mean(ages)
median_age <- median(ages)

# (b) Calculate the mode and determine modality
mode_age <- as.numeric(names(sort(table(ages), decreasing = TRUE)[1]))
modality <- length(which(table(ages) == max(table(ages))))

# (c) Calculate the midrange
midrange_age <- (min(ages) + max(ages)) / 2

# (d) Calculate the first quartile (Q1) and third quartile (Q3)
Q1 <- quantile(ages, 0.25)
Q3 <- quantile(ages, 0.75)

# Print the results
mean_age
median_age
mode_age
modality
midrange_age
Q1
Q3