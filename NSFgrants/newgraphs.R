

###############################################################################################     INTRO
### Idenitfy the gap 
ggplot(schoolsall,aes(x=obligation_action_date, y = logcost)) + geom_point(aes(color= action_type )) 
ggplot(schoolsall,aes(x=obligation_action_date, y = fed_funding_amount/100000)) + geom_point(aes(color= action_type )) 





## Winter holidays and increase towards the end of the year
ggplot(newdata1, aes(y=logcost, x=obligation_action_date)) + geom_point(aes(color = action_type))
ggplot(newdata1, aes(y=logcost, x=obligation_action_date)) + geom_point(aes(color = action_type)) +  facet_wrap(~action_type)


#identify the gap
ggplot(newdata5, aes(y=logcost, x=obligation_action_date)) + geom_point(aes(color = action_type))
## Negative values (log) or no entries
ggplot(newdata5, aes(y=logcost, x=obligation_action_date)) + geom_point(aes(color = action_type))+  facet_wrap(~action_type)
## Negative values
ggplot(newdata5, aes(y=fed_funding_amount/100000, x=obligation_action_date)) + geom_point(aes(color = action_type))+  facet_wrap(~action_type)


## Cont/NEw/ Revision - difference in frequency and central cost
ggplot(schoolsall, aes(x=log(costmon), fill=action_type)) + geom_density(alpha = 0.6)
ggplot(schoolsall, aes(x=monstar, y=log(costmon), fill=action_type)) + geom_boxplot()+ facet_wrap(~action_type)

#### NEW/CONT... - length and cost
ggplot(schoolsall, aes(y=res_duration, x=log(costmon))) + geom_point(aes(color = action_type))+ facet_wrap(~action_type)




###############################################################################################     FIELDS 
### Highest cumulative fields
ggplot(sumbyprog, aes(x=fed_funding_amount, y=reorder(cfda_program_title, fed_funding_amount), fill = fiscal_year)) + 
  geom_point(size=3) + 
  theme(axis.text.x = element_text(angle=60, hjust = 1),
        panel.grid.major.y = element_blank(),
        panel.grid.minor.y = element_blank(),
        panel.grid.major.x = element_line(color="grey60", linetype='dashed'))

## state summaries by type of research
bigstates <- schoolsall[which(schoolsall$principal_place_state_code == "CA" | schoolsall$principal_place_state_code == "DC" | schoolsall$principal_place_state_code == "MA"| schoolsall$principal_place_state_code == "NY"| schoolsall$principal_place_state_code == "PA"| schoolsall$principal_place_state_code == "TX"), ]
ggplot(bigstates, aes(x=principal_place_state_code, y=log(fed_funding_amount), fill = principal_place_state_code)) + geom_boxplot() + facet_wrap(~cfda_program_title) +guides(colour = guide_legend(override.aes = list(size=12)))




###############################################################################################     STATES
### HIghest cumulative states

ggplot(sumbystate, aes(x=fed_funding_amount, y=reorder(principal_place_state_code, fed_funding_amount), fill = fiscal_year)) + 
  geom_point(size=3) + 
  theme_bw() + 
  theme(axis.text.x = element_text(angle=60, hjust = 1),
        panel.grid.major.y = element_blank(),
        panel.grid.minor.y = element_blank(),
        panel.grid.major.x = element_line(color="grey60", linetype='dashed'))

### types of research - by new/cont/revise

ggplot(bigstates, aes(x=principal_place_state_code, y=log(costmon), fill = action_type)) + geom_boxplot() + facet_wrap(~action_type) + guides(colour = guide_legend(override.aes = list(size=12)))
### types of research by recipient types 
ggplot(bigstates, aes(x=principal_place_state_code, y=log(costmon), fill = principal_place_state_code)) + geom_boxplot() + facet_wrap(~recipient_type) +guides(colour = guide_legend(override.aes = list(size=12)))



###############################################################################################     MONTHS

ggplot(sumbymon, aes(x=fed_funding_amount, y=mondec, fill = fiscal_year)) + 
  geom_point(size=3) + 
  theme_bw() + 
  theme(axis.text.x = element_text(angle=60, hjust = 1),
        panel.grid.major.y = element_blank(),
        panel.grid.minor.y = element_blank(),
        panel.grid.major.x = element_line(color="grey60", linetype='dashed'))

## Months do change
ggplot(schoolsall, aes(x=log(costmon), fill=mondec)) + geom_density(alpha = 0.1) + facet_wrap(~action_type) +geom_vline(aes(xintercept=mean(logcost), na.rm=T), color="red", linetype="dashed", size=1) 
### Density grid - new thingy 

ggplot(schoolsall, aes(x=mondec, y=log(costmon), fill=mondec)) + geom_boxplot() + facet_wrap(~action_type)




###############################################################################################     RECIPIENT TYPE
## Highest cumulative type of recipient
ggplot(sumbyrect, aes(x=fed_funding_amount, y=recipient_type, fill = fiscal_year)) + 
  geom_point(size=3) + 
  theme_bw() + 
  theme(axis.text.x = element_text(angle=60, hjust = 1),
        panel.grid.major.y = element_blank(),
        panel.grid.minor.y = element_blank(),
        panel.grid.major.x = element_line(color="grey60", linetype='dashed'))















