states <- c(unique(as.character(schoolsall$principal_place_state_code, incomparables = FALSE)))
sort(states, decreasing = FALSE)

cfda <- c(unique(as.character(schoolsall$cfda_program_title, incomparables = FALSE)))
sort(cfda, decreasing = FALSE)

action <- c(unique(as.character(schoolsall$action_type, incomparables = FALSE)))
sort(action, decreasing = FALSE)

years <- c(unique(as.character(schoolsall$fiscal_year, incomparables = FALSE)))
years <- sort(years, decreasing = FALSE)




for (i in 1:length(states)){
  newpew <- schoolsall[which(schoolsall$principal_place_state_code == states[i]), ]
  for (k in 1:length(cfda)){
    neopew <- newpew[which(newpew$cfda_program_title == cfda[k]), ]
    statesbycfda[i, k] <- mean(neopew$costmon)
  }
  
}
colnames(statesbycfda)<- c(cfda)
rownames(statesbycfda)<- c(states)

cf_DFinf2NA <- function(x)
{
  for (i in 1:ncol(x)){
    x[,i][is.infinite(x[,i])] = NA
  }
  return(x)
} 
statesbycfda<- cf_DFinf2NA(statesbycfda)
statesbyaction<- cf_DFinf2NA(statesbyaction)


for (i in 1:length(states)){
  newpew <- schoolsall[which(schoolsall$principal_place_state_code == states[i]), ]
  for (k in 1:length(action)){
    neopew <- newpew[which(newpew$action_type == action[k]), ]
    statesbyaction[i, k] <- mean(neopew$costmon)
  }
  
}
colnames(statesbyaction)<- c(action)
rownames(statesbyaction)<- c(states)

for (i in 1:length(states)){
  newpew <- schoolsall[which(schoolsall$principal_place_state_code == states[i]), ]
  for (k in 1:length(years)){
    neopew <- newpew[which(newpew$fiscal_year == years[k]), ]
    statebyyear[i, k] <- sum(neopew$fed_funding_amount)
  }
  
}
colnames(statebyyear)<- c(years)
rownames(statebyyear)<- c(states)


for (i in 1:length(years)){
  newsum[i] <- sum(statebyyear[, i])
  for (k in 1:length(states)){
    sharesss <- statebyyear[k, i]/newsum[i]*100
    statebyyear[k, i]<- sharesss
  }
  
}


statesbyaction <- statesbyaction[, -4]

news <- vector()
for (i in 1:length(years)){
  news[i] <- sum(statebyyear[, i])
}

sum(statebyyear[,1:4])
plot(statebyyear[,12])


trata <- data.frame()
for (i in 1:length(states)){
  trata <- schoolsall[which(schoolsall$principal_place_state_code == states[i]), ]
  statemeans[i, 1] <- mean(trata$fed_funding_amount)
  statemeans[i, 2] <- sd(trata$fed_funding_amount)
  statemeans[i, 3] <- nrow(trata)
}

colnames(statemeans)<- c("Mean", "SD", "N")
rownames(statemeans)<- c(states)


trata <- data.frame()
trata1 <- data.frame()
for (i in 1:length(states)){
  trata <- schoolsall[which(schoolsall$principal_place_state_code == states[i]), ]
  for (k in 1:length(years)){
    trata1 <- trata[which(trata$fiscal_year == years[k]), ]
    statemeansyr[i, k] <- mean(trata1$fed_funding_amount)
  }
  
}

colnames(statemeansyr)<- c(years)
rownames(statemeansyr)<- c(states)






trata <- data.frame()
trata1 <- data.frame()
for (i in 1:length(cfda)){
  trata <- schoolsall[which(schoolsall$cfda_program_title == cfda[i]), ]
  for (k in 1:length(years)){
    trata1 <- trata[which(trata$fiscal_year == years[k]), ]
    cfdameansyr[i, k] <- mean(trata1$fed_funding_amount)
  }
  
}
rm(cfdameansyr[17,])
cfda[17] <- "NA"
colnames(cfdameansyr)<- c(years)
rownames(cfdameansyr)<- c(cfda)



trata <- data.frame()
trata1 <- data.frame()
for (i in 1:length(action)){
  trata <- schoolsall[which(schoolsall$action_type == action[i]), ]
  for (k in 1:length(years)){
    trata1 <- trata[which(trata$fiscal_year == years[k]), ]
    actionmeansyr[i, k] <- mean(trata1$fed_funding_amount)
  }
  
}
rm(cfdameansyr[17,])
cfda[17] <- "NA"
colnames(actionmeansyr)<- c(years)
rownames(actionmeansyr)<- c(action)
statesbycfda <- data.frame()
statesbyaction <- data.frame()
statebyyear <- data.frame()


statemeans <- data.frame()
statemeansyr <- data.frame()
cfdameansyr <- data.frame()
actionmeansyr <- data.frame()
