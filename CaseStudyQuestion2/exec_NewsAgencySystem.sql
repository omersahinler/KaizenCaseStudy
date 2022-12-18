USE [master]
GO

DECLARE	@return_value int

EXEC	@return_value = [dbo].[sp_NewsAgencySystem]
		@language = N'tr'

SELECT	'Return Value' = @return_value

GO
