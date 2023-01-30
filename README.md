# Google_Data_Analytics_Capstone_Cyclistic
My final capstone project for the Google Data Analytics Certification

## Scenario
You are a junior data analyst working in the marketing analyst team at Cyclistic, a bike-share company in Chicago. The director
of marketing believes the company’s future success depends on maximizing the number of annual memberships. Therefore,
your team wants to understand how casual riders and annual members use Cyclistic bikes differently. From these insights,
your team will design a new marketing strategy to convert casual riders into annual members. But first, Cyclistic executives
must approve your recommendations, so they must be backed up with compelling data insights and professional data
visualizations.

## Ask
First I had to ask questions about what my stakeholders would want and how I was meant to answer the guiding question.

* Guiding Question: "How do annual members and casual riders use Cyclistic bikes differently?"
* Business Task: To find trends that show how annual members and casual riders us Cyclistic differently. Use these trends to give recommendations for the marketing team to turn casual riders into members.
* Shareholders: Marketing team and Executive team

## Prepare
My next step was to prepare my data for cleaning and analysis. I had to ask myself what was good about the data and what I needed to change.

* Data is stored in .csv files
* Pros: 
  * Data is from the company itself so it should be quite reliable. 
* Issues: 
  * Data is too big to fit in an Excel spreadsheet (~1,600,000 rows per sheet)
  * Column names are inconsistent
  * Data have inconsistent standards. Some sheets use “Customer” and “Subscriber” while some use “Member” and “Casual”
  * Some have more columns than others
  * A decent amount of missing data, bike rides with no station starting name, or with no trip duration
* Steps Moving Forward: 
  * Bring Data into an SQL database and into R where it will fit
  * Transform data using Microsoft Power Query before making a data connection to Excel
  * Make the column names consistent
  * Make all member types use “Member” and “Casual”
  * Use only the most essential columns when loading them into a database
  * Make note of empty data but proceed on as there is still ample data available. Also use numbers.Abs() to convert any negative trip durations to positive
  * Transform data in excel to get down to the essential columns and data for SQL

## Process
I now had to clean the bicycle lending data to get it ready for analysis. 

### Tools
* Microsoft Power Query for preliminary analysis and data cleaning. Take the cleaned data from here and use it in SQL and R. Use pivot tables to find some trends among the data.
* SQL for main analysis, can handle all of the data properly. Create a PostgreSQL table to hold all of the data for the year. Upload all data and list its quarter.
* R for some extra analysis. See if there are any trends that went unnoticed with R.
