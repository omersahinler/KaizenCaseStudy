
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE sp_NewsAgencySystem
	@language nvarchar(10)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT nw.name,nwts.title,nwts.detail,nwts.imageUrls,nwts.category FROM News as nw
join NewsTranslations nwts on nw.id = nwts.newId
WHERE  nwts.languageCode =@language
END
GO
