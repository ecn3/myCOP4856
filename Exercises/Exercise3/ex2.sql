DROP TABLE IF EXISTS MOVIE_TABLE;

CREATE TABLE [MOVIE_TABLE](
   [director] [varchar](20) NOT NULL,
   [imdbRef] [varchar](10) NOT NULL,
   [year] [int] NOT NULL,
   [metascore] [int] NOT NULL,
   [rottenTomatoes] [int] NOT NULL,
 CONSTRAINT [MOVIE_PK] PRIMARY KEY ([imdbRef])
);
GO

