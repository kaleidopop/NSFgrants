
newdata1 <- schoolsall[which(schoolsall$obligation_action_date < '2015-01-01' & schoolsall$obligation_action_date > '2012-01-01'), ]
newdata5 <- schoolsall[which(schoolsall$starting_date < '2015-01-01' & schoolsall$starting_date > '1999-01-01'), ]

bigstates <- schoolsall[which(schoolsall$principal_place_state_code == "CA" | schoolsall$principal_place_state_code == "CO" | schoolsall$principal_place_state_code == "DC" | schoolsall$principal_place_state_code == "IL"| schoolsall$principal_place_state_code == "MA"| schoolsall$principal_place_state_code == "NY"| schoolsall$principal_place_state_code == "PA"| schoolsall$principal_place_state_code == "TX"), ]


sumbystate <- aggregate(fed_funding_amount ~ principal_place_state_code + fiscal_year, schoolsall, sum)
sumbyprog <- aggregate(fed_funding_amount ~ cfda_program_title + fiscal_year, schoolsall, sum)
sumbymon <- aggregate(fed_funding_amount ~ mondec + fiscal_year, schoolsall, sum)
sumbyrect <- aggregate(fed_funding_amount ~ recipient_type + fiscal_year, schoolsall, sum)