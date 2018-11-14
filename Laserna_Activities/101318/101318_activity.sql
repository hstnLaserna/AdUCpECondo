USE LASERNA;
SHOW TABLES FROM LASERNA;
SHOW COLUMNS FROM authors;
SHOW COLUMNS FROM books; 


-- ACTIVITY 1 --

SELECT Sum, Average, Max 
FROM	(
		SELECT first_name,
				SUM(pages) Sum,
				AVG(pages) Average,
                MAX(pages) Max
		FROM books b
		LEFT JOIN authors a ON a.id=b.author_id
		GROUP BY first_name
		HAVING a.first_name LIKE 'r%'
		ORDER BY 3
		) as tempo
limit 5;

-- ACTIVITY 2 --

SELECT b.title
FROM books b
WHERE pages >
(
	SELECT AVG(pages)
    FROM books b2
    WHERE b.author_id = b2.author_id
)
ORDER BY 1 -- or ORDER BY title
LIMIT 5;


-- ACTIVITY 3 --
SELECT first_name `First Name`, last_name `Last Name`
FROM authors a
WHERE (SELECT count(*) FROM books b 
		WHERE b.author_id = a.id
		and b.pages > (SELECT AVG(pages) FROM books)
        ) >= 2
ORDER BY a.last_name, a.first_name
LIMIT 5;



/*
SELECT *,
		(SELECT avg(pages) FROM books) `Ave of all Auths' books`,
        (SELECT count(*) FROM books b WHERE b.author_id=a.id and b.pages>(SELECT avg(pages) FROM books)) `# of Auth's books > ave of all Auths`
FROM authors a
WHERE (SELECT count(*) FROM books b 
		WHERE b.author_id=a.id
        and b.pages>(SELECT AVG(pages) FROM books)
        )>=2
ORDER BY a.last_name, a.first_name
LIMIT 5;
*/