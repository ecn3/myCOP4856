/*Create database*/
CREATE SCHEMA ECN3;
GO

/*create table for tabale*/

CREATE TABLE PlaylistECN3(
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
);