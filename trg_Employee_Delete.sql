USE [HR]
GO
/****** Object:  Trigger [dbo].[trg_InsteadOfDelete]    Script Date: 8/31/2023 10:37:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[trg_InsteadOfDelete]
ON [dbo].[Employee] INSTEAD OF DELETE
AS
INSERT INTO EmployeeAudit(EmployeeId,Operation,CreateDate)
SELECT EmployeeId,'DELETE', GETDATE() FROM DELETED