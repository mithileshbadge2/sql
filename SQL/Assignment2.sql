CREATE TABLE SalesData (
    City VARCHAR2(50),
    Year NUMBER(4),
    Month NUMBER(2),
    Sales NUMBER(10)
);

INSERT ALL
    INTO SalesData (City, Year, Month, Sales) VALUES ('Delhi', 2020, 5, 4300)
    INTO SalesData (City, Year, Month, Sales) VALUES ('Delhi', 2020, 6, 2000)
    INTO SalesData (City, Year, Month, Sales) VALUES ('Delhi', 2020, 7, 2100)
    INTO SalesData (City, Year, Month, Sales) VALUES ('Delhi', 2020, 8, 2200)
    INTO SalesData (City, Year, Month, Sales) VALUES ('Delhi', 2020, 9, 1900)
    INTO SalesData (City, Year, Month, Sales) VALUES ('Delhi', 2020, 10, 200)
    INTO SalesData (City, Year, Month, Sales) VALUES ('Mumbai', 2020, 5, 4400)
    INTO SalesData (City, Year, Month, Sales) VALUES ('Mumbai', 2020, 6, 2800)
    INTO SalesData (City, Year, Month, Sales) VALUES ('Mumbai', 2020, 7, 6000)
    INTO SalesData (City, Year, Month, Sales) VALUES ('Mumbai', 2020, 8, 9300)
    INTO SalesData (City, Year, Month, Sales) VALUES ('Mumbai', 2020, 9, 4200)
    INTO SalesData (City, Year, Month, Sales) VALUES ('Mumbai', 2020, 10, 9700)
    INTO SalesData (City, Year, Month, Sales) VALUES ('Bangalore', 2020, 5, 1000)
    INTO SalesData (City, Year, Month, Sales) VALUES ('Bangalore', 2020, 6, 2300)
    INTO SalesData (City, Year, Month, Sales) VALUES ('Bangalore', 2020, 7, 6800)
    INTO SalesData (City, Year, Month, Sales) VALUES ('Bangalore', 2020, 8, 7000)
    INTO SalesData (City, Year, Month, Sales) VALUES ('Bangalore', 2020, 9, 2300)
    INTO SalesData (City, Year, Month, Sales) VALUES ('Bangalore', 2020, 10, 8400)
    
select * from SalesData;
--I used 's1', 's2', 's3', 's4' aliases for instances of the SalesData table.
SELECT 
    s1.City,
    s1.Year,
    s1.Month,
    s1.Sales,
    s2.Sales Previous_Month_Sales,
    s3.Sales Next_Month_Sales,
    SUM(s4.Sales) YTD_Sales
FROM 
    SalesData s1
LEFT JOIN 
    SalesData s2 ON s1.City = s2.City 
                 AND s2.Year = s1.Year 
                 AND s2.Month = s1.Month - 1
LEFT JOIN 
    SalesData s3 ON s1.City = s3.City 
                 AND s3.Year = s1.Year 
                 AND s3.Month = s1.Month + 1
LEFT JOIN 
    SalesData s4 ON s1.City = s4.City 
                 AND s4.Year = s1.Year 
                 AND s4.Month <= s1.Month
GROUP BY 
    s1.City, s1.Year, s1.Month, s1.Sales, s2.Sales, s3.Sales
ORDER BY 
    s1.City, s1.Year, s1.Month;










