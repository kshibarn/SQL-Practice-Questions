/* Table: Weather
 
 +---------------+---------+
 | Column Name   | Type    |
 +---------------+---------+
 | id            | int     |
 | recordDate    | date    |
 | temperature   | int     |
 +---------------+---------+
 id is the primary key for this table.
 This table contains information about the temperature on a certain day.
 
 
 Write an SQL query to find all dates' Id with higher temperatures compared to its previous dates (yesterday).
 
 Return the result table in any order.
 */

SELECT t.id AS 'Id'
FROM Weather as t
    JOIN Weather as w on DATEDIFF(t.RecordDate, w.RecordDate) = 1
    AND t.Temperature > w.Temperature;