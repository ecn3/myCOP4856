CREATE DATABASE IF NOT EXISTS ECN3;
USE ECN3;
DROP TABLE IF EXISTS PlaylistECN3;

CREATE TABLE PlaylistECN3 (
   directorName VARCHAR(20) NOT NULL,
   directoBirthdate DATE,
   title VARCHAR(10) NOT NULL,
   runTime INT,
   imdbRef VARCHAR(10) NOT NULL,
   releaseyear INT NOT NULL,
   metascore INT,
   rottenTomatoes INT,
   keyword1 VARCHAR(20),
   keyword2 VARCHAR(20),
   keyword3 VARCHAR(20),
   keyword4 VARCHAR(20),
   keyword5 VARCHAR(20)
   PRIMARY KEY (imdbRef)
);


/*INSERT INTO PlaylistECN3 VALUES ();*/