USE [Shipment]
GO
/****** Object:  Table [dbo].[Ship_Type]    Script Date: 12/28/2021 7:51:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ship_Type](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Type_Name] [nvarchar](100) NULL,
	[Status] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Shipment]    Script Date: 12/28/2021 7:51:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shipment](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Description] [nvarchar](255) NULL,
	[Address] [nvarchar](255) NULL,
	[Expedited] [nvarchar](10) NULL,
	[Ship_Type] [nvarchar](10) NULL,
	[CreatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Ship_Type] ON 

INSERT [dbo].[Ship_Type] ([ID], [Type_Name], [Status]) VALUES (1, N'LTL', N'A')
INSERT [dbo].[Ship_Type] ([ID], [Type_Name], [Status]) VALUES (2, N'Volume LTL', N'A')
INSERT [dbo].[Ship_Type] ([ID], [Type_Name], [Status]) VALUES (3, N'Truckload', N'A')
SET IDENTITY_INSERT [dbo].[Ship_Type] OFF
SET IDENTITY_INSERT [dbo].[Shipment] ON 

INSERT [dbo].[Shipment] ([ID], [Name], [Description], [Address], [Expedited], [Ship_Type], [CreatedDate]) VALUES (3, N'Prasad', N'vxzvzxc', N'zxcvzxcvzxcv', N'1', N'1', CAST(N'2021-12-28 07:49:44.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Shipment] OFF
/****** Object:  StoredProcedure [dbo].[Shipped]    Script Date: 12/28/2021 7:51:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Shipped] 
@Name nvarchar(100) null,
@Desc nvarchar(255) null,
@Address nvarchar(255) null,
@Exp nvarchar(100) null,
@SType nvarchar(100) null,
@CreatedDate datetime null
AS
Declare @value INT
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
insert into Shipment(Name,Description,Address,Expedited,Ship_Type,CreatedDate)
values(@Name,@Desc,@Address,@Exp,@SType,@CreatedDate)

			SET @value = 0 -- fail


		 RETURN @VALUE;

END



GO
