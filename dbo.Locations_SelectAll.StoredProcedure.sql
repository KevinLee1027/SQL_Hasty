USE [Hasty]
GO
/****** Object:  StoredProcedure [dbo].[Locations_SelectAll]    Script Date: 1/31/2023 1:12:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author: <Kevin Lee>
-- Create date: <01-25-2023T20:33:00>
-- Description: Locations SelectAll
-- Code Reviewer: 
-- MODIFIED BY:
-- MODIFIED DATE:
-- Code Reviewer:
-- Note:
-- =============================================
CREATE PROC [dbo].[Locations_SelectAll]
		@PageIndex int 
		,@PageSize int 
/*---TEST CODE---
EXECUTE [dbo].[Locations_SelectAll]
		@PageIndex = 0
		,@PageSize = 4
*/
AS
BEGIN
   DECLARE @offset int = @PageIndex * @PageSize
        SELECT	
				l.Id
				,lt.Id as LocationTypeId
				,lt.[Name]
				,l.LineOne 
				,l.LineTwo 
				,l.City 
				,l.Zip 
				,s.Id as StateId 
				,s.Code
				,s.[Name]
				,l.Latitude 
				,l.Longitude 		
				,l.DateCreated
				,l.DateModified	
				,uc.Id AS CreatedById 
				,uc.Email AS CreatedByEmail
				,uc.FirstName AS CreatedByFirstName
				,uc.LastName AS CreatedByLastName
				,uc.Mi AS CreatedByMi
				,uc.AvatarUrl AS CreatedByAvatarUrl				
				,uc.isConfirmed AS CreatedByIsConfimed
				,uc.StatusId AS CreatedByStatusId
				,uc.DateCreated AS CreatedByDateCreated
				,uc.DateModified AS CreatedByDateModified
				,um.Id as ModifiedById 
				,um.Email as ModifiedByEmail
				,um.FirstName as ModifiedByFirstName
				,um.LastName as ModifiedByLastName
				,um.Mi as ModifiedByMi
				,um.AvatarUrl as ModifiedByAvatarUrl				
				,um.isConfirmed as ModifiedByIsConfimed
				,um.StatusId as ModifiedByStatusId
				,um.DateCreated as ModifiedByDateCreated
				,um.DateModified as ModifiedByDateModified,				
					TotalCount = COUNT(1) OVER()					
        FROM    dbo.Locations AS l inner join dbo.Users AS uc
					ON l.CreatedBy = uc.Id
				inner join dbo.Users as um
					on l.ModifiedBy = um.Id	
				inner join dbo.LocationTypes as lt
					on l.LocationTypeId = lt.Id
				inner join dbo.States as s
					on l.StateId = s.Id  
		ORDER BY Id
		OFFSET @offSet ROWS
		FETCH NEXT @PageSize ROWS ONLY;
END
GO
