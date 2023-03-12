/*
Q7.Query the list of City names ending with vowels from station.
And your result cannot contain duplicates.
*/ 
select distinct city
from station
where lower(substr(city,-1)) in ('a','e','i','o','u');

/*
Q8.Query the list of City names from station 
which have vowels as both their first and last characters.
*/ 
select distinct city
from station
where lower(substr(city,-1)) in ('a','e','i','o','u')
and lower(substr(city,0,1)) in ('a','e','i','o','u');

/*
Q9.Query the list of City names from station 
that do NOT start with vowels.
*/ 
select distinct city
from station
where lower(substr(city,0,1)) not in ('a','e','i','o','u');

/*
10.Query the list of City names from station 
that do NOT end with vowels.
*/ 
select distinct city
from station
where lower(substr(city,-1)) not in ('a','e','i','o','u');

/*
11.Query the list of CITY names from station 
that either do not start with vowels or do not end with vowels.
(used regular expression)
*/ 
select distinct city
from station
where regexp_like(city, '^[^aeiouAEIOU]|*[^aeiouAEIOU]$');

/*
12.Query the list of CITY names from station 
that either do not start with vowels and do not end with vowels.
(used regular expression)
*/
select distinct city
from station
WHERE  regexp_like (city, '^[^aeiouAEIOU].*') 
and regexp_like (city, '.*[^aeiouAEIOU]$');