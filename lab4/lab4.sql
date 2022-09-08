use lab3;

select * from emp;
select * from project;

select * from project 
where name like "p%c__";











select user_id, salary from emp
where gender = "Female"
INTO  OUTFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/log1.txt'
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n';



select * from project
where name like "%x"
INTO  OUTFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/log2.txt'
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n';


select project, count(user_id), gender from emp
group by project,gender
INTO  OUTFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/log3.txt'
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n';


select * from emp 
where salary like  "1%";   





