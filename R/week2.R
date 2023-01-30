# Import and Labeling
rt_df <- read.csv(file = "data/week2.csv", header = TRUE)
rt_df$condition <- factor(rt_df$condition, levels = c("A", "B"), labels = c("Control", "Experiment"))
rt_df$gender <- factor(rt_df$gender, levels = c("M", "F", "N"), labels = c("Male", "Female",  "Nonbinary"))

# Analysis
mean(rt_df$rt)
rt_f_df <- rt_df[rt_df$gender == "Female",] #don't use subset 
hist(rt_f_df$rt)
datasets <- list(rt_df, rt_f_df)
datasets[[1]]$rt  #datasets[1] return a list 

