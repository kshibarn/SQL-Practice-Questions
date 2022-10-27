/* Table: Stadium
 
 +---------------+---------+
 | Column Name   | Type    |
 +---------------+---------+
 | id            | int     |
 | visit_date    | date    |
 | people        | int     |
 +---------------+---------+
 visit_date is the primary key for this table.
 Each row of this table contains the visit date and visit id to the stadium with the number of people during the visit.
 No two rows will have the same visit_date, and as the id increases, the dates increase as well.
 
 
 Write an SQL query to display the records with three or more rows with consecutive id's, and the number of people is greater than or equal to 100 for each.
 
 Return the result table ordered by visit_date in ascending order.
 */
 
SELECT DISTINCT s1.*
FROM Stadium s1
    JOIN Stadium s2
    JOIN Stadium s3 ON (
        s1.id = s2.id - 1
        AND s1.id = s3.id - 2
    )
    OR (
        s1.id = s2.id + 1
        AND s1.id = s3.id - 1
    )
    OR (
        s1.id = s2.id + 1
        AND s1.id = s3.id + 2
    )
WHERE s1.people >= 100
    AND s2.people >= 100
    AND s3.people >= 100
ORDER BY id ASC;