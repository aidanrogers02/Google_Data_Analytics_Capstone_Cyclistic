/* 
	All written in PostgreSQL using pgAdmin4 and the command line interface


	Since this database is simply for processing and analyzing data I will
	not worry about achieving complete normalization, just enough to keep
	data consistent
*/

-- January Table
CREATE TABLE rides_jan_2022 (
	ride_id varchar(20),
	rideable_type varchar(20),
	started_at timestamp,
	ended_at timestamp,
	start_station_name varchar(100),
	start_station_id varchar(50),
	end_station_name varchar(100),
	end_station_id varchar(50),
	member_casual varchar(20),
	ride_length interval,
	day_of_week int
);

\copy rides_jan_2022 FROM 'C:\Users\aidan\Desktop\Google_Data_Capstone\Clean_CSV_Files\202201-divvy-tripdata_clean.csv' csv header;

ALTER TABLE rides_jan_2022
ADD COLUMN quarter char(2) DEFAULT 'Q1';

-- February Table
CREATE TABLE rides_feb_2022 (
	ride_id varchar(20),
	rideable_type varchar(20),
	started_at timestamp,
	ended_at timestamp,
	start_station_name varchar(100),
	start_station_id varchar(50),
	end_station_name varchar(100),
	end_station_id varchar(50),
	member_casual varchar(20),
	ride_length interval,
	day_of_week int
);

\copy rides_feb_2022 FROM 'C:\Users\aidan\Desktop\Google_Data_Capstone\Clean_CSV_Files\202202-divvy-tripdata_clean.csv' csv header;

ALTER TABLE rides_feb_2022
ADD COLUMN quarter char(2) DEFAULT 'Q1';

-- March Table
CREATE TABLE rides_mar_2022 (
	ride_id varchar(20),
	rideable_type varchar(20),
	started_at timestamp,
	ended_at timestamp,
	start_station_name varchar(100),
	start_station_id varchar(50),
	end_station_name varchar(100),
	end_station_id varchar(50),
	member_casual varchar(20),
	ride_length interval,
	day_of_week int
);

\copy rides_mar_2022 FROM 'C:\Users\aidan\Desktop\Google_Data_Capstone\Clean_CSV_Files\202203-divvy-tripdata_clean.csv' csv header;

ALTER TABLE rides_mar_2022
ADD COLUMN quarter char(2) DEFAULT 'Q1';

-- April Table
CREATE TABLE rides_apr_2022 (
	ride_id varchar(20),
	rideable_type varchar(20),
	started_at timestamp,
	ended_at timestamp,
	start_station_name varchar(100),
	start_station_id varchar(50),
	end_station_name varchar(100),
	end_station_id varchar(50),
	member_casual varchar(20),
	ride_length interval,
	day_of_week int
);

\copy rides_apr_2022 FROM 'C:\Users\aidan\Desktop\Google_Data_Capstone\Clean_CSV_Files\202204-divvy-tripdata_clean.csv' csv header;

ALTER TABLE rides_apr_2022
ADD COLUMN quarter char(2) DEFAULT 'Q2';

-- May Table
CREATE TABLE rides_may_2022 (
	ride_id varchar(20),
	rideable_type varchar(20),
	started_at timestamp,
	ended_at timestamp,
	start_station_name varchar(100),
	start_station_id varchar(50),
	end_station_name varchar(100),
	end_station_id varchar(50),
	member_casual varchar(20),
	ride_length interval,
	day_of_week int
);

\copy rides_may_2022 FROM 'C:\Users\aidan\Desktop\Google_Data_Capstone\Clean_CSV_Files\202205-divvy-tripdata_clean.csv' csv header;

ALTER TABLE rides_may_2022
ADD COLUMN quarter char(2) DEFAULT 'Q2';

-- June Table
CREATE TABLE rides_jun_2022 (
	ride_id varchar(20),
	rideable_type varchar(20),
	started_at timestamp,
	ended_at timestamp,
	start_station_name varchar(100),
	start_station_id varchar(50),
	end_station_name varchar(100),
	end_station_id varchar(50),
	member_casual varchar(20),
	ride_length interval,
	day_of_week int
);

\copy rides_jun_2022 FROM 'C:\Users\aidan\Desktop\Google_Data_Capstone\Clean_CSV_Files\202206-divvy-tripdata_clean.csv' csv header;

ALTER TABLE rides_jun_2022
ADD COLUMN quarter char(2) DEFAULT 'Q2';

-- July Table
CREATE TABLE rides_jul_2022 (
	ride_id varchar(20),
	rideable_type varchar(20),
	started_at timestamp,
	ended_at timestamp,
	start_station_name varchar(100),
	start_station_id varchar(50),
	end_station_name varchar(100),
	end_station_id varchar(50),
	member_casual varchar(20),
	ride_length interval,
	day_of_week int
);

