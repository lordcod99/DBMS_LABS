-- create database  lab3;
use lab3; 

-- create table emp(
-- 	user_id int not null,
--     experience int not null,
--     age int,
--     gender varchar(7),
--     salary int deafault 50000
--    --  primary key(user_id) 
--     
-- );

-- create table project(
-- 	id int not null,
--     name varchar(100),
--     primary key(id)
-- );


-- using insert function to populate the data 

-- insert into project 
-- values(5,"anewara");

-- using laod to populate the data 

-- load data local infile "C:/Users/Sai/Downloads/Employee_Salary_Dataset.csv" into table emp
-- FIELDS TERMINATED BY ','
-- LINES TERMINATED BY '\n';

-- adding constraints 


-- alter table emp 
-- add column project int default 1;

-- alter table emp
-- add constraint pk primary key(user_id);

-- alter table emp
-- add constraint fk foreign key(project) references project(id);

-- modifying the constraints 

-- alter table emp 
-- ALTER salary SET DEFAULT 60000;

-- droping the constraints 


-- alter table emp
-- drop constraint fk;

-- modifying the constraints by first drpoing and adding as new modified constraint

-- alter table emp
-- add constraint fk foreign key(project) references project(id)
-- on delete set NULL;

-- deleting the table entries

-- delete from emp where user_id = 7;

-- updating the table entries 

-- update emp
-- set project = 5
-- where user_id = 9;





select * from emp;

select * from project;




insert into emp
values(36,20,44,"Male",10000,3);
















