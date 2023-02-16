**SQL_Assignment**

**Shishir Kumar Singh**

**TAS-131**

Created the database using "CREATE DATABASE assignment" and used it using "USE assignment".

**Question 1**

Created the table employees with EmpID as primary key and inserted values into it.
In the main query, for first column selected Department column.
For second column used aggregated function SUM and CASE statement inside it. Sum is increased by 1 when we encouter 'Male'.
For third column used aggregated function SUM and CASE statement inside it. Sum is increased by 1 when we encouter 'Female'.
Used GROUP BY clause for grouping the table according to the Department.
Used ORDER BY clause to display table in ascending order according to Department.

**Question 2**

Created the table salaries with Name, Jan, Feb and Mar as attributes and inserted values into it.
In the main query, for first column selected Name column.
For second column used CASE statement for finding the maximum salary between Jan, Feb and Mar as Value.
For third column used CASE statement for finding the month of maximum salary between Jan, Feb and Mar as Month.

**Question 3**

Created the table test with Candidate_id as primary key and Marks as another attribute and inserted values into it.
In the main query, for first column selected Marks column.
For second column used RANK() function over individual rows ORDERED BY Marks in descending order.
For third column used GROUP_CONCAT() by Candidate_id for displaying multiple id of students with same marks.
Used GROUP BY clause for grouping the table according to the Marks.
Used ORDER BY clause to display table in descending order according to Marks.

**Question 4**

Created the table candidate_Info with Candidate_id as primary key and Email as another attribute and inserted values into it.
In the main query, for first column used aggregated function MIN for finding the minimum Candidate_id in particular group.
Used GROUP BY clause for grouping the table according to the Email.
Once we have the minimum Candidate_id, Run a delete query to delete the ids which are not included in those list of ids. 