\copy rides_jul_2022 FROM 'C:\Users\aidan\Desktop\Google_Data_Capstone\Clean_CSV_Files\202207-divvy-tripdata_clean.csv' csv header;

ALTER TABLE rides_jul_2022
ADD COLUMN quarter char(2) DEFAULT 'Q3';

-- August Table
CREATE TABLE rides_aug_2022 (
	ride_id varchar(20),
	rideable_type varchar(20),
	started_at timestamp,
	ended_at timestamp,
	start_station_name varchar(100),
	start_station_id varchar(50),
	end_station_name varchar(100),
	end_station_id varchar(50),
	member_casual varchar(20),
	ride_length interval,
	day_of_week int
);

\copy rides_aug_2022 FROM 'C:\Users\aidan\Desktop\Google_Data_Capstone\Clean_CSV_Files\202208-divvy-tripdata_clean.csv' csv header;

ALTER TABLE rides_aug_2022
ADD COLUMN quarter char(2) DEFAULT 'Q3';

-- September Table
CREATE TABLE rides_sep_2022 (
	ride_id varchar(20),
	rideable_type varchar(20),
	started_at timestamp,
	ended_at timestamp,
	start_station_name varchar(100),
	start_station_id varchar(50),
	end_station_name varchar(100),
	end_station_id varchar(50),
	member_casual varchar(20),
	ride_length interval,
	day_of_week int
);

\copy rides_sep_2022 FROM 'C:\Users\aidan\Desktop\Google_Data_Capstone\Clean_CSV_Files\202209-divvy-tripdata_clean.csv' csv header;

ALTER TABLE rides_sep_2022
ADD COLUMN quarter char(2) DEFAULT 'Q3';

-- October Table
CREATE TABLE rides_oct_2022 (
	ride_id varchar(20),
	rideable_type varchar(20),
	started_at timestamp,
	ended_at timestamp,
	start_station_name varchar(100),
	start_station_id varchar(50),
	end_station_name varchar(100),
	end_station_id varchar(50),
	member_casual varchar(20),
	ride_length interval,
	day_of_week int
);

\copy rides_oct_2022 FROM 'C:\Users\aidan\Desktop\Google_Data_Capstone\Clean_CSV_Files\202210-divvy-tripdata_clean.csv' csv header;

ALTER TABLE rides_oct_2022
ADD COLUMN quarter char(2) DEFAULT 'Q4';

-- November Table
CREATE TABLE rides_nov_2022 (
	ride_id varchar(20),
	rideable_type varchar(20),
	started_at timestamp,
	ended_at timestamp,
	start_station_name varchar(100),
	start_station_id varchar(50),
	end_station_name varchar(100),
	end_station_id varchar(50),
	member_casual varchar(20),
	ride_length interval,
	day_of_week int
);

\copy rides_nov_2022 FROM 'C:\Users\aidan\Desktop\Google_Data_Capstone\Clean_CSV_Files\202211-divvy-tripdata_clean.csv' csv header;

ALTER TABLE rides_nov_2022
ADD COLUMN quarter char(2) DEFAULT 'Q4';

-- December Table
CREATE TABLE rides_dec_2022 (
	ride_id varchar(20),
	rideable_type varchar(20),
	started_at timestamp,
	ended_at timestamp,
	start_station_name varchar(100),
	start_station_id varchar(50),
	end_station_name varchar(100),
	end_station_id varchar(50),
	member_casual varchar(20),
	ride_length interval,
	day_of_week int
);

\copy rides_dec_2022 FROM 'C:\Users\aidan\Desktop\Google_Data_Capstone\Clean_CSV_Files\202212-divvy-tripdata_clean.csv' csv header;

ALTER TABLE rides_dec_2022
ADD COLUMN quarter char(2) DEFAULT 'Q4';


/* 
SELECT Statements
*/ 


-- Overall Average
SELECT AVG(ride_length)  
FROM
(
    SELECT * FROM rides_jan_2022
    UNION ALL
    SELECT * FROM rides_feb_2022
    UNION ALL
    SELECT * FROM rides_mar_2022
    UNION ALL
    SELECT * FROM rides_apr_2022
    UNION ALL
    SELECT * FROM rides_may_2022
    UNION ALL
    SELECT * FROM rides_jun_2022
    UNION ALL
    SELECT * FROM rides_jul_2022
    UNION ALL
    SELECT * FROM rides_aug_2022
    UNION ALL
    SELECT * FROM rides_sep_2022
    UNION ALL
    SELECT * FROM rides_oct_2022
    UNION ALL
    SELECT * FROM rides_nov_2022
    UNION ALL
    SELECT * FROM rides_dec_2022
) AS total;


