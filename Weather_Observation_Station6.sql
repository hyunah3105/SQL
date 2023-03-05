/*
Query the list of CITY names starting with vowels from the table.
Your result cannot contain duplicated.
*/

select distinct city
from station
where city LIKE '[a,e,u,i,o]%';

/*
City names start from captital letter which aren't in the set of lowercase
*/
select distinct city
from station
where city lower(substr(city,0,1)) in ('a','e','i','u','o');