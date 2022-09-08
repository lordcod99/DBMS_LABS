use lab6;


-- 1 creating database users a,b,c

CREATE USER 'a'@'localhost' IDENTIFIED BY '12345';
CREATE USER 'b'@'localhost' IDENTIFIED BY '12345';
CREATE USER 'c'@'localhost' IDENTIFIED BY '12345';

-- 2 creating roles

create role 'student','faculty','dean';

FLUSH PRIVILEGES;
-- 3assign privilages to roles
create table student(
	reg_no int primary key auto_increment,
    name varchar(10),
    grade float
);

insert into student (name, grade)
values("tony",9.8);

select * from student;

create table faculty(
	id int primary key auto_increment,
    name varchar(10)
);

insert into faculty (name)
values("ultron");

select * from faculty;

grant select on lab6.* to 'student';

grant SELECT, INSERT, UPDATE, DELETE, ALTER ON lab6.student to 'faculty';
GRANT SELECT, UPDATE ON lab6.faculty TO 'faculty';

grant all on lab6.* to 'dean';


-- 4 grant select privilages to b/c connected as a and check by connecting as b/c



GRANT CREATE, ALTER, DROP, INSERT, UPDATE, DELETE, SELECT, REFERENCES, grant option, RELOAD on *.* TO 'a'@'localhost' WITH GRANT OPTION;

-- here grant option is a global privillage so it cant be only used to grant permissions to all databaes it cant be used to grant permissions to individual databases

-- connected as a 
create table population(
id int primary key auto_increment,
name varchar(10),
population int
);

insert into population (name,population)
values("nyc",100000);

grant select on lab6.population to 'b'@'localhost';

grant select on lab6.population to 'c'@'localhost';

-- connected as b/c
use lab6;
select * from population;

-- connected as a

-- 5 grant insert privilages

grant insert on lab6.population to 'b'@'localhost';

grant insert on lab6.population to 'c'@'localhost';

-- connected as b/c

insert into population (name,population)
values("b",100);

insert into population (name,population)
values("c",150);

select * from population;


-- 6 revoke insert privilage for table to user b
-- connected as a
revoke insert on lab6.population from 'b'@'localhost';
flush privileges;
-- connected as b
insert into population (name,population)
values("b",200);


