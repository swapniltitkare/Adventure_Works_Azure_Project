--- Create view calendar
CREATE VIEW gold.calendar AS
SELECT *
FROM OPENROWSET(
    BULK 'https://awstoragedatalake777.blob.core.windows.net/silver/AdventureWorks_Calendar/',
    FORMAT = 'PARQUET'
) AS query1;


--- Create view Customers
CREATE VIEW gold.customers AS
SELECT *
FROM OPENROWSET(
    BULK 'https://awstoragedatalake777.blob.core.windows.net/silver/AdventureWorks_Customers/',
    FORMAT = 'PARQUET'
) as query1


--- Create view Products
CREATE VIEW gold.products AS
SELECT *
FROM OPENROWSET(
    BULK 'https://awstoragedatalake777.blob.core.windows.net/silver/AdventureWorks_Products/',
    FORMAT = 'PARQUET'
) as query1


--- Create view Returns
CREATE VIEW gold.returns AS
SELECT *
FROM OPENROWSET(
    BULK 'https://awstoragedatalake777.blob.core.windows.net/silver/AdventureWorks_Returns/',
    FORMAT = 'PARQUET'
) as query1


--- Create view Sales2017
CREATE VIEW gold.sales2017 AS
SELECT *
FROM OPENROWSET(
    BULK 'https://awstoragedatalake777.blob.core.windows.net/silver/AdventureWorks_Sales_2017/',
    FORMAT = 'PARQUET'
) as query1


--- Create view Territories
CREATE VIEW gold.territories AS
SELECT *
FROM OPENROWSET(
    BULK 'https://awstoragedatalake777.blob.core.windows.net/silver/AdventureWorks_Territories/',
    FORMAT = 'PARQUET'
) as query1

--- Create view Subcategories
CREATE VIEW gold.subcategories AS
SELECT *
FROM OPENROWSET(
    BULK 'https://awstoragedatalake777.blob.core.windows.net/silver/Product_Subcategories/',
    FORMAT = 'PARQUET'
) as query1



