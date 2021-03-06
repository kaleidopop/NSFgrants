

schools16 <- read.table(file="~/Dropbox/NSF/2016.csv", sep=",",header=TRUE)
schools15 <- read.table(file="~/Dropbox/NSF/2015.csv", sep=",",header=TRUE)
schools14 <- read.table(file="~/Dropbox/NSF/2014.csv", sep=",",header=TRUE)
schools13 <- read.table(file="~/Dropbox/NSF/2013.csv", sep=",",header=TRUE)
schools12 <- read.table(file="~/Dropbox/NSF/2012.csv", sep=",",header=TRUE)
schools11 <- read.table(file="~/Dropbox/NSF/2011.csv", sep=",",header=TRUE)
schools10 <- read.table(file="~/Dropbox/NSF/2010.csv", sep=",",header=TRUE)
schools09 <- read.table(file="~/Dropbox/NSF/2009.csv", sep=",",header=TRUE)
schools08 <- read.table(file="~/Dropbox/NSF/2008.csv", sep=",",header=TRUE)
schools07 <- read.table(file="~/Dropbox/NSF/2007.csv", sep=",",header=TRUE)
schools06 <- read.table(file="~/Dropbox/NSF/2006.csv", sep=",",header=TRUE)
schools05 <- read.table(file="~/Dropbox/NSF/2005.csv", sep=",",header=TRUE)
schools04 <- read.table(file="~/Dropbox/NSF/2004.csv", sep=",",header=TRUE)
schools03 <- read.table(file="~/Dropbox/NSF/2003.csv", sep=",",header=TRUE)
schools02 <- read.table(file="~/Dropbox/NSF/2002.csv", sep=",",header=TRUE)
schools01 <- read.table(file="~/Dropbox/NSF/2001.csv", sep=",",header=TRUE)
schools00 <- read.table(file="~/Dropbox/NSF/2000.csv", sep=",",header=TRUE)
schools99 <- read.table(file="~/Dropbox/NSF/1999.csv", sep=",",header=TRUE)

# pew

schools16<- data.frame(schools16[7],schools16[9], schools16[13], schools16[14], schools16[18], schools16[21:23], schools16[29], schools16[34], schools16[47:48], stringsAsFactors = FALSE)
schools15<- data.frame(schools15[7],schools15[9], schools15[13], schools15[14], schools15[18], schools15[21:23], schools15[29], schools15[34], schools15[47:48], stringsAsFactors = FALSE)
schools14<- data.frame(schools14[7],schools14[9], schools14[13], schools14[14], schools14[18], schools14[21:23], schools14[29], schools14[34], schools14[47:48], stringsAsFactors = FALSE)
schools13<- data.frame(schools13[7],schools13[9], schools13[13], schools13[14], schools13[18], schools13[21:23], schools13[29], schools13[34], schools13[47:48], stringsAsFactors = FALSE)
schools12<- data.frame(schools12[7],schools12[9], schools12[13], schools12[14], schools12[18], schools12[21:23], schools12[29], schools12[34], schools12[47:48], stringsAsFactors = FALSE)
schools11<- data.frame(schools11[7],schools11[9], schools11[13], schools11[14], schools11[18], schools11[21:23], schools11[29], schools11[34], schools11[47:48], stringsAsFactors = FALSE)
schools10<- data.frame(schools10[7],schools10[9], schools10[13], schools10[14], schools10[18], schools10[21:23], schools10[29], schools10[34], schools10[47:48], stringsAsFactors = FALSE)
schools09<- data.frame(schools09[7],schools09[9], schools09[13], schools09[14], schools09[18], schools09[21:23], schools09[29], schools09[34], schools09[47:48], stringsAsFactors = FALSE)
schools08<- data.frame(schools08[7],schools08[9], schools08[13], schools08[14], schools08[18], schools08[21:23], schools08[29], schools08[34], schools08[47:48], stringsAsFactors = FALSE)
schools07<- data.frame(schools07[7],schools07[9], schools07[13], schools07[14], schools07[18], schools07[21:23], schools07[29], schools07[34], schools07[47:48], stringsAsFactors = FALSE)
schools06<- data.frame(schools06[7],schools06[9], schools06[13], schools06[14], schools06[18], schools06[21:23], schools06[29], schools06[34], schools06[47:48], stringsAsFactors = FALSE)
schools05<- data.frame(schools05[7],schools05[9], schools05[13], schools05[14], schools05[18], schools05[21:23], schools05[29], schools05[34], schools05[47:48], stringsAsFactors = FALSE)
schools04<- data.frame(schools04[7],schools04[9], schools04[13], schools04[14], schools04[18], schools04[21:23], schools04[29], schools04[34], schools04[47:48], stringsAsFactors = FALSE)
schools03<- data.frame(schools03[7],schools03[9], schools03[13], schools03[14], schools03[18], schools03[21:23], schools03[29], schools03[34], schools03[47:48], stringsAsFactors = FALSE)
schools02<- data.frame(schools02[7],schools02[9], schools02[13], schools02[14], schools02[18], schools02[21:23], schools02[29], schools02[34], schools02[47:48], stringsAsFactors = FALSE)
schools01<- data.frame(schools01[7],schools01[9], schools01[13], schools01[14], schools01[18], schools01[21:23], schools01[29], schools01[34], schools01[47:48], stringsAsFactors = FALSE)
schools00<- data.frame(schools00[7],schools00[9], schools00[13], schools00[14], schools00[18], schools00[21:23], schools00[29], schools00[34], schools00[47:48], stringsAsFactors = FALSE)
schools99<- data.frame(schools99[7],schools99[9], schools99[13], schools99[14], schools99[18], schools99[21:23], schools99[29], schools99[34], schools99[47:48], stringsAsFactors = FALSE)

