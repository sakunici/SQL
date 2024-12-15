SELECT name, ROUND(gdp / population, -3) AS per_capita_gdp
FROM world
WHERE gdp >= 1000000000000;

"...-3คือการทำให้ตัวเลขหาร1พัน"
"Show the name and per-capita GDP for those countries with a GDP of at least one trillion (1000000000000; that is 12 zeros"
"Round this value to the nearest 1000. Show per-capita GDP for the trillion dollar countries to the nearest $1000."

(SELECT yr, subject, winner
FROM nobel
WHERE subject = 'chemistry' AND yr = '1984')
UNION
(SELECT yr, subject, winner
FROM nobel
WHERE subject = 'physics' AND yr = '1980')

"Show the year, subject, and name of physics winners for 1980 together with the chemistry winners for 1984."
"can you make it in 1 query? >> Answer No, it's not possible to combine the two conditions into a single query using AND 
because they represent two distinct sets of criteria. 
The UNION approach is the most efficient way to combine the results of both conditions into a single result set."
"in another way to query"
select * from nobel
where (subject='physics' and yr='1980')
or (subject='chemistry' and yr='1984')
order by subject
