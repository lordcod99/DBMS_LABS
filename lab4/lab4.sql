use lab3;

select * from emp;

select user_id, salary from emp
where gender = "Female"
INTO  OUTFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/spool.txt'
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n';

