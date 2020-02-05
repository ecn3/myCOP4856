CREATE DATABASE IF NOT EXISTS DVDLibrary;
USE DVDLibrary;
DROP TABLE IF EXISTS DVDS;

CREATE TABLE DVDS (
  DVDId INTEGER UNSIGNED NOT NULL,
  DVDimdbRef VARCHAR(20) NOT NULL,
  DVDTitle VARCHAR(45) NOT NULL,
  DVDreleaseyear INTEGER UNSIGNED NOT NULL,
  DVDkeyword1 VARCHAR(20) NOT NULL, 
  DVDkeyword2 VARCHAR(20) NOT NULL,
  DVDmetascore INT NOT NULL,
  DVDrottenTomatoes INT NOT NULL,
  PRIMARY KEY (DVDId)
);

INSERT INTO DVDS VALUES (1,"tt0295297","Harry Potter and the Chamber of Secrets",2002, 'harrypotter', 'jkrowlings', 63, 82);
INSERT INTO DVDS VALUES (2,"tt0770828","Man of Steel",2013, 'manofsteel', 'superman', 55, 82);
INSERT INTO DVDS VALUES (3,"tt1877830","Untitled Batman Reboot",2021, 'batman', 'untitled', 0, 0);
