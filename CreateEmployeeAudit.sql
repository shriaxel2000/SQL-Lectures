USE [HR]
GO

CREATE TABLE [dbo].[EmployeeAudit](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeId] [int] NOT NULL,
	[Operation] [nvarchar](6) NOT NULL,
	[CreateDate] [datetime] NOT NULL
) ON [PRIMARY]
GO