-- Average by user type
SELECT AVG(ride_length) AS average_ride_length, member_casual
FROM
(
    SELECT * FROM rides_jan_2022
    UNION ALL
    SELECT * FROM rides_feb_2022
    UNION ALL
    SELECT * FROM rides_mar_2022
    UNION ALL
    SELECT * FROM rides_apr_2022
    UNION ALL
    SELECT * FROM rides_may_2022
    UNION ALL
    SELECT * FROM rides_jun_2022
    UNION ALL
    SELECT * FROM rides_jul_2022
    UNION ALL
    SELECT * FROM rides_aug_2022
    UNION ALL
    SELECT * FROM rides_sep_2022
    UNION ALL
    SELECT * FROM rides_oct_2022
    UNION ALL
    SELECT * FROM rides_nov_2022
    UNION ALL
    SELECT * FROM rides_dec_2022
) AS total
GROUP BY member_casual;

-- Show average ride length per quarter without ride length longer than
-- a day
SELECT AVG(ride_length) AS average_ride_length, quarter
FROM
(
    SELECT * FROM rides_jan_2022 WHERE ride_length < '24:00:00'
    UNION ALL
    SELECT * FROM rides_feb_2022 WHERE ride_length < '24:00:00'
    UNION ALL
    SELECT * FROM rides_mar_2022 WHERE ride_length < '24:00:00'
    UNION ALL
    SELECT * FROM rides_apr_2022 WHERE ride_length < '24:00:00'
    UNION ALL
    SELECT * FROM rides_may_2022 WHERE ride_length < '24:00:00'
    UNION ALL
    SELECT * FROM rides_jun_2022 WHERE ride_length < '24:00:00'
    UNION ALL
    SELECT * FROM rides_jul_2022 WHERE ride_length < '24:00:00'
    UNION ALL
    SELECT * FROM rides_aug_2022 WHERE ride_length < '24:00:00'
    UNION ALL
    SELECT * FROM rides_sep_2022 WHERE ride_length < '24:00:00'
    UNION ALL
    SELECT * FROM rides_oct_2022 WHERE ride_length < '24:00:00'
    UNION ALL
    SELECT * FROM rides_nov_2022 WHERE ride_length < '24:00:00'
    UNION ALL
    SELECT * FROM rides_dec_2022 WHERE ride_length < '24:00:00'
) AS total
GROUP BY quarter;


-- Find 5 most popular locations grouped by user type
SELECT COUNT(*) AS count_of_rides, start_station_name, member_casual
FROM
(
    SELECT * FROM rides_jan_2022 WHERE ride_length < '24:00:00'
    UNION ALL
    SELECT * FROM rides_feb_2022 WHERE ride_length < '24:00:00'
    UNION ALL
    SELECT * FROM rides_mar_2022 WHERE ride_length < '24:00:00'
    UNION ALL
    SELECT * FROM rides_apr_2022 WHERE ride_length < '24:00:00'
    UNION ALL
    SELECT * FROM rides_may_2022 WHERE ride_length < '24:00:00'
    UNION ALL
    SELECT * FROM rides_jun_2022 WHERE ride_length < '24:00:00'
    UNION ALL
    SELECT * FROM rides_jul_2022 WHERE ride_length < '24:00:00'
    UNION ALL
    SELECT * FROM rides_aug_2022 WHERE ride_length < '24:00:00'
    UNION ALL
    SELECT * FROM rides_sep_2022 WHERE ride_length < '24:00:00'
    UNION ALL
    SELECT * FROM rides_oct_2022 WHERE ride_length < '24:00:00'
    UNION ALL
    SELECT * FROM rides_nov_2022 WHERE ride_length < '24:00:00'
    UNION ALL
    SELECT * FROM rides_dec_2022 WHERE ride_length < '24:00:00'
) AS total
WHERE start_station_name IS NOT NULL
GROUP BY start_station_name, member_casual
ORDER by count_of_rides DESC
LIMIT 5;

-- Show the number of rides per month 
SELECT COUNT(*) AS count_of_rides
FROM
(
    SELECT * FROM rides_jan_2022
    UNION ALL
    SELECT * FROM rides_feb_2022 
    UNION ALL
    SELECT * FROM rides_mar_2022
    UNION ALL
    SELECT * FROM rides_apr_2022
    UNION ALL
    SELECT * FROM rides_may_2022
    UNION ALL
    SELECT * FROM rides_jun_2022
    UNION ALL
    SELECT * FROM rides_jul_2022
    UNION ALL
    SELECT * FROM rides_aug_2022
    UNION ALL
    SELECT * FROM rides_sep_2022
    UNION ALL
    SELECT * FROM rides_oct_2022
    UNION ALL
    SELECT * FROM rides_nov_2022
    UNION ALL
    SELECT * FROM rides_dec_2022
) AS total
GROUP BY EXTRACT(MONTH FROM started_at);

