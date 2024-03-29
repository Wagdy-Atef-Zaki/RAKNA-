USE [Rkna_DataBase]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 11/29/2019 01:15:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Governorate_Table]    Script Date: 11/29/2019 01:15:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Governorate_Table](
	[Gov_ID] [int] IDENTITY(1,1) NOT NULL,
	[Gov_Name] [nvarchar](100) NOT NULL,
	[Gov_Desc] [text] NULL,
	[Gov_X_Point] [varchar](70) NULL,
	[Gov_Y_Point] [varchar](70) NULL,
	[Deleted] [bit] NULL,
 CONSTRAINT [PK_Governorate_Table] PRIMARY KEY CLUSTERED 
(
	[Gov_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 11/29/2019 01:15:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Company_Table]    Script Date: 11/29/2019 01:15:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Company_Table](
	[Company_Info_ID] [int] IDENTITY(1,1) NOT NULL,
	[Company_Name] [nvarchar](100) NULL,
	[Company_Desc] [nvarchar](max) NULL,
	[Com_Pnone1] [char](11) NULL,
	[Com_Pnone2] [char](11) NULL,
	[Com_Pnone3] [char](11) NULL,
	[Comp_Manger] [nvarchar](70) NULL,
 CONSTRAINT [PK_Company_Table_1] PRIMARY KEY CLUSTERED 
(
	[Company_Info_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 11/29/2019 01:15:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 11/29/2019 01:15:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 11/29/2019 01:15:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 11/29/2019 01:15:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[States_Table]    Script Date: 11/29/2019 01:15:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[States_Table](
	[States_ID] [int] IDENTITY(1,1) NOT NULL,
	[Gov_ID] [int] NOT NULL,
	[States_Name] [nvarchar](100) NOT NULL,
	[States_Desc] [text] NULL,
	[States_X_Point] [varchar](70) NULL,
	[States_Y_Point] [varchar](70) NULL,
	[Deleted] [bit] NULL,
 CONSTRAINT [PK_States_Table] PRIMARY KEY CLUSTERED 
(
	[States_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Car_Specifications_Table]    Script Date: 11/29/2019 01:15:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Car_Specifications_Table](
	[Car_Spe_ID] [int] IDENTITY(1,1) NOT NULL,
	[Car_Owner_ID] [nvarchar](128) NOT NULL,
	[Care_Model] [nvarchar](50) NULL,
	[Car_plate_Number] [nvarchar](20) NOT NULL,
	[Deleted] [bit] NULL,
 CONSTRAINT [PK_Car_Specifications_Table] PRIMARY KEY CLUSTERED 
(
	[Car_Spe_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Area_Table]    Script Date: 11/29/2019 01:15:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Area_Table](
	[Area_ID] [int] IDENTITY(1,1) NOT NULL,
	[States_ID] [int] NOT NULL,
	[Area_Name] [nvarchar](100) NOT NULL,
	[Area_Desc] [text] NULL,
	[Area_X_Point] [varchar](70) NULL,
	[Area_Y_Point] [varchar](70) NULL,
	[Area_Manger] [nvarchar](128) NOT NULL,
	[Area_Hour_Rate] [money] NOT NULL,
	[Area_Start_Time] [time](7) NOT NULL,
	[Area_End_Time] [time](7) NOT NULL,
	[Deleted] [bit] NULL,
 CONSTRAINT [PK_Area_Table] PRIMARY KEY CLUSTERED 
(
	[Area_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Slut_Table]    Script Date: 11/29/2019 01:15:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Slut_Table](
	[Slut_ID] [int] IDENTITY(1,1) NOT NULL,
	[Area_ID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Slut_Level] [varchar](5) NULL,
	[Slut_X_Point] [varchar](70) NULL,
	[Slut_Y_Point] [varchar](70) NULL,
	[Slut_State] [bit] NOT NULL,
	[Deleted] [bit] NULL,
 CONSTRAINT [PK_Slut_Table] PRIMARY KEY CLUSTERED 
(
	[Slut_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Customer_Slut_Table]    Script Date: 11/29/2019 01:15:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Customer_Slut_Table](
	[Customer_Slut_ID] [int] IDENTITY(1,1) NOT NULL,
	[Customer_ID] [nvarchar](128) NOT NULL,
	[Slut_ID] [int] NOT NULL,
	[Car_Spe_ID] [int] NOT NULL,
	[Cus_Slut_Date] [date] NOT NULL,
	[Cus_Slut_S_Time] [time](7) NOT NULL,
	[Cus_Slut_E_Time] [time](7) NOT NULL,
	[Cheeck_Code] [varchar](50) NULL,
	[Deleted] [bit] NULL,
 CONSTRAINT [PK_Customer_Slut_Table] PRIMARY KEY CLUSTERED 
(
	[Customer_Slut_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  ForeignKey [FK_Area_Table_AspNetUsers]    Script Date: 11/29/2019 01:15:56 ******/
ALTER TABLE [dbo].[Area_Table]  WITH CHECK ADD  CONSTRAINT [FK_Area_Table_AspNetUsers] FOREIGN KEY([Area_Manger])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Area_Table] CHECK CONSTRAINT [FK_Area_Table_AspNetUsers]
GO
/****** Object:  ForeignKey [FK_Area_Table_AspNetUsers1]    Script Date: 11/29/2019 01:15:56 ******/
ALTER TABLE [dbo].[Area_Table]  WITH CHECK ADD  CONSTRAINT [FK_Area_Table_AspNetUsers1] FOREIGN KEY([Area_Manger])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Area_Table] CHECK CONSTRAINT [FK_Area_Table_AspNetUsers1]
GO
/****** Object:  ForeignKey [FK_Area_Table_States_Table]    Script Date: 11/29/2019 01:15:56 ******/
ALTER TABLE [dbo].[Area_Table]  WITH CHECK ADD  CONSTRAINT [FK_Area_Table_States_Table] FOREIGN KEY([States_ID])
REFERENCES [dbo].[States_Table] ([States_ID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Area_Table] CHECK CONSTRAINT [FK_Area_Table_States_Table]
GO
/****** Object:  ForeignKey [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]    Script Date: 11/29/2019 01:15:56 ******/
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
/****** Object:  ForeignKey [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]    Script Date: 11/29/2019 01:15:56 ******/
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
/****** Object:  ForeignKey [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]    Script Date: 11/29/2019 01:15:56 ******/
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
/****** Object:  ForeignKey [FK_Car_Specifications_Table_AspNetUsers]    Script Date: 11/29/2019 01:15:56 ******/
ALTER TABLE [dbo].[Car_Specifications_Table]  WITH CHECK ADD  CONSTRAINT [FK_Car_Specifications_Table_AspNetUsers] FOREIGN KEY([Car_Owner_ID])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Car_Specifications_Table] CHECK CONSTRAINT [FK_Car_Specifications_Table_AspNetUsers]
GO
/****** Object:  ForeignKey [FK_Customer_Slut_Table_AspNetUsers]    Script Date: 11/29/2019 01:15:56 ******/
ALTER TABLE [dbo].[Customer_Slut_Table]  WITH CHECK ADD  CONSTRAINT [FK_Customer_Slut_Table_AspNetUsers] FOREIGN KEY([Customer_ID])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Customer_Slut_Table] CHECK CONSTRAINT [FK_Customer_Slut_Table_AspNetUsers]
GO
/****** Object:  ForeignKey [FK_Customer_Slut_Table_Car_Specifications_Table]    Script Date: 11/29/2019 01:15:56 ******/
ALTER TABLE [dbo].[Customer_Slut_Table]  WITH CHECK ADD  CONSTRAINT [FK_Customer_Slut_Table_Car_Specifications_Table] FOREIGN KEY([Car_Spe_ID])
REFERENCES [dbo].[Car_Specifications_Table] ([Car_Spe_ID])
GO
ALTER TABLE [dbo].[Customer_Slut_Table] CHECK CONSTRAINT [FK_Customer_Slut_Table_Car_Specifications_Table]
GO
/****** Object:  ForeignKey [FK_Customer_Slut_Table_Slut_Table]    Script Date: 11/29/2019 01:15:56 ******/
ALTER TABLE [dbo].[Customer_Slut_Table]  WITH CHECK ADD  CONSTRAINT [FK_Customer_Slut_Table_Slut_Table] FOREIGN KEY([Slut_ID])
REFERENCES [dbo].[Slut_Table] ([Slut_ID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Customer_Slut_Table] CHECK CONSTRAINT [FK_Customer_Slut_Table_Slut_Table]
GO
/****** Object:  ForeignKey [FK_Slut_Table_Area_Table]    Script Date: 11/29/2019 01:15:56 ******/
ALTER TABLE [dbo].[Slut_Table]  WITH CHECK ADD  CONSTRAINT [FK_Slut_Table_Area_Table] FOREIGN KEY([Area_ID])
REFERENCES [dbo].[Area_Table] ([Area_ID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Slut_Table] CHECK CONSTRAINT [FK_Slut_Table_Area_Table]
GO
/****** Object:  ForeignKey [FK_States_Table_Governorate_Table]    Script Date: 11/29/2019 01:15:56 ******/
ALTER TABLE [dbo].[States_Table]  WITH CHECK ADD  CONSTRAINT [FK_States_Table_Governorate_Table] FOREIGN KEY([Gov_ID])
REFERENCES [dbo].[Governorate_Table] ([Gov_ID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[States_Table] CHECK CONSTRAINT [FK_States_Table_Governorate_Table]
GO
