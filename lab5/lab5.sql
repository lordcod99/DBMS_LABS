-- create database lab5;
-- use lab5;


-- create table marks(
--   reg_no int primary key auto_increment,
--   marks1 int,
--   marks2 int,
--   marks3 int,
--   marks4 int,
--   marks5 int
-- );

-- insert into marks (marks1,marks2,marks3,marks4,marks5)
-- values(88,95,97,90,91);

-- delimiter $$
-- create procedure total_marks(in r_no int)
-- begin 
-- select s.reg_no, s.marks1+s.marks2+s.marks3+s.marks4+s.marks5 as "total" 
-- from  marks as s where s.reg_no = r_no;
-- end $$

-- delimiter ;


-- delimiter $$
-- create procedure total_marks2(in r_no int,in m1 int, in m2 int, in m3 int,in m4 int,in m5 int)
-- begin 
-- select r_no, m1+m2+m3+m4+m5 as "total" ;
-- end $$

-- delimiter ;


-- call total_marks(1);

-- create table emp(
-- id int primary key auto_increment,
-- name varchar(10),
-- salary decimal(10,2)
-- );


-- insert into emp (name , salary)
-- values("murali",300000);

-- select * from emp;


-- delimiter $$
-- create procedure update_salary(in eid int, in p int)
-- begin
-- update emp
-- set salary = salary + salary*p/100
-- where id = eid;
-- end $$
-- delimiter ;



-- call update_salary(1,10);


-- create table city_population(
--  id int primary key auto_increment,
--  name varchar(10),
--  population int
-- );

insert into city_population (name,population)
values("guntur",10000);


select * from city_population;

-- delimiter $$
-- create trigger insert_error
-- before insert on city_population for each row 
-- begin
--  signal sqlstate '45000'
--  set message_text = "new values canot be inserted into table";
-- end $$
-- delimiter ;

-- delimiter $$
-- create trigger delete_error
-- before delete on city_population for each row 
-- begin
--  signal sqlstate '45000'
--  set message_text = "user canot delete from the table";
-- end $$
-- delimiter ;
--  

 delete from city_population where id = 1;



