#This document includes the function used to identify participants who 
#had failed both attention checks

#change to row number for public dataset

data <- read.csv("checks.csv")

library(dplyr)

#Attention check columns are: informed_2_5, informed_2imprint_5, EPE_5)

informed_failed_attention_pids <- function(dataframe, var) {
  # Filter rows where variable is not 'strongly disagree' and not a blank cell
  filtered_df <- dataframe %>% 
    filter(.data[[var]] != "Strongly disagree" & nzchar(.data[[var]]))
  
  # Return the PROLIFIC_PID column from the filtered dataframe
  return(filtered_df$PROLIFIC_PID)
}

failed_inform <- informed_failed_attention_pids(data, "informed_2_5")
failed_inform_imprint <- informed_failed_attention_pids(data, "informed_2imprint_5")

#do this for all three attention checks, merge the dataframes into one long column
#and then check for frequency of PID's to identify ones that come out twice

epe_failed_attention_pids <- function(dataframe, var) {
  # Filter rows where variable is not 'strongly disagree' and not a blank cell
  filtered_df <- dataframe %>% 
    filter(.data[[var]] != "Strongly agree" & nzchar(.data[[var]]))
  
  # Return the PROLIFIC_PID column from the filtered dataframe
  return(filtered_df$PROLIFIC_PID)
}

failed_epe <- epe_failed_attention_pids(data, "EPE_5")

long_vec <- c(failed_inform, failed_inform_imprint, failed_epe)

#Any participant who appears twice in the vectors has failed both attention checks

frequency_table <- table(long_vec)

filtered_values <- frequency_table[frequency_table == 2]

print(filtered_values)

#checking for exclusions based on half the median time

below_360 <- data$Duration..in.seconds.[data$Duration..in.seconds. < 360]

length(below_360)


#filtering out these rows

filtered_dataframe <- dataframe %>%
  filter(Duration..in..seconds >= 360)
