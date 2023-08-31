USE [HR]
GO
/****** Object:  Trigger [dbo].[trg_Employee_Insert]    Script Date: 8/31/2023 10:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TRIGGER [dbo].[trg_Employee_Insert] ON [dbo].[Employee] FOR INSERT
AS
INSERT INTO EmployeeAudit(EmployeeId,Operation,CreateDate)
SELECT EmployeeId,'INSERT',GETDATE() FROM INSERTED