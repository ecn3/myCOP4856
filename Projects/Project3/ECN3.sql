/*Create database*/
CREATE SCHEMA ECN3;
GO

/*create table for tabale*/

CREATE TABLE PlaylistECN3(
   director VARCHAR(20) NOT NULL,
   imdbRef VARCHAR(10) NOT NULL,
   year INT NOT NULL,
   metascore INT NOT NULL,
   rottenTomatoes INT NOT NULL,
   keyword1 VARCHAR(20),
   keyword2 VARCHAR(20),
   keyword3 VARCHAR(20),
   keyword4 VARCHAR(20),
   keyword5 VARCHAR(20)
);