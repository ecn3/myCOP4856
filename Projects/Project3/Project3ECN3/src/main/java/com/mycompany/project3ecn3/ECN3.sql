CREATE DATABASE IF NOT EXISTS ECN3;
USE ECN3;
DROP TABLE IF EXISTS PlaylistECN3;

CREATE TABLE PlaylistECN3 (
   directorName VARCHAR(20) NOT NULL,
   directoBirthdate VARCHAR(10) NOT NULL,
   title VARCHAR(10) NOT NULL,
   runTime INT,
   productionCompany VARCHAR(20),
   imdbRef VARCHAR(10) NOT NULL,
   releaseyear INT NOT NULL,
   metascore INT,
   rottenTomatoes INT,
   keyword1 VARCHAR(20),
   keyword2 VARCHAR(20),
   PRIMARY KEY (imdbRef)
);


INSERT INTO PlaylistECN3 VALUES ("Chris Columbus", "9/10/1958","Harry Potter and the Chamber of Secrets",
161,"Warner Bros.","tt0295297", 2002, 63, 82, "harrypotter", "jkrowlings");

INSERT INTO PlaylistECN3 VALUES ("Zack Snyder", "3/1/1966","Man of Steel",
143,"Warner Bros.","tt0770828", 2013, 55, 82, "manofsteel", "superman" );


INSERT INTO PlaylistECN3 VALUES ("Matt Reeves", "04/27/1966","Untitled Batman Reboot",
122,"Warner Bros.","tt1877830", 2021, 0, 0, "batman", "robertpatterson");