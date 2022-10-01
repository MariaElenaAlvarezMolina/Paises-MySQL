SELECT * FROM world.countrylanguage;

SELECT Name, Language, Percentage FROM countrylanguage 
JOIN country ON countrylanguage.CountryCode = Code
WHERE Language LIKE 'Slovene' ORDER BY Percentage DESC;