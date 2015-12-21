#About

This project aims to understand the distribution of National Science Foundation research & development grants from 1999 to 2016. We developed a series of subsets that focused on grant duration by action type (new, continuing, and revised grants), by recipient type, by state, and by types of research in the United States during this period. We then carried out a micro-study of four states, New York, DC, Massachussetts, and California, that were allocated the highest number of grant dollars. 

This dataset can be helpful to social science researchers, grantseeking organizations, and state agencies to better understand the landscape of scientific funding in the United States. 

# Dataset 
The dataset used in this study is comprised of queries obtained from https://www.usaspending.gov 

Using multiple queries on the followig page https://www.usaspending.gov/Pages/TextView.aspx?data=HomeAwardTypeFunding , the range of fiscal years 1999-2016 was obtained. 

The variables that were selected for the working data frame are: 

recipient_name - Recipient name
recipient_city_name - Name of recipient's location city
recipient_type -Type of recipient ranging from non-profits and corporations to higher educational institutions
action_type - New grant , Continuing grant or revised
fed_funding_amount - Dollar amount granted
obligation_action_date - Grant decision made
starting_date - Start of research
ending_date - End of research
principal_place_state - Recipient location state
cfda_program_title - Field of research
fiscal_year - Budget year
principal_place_state_code - Recipient location state code

The following modifications were conducted to the existing variables:
1. conversion of non-numeric variable into categorical variables 
2. dates were transformed to be treated as dates by R
3. dublicates of variable values were merged to be treated as identcal values 
4. cfda_programm_title values werereplaced by more concise Continue, New and Revision 

Following variables were added as new columns
1. res_duration - duration of research obtained by calculating the difference between the ending and starting dates of research. Such values were divided by 30 to obtain duration in months 
2. costmon - fed_funding_amount was divided by res_duration to establish the common base for comparing amounts alocated to different recipients 
3. monstar, mondec - month of research start and obligation action date respectively 
4. logcost - log-transormed costmon calculated for plotting

The resulting dataset consists of 410292 observations of 17 variables. Various subsets were created to calculate cumulative amounts granted to states, programs and by months. Subsets of top recipient states was also created for similar purposes. 

# Accessing our dataframe

In order to obtain the graphical output:
1. Load the schoolsall data.frame from the file NSF.RData
2. Execute the code in subsets.R 
3. All the graphs are listed in the newgraphs.R file and are grouped in sections


# Research Team
Ilya Perepelitsa, Deepa Mehta, Sahar Al Hassan, Kaitlin Lynes

