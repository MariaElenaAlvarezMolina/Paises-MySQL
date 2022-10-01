SELECT * FROM world.country;

SELECT country.Name AS 'Country', COUNT(city.Name) AS 'Cities' FROM country
JOIN city ON city.CountryCode = Code
JOIN countrylanguage ON countrylanguage.CountryCode = Code
GROUP BY country.Name ORDER BY cities DESC;

SELECT country.Name AS 'Country', city.Name AS 'City', city.Population AS 'Population' FROM country
JOIN city ON city.CountryCode = Code
WHERE country.Name LIKE 'Mexico' AND city.Population > 500000 ORDER BY city.Population DESC;

SELECT Name AS 'Country', Language, Percentage AS 'Speaking Percentage' FROM country
JOIN countrylanguage ON countrylanguage.CountryCode = Code
WHERE Percentage > 89 ORDER BY Percentage DESC;

SELECT Name AS 'Country', SurfaceArea, Population FROM country WHERE SurfaceArea < 501 AND Population > 100000;

SELECT Name AS 'Country', GovernmentForm, LifeExpectancy FROM country WHERE GovernmentForm LIKE 'Constitutional Monarchy' AND Capital > 200 AND LifeExpectancy > 75;

SELECT country.Name AS 'Country', District, city.Name AS 'City', city.Population FROM country
JOIN city ON city.CountryCode = Code
WHERE country.Name LIKE 'Argentina' AND District LIKE 'Buenos Aires' AND city.Population > 500000;

SELECT Region, COUNT(Name) AS 'Countries' FROM country
GROUP BY Region ORDER BY Countries DESC;