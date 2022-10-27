/* Table: Employee
 
 +-------------+------+
 | Column Name | Type |
 +-------------+------+
 | id          | int  |
 | salary      | int  |
 +-------------+------+
 id is the primary key column for this table.
 Each row of this table contains information about the salary of an employee.
 
 
 Write an SQL query to report the nth highest salary from the Employee table. 
 If there is no nth highest salary, the query should report null.
 */
 
CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT BEGIN RETURN (
    SELECT DISTINCT salary AS getNthHighestSalary
    FROM (
            SELECT salary,
                DENSE_RANK() OVER (
                    ORDER BY salary DESC
                ) AS salaryRank
            FROM Employee
        ) AS cot
    WHERE salaryRank = N
);
END