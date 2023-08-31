USE [HR]
GO

DECLARE @Mycounter as int

SET @Mycounter = 200000

WHILE @Mycounter < 700000

	BEGIN
	
		INSERT INTO [dbo].[EmployeeDetails]
           ([EmployeeId]
           ,[passportNumber] 
           ,[ExpiryDate])
		VALUES
           (@Mycounter
           ,'PS'+''+ CAST(@Mycounter AS NVARCHAR(8))
           ,GETDATE())

		SET @Mycounter = @Mycounter + 1;
END
 


--INSERT INTO [dbo].[EmployeeDetails]
--           ([EmployeeId]
--           ,[passportNumber]
--           ,[ExpiryDate])
--     VALUES
--           (1
--           ,'ps'+''+'1'
--           ,GETDATE())

		  



