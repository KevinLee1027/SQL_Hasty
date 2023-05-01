USE [Hasty]
GO
/****** Object:  StoredProcedure [dbo].[LocationTypes_SelectAll]    Script Date: 1/31/2023 1:12:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author: <Kevin Lee>
-- Create date: <01-25-2023T20:33:00>
-- Description: LocationTypes SelectAll
-- Code Reviewer: 
-- MODIFIED BY:
-- MODIFIED DATE:
-- Code Reviewer:
-- Note:
-- =============================================
CREATE PROC [dbo].[LocationTypes_SelectAll]
/*---TEST CODE---
EXECUTE [dbo].[LocationTypes_SelectAll]
*/
AS
BEGIN
	SELECT	[Id]			
			,[Name]	
	FROM [dbo].[LocationTypes]
END
GO
