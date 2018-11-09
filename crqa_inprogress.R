HR_Conversation <- group5 %>%
  filter(Metric == "HR") %>%
  filter(Condition == "Conversation")

HR_Synchronous <- group5 %>%
  filter(Metric == "HR") %>%
  filter(Condition == "Synchronous")

HR_TurnTaking <- group5 %>%
  filter(Metric == "HR") %>%
  filter(Condition == "TurnTaking")

HR_Conversation <- group5 %>%
  filter(Metric == "HR") %>%
  filter(Condition == "Conversation")


HR <- function(data) {
  return(data %>%
           filter(Metric == "HR"))
}

conv <- function(data) {
  return(data %>%
           filter(Condition == "Conversation"))
}

get_delay <- function(data) {
  return(data %>%
           ungroup() %>%
           select(delay) %>%
           as.character(.))
}

c <- med_optimal_para %>%
  HR() %>%
  conv() %>%
  get_delay()
