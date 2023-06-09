USE [Hasty]
GO
/****** Object:  StoredProcedure [dbo].[Locations_Insert]    Script Date: 1/31/2023 1:12:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author: <Kevin Lee>
-- Create date: <01-26-2023T15:29:00>
-- Description: Locations Insert
-- Code Reviewer: 
-- MODIFIED BY:
-- MODIFIED DATE:
-- Code Reviewer:
-- Note:
-- =============================================
CREATE PROC [dbo].[Locations_Insert]
		@LocationTypeId int
		,@LineOne nvarchar(255)
		,@LineTwo nvarchar(255) 
		,@City nvarchar(255)
		,@Zip nvarchar(50)
		,@StateId int
		,@Latitude float 
		,@Longitude float		
		,@CreatedBy int		
		,@Id int OUTPUT	
/*---TEST CODE---
		Declare @Id int = 5;		
		Declare @LocationTypeId int = 1
				,@LineOne nvarchar(255) = '123 Street'
				,@LineTwo nvarchar(255) = ''
				,@City nvarchar(255) = 'New York'
				,@Zip nvarchar(50) = '12345'
				,@StateId int = 1
				,@Latitude float = 12
				,@Longitude float = 12		
				,@CreatedBy int = 1				
		Execute dbo.Locations_Insert
				@LocationTypeId
				,@LineOne 
				,@LineTwo 
				,@City 
				,@Zip 
				,@StateId 
				,@Latitude 
				,@Longitude 			
				,@CreatedBy 				
				,@Id 
			Select *
			From dbo.Locations
			Where Id = @Id			
*/
AS
BEGIN
		INSERT INTO [dbo].[Locations]
					([LocationTypeId]
					  ,[LineOne]
					  ,[LineTwo]
					  ,[City]
					  ,[Zip]
					  ,[StateId]
					  ,[Latitude]
					  ,[Longitude]					
					  ,[CreatedBy])
				VALUES
					(@LocationTypeId 
						,@LineOne 
						,@LineTwo 
						,@City 
						,@Zip 
						,@StateId 
						,@Latitude 
						,@Longitude 					
						,@CreatedBy)
				SET @Id = SCOPE_IDENTITY()
END
GO
