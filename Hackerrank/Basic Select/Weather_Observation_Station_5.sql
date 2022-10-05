/* Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths (i.e.: number of characters in the name). 
 If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically. */
/* Sample Input
 
 For example, CITY has four entries: DEF, ABC, PQRS and WXY.
 
 Sample Output
 
 ABC 3
 PQRS 4
 */
SELECT *
FROM (
        SELECT DISTINCT city,
            LENGTH(city)
        FROM station
        ORDER BY LENGTH(city) ASC,
            city ASC
    )
WHERE ROWNUM = 1
UNION
SELECT *
FROM (
        SELECT DISTINCT city,
            LENGTH(city)
        FROM station
        ORDER BY LENGTH(city) DESC,
            city ASC
    )
WHERE ROWNUM = 1;