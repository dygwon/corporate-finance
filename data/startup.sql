CREATE DATABASE IF NOT EXISTS Corporate_Finance;
USE Corporate_Finance;

DROP TABLE IF EXISTS Country;
DROP TABLE IF EXISTS Rating;
DROP TABLE IF EXISTS Region;

CREATE TABLE Region (
	ID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL
);

CREATE TABLE Rating (
	ID INT AUTO_INCREMENT PRIMARY KEY,
    Rating VARCHAR(4) NOT NULL
);

CREATE TABLE Country (
    Name VARCHAR(60) NOT NULL,
    RegionID INT NOT NULL,
    RatingID INT NOT NULL,
    ID INT AUTO_INCREMENT PRIMARY KEY,
    
    FOREIGN KEY (RegionID) REFERENCES Region(ID) ON UPDATE CASCADE ON DELETE RESTRICT,
    FOREIGN KEY (RatingID) REFERENCES Rating(ID) ON UPDATE CASCADE ON DELETE RESTRICT
);

INSERT INTO Region (Name) VALUES
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
SELECT * FROM Region;

INSERT INTO Rating (Rating) VALUES
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
SELECT * FROM Rating;

SHOW VARIABLES LIKE "secure_file_priv";
SET GLOBAL local_infile=1;

LOAD DATA LOCAL INFILE '/var/lib/mysql-files/upload_one.csv'
INTO TABLE Country
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

SELECT * FROM Country;