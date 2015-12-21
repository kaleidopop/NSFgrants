# NSFgrants
Population of NSF grants

To get graphical output - load the schoolsall data.frame from the file NSF.RData and execute the code in subsets.R first. All the graphs are listed in the newgraphs.R file and are grouped in sections


The dataset used in this study is comprised of queries obtained from https://www.usaspending.gov 
Using multiple queries on the followig page https://www.usaspending.gov/Pages/TextView.aspx?data=HomeAwardTypeFunding , the range of fiscal years 1999-2016 was obtained. 
The variables that were selected for the working data frame are: 

recipient_name
recipient_city_name
recipient_type
action_type
fed_funding_amount
obligation_action_date
starting_date
ending_date
principal_place_state
cfda_program_title
fiscal_year
principal_place_state_code

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


