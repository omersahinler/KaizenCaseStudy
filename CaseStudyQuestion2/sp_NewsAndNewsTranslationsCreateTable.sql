USE [master]
GO

/****** Object:  StoredProcedure [dbo].[NewsAndNewsTranslationsCreateTable]    Script Date: 18/12/2022 15:52:08 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[sp_NewsAndNewsTranslationsCreateTable]
AS
BEGIN

	SET NOCOUNT ON;

    CREATE TABLE News (
  id INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  creationDate datetime NOT NULL,
  creatorUserId INTEGER NOT NULL
  
);
CREATE TABLE NewsTranslations (
  id INTEGER PRIMARY KEY,
  newId INTEGER NOT NULL,
  languageCode varchar(10) NOT NULL,
  title varchar(55) NOT NULL,
  detail varchar(55) NOT NULL,
  category varchar(25) NOT NULL,
  imageUrls varchar(255) NOT NULL,
  FOREIGN KEY (newId) REFERENCES News(id)
);
-- insert some values
INSERT INTO News VALUES (1, 'News1', '2022-12-18',1);
INSERT INTO NewsTranslations VALUES (1, 1,'en', 'en-News1-Title','en-News1-Detail','Economy
','en-News1-ImgUrl1, en-News1-ImgUrl2,…, enNews1-ImgUrln
');
INSERT INTO NewsTranslations VALUES (2, 1,'tr', 'tr-News1-Detay','en-News1-Detail','Ekonomi
','tr-News1-ImgUrl1, tr-News1-ImgUrl2,…, tr-News1-
ImgUrln
');
END
GO