schoolsall <- rbind(schools99, schools00, schools01, schools02, schools03, schools04, schools05, 
                    schools06, schools07, schools08, schools09, schools10, schools11, schools12, 
                    schools13, schools14, schools15, schools16)


load("NSF.RData")

### TRANSFORMING ROWS/COLUMNS and manipulating descrepancies in data entry/variable types
schoolsall$starting_date <- as.Date(schoolsall$starting_date, format = "%m/%d/%Y") 
schoolsall$ending_date <- as.Date(schoolsall$ending_date, format = "%m/%d/%Y")
schoolsall$obligation_action_date <- as.Date(schoolsall$obligation_action_date, format = "%m/%d/%Y")
class(schoolsall$starting_date)

schoolsall$action_type <- as.character(schoolsall$action_type)
schoolsall$action_type <- as.character(schoolsall$action_type)

schoolsall$cfda_program_title[schoolsall$cfda_program_title == "Biological Sciences                                                       "] <- "Biological Sciences"
schoolsall$cfda_program_title[schoolsall$cfda_program_title == "Trans-NSF Recovery Act Research Support                                   "] <- "Trans-NSF Recovery Act Research Support"
schoolsall$cfda_program_title[schoolsall$cfda_program_title == "Computer and Information Science and Engineering                          "] <- "Computer and Information Science and Engineering"
schoolsall$cfda_program_title[schoolsall$cfda_program_title == "Education and Human Resources                                             "] <- "Education and Human Resources"
schoolsall$cfda_program_title[schoolsall$cfda_program_title == "Engineering Grants                                                        "] <- "Engineering Grants"
schoolsall$cfda_program_title[schoolsall$cfda_program_title == "Geosciences                                                               "] <- "Geosciences"
schoolsall$cfda_program_title[schoolsall$cfda_program_title == "Mathematical and Physical Sciences                                        "] <- "Mathematical and Physical Sciences"
schoolsall$cfda_program_title[schoolsall$cfda_program_title == "Office of Cyberinfrastructure                                             "] <- "Office of Cyberinfrastructure"
schoolsall$cfda_program_title[schoolsall$cfda_program_title == "Office of International and Integrative Activities                        "] <- "Office of International and Integrative Activities"
schoolsall$cfda_program_title[schoolsall$cfda_program_title == "Office of International Science & Engineering                             "] <- "Office of International Science and Engineering                           "
schoolsall$cfda_program_title[schoolsall$cfda_program_title == "Office of International Science and Engineering                           "] <- "Office of International Science and Engineering"
schoolsall$cfda_program_title[schoolsall$cfda_program_title == "Polar Programs                                                            "] <- "Polar Programs"
schoolsall$cfda_program_title[schoolsall$cfda_program_title == "Office of Polar Programs                                                  "] <- "Polar Programs"
schoolsall$cfda_program_title[schoolsall$cfda_program_title == "Social, Behavioral and Economic Sciences                                  "] <- "Social, Behavioral, and Economic Sciences"
schoolsall$cfda_program_title[schoolsall$cfda_program_title == "Social, Behavioral, and Economic Sciences                                 "] <- "Social, Behavioral, and Economic Sciences"
schoolsall$cfda_program_title[schoolsall$cfda_program_title == "Trans-NSF Recovery Act Research Support                                   "] <- "Trans-NSF Recovery Act Reasearch Support"
schoolsall$cfda_program_title[schoolsall$cfda_program_title == "Office of Integrative Activities                                          "] <- "Office of Integrative Activities"


schoolsall$action_type[schoolsall$action_type == "A: New assistance action" ] <- "New"
schoolsall$action_type[schoolsall$action_type == "B: Continuation (funding in succeeding budget period which stemmed from prior agreement to fund amount of the current action)" ] <- "Continue"
schoolsall$action_type[schoolsall$action_type == "C: Revision (any change in Federal Government's financial obligation or contingent liability in existing assistance transaction amount of the change in funding; or any change in Recipient Name, Recipient Address, Project Period or Project Scope)" ] <- "Revision"


schoolsall$cfda_program_title <- as.factor(schoolsall$cfda_program_title)
schoolsall$action_type <- as.factor(schoolsall$action_type)
schoolsall$principal_place_state_code <- as.factor(schoolsall$principal_place_state_code)


monstar <- c(months(schoolsall$starting_date))
mondec <- c(months(schoolsall$obligation_action_date))
logcost <- c(log(costmon))




### Variable type (column type)
schoolsall$action_type <- as.factor(schoolsall$action_type)
schoolsall$recipient_name <- as.factor(schoolsall$recipient_name)
schoolsall$principal_place_state_code <- as.factor(schoolsall$principal_place_state_code)
schoolsall$cfda_program_title <- as.factor(schoolsall$cfda_program_title)



###INCLUDING  ROWS/COLUMNS INTO DF
res_duration <- c(schoolsall$ending_date - schoolsall$starting_date)/30
schoolsall <- data.frame(schoolsall, res_duration)
costmon <-  c(schoolsall$fed_funding_amount/schoolsall$res_duration)
schoolsall <- data.frame(schoolsall, costmon)
schoolsall <- data.frame(schoolsall, monstar)
schoolsall <- data.frame(schoolsall, mondec)

schoolsall <- data.frame(schoolsall, logcost)

### SAVING THE DF
save(schoolsall, file="NSF.RData")
### trying new tables
























