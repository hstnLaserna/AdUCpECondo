-- Laserna, Justine I.
-- Oct 10, 2018
-- L = 12 ; 12%3 = 0

CREATE DATABASE asians;
USE asians;

CREATE TABLE `asian_countries`(
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `country_name` VARCHAR(255) NOT NULL,
    `capital` VARCHAR(255) NOT NULL,
    `area(sq._km)` INT NOT NULL
    );

CREATE TABLE `south_east_asia`(
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `country_name` VARCHAR(255) NOT NULL,
    `capital` VARCHAR(255) NOT NULL,
    `area(sq._km)` DECIMAL(10,2) NOT NULL
    );
    
INSERT INTO `asian_countries`(`country_name`, `capital`, `area(sq._km)`)
VALUES
    ('Afghanistan', 'Kabul', 652864),
    ('Bahrain', 'Manama', 765.3),
    ('Cambodia', 'Phnom Penh', 181035),
    ('Georgia', 'Tbilisi', 153910),
    ('India', 'New Delhi', 3287000),
    ('Jordan', 'Amman', 89342),
    ('Kazakhstan', 'Astana', 2725000),
    ('Laos', 'Vientiane', 237955),
    ('Malaysia', 'Kuala Lumpur', 330803),
    ('Nepal', 'Kathmandu', 147181),
    ('Oman', 'Muscat', 309501),
    ('Philippines', 'Manila', 300000),
    ('Qatar', 'Doha', 11571),
    ('Saudi Arabia', 'Riyadh', 2150000),
    ('Singapore', 'Singapore', 721.5),
    ('Tajikistan', 'Dushanbe', 143100),
    ('Uzbekistan', 'Tashkent', 448978),
    ('Vietnam', 'Hanoi', 331210),
    ('Yemen', 'Sana a', 527968),
    ('Kyrgyzstan', 'Bishkek', 199900)
    ;
    
INSERT INTO `south_east_asia`(`country_name`, `capital`, `area(sq._km)`)
VALUES
    ('Indonesia', 'Jakarta', 1905000),
    ('Vietnam', 'Hanoi', 331210),
    ('Philippines', 'Manila', 300000),
    ('Thailand', 'Bangkok', 513120),
    ('Singapore', 'Singapore', 721.5)
    ;


SELECT * FROM asian_countries;
SELECT * FROM south_east_asia;

-- UNION
SELECT capital FROM asian_countries
UNION
SELECT capital FROM south_east_asia;

-- INTERSECT
SELECT DISTINCT capital 
FROM asian_countries
INNER JOIN south_east_asia USING(capital);

-- MINUS
SELECT 
asian.capital
FROM asian_countries asian
LEFT JOIN
south_east_asia sea USING (capital)
WHERE sea.id IS NULL;