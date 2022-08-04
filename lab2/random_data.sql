/*create database lab2;
use lab2;*/

-- create table thajhotel(
-- 	room tinyint,
--     room_service tinyint,
--     staff tinyint,
--     cleanliness tinyint,
--     restaurant tinyint,
--     wifi tinyint,
--     privacy tinyint,
--     room_security tinyint
--     
-- );

-- DELIMITER $$
-- CREATE PROCEDURE generate()
-- BEGIN
-- 	DECLARE SIZE  INT;
--     SET SIZE = 1;
--     GEN: LOOP
-- 		INSERT INTO thajhotel
--         values( RAND()*(5-0)+0, RAND()*(5-0)+0,
-- 				 RAND()*(5-0)+0, RAND()*(5-0)+0,
--                  RAND()*(5-0)+0, RAND()*(5-0)+0,
--                RAND()*(5-0)+0, RAND()*(5-0)+0);
-- 		SET SIZE = SIZE +1;
--         IF SIZE = 1060 THEN
-- 			LEAVE GEN;
-- 		END IF;
-- 	END LOOP GEN;
-- END $$

-- CALL generate();
select * from thajhotel;
-- select count(*) as number_of_records from thajhotel;




