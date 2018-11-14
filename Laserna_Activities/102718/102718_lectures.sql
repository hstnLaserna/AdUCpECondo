SHOW DATABASES;
USE laserna;

SHOW TABLES;

SHOW COLUMNS FROM authors;
SHOW COLUMNS FROM books;


SELECT * FROM books;
START TRANSACTION ;
	
    
-- EITHER (a)ROLLBACK OR (b)COMMIT
ROLLBACK;
COMMIT;

/*

DECLARE late int default 0;
SET late = late + 1;

SELECT count(*)
INTO late
from lateStudents;

*/
/*
DELIMITER $$
CREATE PROCEDURE SearchByName (IN)
BEGIN

END*/


DELIMITER $$
CREATE PROCEDURE GetAllAuthors()
	BEGIN
	SELECT * FROM books;
	END $$
DELIMITER;

DELIMITER $$
CREATE PROCEDURE GetAllAuthors()
    BEGIN
	SELECT * FROM books;
	SELECT * FROM authors;
    END$$
DELIMITER ;

DROP PROCEDURE GetAllAuthors;
CALL GetAllAuthors();

DROP PROCEDURE GetAuthorCount;

DELIMITER $$
CREATE PROCEDURE GetAuthorCount(OUT author_count INT)
    BEGIN
		SELECT count(*) INTO author_count FROM authors where first_name like '%r%';
    END$$
DELIMITER ;

CALL GetAuthorCount(@author_count);
SELECT @author_count;


SELECT count(*) 'count with r' FROM authors where first_name like '%R%';