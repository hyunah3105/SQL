/*
Q5.Query the two cities in STATiON with the shortest and longest CITY names,
as well as their respective length.
If there is more than one smallest or largest city, choose the one that
comes first when ordered alphabetically.
*/ 

/*
list the row after grouping the length of the city by the city names, 
sorted high to low and 
return the one row based on the list. vice versa
*/
( select city,length(city) as test
from station group by city order by test desc,city 
limit 1 )
union all
( select city,length(city) as test
from station group by city order by test asc,city 
limit 1 );

/* OR,
Retrieves the records filtering row where the length is equal to the max/min length in the table.
Combine both select statements to get the overall result of two query 
*/
 ( select city,length(city)
from station
where length(city) = (select max(length(city)) from station) order by city asc limit 1 )
union all 
( select city,length(city)
from station
where length(city) = (select min(length(city)) from station) order by city asc limit 1 );
