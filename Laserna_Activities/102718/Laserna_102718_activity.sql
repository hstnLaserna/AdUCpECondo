-- ACTIVITY 1
DROP PROCEDURE GetAuthorsLike;

DELIMITER $$
CREATE PROCEDURE GetAuthorsLike(IN likeInput VARCHAR(255), OUT likeCount INT)
    BEGIN
		SELECT count(*) INTO likeCount
        FROM authors
        WHERE first_name LIKE likeInput;
    END$$
DELIMITER ;

CALL GetAuthorsLike('l%', @likeCount);
SELECT @likeCount;

-- To check
SELECT count(*) FROM authors where first_name like 'l%';