
CREATE MASTER KEY ENCRYPTION BY PASSWORD = '';


CREATE DATABASE SCOPED CREDENTIAL cred_swap
WITH
    IDENTITY = 'Managed Identity'

CREATE EXTERNAL DATA SOURCE source_silver
WITH
(
    LOCATION = 'https://awstoragedatalake777.blob.core.windows.net/silver',
    CREDENTIAL = cred_swap
)

CREATE EXTERNAL DATA SOURCE source_gold
WITH
(
    LOCATION = 'https://awstoragedatalake777.blob.core.windows.net/gold',
    CREDENTIAL = cred_swap
)

CREATE EXTERNAL FILE FORMAT format_parquet
WITH
(
    FORMAT_TYPE = PARQUET,
    DATA_COMPRESSION = 'org.apache.hadoop.io.compress.SnappyCodec'
)

-- create external table external_calendar
CREATE EXTERNAL TABLE gold.excalendar
WITH
(
    LOCATION = 'excalendar',
    DATA_SOURCE = source_gold,  
    FILE_FORMAT = format_parquet
)AS
SELECT * FROM gold.calendar


-- create external table external_sales2017
CREATE EXTERNAL TABLE gold.exsales2017
WITH
(
    LOCATION = 'exsales2017',
    DATA_SOURCE = source_gold,  
    FILE_FORMAT = format_parquet
)AS
SELECT * FROM gold.sales2017


SELECT * from gold.excalendar