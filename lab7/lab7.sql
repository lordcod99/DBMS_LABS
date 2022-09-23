create database lab7;

use lab7;



create table branch(
id int primary key auto_increment,
name varchar(10)
);



insert into branch (name)
values("meta");

select * from branch;

create table student(
 id int primary key auto_increment,
 name varchar(15),
 cgpi float,
 branch int not null,
 foreign key (branch) references branch(id)
);

-- describe student;

 DELIMITER $$
CREATE PROCEDURE generate()
BEGIN
	DECLARE SIZE  INT;
    SET SIZE = 1;
    GEN: LOOP
		INSERT INTO student (name,cgpi,branch)
        values(concat('name',size),round(rand()*(10-4)+4,2), floor(rand()*(5-1+1)+1));
		SET SIZE = SIZE +1;
        IF SIZE = 100005 THEN
			LEAVE GEN;
		END IF;
	END LOOP GEN;
END $$
delimiter ;
CALL generate();

select * from student;

select count(*) from student;

drop procedure generate;

drop table student;



