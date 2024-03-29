# Google Data Analytics Capstone For Cyclistic
###### By: Aidan Rogers
###### Date: 1/30/2023

## About
My final capstone project for the Google Data Analytics Certification. I tackled a sample set of data from a fictional bike sharing and went through all of the steps of the data analysis process with it: ask, prepare, process, analyze, share, and act. I utilized Excel, PostgreSQL, R, Tableau, and PowerPoint to work with over 5 million rows of data to clean, analyze, and present it in a comprehensible manner.

You can view my final presentation on the analysis here: [Cyclistic Presentation By: Aidan Rogers](https://docs.google.com/presentation/d/1MVj_kx36tiJQDnXq00ywdDfrCvHLlRdH/edit?usp=sharing&ouid=105273385533473543058&rtpof=true&sd=true)


## Table of Contents
* [Scenario](https://github.com/aidanrogers02/Google_Data_Analytics_Capstone_Cyclistic/blob/main/README.md#scenario)
* [Ask](https://github.com/aidanrogers02/Google_Data_Analytics_Capstone_Cyclistic/blob/main/README.md#ask)
* [Prepare](https://github.com/aidanrogers02/Google_Data_Analytics_Capstone_Cyclistic/blob/main/README.md#prepare)
* [Process](https://github.com/aidanrogers02/Google_Data_Analytics_Capstone_Cyclistic/blob/main/README.md#process)
* [Analyze](https://github.com/aidanrogers02/Google_Data_Analytics_Capstone_Cyclistic/blob/main/README.md#analyze)
* [Share](https://github.com/aidanrogers02/Google_Data_Analytics_Capstone_Cyclistic/blob/main/README.md#share)
* [Act](https://github.com/aidanrogers02/Google_Data_Analytics_Capstone_Cyclistic/blob/main/README.md#act)


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
I now had to clean the bicycle lending data to get it ready for analysis. I had some difficulty in this phase finding out how to actually work with such a large amount of data. While researching how to work with millions of rows of data I found Microsoft Power Query, a powerful tool in Excel to transform many files of data at a time.

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

Here is a preview of some of the cleaned data to give a better idea of how it looks 

![Preview of Clean Data](/Charts_and_Tables/preview_of_clean_data.PNG)

## Analyze
Now for the analysis to begin. This was the most exciting phase of the capstone project, finding trends and trying to figure out ways to answer the guiding question: "How do annual members and casual riders use Cyclistic bikes differently?". I had a lot of fun exploring the data with charts and tables to find different stories within the data and finding the ones that most applied to my business task.

My analysis was done in Excel, PostgreSQL, and R. A I remade some of the charts I did in Excel with Tableau as well. The order in which I used the tools was generally Excel, SQL, R, and then Tableau but I did move between the tools as new ideas came to me and I noticed new trends

### Analysis in Excel 

I began my analysis in Excel by looking at broad trends in the data. Like how many members vs casual riders there are and what type of bike each rider tends to prefer.   

(These charts were redone in Power BI to improve their look)

![Casuals vs Members](/Charts_and_Tables/casvmem.png)
![Casuals vs Members in the types of bikes](/Charts_and_Tables/casvmem_biketype.png)

I saw how many casual riders there were and how there was a good chance to convert these riders into members.
I then looked into how the day of the week influenced how many people rode each day. First starting with all of the riders combined and then seeing how casual riders differed in their day preference from members

![Riders Per Day](/Charts_and_Tables/rider_count.png)
![Riders Per Day by Casuals and Members](/Charts_and_Tables/riders_count_memcas.png)

I then looked into the average duration that riders were out on each day in the same groups.

![Average Duration Per Day](/Charts_and_Tables/riders_avgdur.png)
![Average Duration Per Day](/Charts_and_Tables/avgdur_memcas.png)

I noticed that casual riders were using bikes much more on the weekends than the members were. The members tended to ride their bikes a consistent amount throughout the week. I started to wonder if this difference might be due to members using bikes to commute more so I moved onto looking into how casuals and members differed on their trends on what time they started their rides.

![Riders Per Hour](/Charts_and_Tables/riders_by_hour.png)
![Riders Per Hour Casuals](/Charts_and_Tables/riders_by_hour_cas.png)
![Riders Per Hour Members](/Charts_and_Tables/riders_by_hour_mem.png)


### Analysis in PostgreSQL

After I had noticed some initial trends in Excel, namely that members seem to use Cyclistic to commute more than casual riders, I decided to begin my analysis in SQL. I knew I could work with the data in different ways in SQL especially when it came rides based on the time of year. I made an individual tables for every month of data and added a columnn to the data that tracked what quarter of the year the month was in.

(You can view the [PostgreSQL (link)](https://github.com/aidanrogers02/Google_Data_Analytics_Capstone_Cyclistic/blob/main/postgresql_cyclistic_code.sql)  code for making the tables and the queries that I used in this analysis in this repository)

I first queried for the number of riders in each quarter grouped by casual riders and members. 

![Riders Per Quarter](/Charts_and_Tables/mem_cas_by_q.png)

I then queried for how many riders rode in each month, first by all riders then second by only casual riders.

(All riders)  

![Riders By Month](/Charts_and_Tables/riders_by_month.png)
  
(Casual riders only)  

![Riders By Month Casual Only](/Charts_and_Tables/only_casual_by_month.png)

For all riders quarter 3 is when the number of rides really picks up, and for casual riders July is when by far the highest number of riders are out. An important trend to note

After seeing when the most riders were out I wanted to check how long casual riders rode vs members by quarter and found that in every quarter casual riders still take longer bike rides on average with cyclistic bikes 

![Average Ride Length by Quarter and User](/Charts_and_Tables/avg_ride_len_by_q_and_user.png)

The final thing I wanted to exlpore in SQL were what were the most popular locations for riders to start from. I first started by going back to Excel and finding the top 3 most popular locations in general.

![Top 3 locations](/Charts_and_Tables/mem_cas_intop3loc.png)

I then went right back to SQL to see what the most popular locations for riders to start from were, grouped by the type of rider. This way I could see if casual riders often made up the highest number of riders at top locations, which I would see they did.

![Top 5 locations based on rider type](/Charts_and_Tables/pop5_locations.png)

### Analysis in R

I have often worked with Python over R but I wanted to give anaylsis with R a shot since I had just learned about it and the Tidyverse (data manipulation libraries in R). I figured R could be a good tool to clean the data again and vreify results along with finding any trends I may have missed with SQL and Excel.

(You can view the [R Markdown file (link)](https://github.com/aidanrogers02/Google_Data_Analytics_Capstone_Cyclistic/blob/main/Google_Data_Cyclistic_RMD.Rmd) in this repository here, much of it was provided by google but I modified it to fit for my purposes as well)

To start I used the summary() function to get some basic statistical values from the data such as the mean, median, and max ride lengths from the data (in seconds). As can be seen the casual riders do take longer rides in every regard.

![R Summary](/Charts_and_Tables/r_results.png)

I also checked again to see if casual riders do indeed take longer rides and ride more on the weekends than members do. This information would point to the fact that casual members tend to take Cyclistic bikes for recreational rides more often while members take them for commutes.

![R Ride Durations and Number of Rides](/Charts_and_Tables/r_rides_avgdur.png)
![R Number of Rides Per Day](/Charts_and_Tables/r_riders_day_graph.png)
![R Average Duration Each Day](/Charts_and_Tables/r_avgdur_byday.png)

## Share 

Now it was on to another truly exciting part of the anaylsis, the share phase. The share phase is where I got to get together my findings and they them out in an organized and easily understood manner to answer the business task and present my findings to stakeholders. I put my most crucial and intriguing findings into a PowerPoint along with the data story and recommendations I have to answer the guiding question. 

(You can find the [PowerPoint (link)](https://github.com/aidanrogers02/Google_Data_Analytics_Capstone_Cyclistic/blob/main/Cyclistic_presentation.pptx) in the repository and a [Google Slides (link)](https://docs.google.com/presentation/d/1MVj_kx36tiJQDnXq00ywdDfrCvHLlRdH/edit?usp=sharing&ouid=105273385533473543058&rtpof=true&sd=true) version of it at the top of this page and here)

The most important trends I found in the data that relate to the question of "How do annual members and casual riders use Cyclistic bikes differently?" were that:
1. Casual riders tend to ride Cyclistic bikes much more on the afternoons and for much longer on average than members
2. Casual riders start to ride the most in quarter 3 of the year and more specifically July
3. Causal riders are grouped together at very populous locations that they tend to start at

These trends were all critical to include and find ways to capitlize on in my presentation. These means of capitlizing are key part of the "Act" phase.

## Act

The act phase is where you act on the findings and trends that you discovered in the data based on the guiding question. I came up with three recommendations for the marketing team to perform to help turn casual riders into members.

### Recommendations

1. Create advertisements to encourage casual members to start commuting with cyclistic
2. Start rolling out ads and marketing budget in quarter 3, especially in July to have the best chance of converting members
3. Target ads in specific locations that hold a lot of casual Cylclistic riders

### Steps Moving Forward 

There are some steps moving forward that I thought of that could help improve the analysis or make it more reliable in the future.

* Make sure location data is saved and stored, many starting and ending locations were NULL in the data files
* Make sure stating and ending times are accurate, some of the data points had ending times that were before their stating times
* Look more into the different bikes casual riders use vs memebers since they tend to prefer different bikes to some degree, this could be useful information


