USE [Hasty]
GO
/****** Object:  StoredProcedure [dbo].[Locations_Delete_ById]    Script Date: 1/31/2023 1:12:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author: <Kevin Lee>
-- Create date: <01-25-2023T20:19:00>
-- Description: Locations DeleteById
-- Code Reviewer: 
-- MODIFIED BY:
-- MODIFIED DATE:
-- Code Reviewer:
-- Note:
-- =============================================
CREATE PROC [dbo].[Locations_Delete_ById]
	@Id int
AS
/*---TEST CODE---
	Declare @Id int = 4
		Select *
		From dbo.Locations
		WHERE Id = @Id	
	Execute dbo.Locations_Delete_ById @Id
		Select *
		From dbo.Locations
		WHERE Id = @Id
*/
BEGIN
		DELETE FROM [dbo].[Locations]
		WHERE Id = @Id
		--DELETE FROM [dbo].[AvailableServices]
		--WHERE LocationId = @Id
END
GO
