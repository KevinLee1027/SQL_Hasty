USE [Hasty]
GO
/****** Object:  StoredProcedure [dbo].[States_SelectAll]    Script Date: 1/31/2023 1:12:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author: <Kevin Lee>
-- Create date: <01-25-2023T20:19:00>
-- Description: States SelectAll
-- Code Reviewer: 
-- MODIFIED BY:
-- MODIFIED DATE:
-- Code Reviewer:
-- Note:
-- =============================================
CREATE PROC [dbo].[States_SelectAll]
/*---TEST CODE---
EXECUTE [dbo].[States_SelectAll]
*/
AS
BEGIN
	SELECT	[Id]
			,[Code]
			,[Name]	
	FROM [dbo].[States]
END
GO
