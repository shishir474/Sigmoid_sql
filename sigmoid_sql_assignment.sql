CREATE DATABASE assignment;
USE assignment;

CREATE TABLE employees(
EmpID int,
Name varchar(20),
Gender varchar(6),
Department varchar(20),
primary key(EmpId)
);


INSERT INTO employees VALUES(1, 'X', 'Female', 'Finance');
INSERT INTO employees VALUES(2, 'Y', 'Male', 'IT');
INSERT INTO employees VALUES(3, 'Z', 'Male', 'HR');
INSERT INTO employees VALUES(4, 'W', 'Female', 'IT');

SELECT * from employees;

SELECT department,
SUM(CASE WHEN gender='Male' THEN 1 else 0 END) as 'Num of male',
SUM(CASE WHEN gender='Female' THEN 1 else 0 END) as 'Num of female'
FROM employees
GROUP BY department
ORDER BY department;




-- Question 2:
CREATE TABLE salaries(
Name varchar(10),
Jan int,
Feb int, 
Mar int
);

INSERT INTO salaries VALUES('X', 5200, 9093, 3832);
INSERT INTO salaries VALUES('Y', 9023, 8942, 4000);
INSERT INTO salaries VALUES('Z', 9834, 8197, 9903);
INSERT INTO salaries VALUES('W', 3244, 4321, 0293);

SELECT Name,
CASE 
WHEN Jan>Feb AND Jan>Mar then Jan
WHEN Feb>Jan AND Feb>Mar then Feb
WHEN Mar>Feb AND Mar>Jan then Mar
END as Value,
CASE 
WHEN Jan>Feb AND Jan>Mar then 'Jan'
WHEN Feb>Jan AND Feb>Mar then 'Feb'
WHEN Mar>Feb AND Mar>Jan then 'Mar'
END as Month
FROM salaries;






-- Question 3

CREATE TABLE test(
Candidate_ID int,
Marks int,
PRIMARY_KEY(Candidate_ID)
);

INSERT INTO test VALUES(1, 98);
INSERT INTO test VALUES(2, 78);
INSERT INTO test VALUES(3, 87);
INSERT INTO test VALUES(4, 98);
INSERT INTO test VALUES(5, 78);

SELECT DISTINCT Marks "Marks", 
RANK() OVER (ORDER BY marks DESC) AS "Rank", 
GROUP_CONCAT(candidate_id) AS "Candidate_ID" 
FROM test
GROUP BY Marks 
ORDER BY Marks DESC;



-- Question 4
CREATE TABLE candidate_Info(
Candidate_ID int,
Email varchar(32),
PRIMARY KEY(Candidate_ID)
);

INSERT INTO candidate_Info VALUES(45, 'abc@gmail.com');
INSERT INTO candidate_Info VALUES(23, 'def@yahoo.com');
INSERT INTO candidate_Info VALUES(34, 'abc@gmail.com');
INSERT INTO candidate_Info VALUES(21, 'bcf@gmail.com');
INSERT INTO candidate_Info VALUES(94, 'def@yahoo.com');

SELECT * FROM candidate_Info;

SELECT MIN(Candidate_ID),Email 
FROM candidate_Info 
GROUP By Email;
