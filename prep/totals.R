## totals.R ##

# Make a dataframe with total # needing assessment per CMHSP

# A simple example using manual entry
totals <- data.frame(c("All", levels(as.factor(scrub_sis$agency))))
names(totals)[1] <- "agency"
totals$total <- c() # manually assign totals to CMHs

write.csv(totals, "data/totals.csv")
