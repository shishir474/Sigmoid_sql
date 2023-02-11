CREATE DATABASE assignment
USE assignment

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

SELECT * from employees

SELECT department,
sum(case when gender='Male' then 1 else 0 end) as 'Num of male',
sum(case when gender='Female' then 1 else 0 end) as 'Num of female'
from employees
group by department




-- Question 2:
create table salaries(
Name varchar(10),
Jan int,
Feb int, 
Mar int
);

insert into salaries values('X', 5200, 9093, 3832);
insert into salaries values('Y', 9023, 8942, 4000);
insert into salaries values('Z', 9834, 8197, 9903);
insert into salaries values('W', 3244, 4321, 0293);

select Name,
case 
when Jan>Feb and Jan>Mar then Jan
when Feb>Jan and Feb>Mar then Feb
when Mar>Feb and Mar>Jan then Mar
end as Value,
case 
when Jan>Feb and Jan>Mar then 'Jan'
when Feb>Jan and Feb>Mar then 'Feb'
when Mar>Feb and Mar>Jan then 'Mar'
end as Month
from salaries






-- Question 3

create table test(
Candidate_ID int,
Marks int
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
create table candidate_Info(
Candidate_ID int,
Email varchar(32),
PRIMARY KEY(Candidate_ID)
);

INSERT INTO candidate_Info VALUES(45, 'abc@gmail.com');
INSERT INTO candidate_Info VALUES(23, 'def@yahoo.com');
INSERT INTO candidate_Info VALUES(34, 'abc@gmail.com');
INSERT INTO candidate_Info VALUES(21, 'bcf@gmail.com');
INSERT INTO candidate_Info VALUES(94, 'def@yahoo.com');

select * from candidate_Info;

select min(Candidate_ID),Email from candidate_Info group by Email;