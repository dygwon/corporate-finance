CREATE DATABASE IF NOT EXISTS Corporate_Finance;
USE Corporate_Finance;

DROP TABLE IF EXISTS country;
DROP TABLE IF EXISTS rating;
DROP TABLE IF EXISTS region;

CREATE TABLE region (
	id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);

CREATE TABLE rating (
	id INT AUTO_INCREMENT PRIMARY KEY,
    rating VARCHAR(4) NOT NULL
);

CREATE TABLE country (
    name VARCHAR(60) NOT NULL,
    region_id INT NOT NULL,
    rating_id INT NOT NULL,
    id INT AUTO_INCREMENT PRIMARY KEY,
    
    FOREIGN KEY (region_id) REFERENCES region(id) ON UPDATE CASCADE ON DELETE RESTRICT,
    FOREIGN KEY (rating_id) REFERENCES rating(id) ON UPDATE CASCADE ON DELETE RESTRICT
);

INSERT INTO region (name) VALUES
("Middle East"),
("Eastern Europe & Russia"),
("Western Europe"),
("Africa"),
("Central and South America"),
("Caribbean"),
("Australia & New Zealand"),
("Asia"),
("North America"),
("Frontier Markets");
SELECT * FROM region;

INSERT INTO rating (rating) VALUES
("A1"),
("A2"),
("A3"),
("Aa1"),
("Aa2"),
("Aa3"),
("Aaa"),
("B1"),
("B2"),
("B3"),
("Ba1"),
("Ba2"),
("Ba3"),
("Baa1"),
("Baa2"),
("Baa3"),
("C"),
("Ca"),
("Caa1"),
("Caa2"),
("Caa3"),
("NR");
SELECT * FROM rating;

SHOW VARIABLES LIKE "secure_file_priv";
SET GLOBAL local_infile=1;

LOAD DATA LOCAL INFILE '/var/lib/mysql-files/upload_one.csv'
INTO TABLE country
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

SELECT * FROM country;