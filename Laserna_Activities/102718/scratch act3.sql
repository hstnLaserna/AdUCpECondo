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
/* select * from foo order by id;
select count(pages)
    from books
    where pages=1;
*/
select * from books where pages=1;
select * from books where pages=6;
select * from books where pages=11;
select * from books where pages=16;
select * from books where pages=21;