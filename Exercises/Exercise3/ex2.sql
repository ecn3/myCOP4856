drop table if exists 'ex2'.'movie';

CREATE TABLE 'ex2'.'movie'(
'director' VARCHAR(20) NULL,
'imdbRef' VARCHAR(10) NULL,
'year' INT NOT NULL,
'metascore' INT NOT NULL,
'rottenTomatoes' INT NOT NULL,
GROUP_CONCAT('keyword') 'keywords', VARCHAR(10) NULL,
PRIMARY KEY ('imdbRef')
);

select * from ex2.movie;
