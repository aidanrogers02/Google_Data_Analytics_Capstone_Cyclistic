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

### Data Location
* Data is stored in .csv files
* Data is provided by Google in collaboration with Motivate International Inc.
### Pros: 
* Data is from the company itself so it should be quite reliable. 
* Data seems to be fairly uniform 
* Data is all from the same year
* Data is all stored in the same type of file
### Issues: 
* Data is too big to fit in an Excel spreadsheet (~1,600,000 rows per sheet)
* Column names are inconsistent
* Data have inconsistent standards. Some sheets use “Customer” and “Subscriber” while some use “Member” and “Casual”
* Some have more columns than others
* A decent amount of missing data, bike rides with no station starting name, or with no trip duration
### Steps Moving Forward: 
* Bring Data into an SQL database and into R where it will fit
* Transform data using Microsoft Power Query before making a data connection to Excel
* Make the column names consistent
* Make all member types use “Member” and “Casual”
* Use only the most essential columns when loading them into a database
* Make note of empty data but proceed on as there is still ample data available. Also use numbers.Abs() to convert any negative trip durations to positive
* Transform data in excel to get down to the essential columns and data for SQL

## Process
I now had to clean the bicycle lending data to get it ready for analysis. I had some difficulty in this phase finding out how to actually work with such a large amount of data. While researching how to work with millions of rows of data I found Microsoft Power Query, a powerful tool in Excel to transform files of data at a time.

### Tools
* Microsoft Power Query for preliminary analysis and data cleaning. Take the cleaned data from here and use it in SQL and R. Use pivot tables to find some trends among the data.
* SQL for main analysis, can handle all of the data properly. Create a PostgreSQL table to hold all of the data for the year. Upload all data and list its quarter.
* R for some extra analysis. See if there are any trends that went unnoticed with R.

### Cleaning Process
#### EXCEL
* Used Power Query to load in and transform all 5+ million rows
* Most Important Columns: Ride_id, Start_Time, End_time, Start_Station_ID, Start_Station_Name, End_Station_ID, End_Station_Name, Member_Type
* Add Rows: For Ride_Duration, Day_of_Week
* Delete any other columns
* Make all the dates into date types
* Delete rows whose end time is before their start time
* Make sure all data in Member_Type is either “casual” or “member”
#### SQL
* Create a table for each month and create a subquery to query all data at once
* Add the quarter of the year to each row

## Analyze
Now for the analysis to begin. This was the an exciting phase of the capstone project, finding trends and trying to figure out ways to answer the guiding question: "How do annual members and casual riders use Cyclistic bikes differently?". I had a lot of fun exploring the data with charts and tables to find different stories within the data and finding the ones that most applied to my business task.

My analysis was done in Excel, PostgreSQL, and R. A I remade some of the charts I did in Excel with Tableau as well. The order in which I used the tools was generally Excel, SQL, R, and then Tableau but I did move between the tools as new ideas came to me and I noticed new trends

### Analysis in Excel 

I began my analysis in Excel by looking at broad trends in the data. Like how many members vs casual riders there are and what type of bike each rider tends to prefer.
![Casuals vs Members](/Charts_and_Tables/casvmem.png)
![Casuals vs Members in the types of bikes](/Charts_and_Tables/casvmem_biketype.png)
