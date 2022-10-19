/* Table: Person
 
 +-------------+---------+
 | Column Name | Type    |
 +-------------+---------+
 | id          | int     |
 | email       | varchar |
 +-------------+---------+
 id is the primary key column for this table.
 Each row of this table contains an email. The emails will not contain uppercase letters.
 
 
 Write an SQL query to delete all the duplicate emails, keeping only one unique email with the smallest id. Note that you are supposed to write a DELETE statement and not a SELECT one.
 
 After running your script, the answer shown is the Person table. 
 The driver will first compile and run your piece of code and then show the Person table. 
 The final order of the Person table does not matter.
 */
 
DELETE c1
FROM Person c1
    INNER JOIN Person c2
WHERE c1.id > c2.id
    AND c1.email = c2.email;