# Task 1 : Using count, get the number of cities in USA
SELECT COUNT(Name) FROM city WHERE CountryCode = 'USA';


# Task 2: Find out what the population and  average life expectancy for people in Argentina (ARG) is?
SELECT  Population, AVG(LifeExpectancy) AS Average_LifeExpectancy FROM country WHERE Name ='Argentina'
GROUP BY Population;


# Task 3 : Using ORDER BY,LIMIT, What country has the Highest Life Expectancy
SELECT Name, MAX(LifeExpectancy) AS Highest_LifeExpectancy FROM country
GROUP BY Name
ORDER BY Highest_LifeExpectancy DESC LIMIT 1;


# Task 4 : Select 25 cities around the World that start with the letter 'F' in a single SQL query
SELECT Name FROM city
WHERE Name LIKE 'F%'
ORDER BY Name LIMIT 25;


/* Task 5 : Create SQL Statement to display Columns Id,Name,Population
 from the city table and limit results to first 10 rows only */
 SELECT ID, Name, Population FROM city
 ORDER BY ID LIMIT 10;
 
 
 /* Task 6: Create a SQL statement to display columns Id, Name, Population 
 from the city table and limit results to rows 31-40. */
 SELECT ID, Name, Population FROM city
 ORDER BY ID LIMIT 30,10;
 
 
 /*  Task 7 : Create SQL Statement to find only those cities from city table 
 whose Population is larger than 2000000 */
 SELECT Name,Population FROM city
 WHERE Population > 2000000;
 
 
 /* Task 8 : Create SQL Statement to find all the city names  from the city table
 whose name begins with "Be" prefix  */
 SELECT Name AS CityNames_WithPrefixBe FROM city
 WHERE Name LIKE 'Be%';


/* Task 9 : Create SQL Statement to find only those cities from the city table
 whose Population is between 500000 - 1000000 */
 SELECT Name, Population FROM city
 WHERE Population  BETWEEN 500000 AND 1000000
 ORDER BY Population;

 
 # Task 10 : Create a SQL statement to display all cities from the city table sorted by Name in ascending order.
SELECT Name FROM city
ORDER BY Name;


 # Task 11 : Create SQL Statement to find a city with the lowest population in the city table 
 SELECT Name AS City_with_Lowest_Population, MIN(Population) AS Lowest_Population
 FROM city 
 GROUP BY City_with_Lowest_Population
 ORDER BY Lowest_Population LIMIT 1;
 
 
  # Task 12 : Create a SQL statement to find a country with the largest population in the country table.
  SELECT Name AS Largest_Populated_Country, MAX(Population) AS Largest_Population 
  FROM country
  GROUP BY Largest_Populated_Country
  ORDER BY Largest_Population DESC LIMIT 1;

 
 # BONUS TASKS 
 # 1. Create an SQL statement to find the capital of Spain (ESP)
 SELECT Name, Code, Capital FROM country WHERE Name ='Spain';
 
 
  # 2. Create an SQL Statement to list all the languages spoken in the Caribbean region
  # Solution 1 : USING JOINS
  SELECT cl.Language AS Languages_In_Caribbaean FROM countrylanguage cl
  INNER JOIN country c
  ON cl.CountryCode=c.Code
  WHERE c.Region= 'Caribbean'
  GROUP BY cl.Language;
 # Solution 2 : Without JOINS
  SELECT Language FROM countrylanguage WHERE CountryCode IN (SELECT Code FROM country where Region ='Caribbean')
  GROUP BY Language;
  
 
 # 3.Create an SQL Statement to find all the cities from the Europe continent
 # Solution 1 : USING JOINS
SELECT ct.Name AS European_cities FROM city ct
INNER JOIN country c
ON ct.CountryCode=c.Code
WHERE c.Continent= 'Europe'
GROUP BY ct.Name;
# Solution 2 : Without USING JOINS
SELECT Name AS European_cities FROM city 
WHERE CountryCode IN (SELECT Code FROM country WHERE Continent = 'Europe')
GROUP BY Name;


# 4. Create a SQL statement to find the most populated city in the city table.
SELECT Name AS Most_Populated_City, MAX(Population) AS Highest_Population
FROM city
GROUP BY Most_Populated_City
ORDER BY Highest_Population DESC LIMIT 1;

