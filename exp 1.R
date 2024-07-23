intervals <- list(c(1, 5), c(5, 15), c(15, 20), c(20, 50), c(50, 80), c(80, 110))
frequencies <- c(200, 450, 300, 1500, 700, 44)
cumulative_frequencies <- cumsum(frequencies)
N <- sum(frequencies)
median_class_index <- which(cumulative_frequencies >= N / 2)[1]
median_class <- intervals[[median_class_index]]
L <- median_class[1]
f <- frequencies[median_class_index]
CF <- ifelse(median_class_index == 1, 0, cumulative_frequencies[median_class_index - 1])
h <- median_class[2] - median_class[1]
median <- L + ((N / 2 - CF) / f) * h
median