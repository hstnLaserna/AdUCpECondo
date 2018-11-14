-- ACTIVITY 2
USE laserna;

DROP PROCEDURE GetBookPages;

DELIMITER $$
CREATE PROCEDURE GetBookPages(IN numOfPages INT, OUT message varchar(255))
    BEGIN
    DECLARE countOfBooks INT;
		SELECT count(*) INTO countOfBooks
        FROM books
        WHERE pages > numOfPages;
        
		IF countOfBooks < 50 THEN
        SET message="few";
        ELSEIF countOfBooks >= 50 and countOfBooks < 100 THEN
        SET message="many";
        ELSE SET message="A Lot";	
        END IF;
    END$$
DELIMITER ;

call GetBookPages(100, @message);
select @message;
-- Testing will show values from laserna.sql 
-- with values between	0 and 50,
-- 						50 and 100,
-- 						100 and above

SELECT count(*)
FROM BOOKS
WHERE pages > 100;
CALL GetBookPages(100, @message);
SELECT @message;

SELECT count(*)
FROM BOOKS
WHERE pages > 95;
CALL GetBookPages(95, @message);
SELECT @message;

SELECT count(*)
FROM BOOKS
WHERE pages > 94;
CALL GetBookPages(94, @message);
SELECT @message;

SELECT count(*)
FROM BOOKS
WHERE pages > 90;
CALL GetBookPages(90, @message);
SELECT @message;


SELECT count(*)
FROM BOOKS
WHERE pages > 89;
CALL GetBookPages(89, @message);
SELECT @message;



-- ACTIVITY 3

use laserna;
drop table if exists referencetbl;

create table referencetbl
(
pages smallint unsigned not null default 0,
`Books with this pages` smallint unsigned not null default 0
);

drop procedure if exists GetBookPagesLoop;

delimiter #3
create procedure GetBookPagesLoop(IN loopSkip INT, IN loopEnd INT, OUT pageSum INT)
begin

declare sums int unsigned default 1;
declare ctr int unsigned default 0;
declare counts int unsigned;

  truncate table referencetbl;
  start transaction;
	  while ctr <= loopEnd do
		set sums := 1 + (loopSkip*ctr);
		set ctr := ctr + 1;
		set counts := (select count(pages) from books where pages=sums);
		insert into referencetbl (pages, `Books with this pages`) values (sums, counts);
	  end while;
      
  commit;
  select sum(`Books with this pages`) into pageSum from referencetbl;
end #3

delimiter ;

call GetBookPagesLoop(5,4, @pageSum);
SELECT @pageSum;
select * from referencetbl;
/*  tested wiith values from below
*/
select * from books where pages=1;
select * from books where pages=6;
select * from books where pages=11;
select * from books where pages=16;
select * from books where pages=21;