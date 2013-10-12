USE [myDatabase]
GO

/****** Object:  Table [dbo].[Authors]    Script Date: 8/20/2012 10:58:12 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Authors](
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[PhoneNumber] [varchar](50) NULL,
	[Address] [varchar](50) NULL,
	[City] [varchar](50) NULL,
	[State] [varchar](50) NULL,
	[Zip] [varchar](50) NULL,
	[Active] [int] NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


INSERT INTO dbo.Authors (FirstName, LastName)
VALUES ('Martin', 'Guidry')

INSERT INTO dbo.Authors (FirstName, LastName)
VALUES ('Martin', 'Guidry')