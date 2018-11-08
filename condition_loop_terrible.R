test2 <- d4 %>%
  filter(group = "8")

conditions <- c("test")

resp <- c()

for (i in conditions) {
  resp_param = non_picky_optimizeParam(i["resp1S"], i["resp2S"], par)
  resp[i] = resp_param
}

la1 <- lapply(conditions, non_picky_optimizeParam(par))

la1 <- lapply(conditions, function(df)  cor_time_sim = cor(df$time, df$simscore))