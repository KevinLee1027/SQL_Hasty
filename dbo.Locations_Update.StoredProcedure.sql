USE [Hasty]
GO
/****** Object:  StoredProcedure [dbo].[Locations_Update]    Script Date: 1/31/2023 1:12:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author: <Kevin Lee>
-- Create date: <01-26-2023T15:29:00>
-- Description: Locations Update
-- Code Reviewer: 
-- MODIFIED BY:
-- MODIFIED DATE:
-- Code Reviewer:
-- Note:
-- =============================================
CREATE PROC [dbo].[Locations_Update]
		@LocationTypeId int
		,@LineOne nvarchar(255)
		,@LineTwo nvarchar(255) 
		,@City nvarchar(255)
		,@Zip nvarchar(50)
		,@StateId int
		,@Latitude float 
		,@Longitude float				
		,@ModifiedBy int
		,@Id int 
/*---TEST CODE---
		Declare @Id int = 3
				,@LocationTypeId int = 1
				,@LineOne nvarchar(255) = '123 Street'
				,@LineTwo nvarchar(255) = ''
				,@City nvarchar(255) = 'New York'
				,@Zip nvarchar(50) = '12345'
				,@StateId int = 1
				,@Latitude float = 12
				,@Longitude float = 12				
				,@ModifiedBy int = 1
		Select *
		From dbo.Locations
		Where Id = @Id		
		Execute dbo.Locations_Update
				@LocationTypeId
				,@LineOne 
				,@LineTwo 
				,@City 
				,@Zip 
				,@StateId 
				,@Latitude 
				,@Longitude 				
				,@ModifiedBy 
				,@Id 
		Select *
		From dbo.Locations
		Where Id = @Id			
*/
AS
BEGIN	
		UPDATE [dbo].[Locations]
			SET	[LocationTypeId] = @LocationTypeId 
				,[LineOne] = @LineOne 
				,[LineTwo] = @LineTwo 
				,[City] = @City 
				,[Zip] =@Zip 
				,[StateId] = @StateId 
				,[Latitude] = @Latitude 
				,[Longitude] = @Longitude 
				,[ModifiedBy] = @ModifiedBy
			WHERE Id = @Id		
END
GO
