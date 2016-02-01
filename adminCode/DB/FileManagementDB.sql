USE [master]
GO
/****** Object:  Database [FileManagementDB]    Script Date: 02/01/2016 23:54:01 ******/
CREATE DATABASE [FileManagementDB] ON  PRIMARY 
( NAME = N'FileManagementDB', FILENAME = N'F:\work\sqlDB\FileManagementDB.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'FileManagementDB_log', FILENAME = N'F:\work\sqlDB\FileManagementDB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [FileManagementDB] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [FileManagementDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [FileManagementDB] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [FileManagementDB] SET ANSI_NULLS OFF
GO
ALTER DATABASE [FileManagementDB] SET ANSI_PADDING OFF
GO
ALTER DATABASE [FileManagementDB] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [FileManagementDB] SET ARITHABORT OFF
GO
ALTER DATABASE [FileManagementDB] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [FileManagementDB] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [FileManagementDB] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [FileManagementDB] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [FileManagementDB] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [FileManagementDB] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [FileManagementDB] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [FileManagementDB] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [FileManagementDB] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [FileManagementDB] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [FileManagementDB] SET  DISABLE_BROKER
GO
ALTER DATABASE [FileManagementDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [FileManagementDB] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [FileManagementDB] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [FileManagementDB] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [FileManagementDB] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [FileManagementDB] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [FileManagementDB] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [FileManagementDB] SET  READ_WRITE
GO
ALTER DATABASE [FileManagementDB] SET RECOVERY FULL
GO
ALTER DATABASE [FileManagementDB] SET  MULTI_USER
GO
ALTER DATABASE [FileManagementDB] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [FileManagementDB] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'FileManagementDB', N'ON'
GO
USE [FileManagementDB]
GO
/****** Object:  Table [dbo].[TF_PaperFile]    Script Date: 02/01/2016 23:54:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TF_PaperFile](
	[Id] [uniqueidentifier] NOT NULL,
	[TName] [nvarchar](50) NULL,
	[Category] [nvarchar](20) NULL,
	[Units] [nvarchar](100) NULL,
	[Summary] [text] NULL,
	[location] [nvarchar](500) NULL,
	[CreateMan] [nvarchar](40) NULL,
	[CreateTime] [datetime] NULL,
	[UpdateTime] [datetime] NULL,
	[States] [int] NULL,
	[isValid] [bit] NULL,
	[isDeleted] [bit] NULL,
 CONSTRAINT [PK_TF_PAPERFILE] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PaperFile', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PaperFile', @level2type=N'COLUMN',@level2name=N'TName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PaperFile', @level2type=N'COLUMN',@level2name=N'Category'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PaperFile', @level2type=N'COLUMN',@level2name=N'Units'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'摘要' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PaperFile', @level2type=N'COLUMN',@level2name=N'Summary'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'存放位置' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PaperFile', @level2type=N'COLUMN',@level2name=N'location'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PaperFile', @level2type=N'COLUMN',@level2name=N'CreateMan'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PaperFile', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PaperFile', @level2type=N'COLUMN',@level2name=N'UpdateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态（2已审核、开启1，未审核0，关闭-1）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PaperFile', @level2type=N'COLUMN',@level2name=N'States'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否有效' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PaperFile', @level2type=N'COLUMN',@level2name=N'isValid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否删除' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PaperFile', @level2type=N'COLUMN',@level2name=N'isDeleted'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'纸质档案' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PaperFile'
GO
INSERT [dbo].[TF_PaperFile] ([Id], [TName], [Category], [Units], [Summary], [location], [CreateMan], [CreateTime], [UpdateTime], [States], [isValid], [isDeleted]) VALUES (N'7fb79027-cbe7-4f5d-9d8a-6b21a078435d', N'111', N'010101', N'2222', N'3333', N'44444', N'admin', CAST(0x0000A5840170FF67 AS DateTime), CAST(0x0000A584011B0891 AS DateTime), 0, 1, 0)
INSERT [dbo].[TF_PaperFile] ([Id], [TName], [Category], [Units], [Summary], [location], [CreateMan], [CreateTime], [UpdateTime], [States], [isValid], [isDeleted]) VALUES (N'977465ff-b0c9-4556-8254-71a7770ddf1f', N'12', N'010101', N'12', N'12fddfdf', N'12daaaa', N'admin', CAST(0x0000A58E0170FF67 AS DateTime), CAST(0x0000A599015E4F94 AS DateTime), 0, 1, 0)
INSERT [dbo].[TF_PaperFile] ([Id], [TName], [Category], [Units], [Summary], [location], [CreateMan], [CreateTime], [UpdateTime], [States], [isValid], [isDeleted]) VALUES (N'5c79c9cd-d01a-40a6-bf81-fa85ebece5df', N'112', N'010101', N'12', N'12', N'12', N'admin', CAST(0x0000A5840170FF67 AS DateTime), CAST(0x0000A599015E69BC AS DateTime), 0, 1, 0)
/****** Object:  Table [dbo].[TF_LifeComments]    Script Date: 02/01/2016 23:54:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TF_LifeComments](
	[Id] [uniqueidentifier] NOT NULL,
	[TrueName] [nvarchar](20) NULL,
	[Units] [nvarchar](40) NULL,
	[Duties] [nvarchar](20) NULL,
	[Summary] [nvarchar](200) NULL,
	[Details] [text] NULL,
	[CreateMan] [nvarchar](20) NULL,
	[CreateTime] [datetime] NULL,
	[UpdateTime] [datetime] NULL,
	[States] [int] NULL,
	[isValid] [bit] NULL,
	[isDeleted] [bit] NULL,
 CONSTRAINT [PK_TF_LIFECOMMENTS] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_LifeComments', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_LifeComments', @level2type=N'COLUMN',@level2name=N'TrueName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_LifeComments', @level2type=N'COLUMN',@level2name=N'Units'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'职务' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_LifeComments', @level2type=N'COLUMN',@level2name=N'Duties'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'摘要' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_LifeComments', @level2type=N'COLUMN',@level2name=N'Summary'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'详情' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_LifeComments', @level2type=N'COLUMN',@level2name=N'Details'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_LifeComments', @level2type=N'COLUMN',@level2name=N'CreateMan'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_LifeComments', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_LifeComments', @level2type=N'COLUMN',@level2name=N'UpdateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态（2已审核、开启1，未审核0，关闭-1）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_LifeComments', @level2type=N'COLUMN',@level2name=N'States'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否有效' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_LifeComments', @level2type=N'COLUMN',@level2name=N'isValid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否删除' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_LifeComments', @level2type=N'COLUMN',@level2name=N'isDeleted'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'生平' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_LifeComments'
GO
INSERT [dbo].[TF_LifeComments] ([Id], [TrueName], [Units], [Duties], [Summary], [Details], [CreateMan], [CreateTime], [UpdateTime], [States], [isValid], [isDeleted]) VALUES (N'c179cb41-8aef-47fb-ac61-f54f46aed82a', N'1', N'2', N'3', N'4', N'5', N'admin', NULL, CAST(0x0000A58401853117 AS DateTime), 1, 1, 0)
/****** Object:  Table [dbo].[TF_ElectronicFile]    Script Date: 02/01/2016 23:54:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TF_ElectronicFile](
	[Id] [uniqueidentifier] NOT NULL,
	[TName] [nvarchar](50) NULL,
	[Category] [nvarchar](20) NULL,
	[Units] [nvarchar](100) NULL,
	[Summary] [text] NULL,
	[CreateMan] [nvarchar](40) NULL,
	[CreateTime] [datetime] NULL,
	[UpdateTime] [datetime] NULL,
	[States] [int] NULL,
	[isValid] [bit] NULL,
	[isDeleted] [bit] NULL,
 CONSTRAINT [PK_TF_ELECTRONICFILE] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_ElectronicFile', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_ElectronicFile', @level2type=N'COLUMN',@level2name=N'TName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_ElectronicFile', @level2type=N'COLUMN',@level2name=N'Category'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_ElectronicFile', @level2type=N'COLUMN',@level2name=N'Units'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'摘要' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_ElectronicFile', @level2type=N'COLUMN',@level2name=N'Summary'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_ElectronicFile', @level2type=N'COLUMN',@level2name=N'CreateMan'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_ElectronicFile', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_ElectronicFile', @level2type=N'COLUMN',@level2name=N'UpdateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态（2已审核、开启1，未审核0，关闭-1）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_ElectronicFile', @level2type=N'COLUMN',@level2name=N'States'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否有效' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_ElectronicFile', @level2type=N'COLUMN',@level2name=N'isValid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否删除' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_ElectronicFile', @level2type=N'COLUMN',@level2name=N'isDeleted'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电子档案' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_ElectronicFile'
GO
INSERT [dbo].[TF_ElectronicFile] ([Id], [TName], [Category], [Units], [Summary], [CreateMan], [CreateTime], [UpdateTime], [States], [isValid], [isDeleted]) VALUES (N'ef2366fe-6a76-4450-8026-91d10c0d5184', N'232323', N'010201', N'2323', NULL, N'admin', CAST(0x0000A584017354A5 AS DateTime), CAST(0x0000A584017354A5 AS DateTime), 0, 1, 0)
INSERT [dbo].[TF_ElectronicFile] ([Id], [TName], [Category], [Units], [Summary], [CreateMan], [CreateTime], [UpdateTime], [States], [isValid], [isDeleted]) VALUES (N'fd67e07d-9e4c-4afa-8fb3-b5dd004550ec', N'23', N'010201', N'23', N'23232', N'admin', NULL, CAST(0x0000A58401733A81 AS DateTime), 0, 1, 0)
/****** Object:  Table [dbo].[SystemParameters]    Script Date: 02/01/2016 23:54:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SystemParameters](
	[SysParametersId] [nvarchar](10) NOT NULL,
	[ParameterValue] [nvarchar](50) NULL,
	[IsEdit] [bit] NULL,
	[ParameterDescription] [nvarchar](150) NULL,
	[CreateBy] [nvarchar](10) NULL,
	[CreateOn] [datetime] NULL,
	[ModifyBy] [nvarchar](10) NULL,
	[ModifyOn] [datetime] NULL,
 CONSTRAINT [PK_SystemParameters] PRIMARY KEY NONCLUSTERED 
(
	[SysParametersId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SystemLogs]    Script Date: 02/01/2016 23:54:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SystemLogs](
	[Id] [uniqueidentifier] NOT NULL,
	[Sources] [nvarchar](50) NULL,
	[Category] [nvarchar](100) NULL,
	[title] [nvarchar](50) NULL,
	[Contents] [text] NULL,
	[ip] [nvarchar](30) NULL,
	[Position] [nvarchar](100) NULL,
	[AddTime] [datetime] NULL,
 CONSTRAINT [PK_SystemLogs] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'源' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SystemLogs', @level2type=N'COLUMN',@level2name=N'Sources'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SystemLogs', @level2type=N'COLUMN',@level2name=N'Category'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SystemLogs', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SystemLogs', @level2type=N'COLUMN',@level2name=N'Contents'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ip' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SystemLogs', @level2type=N'COLUMN',@level2name=N'ip'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'位置' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SystemLogs', @level2type=N'COLUMN',@level2name=N'Position'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SystemLogs', @level2type=N'COLUMN',@level2name=N'AddTime'
GO
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'cc50d2a0-d44b-4951-95b1-dfd525072cab', N'测试 sessionId=jgpblfxalgirrp3mg4orczf3', N'9901', N'非法操作一律返回登录', N'controller：Home  action:Index 用户为空，非法操作页面Session[UserData]为空 ', NULL, N'BaseController', CAST(0x0000A487013CD58A AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'b9cb8c0a-0a6e-4adb-be73-08827e80efb6', N'测试2 sessionId=jgpblfxalgirrp3mg4orczf3', N'9901', N'测试2', N' Session[User] =', NULL, N'LoginController', CAST(0x0000A487013CD5A4 AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'67cc55d1-591f-4a23-8ec5-72b9c816cb7d', N'', N'9901', N'测试3', N'Cookies：{
  "Id": "079654f1-5033-4207-8919-9a8bc3212735",
  "LoginName": "admin",
  "TrueName": "小家活",
  "Password": "123456",
  "CreateTime": "2014-03-30T19:14:45",
  "ModifyTime": "2014-03-30T19:14:45",
  "DepartmentId": "29c05683-eaee-4e10-91ee-7f1232a0f408",
  "RoleId": "fb38f312-0078-4f44-9cda-1183c8042db8",
  "RoleName": "系统管理员",
  "YH_HospitalId": "81c304f2-642c-42f3-840f-7f8386261e3f",
  "ChangedMap": {
    "id": "079654f1-5033-4207-8919-9a8bc3212735",
    "loginname": "admin",
    "truename": "小家活",
    "password": "123456",
    "createtime": "2014-03-30T19:14:45",
    "modifytime": "2014-03-30T19:14:45",
    "departmentid": "29c05683-eaee-4e10-91ee-7f1232a0f408",
    "roleid": "fb38f312-0078-4f44-9cda-1183c8042db8",
    "rolename": "系统管理员",
    "yh_hospitalid": "81c304f2-642c-42f3-840f-7f8386261e3f"
  }
}', NULL, N'BaseController', CAST(0x0000A487013CD5A9 AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'408a0944-2ae9-4510-b87e-08ed99fb0388', N'测试1 sessionId=jgpblfxalgirrp3mg4orczf3', N'9901', N'测试0', N' Session[User] =', NULL, N'LoginController', CAST(0x0000A487013CD95C AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'9c909f83-0d99-48e6-abe4-fae97516f2b0', N'测试1 sessionId=jgpblfxalgirrp3mg4orczf3', N'9901', N'测试1', N' Session[User] =我去你妹', NULL, N'LoginController', CAST(0x0000A487013DB64B AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'aa1deed6-8c79-4997-8e26-d149a4a9ece4', N'测试 sessionId=qgb4l3fxnltt05lpl4xm3bza', N'9901', N'非法操作一律返回登录', N'controller：Home  action:Index 用户为空，非法操作页面Session[UserData]为空 ', NULL, N'BaseController', CAST(0x0000A48800971E99 AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'f9436a0b-3a93-41fb-93d9-7e951f105ee5', N'测试2 sessionId=qgb4l3fxnltt05lpl4xm3bza', N'9901', N'测试2', N' Session[User] =', NULL, N'LoginController', CAST(0x0000A48800971ECB AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'0e1e6272-4433-41fd-a151-a1aebcfce9c3', N'测试 sessionId=qgb4l3fxnltt05lpl4xm3bza', N'9901', N'非法操作一律返回登录', N'controller：Home  action:Index 用户为空，非法操作页面Session[UserData]为空 ', NULL, N'BaseController', CAST(0x0000A48800A522A2 AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'3700f7b9-c46f-4cd7-9cfe-80e28d92507f', N'测试2 sessionId=qgb4l3fxnltt05lpl4xm3bza', N'9901', N'测试2', N' Session[User] =', NULL, N'LoginController', CAST(0x0000A48800A522BD AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'528dfd08-9632-4a58-b4d0-07220c0680a6', N'测试 sessionId=qgb4l3fxnltt05lpl4xm3bza', N'9901', N'非法操作一律返回登录', N'controller：Home  action:Index 用户为空，非法操作页面Session[UserData]为空 ', NULL, N'BaseController', CAST(0x0000A48800A6824F AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'd6590e13-43d0-49a9-8dbe-6be28d8e41a1', N'测试2 sessionId=qgb4l3fxnltt05lpl4xm3bza', N'9901', N'测试2', N' Session[User] =', NULL, N'LoginController', CAST(0x0000A48800A6826A AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'cd0ed6ff-c3db-45dd-80a5-4b673be6cb05', N'测试 sessionId=qgb4l3fxnltt05lpl4xm3bza', N'9901', N'非法操作一律返回登录', N'controller：Home  action:Index 用户为空，非法操作页面Session[UserData]为空 ', NULL, N'BaseController', CAST(0x0000A48800A70735 AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'2d798e85-0fbb-4ccd-b595-03a9d3f3a19f', N'测试2 sessionId=qgb4l3fxnltt05lpl4xm3bza', N'9901', N'测试2', N' Session[User] =', NULL, N'LoginController', CAST(0x0000A48800A70752 AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'e252e09d-5916-4087-b21b-568f65c95d42', N'测试 sessionId=qgb4l3fxnltt05lpl4xm3bza', N'9901', N'非法操作一律返回登录', N'controller：Home  action:Index 用户为空，非法操作页面Session[UserData]为空 ', NULL, N'BaseController', CAST(0x0000A48800A76345 AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'04fd9a1a-4e5a-4696-9f86-ed0696471fce', N'测试2 sessionId=qgb4l3fxnltt05lpl4xm3bza', N'9901', N'测试2', N' Session[User] =', NULL, N'LoginController', CAST(0x0000A48800A76367 AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'aaab2849-df48-411a-bb71-a8eaf3668dcb', N'测试 sessionId=qgb4l3fxnltt05lpl4xm3bza', N'9901', N'非法操作一律返回登录', N'controller：Home  action:Index 用户为空，非法操作页面Session[UserData]为空 ', NULL, N'BaseController', CAST(0x0000A48800A7EACC AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'42f631d2-86ff-4569-a4f4-fc3cddf34e2a', N'测试2 sessionId=qgb4l3fxnltt05lpl4xm3bza', N'9901', N'测试2', N' Session[User] =', NULL, N'LoginController', CAST(0x0000A48800A7EAE7 AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'340e64d0-95d6-45e4-8436-5358048ebea9', N'测试 sessionId=qgb4l3fxnltt05lpl4xm3bza', N'9901', N'非法操作一律返回登录', N'controller：Home  action:Index 用户为空，非法操作页面Session[UserData]为空 ', NULL, N'BaseController', CAST(0x0000A48800A8822D AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'20cdbaae-deb3-437b-a7a7-c47cc5a24539', N'测试2 sessionId=qgb4l3fxnltt05lpl4xm3bza', N'9901', N'测试2', N' Session[User] =', NULL, N'LoginController', CAST(0x0000A48800A88248 AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'a1ebec05-eaf7-42f7-9ada-f12d80d98f04', N'测试 sessionId=qgb4l3fxnltt05lpl4xm3bza', N'9901', N'非法操作一律返回登录', N'controller：Home  action:Index 用户为空，非法操作页面Session[UserData]为空 ', NULL, N'BaseController', CAST(0x0000A48800A8BC1C AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'26e3dc8b-1d09-419c-87bf-a65949c60ca4', N'测试2 sessionId=qgb4l3fxnltt05lpl4xm3bza', N'9901', N'测试2', N' Session[User] =', NULL, N'LoginController', CAST(0x0000A48800A8BC37 AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'efa13cb8-c512-4cbb-a3b5-b653239635b2', N'测试 sessionId=qgb4l3fxnltt05lpl4xm3bza', N'9901', N'非法操作一律返回登录', N'controller：Home  action:Index 用户为空，非法操作页面Session[UserData]为空 ', NULL, N'BaseController', CAST(0x0000A48800AA6C1F AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'1a92be9f-92cb-4a2e-9e27-5b17e4430c34', N'测试2 sessionId=qgb4l3fxnltt05lpl4xm3bza', N'9901', N'测试2', N' Session[User] =', NULL, N'LoginController', CAST(0x0000A48800AA6C3B AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'02e17437-5da6-4774-97f4-d3e1d8459639', N'测试 sessionId=ejgajiv5hstrvdqcxjngr0he', N'9901', N'非法操作一律返回登录', N'controller：Home  action:loginOut 用户为空，非法操作页面Session[UserData]为空 ', NULL, N'BaseController', CAST(0x0000A48800AAF508 AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'6815c081-7b40-4b50-b80d-0292e65faefc', N'测试2 sessionId=ejgajiv5hstrvdqcxjngr0he', N'9901', N'测试2', N' Session[User] =', NULL, N'LoginController', CAST(0x0000A48800AAF50B AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'20422c20-a579-4f87-a72e-d74d67ddca00', N'测试 sessionId=qgb4l3fxnltt05lpl4xm3bza', N'9901', N'非法操作一律返回登录', N'controller：Home  action:Index 用户为空，非法操作页面Session[UserData]为空 ', NULL, N'BaseController', CAST(0x0000A48800ACFE7C AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'3f7ba01e-36e1-4275-b222-3c9b45221c62', N'测试2 sessionId=qgb4l3fxnltt05lpl4xm3bza', N'9901', N'测试2', N' Session[User] =', NULL, N'LoginController', CAST(0x0000A48800ACFEA1 AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'21d9c71a-7b83-4947-ba0b-9ddbbbfd181a', N'测试 sessionId=qgb4l3fxnltt05lpl4xm3bza', N'9901', N'非法操作一律返回登录', N'controller：Home  action:Index 用户为空，非法操作页面Session[UserData]为空 ', NULL, N'BaseController', CAST(0x0000A48800AD242C AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'8612a348-c8bd-4d2e-a993-17b3646e3daf', N'测试2 sessionId=qgb4l3fxnltt05lpl4xm3bza', N'9901', N'测试2', N' Session[User] =', NULL, N'LoginController', CAST(0x0000A48800AD244F AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'69295220-d800-41ab-a48b-4edde06f3888', N'测试 sessionId=qgb4l3fxnltt05lpl4xm3bza', N'9901', N'非法操作一律返回登录', N'controller：Home  action:Index 用户为空，非法操作页面Session[UserData]为空 ', NULL, N'BaseController', CAST(0x0000A48800AD463C AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'4e0a6516-96e7-469a-b01c-84281c65cc71', N'测试2 sessionId=qgb4l3fxnltt05lpl4xm3bza', N'9901', N'测试2', N' Session[User] =', NULL, N'LoginController', CAST(0x0000A48800AD4663 AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'f4ee7558-e1e5-41b6-81b5-d91b91dfc8a5', N'测试 sessionId=qgb4l3fxnltt05lpl4xm3bza', N'9901', N'非法操作一律返回登录', N'controller：Home  action:Index 用户为空，非法操作页面Session[UserData]为空 ', NULL, N'BaseController', CAST(0x0000A48800AEAAAA AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'9f4abc14-c96c-408d-8c58-80a2fc4fe5aa', N'测试2 sessionId=qgb4l3fxnltt05lpl4xm3bza', N'9901', N'测试2', N' Session[User] =', NULL, N'LoginController', CAST(0x0000A48800AEAAD6 AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'd7ea5e75-4e77-405b-8cd6-05d0e151313d', N'测试 sessionId=qgb4l3fxnltt05lpl4xm3bza', N'9901', N'非法操作一律返回登录', N'controller：Home  action:Index 用户为空，非法操作页面Session[UserData]为空 ', NULL, N'BaseController', CAST(0x0000A48800AED561 AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'7dd74f78-7d76-4a38-8c70-ff60563b6500', N'测试2 sessionId=qgb4l3fxnltt05lpl4xm3bza', N'9901', N'测试2', N' Session[User] =', NULL, N'LoginController', CAST(0x0000A48800AED594 AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'c301d083-237b-46ad-ba16-f82588f8050c', N'测试 sessionId=qgb4l3fxnltt05lpl4xm3bza', N'9901', N'非法操作一律返回登录', N'controller：Home  action:Index 用户为空，非法操作页面Session[UserData]为空 ', NULL, N'BaseController', CAST(0x0000A48800AF031A AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'68e9dc7f-ce24-4290-b35c-3e2397304130', N'测试2 sessionId=qgb4l3fxnltt05lpl4xm3bza', N'9901', N'测试2', N' Session[User] =', NULL, N'LoginController', CAST(0x0000A48800AF033D AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'57545e9f-84bf-461a-b31d-c892ff7e86f0', N'测试 sessionId=qgb4l3fxnltt05lpl4xm3bza', N'9901', N'非法操作一律返回登录', N'controller：Home  action:Index 用户为空，非法操作页面Session[UserData]为空 ', NULL, N'BaseController', CAST(0x0000A48800B0F5EC AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'019bdd69-fba4-4f1c-813a-3c18bb8aeb40', N'测试2 sessionId=qgb4l3fxnltt05lpl4xm3bza', N'9901', N'测试2', N' Session[User] =', NULL, N'LoginController', CAST(0x0000A48800B0F60F AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'4e063fa2-3ba5-4f36-9081-b1c19986de4f', N'测试 sessionId=qgb4l3fxnltt05lpl4xm3bza', N'9901', N'非法操作一律返回登录', N'controller：Home  action:Index 用户为空，非法操作页面Session[UserData]为空 ', NULL, N'BaseController', CAST(0x0000A48800B43518 AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'666f2be2-d1d7-4c56-92df-38eed1c69ff7', N'测试2 sessionId=qgb4l3fxnltt05lpl4xm3bza', N'9901', N'测试2', N' Session[User] =', NULL, N'LoginController', CAST(0x0000A48800B43532 AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'5bd724c4-8322-4885-b79d-b681cf9c2d34', N'测试 sessionId=qgb4l3fxnltt05lpl4xm3bza', N'9901', N'非法操作一律返回登录', N'controller：Home  action:Index 用户为空，非法操作页面Session[UserData]为空 ', NULL, N'BaseController', CAST(0x0000A48800B4F3F1 AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'c10fc059-5a4a-4402-a075-4662534ed5bf', N'测试2 sessionId=qgb4l3fxnltt05lpl4xm3bza', N'9901', N'测试2', N' Session[User] =', NULL, N'LoginController', CAST(0x0000A48800B4F41D AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'3f6936fc-38dd-41d2-b85a-4c4e8125201a', N'测试 sessionId=qgb4l3fxnltt05lpl4xm3bza', N'9901', N'非法操作一律返回登录', N'controller：Home  action:Index 用户为空，非法操作页面Session[UserData]为空 ', NULL, N'BaseController', CAST(0x0000A48800B5F692 AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'03e43eff-173a-46ca-a6e7-f6b1258a87dd', N'测试2 sessionId=qgb4l3fxnltt05lpl4xm3bza', N'9901', N'测试2', N' Session[User] =', NULL, N'LoginController', CAST(0x0000A48800B5F6AD AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'd3e02cc3-9e4c-4198-989c-a8440dc72159', N'测试 sessionId=qgb4l3fxnltt05lpl4xm3bza', N'9901', N'非法操作一律返回登录', N'controller：Home  action:Index 用户为空，非法操作页面Session[UserData]为空 ', NULL, N'BaseController', CAST(0x0000A48800B77C37 AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'c799534a-56a0-45cf-b182-e1d66992a23d', N'测试2 sessionId=qgb4l3fxnltt05lpl4xm3bza', N'9901', N'测试2', N' Session[User] =', NULL, N'LoginController', CAST(0x0000A48800B77C51 AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'6ebf2323-fa19-4eaa-b372-e08f67f5ba70', N'测试 sessionId=isxiugf5ci14mae30tjh50gn', N'9901', N'非法操作一律返回登录', N'controller：Home  action:Index 用户为空，非法操作页面Session[UserData]为空 ', NULL, N'BaseController', CAST(0x0000A48800B7A9CE AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'85efc397-9350-40b0-8f46-513cc33ce637', N'测试2 sessionId=isxiugf5ci14mae30tjh50gn', N'9901', N'测试2', N' Session[User] =', NULL, N'LoginController', CAST(0x0000A48800B7A9CE AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'040d4e69-3731-41f0-af67-559f07973ab5', N'测试 sessionId=qgb4l3fxnltt05lpl4xm3bza', N'9901', N'非法操作一律返回登录', N'controller：Home  action:Index 用户为空，非法操作页面Session[UserData]为空 ', NULL, N'BaseController', CAST(0x0000A48800B88E7D AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'ddcea5d6-f0e5-4ef2-947b-74154df2528c', N'测试2 sessionId=qgb4l3fxnltt05lpl4xm3bza', N'9901', N'测试2', N' Session[User] =', NULL, N'LoginController', CAST(0x0000A48800B88E9F AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'c0224cf0-10a5-4509-a3ba-54bd5a5ab20c', N'测试 sessionId=isxiugf5ci14mae30tjh50gn', N'9901', N'非法操作一律返回登录', N'controller：YH_Navigation  action:GetInfo 用户为空，非法操作页面Session[UserData]为空 ', NULL, N'BaseController', CAST(0x0000A48800B8CDC0 AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'93731bcf-02a8-4d7b-b0cf-c2cc5dbb7fbd', N'测试2 sessionId=isxiugf5ci14mae30tjh50gn', N'9901', N'测试2', N' Session[User] =', NULL, N'LoginController', CAST(0x0000A48800B8CDC1 AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'10b89d19-082e-45da-8138-636f50c9130a', N'测试 sessionId=isxiugf5ci14mae30tjh50gn', N'9901', N'非法操作一律返回登录', N'controller：YH_Navigation  action:Index 用户为空，非法操作页面Session[UserData]为空 ', NULL, N'BaseController', CAST(0x0000A48800B8D2FF AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'd06f2c6d-6102-439f-bf8b-5de180910971', N'测试2 sessionId=isxiugf5ci14mae30tjh50gn', N'9901', N'测试2', N' Session[User] =', NULL, N'LoginController', CAST(0x0000A48800B8D304 AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'bf80cacb-c3c6-4203-9aa2-f6ba7c160d0d', N'测试 sessionId=qgb4l3fxnltt05lpl4xm3bza', N'9901', N'非法操作一律返回登录', N'controller：Home  action:Index 用户为空，非法操作页面Session[UserData]为空 ', NULL, N'BaseController', CAST(0x0000A48800BA941B AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'b3cc1146-03be-4cf7-91fd-435716fc43b6', N'测试2 sessionId=qgb4l3fxnltt05lpl4xm3bza', N'9901', N'测试2', N' Session[User] =', NULL, N'LoginController', CAST(0x0000A48800BA9437 AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'64fb6b0f-b444-499f-b643-75e638a5d251', N'测试 sessionId=isxiugf5ci14mae30tjh50gn', N'9901', N'非法操作一律返回登录', N'controller：YH_Navigation  action:Index 用户为空，非法操作页面Session[UserData]为空 ', NULL, N'BaseController', CAST(0x0000A48800BB378F AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'1fa5f707-8e03-4bc6-87d4-2d3485978867', N'测试2 sessionId=isxiugf5ci14mae30tjh50gn', N'9901', N'测试2', N' Session[User] =', NULL, N'LoginController', CAST(0x0000A48800BB3795 AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'd499b789-c396-424f-8f85-d786d90afd6d', N'测试 sessionId=qgb4l3fxnltt05lpl4xm3bza', N'9901', N'非法操作一律返回登录', N'controller：Home  action:Index 用户为空，非法操作页面Session[UserData]为空 ', NULL, N'BaseController', CAST(0x0000A48800BC21E2 AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'ed960447-c927-4b94-ae68-8c5933b9c02b', N'测试2 sessionId=qgb4l3fxnltt05lpl4xm3bza', N'9901', N'测试2', N' Session[User] =', NULL, N'LoginController', CAST(0x0000A48800BC220D AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'5b6cf7df-7e29-4765-8433-cc2bd1e0e314', N'测试 sessionId=isxiugf5ci14mae30tjh50gn', N'9901', N'非法操作一律返回登录', N'controller：Home  action:Index 用户为空，非法操作页面Session[UserData]为空 ', NULL, N'BaseController', CAST(0x0000A48800BC3A60 AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'b1e8eae2-6772-4c1b-9f83-52719bb8e9e2', N'测试2 sessionId=isxiugf5ci14mae30tjh50gn', N'9901', N'测试2', N' Session[User] =', NULL, N'LoginController', CAST(0x0000A48800BC3A62 AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'6c87b3c5-baa1-4b64-94cb-22733c0c3cb0', N'测试 sessionId=qgb4l3fxnltt05lpl4xm3bza', N'9901', N'非法操作一律返回登录', N'controller：Home  action:Index 用户为空，非法操作页面Session[UserData]为空 ', NULL, N'BaseController', CAST(0x0000A48800BCC558 AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'2f0cae50-2d2b-4cc7-b842-f9c10617a928', N'测试2 sessionId=qgb4l3fxnltt05lpl4xm3bza', N'9901', N'测试2', N' Session[User] =', NULL, N'LoginController', CAST(0x0000A48800BCC57E AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'2fdb79eb-071b-44d6-89f6-bc99320bc505', N'测试 sessionId=isxiugf5ci14mae30tjh50gn', N'9901', N'非法操作一律返回登录', N'controller：YH_HospitalDetail  action:Index 用户为空，非法操作页面Session[UserData]为空 ', NULL, N'BaseController', CAST(0x0000A48800C0C279 AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'03773bbe-ed21-424c-929c-52cdc444861f', N'测试2 sessionId=isxiugf5ci14mae30tjh50gn', N'9901', N'测试2', N' Session[User] =', NULL, N'LoginController', CAST(0x0000A48800C0C27E AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'74782143-b4f9-49b9-8e87-9952bc7cec64', N'测试 sessionId=qgb4l3fxnltt05lpl4xm3bza', N'9901', N'非法操作一律返回登录', N'controller：Home  action:Index 用户为空，非法操作页面Session[UserData]为空 ', NULL, N'BaseController', CAST(0x0000A48800C2132F AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'cf8f22ea-ec7c-44f2-bd7c-464f984e909e', N'测试2 sessionId=qgb4l3fxnltt05lpl4xm3bza', N'9901', N'测试2', N' Session[User] =', NULL, N'LoginController', CAST(0x0000A48800C21352 AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'071fd6f8-595d-458f-851d-166287079d54', N'测试 sessionId=qgb4l3fxnltt05lpl4xm3bza', N'9901', N'非法操作一律返回登录', N'controller：Home  action:Index 用户为空，非法操作页面Session[UserData]为空 ', NULL, N'BaseController', CAST(0x0000A48800C27DA6 AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'cd72686f-5897-4913-8a76-25495df611b9', N'测试2 sessionId=qgb4l3fxnltt05lpl4xm3bza', N'9901', N'测试2', N' Session[User] =', NULL, N'LoginController', CAST(0x0000A48800C27DC1 AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'e6cfe091-f7ed-43b9-8373-3e9344e09bb3', N'测试 sessionId=isxiugf5ci14mae30tjh50gn', N'9901', N'非法操作一律返回登录', N'controller：YH_Navigation  action:Index 用户为空，非法操作页面Session[UserData]为空 ', NULL, N'BaseController', CAST(0x0000A48800C2BD20 AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'e3c6389e-19f7-4e67-ba99-3ddaa7972824', N'测试2 sessionId=isxiugf5ci14mae30tjh50gn', N'9901', N'测试2', N' Session[User] =', NULL, N'LoginController', CAST(0x0000A48800C2BD22 AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'4b418a68-1f99-44e5-84e0-d665debdd079', N'测试 sessionId=qws5od2lyur5flefwiiyab1n', N'9901', N'非法操作一律返回登录', N'controller：Home  action:Index 用户为空，非法操作页面Session[UserData]为空 ', NULL, N'BaseController', CAST(0x0000A48800C3AA92 AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'7b5475ff-d475-4542-9b42-5e69fc30cc68', N'测试2 sessionId=qws5od2lyur5flefwiiyab1n', N'9901', N'测试2', N' Session[User] =', NULL, N'LoginController', CAST(0x0000A48800C3AAD5 AS DateTime))
/****** Object:  Table [dbo].[SysItem]    Script Date: 02/01/2016 23:54:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SysItem](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ItemType] [varchar](20) NULL,
	[ItemValue] [varchar](100) NULL,
	[ItemName] [nvarchar](200) NULL,
	[Icon] [varchar](30) NULL,
	[OrderID] [int] NULL,
	[Remark] [nvarchar](100) NULL,
	[CreateTime] [varchar](20) NULL,
	[CreateMan] [varchar](30) NULL,
	[isValid] [int] NULL,
	[isDeleted] [bit] NULL,
 CONSTRAINT [PK_SysItem] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysItem', @level2type=N'COLUMN',@level2name=N'ItemType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysItem', @level2type=N'COLUMN',@level2name=N'ItemValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysItem', @level2type=N'COLUMN',@level2name=N'ItemName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图标' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysItem', @level2type=N'COLUMN',@level2name=N'Icon'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysItem', @level2type=N'COLUMN',@level2name=N'OrderID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysItem', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否生效' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysItem', @level2type=N'COLUMN',@level2name=N'isValid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否删除' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysItem', @level2type=N'COLUMN',@level2name=N'isDeleted'
GO
SET IDENTITY_INSERT [dbo].[SysItem] ON
INSERT [dbo].[SysItem] ([Id], [ItemType], [ItemValue], [ItemName], [Icon], [OrderID], [Remark], [CreateTime], [CreateMan], [isValid], [isDeleted]) VALUES (1, N'States', N'0', N'未审核', NULL, 3, NULL, NULL, NULL, 1, 0)
INSERT [dbo].[SysItem] ([Id], [ItemType], [ItemValue], [ItemName], [Icon], [OrderID], [Remark], [CreateTime], [CreateMan], [isValid], [isDeleted]) VALUES (2, N'States', N'1', N'开启', NULL, 1, NULL, NULL, NULL, 1, 0)
INSERT [dbo].[SysItem] ([Id], [ItemType], [ItemValue], [ItemName], [Icon], [OrderID], [Remark], [CreateTime], [CreateMan], [isValid], [isDeleted]) VALUES (3, N'States', N'2', N'已审核', NULL, 4, NULL, NULL, NULL, 1, 0)
INSERT [dbo].[SysItem] ([Id], [ItemType], [ItemValue], [ItemName], [Icon], [OrderID], [Remark], [CreateTime], [CreateMan], [isValid], [isDeleted]) VALUES (4, N'States', N'-1', N'关闭', NULL, 2, NULL, NULL, NULL, 1, 0)
INSERT [dbo].[SysItem] ([Id], [ItemType], [ItemValue], [ItemName], [Icon], [OrderID], [Remark], [CreateTime], [CreateMan], [isValid], [isDeleted]) VALUES (5, N'AreaTypes', N'2', N'省', NULL, 1, NULL, NULL, NULL, 1, 0)
INSERT [dbo].[SysItem] ([Id], [ItemType], [ItemValue], [ItemName], [Icon], [OrderID], [Remark], [CreateTime], [CreateMan], [isValid], [isDeleted]) VALUES (6, N'AreaTypes', N'1', N'市', NULL, 2, NULL, NULL, NULL, 1, 0)
INSERT [dbo].[SysItem] ([Id], [ItemType], [ItemValue], [ItemName], [Icon], [OrderID], [Remark], [CreateTime], [CreateMan], [isValid], [isDeleted]) VALUES (7, N'AreaTypes', N'0', N'区', NULL, 3, NULL, NULL, NULL, 1, 0)
INSERT [dbo].[SysItem] ([Id], [ItemType], [ItemValue], [ItemName], [Icon], [OrderID], [Remark], [CreateTime], [CreateMan], [isValid], [isDeleted]) VALUES (15, N'RoleTypes', N'1', N'管理员', NULL, 1, NULL, NULL, NULL, 1, 0)
INSERT [dbo].[SysItem] ([Id], [ItemType], [ItemValue], [ItemName], [Icon], [OrderID], [Remark], [CreateTime], [CreateMan], [isValid], [isDeleted]) VALUES (16, N'RoleTypes', N'0', N'姓名', NULL, 10, NULL, NULL, NULL, 1, 0)
INSERT [dbo].[SysItem] ([Id], [ItemType], [ItemValue], [ItemName], [Icon], [OrderID], [Remark], [CreateTime], [CreateMan], [isValid], [isDeleted]) VALUES (17, N'LifeCommentsStates', N'0', N'初稿', NULL, 10, NULL, NULL, NULL, 1, 0)
INSERT [dbo].[SysItem] ([Id], [ItemType], [ItemValue], [ItemName], [Icon], [OrderID], [Remark], [CreateTime], [CreateMan], [isValid], [isDeleted]) VALUES (18, N'LifeCommentsStates', N'1', N'编辑中', NULL, 10, NULL, NULL, NULL, 1, 0)
INSERT [dbo].[SysItem] ([Id], [ItemType], [ItemValue], [ItemName], [Icon], [OrderID], [Remark], [CreateTime], [CreateMan], [isValid], [isDeleted]) VALUES (19, N'LifeCommentsStates', N'2', N'已审核', NULL, 10, NULL, NULL, NULL, 1, 0)
INSERT [dbo].[SysItem] ([Id], [ItemType], [ItemValue], [ItemName], [Icon], [OrderID], [Remark], [CreateTime], [CreateMan], [isValid], [isDeleted]) VALUES (20, N'RoleTypes', N'2', N'身份证', NULL, 10, NULL, NULL, NULL, 1, 0)
SET IDENTITY_INSERT [dbo].[SysItem] OFF
/****** Object:  Table [dbo].[Sys_Dictionary]    Script Date: 02/01/2016 23:54:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_Dictionary](
	[Id] [uniqueidentifier] NOT NULL,
	[ParentId] [uniqueidentifier] NULL,
	[OrderNo] [int] NULL,
	[Name] [nvarchar](50) NULL,
	[ValueName] [nvarchar](50) NULL,
	[Remarks] [nvarchar](100) NULL,
	[CreateTime] [datetime] NULL,
	[ModifyTime] [datetime] NULL,
	[Icon] [nvarchar](50) NULL,
 CONSTRAINT [PK_Sys_Dictionary] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父级' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Dictionary', @level2type=N'COLUMN',@level2name=N'ParentId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Dictionary', @level2type=N'COLUMN',@level2name=N'OrderNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Dictionary', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Code值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Dictionary', @level2type=N'COLUMN',@level2name=N'ValueName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Dictionary', @level2type=N'COLUMN',@level2name=N'Remarks'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Dictionary', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Dictionary', @level2type=N'COLUMN',@level2name=N'ModifyTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图标' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Dictionary', @level2type=N'COLUMN',@level2name=N'Icon'
GO
INSERT [dbo].[Sys_Dictionary] ([Id], [ParentId], [OrderNo], [Name], [ValueName], [Remarks], [CreateTime], [ModifyTime], [Icon]) VALUES (N'f8a1d53e-7c48-47e7-9f1c-c13d6a912429', N'00000000-0000-0000-0000-000000000000', 2, N'广告', N'02', NULL, CAST(0x0000A47400FDBAB9 AS DateTime), CAST(0x0000A47400FDBAB9 AS DateTime), N'icon-picture_empty')
INSERT [dbo].[Sys_Dictionary] ([Id], [ParentId], [OrderNo], [Name], [ValueName], [Remarks], [CreateTime], [ModifyTime], [Icon]) VALUES (N'1de380bd-bd75-411b-9f1a-9c7fd6bb4e5f', N'f8a1d53e-7c48-47e7-9f1c-c13d6a912429', NULL, N'首页三动图', N'0201', NULL, CAST(0x0000A47400FF1413 AS DateTime), CAST(0x0000A47400FF1413 AS DateTime), N'icon-edit')
INSERT [dbo].[Sys_Dictionary] ([Id], [ParentId], [OrderNo], [Name], [ValueName], [Remarks], [CreateTime], [ModifyTime], [Icon]) VALUES (N'58f966c7-e8d3-4115-809c-810e8d6de071', NULL, NULL, N'日志类型', N'99', NULL, CAST(0x0000A47501077FC6 AS DateTime), CAST(0x0000A47501077FC6 AS DateTime), N'icon-bullet_error')
INSERT [dbo].[Sys_Dictionary] ([Id], [ParentId], [OrderNo], [Name], [ValueName], [Remarks], [CreateTime], [ModifyTime], [Icon]) VALUES (N'2b9eaba2-16bc-4042-b9e5-3ee79fd1cde5', N'58f966c7-e8d3-4115-809c-810e8d6de071', NULL, N'系统出错', N'9901', NULL, CAST(0x0000A47501078FEC AS DateTime), CAST(0x0000A47501078FEC AS DateTime), N'icon-bullet_cross')
INSERT [dbo].[Sys_Dictionary] ([Id], [ParentId], [OrderNo], [Name], [ValueName], [Remarks], [CreateTime], [ModifyTime], [Icon]) VALUES (N'816ea36a-7258-4721-a603-214c738064a5', N'58f966c7-e8d3-4115-809c-810e8d6de071', NULL, N'系统日志', N'9902', NULL, CAST(0x0000A47A00EDEDA3 AS DateTime), CAST(0x0000A47A00EDEDA3 AS DateTime), N'icon-arrow_right')
INSERT [dbo].[Sys_Dictionary] ([Id], [ParentId], [OrderNo], [Name], [ValueName], [Remarks], [CreateTime], [ModifyTime], [Icon]) VALUES (N'070d4f5e-c69b-4ca8-a8b3-8e4b3ba8c7c6', NULL, NULL, N'文件材料类型', N'01', NULL, CAST(0x0000A584011244AA AS DateTime), CAST(0x0000A584011244AA AS DateTime), N'icon-folder')
INSERT [dbo].[Sys_Dictionary] ([Id], [ParentId], [OrderNo], [Name], [ValueName], [Remarks], [CreateTime], [ModifyTime], [Icon]) VALUES (N'ae6d3e62-b5f3-4fa0-aa93-54c00f349ee6', N'070d4f5e-c69b-4ca8-a8b3-8e4b3ba8c7c6', NULL, N'纸质材料类型', N'0101', NULL, CAST(0x0000A58401126973 AS DateTime), CAST(0x0000A58401126973 AS DateTime), N'icon-page_white_swoosh')
INSERT [dbo].[Sys_Dictionary] ([Id], [ParentId], [OrderNo], [Name], [ValueName], [Remarks], [CreateTime], [ModifyTime], [Icon]) VALUES (N'80777de3-00e0-4d00-b26d-7591f9debc36', N'070d4f5e-c69b-4ca8-a8b3-8e4b3ba8c7c6', NULL, N'电子文件类型', N'0102', NULL, CAST(0x0000A584011283D4 AS DateTime), CAST(0x0000A584011283D4 AS DateTime), N'icon-page_white_font')
INSERT [dbo].[Sys_Dictionary] ([Id], [ParentId], [OrderNo], [Name], [ValueName], [Remarks], [CreateTime], [ModifyTime], [Icon]) VALUES (N'3cc2ba12-0425-4ac6-ba6c-94004d3ac4f4', N'ae6d3e62-b5f3-4fa0-aa93-54c00f349ee6', NULL, N'一般材料', N'010101', NULL, CAST(0x0000A5840112A9A0 AS DateTime), CAST(0x0000A5840112A9A0 AS DateTime), N'icon-tag_purple')
INSERT [dbo].[Sys_Dictionary] ([Id], [ParentId], [OrderNo], [Name], [ValueName], [Remarks], [CreateTime], [ModifyTime], [Icon]) VALUES (N'8dfca430-05f6-46ce-a557-6d6c79985946', N'80777de3-00e0-4d00-b26d-7591f9debc36', NULL, N'一般材料类型', N'010201', NULL, CAST(0x0000A5840112CBC7 AS DateTime), CAST(0x0000A5840112CBC7 AS DateTime), N'icon-star_grey')
/****** Object:  Table [dbo].[Sys_CityArea]    Script Date: 02/01/2016 23:54:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_CityArea](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ParentId] [int] NULL,
	[OrderNo] [int] NULL,
	[Name] [nvarchar](50) NULL,
	[ValueName] [nvarchar](50) NULL,
	[Remarks] [nvarchar](100) NULL,
	[Icon] [nvarchar](50) NULL,
	[AreaTypes] [int] NULL,
 CONSTRAINT [PK_Sys_CityArea] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父级' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_CityArea', @level2type=N'COLUMN',@level2name=N'ParentId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_CityArea', @level2type=N'COLUMN',@level2name=N'OrderNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_CityArea', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Code值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_CityArea', @level2type=N'COLUMN',@level2name=N'ValueName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_CityArea', @level2type=N'COLUMN',@level2name=N'Remarks'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图标' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_CityArea', @level2type=N'COLUMN',@level2name=N'Icon'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型 0区 1 市 2 省' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_CityArea', @level2type=N'COLUMN',@level2name=N'AreaTypes'
GO
SET IDENTITY_INSERT [dbo].[Sys_CityArea] ON
INSERT [dbo].[Sys_CityArea] ([Id], [ParentId], [OrderNo], [Name], [ValueName], [Remarks], [Icon], [AreaTypes]) VALUES (1, NULL, NULL, N'广西省', N'45', NULL, N'icon-shape_square', 2)
INSERT [dbo].[Sys_CityArea] ([Id], [ParentId], [OrderNo], [Name], [ValueName], [Remarks], [Icon], [AreaTypes]) VALUES (2, 1, NULL, N'南宁市 ', N'4501', NULL, N'icon-ruby', 1)
INSERT [dbo].[Sys_CityArea] ([Id], [ParentId], [OrderNo], [Name], [ValueName], [Remarks], [Icon], [AreaTypes]) VALUES (3, 2, NULL, N'兴宁区 ', N'450102 ', NULL, N'icon-page_landscape', 0)
INSERT [dbo].[Sys_CityArea] ([Id], [ParentId], [OrderNo], [Name], [ValueName], [Remarks], [Icon], [AreaTypes]) VALUES (4, 2, NULL, N'青秀区', N'450103', NULL, N'icon-page_landscape', 0)
INSERT [dbo].[Sys_CityArea] ([Id], [ParentId], [OrderNo], [Name], [ValueName], [Remarks], [Icon], [AreaTypes]) VALUES (5, 2, NULL, N'江南区', N'350105', NULL, N'icon-page_landscape', 0)
INSERT [dbo].[Sys_CityArea] ([Id], [ParentId], [OrderNo], [Name], [ValueName], [Remarks], [Icon], [AreaTypes]) VALUES (6, 2, NULL, N'西乡塘区', N'450107', NULL, N'icon-page_landscape', 0)
INSERT [dbo].[Sys_CityArea] ([Id], [ParentId], [OrderNo], [Name], [ValueName], [Remarks], [Icon], [AreaTypes]) VALUES (7, 2, NULL, N'良庆区', N'450108', NULL, N'icon-page_landscape', 0)
INSERT [dbo].[Sys_CityArea] ([Id], [ParentId], [OrderNo], [Name], [ValueName], [Remarks], [Icon], [AreaTypes]) VALUES (8, 2, NULL, N'邕宁区', N'450109', NULL, N'icon-page_landscape', 0)
INSERT [dbo].[Sys_CityArea] ([Id], [ParentId], [OrderNo], [Name], [ValueName], [Remarks], [Icon], [AreaTypes]) VALUES (9, 1, NULL, N'桂林', N'4503', NULL, N'icon-rainbow', 1)
INSERT [dbo].[Sys_CityArea] ([Id], [ParentId], [OrderNo], [Name], [ValueName], [Remarks], [Icon], [AreaTypes]) VALUES (10, 1, NULL, N'柳州', N'4502', NULL, N'icon-page_landscape', 1)
INSERT [dbo].[Sys_CityArea] ([Id], [ParentId], [OrderNo], [Name], [ValueName], [Remarks], [Icon], [AreaTypes]) VALUES (11, 0, NULL, N'广东省', N'44', NULL, N'icon-shape_square', 2)
INSERT [dbo].[Sys_CityArea] ([Id], [ParentId], [OrderNo], [Name], [ValueName], [Remarks], [Icon], [AreaTypes]) VALUES (12, 11, NULL, N'广州市', N'4401', NULL, N'icon-stop', 1)
SET IDENTITY_INSERT [dbo].[Sys_CityArea] OFF
/****** Object:  StoredProcedure [dbo].[sp_PaginationEx]    Script Date: 02/01/2016 23:54:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [dbo].[sp_PaginationEx]
	@tableName varchar(8000), -- 表名
	@strGetFields varchar(1000) = '*', -- 需要返回的列
	@strOrder varchar(400)='', -- 排序的字符串
	@PageSize int = 10, -- 页尺寸
	@PageIndex int = 1, -- 页码
	@TotalCount int = 0 output, -- 返回记录总数
	@strWhere varchar(1500) = '' -- 查询条件 (注意: 不要加 where)    
AS

	declare @strSQL nvarchar(4000) -- 主语句

 if @strWhere !=''
 begin
    if charindex('group by',@strWhere)>0
       set @strSQL = 'select @TotalCount=count(0) from (select ' + @strGetFields + ' from ' + @tableName + ' where '+@strWhere + ') as t'
    else
       set @strSQL = 'select @TotalCount=count(0) from ' + @tableName + ' where '+@strWhere
 end
 else
   set @strSQL = 'select @TotalCount=count(0) from ' + @tableName + ''
        
----取得查询结果总数量-----  
 exec sp_executesql @strSQL,N'@TotalCount int out ',@TotalCount out  

begin
    if @PageIndex = 1
    begin
        if @strWhere != ''
            set @strSQL = 'select top ' + str(@PageSize) +' '+@strGetFields+ ' from ' + @tableName + ' where ' + @strWhere + ' order by ' + @strOrder
        else
            set @strSQL = 'select top ' + str(@PageSize) +' '+@strGetFields+ ' from '+ @tableName + ' order by '+ @strOrder
    --如果是第一页就执行以上代码，这样会加快执行速度
    end
    else
    begin
    --以下代码赋予了@strSQL以真正执行的SQL代码
        if @strWhere != ''
         begin
           set @strSQL = 'select '+@strGetFields+ ' from ( select Row_Number() over (order by ' + @strOrder + ') as row,'+@strGetFields+ ' from ' + 
           @tableName + ' where '+@strWhere +') tmpTable where row between' + str((@PageIndex-1)*@PageSize + 1)+ ' and '
            + str((@PageIndex)*@PageSize) 
           end
         else
          begin
              set @strSQL = 'select '+@strGetFields+ ' from ( select Row_Number() over (order by ' + @strOrder + ') as row,'+@strGetFields+ ' from ' +
            @tableName + ') tmpTable where row between' + str((@PageIndex-1)*@PageSize + 1)+ ' and ' + str((@PageIndex)*@PageSize) 
              end 
	end
END

SET NOCOUNT off  
 exec sp_executesql @strSQL

print @strSQL
GO
/****** Object:  StoredProcedure [dbo].[sp_GetByDistancesOrderByLL]    Script Date: 02/01/2016 23:54:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [dbo].[sp_GetByDistancesOrderByLL]
	@tableName varchar(8000), -- 表名
	@strGetFields varchar(1000) = '*', -- 需要返回的列
	@minKM nvarchar(400)='0', -- 最小公里
	@MaxKM nvarchar(400)='1000',  --最大公里
	@Longitude nvarchar(400), -- 经度
	@Latitude nvarchar(400), -- 纬度
	@strWhere varchar(1500) = '' -- 查询条件 (注意: 不要加 where)    
AS

	declare @strSQL nvarchar(4000) -- 主语句
	declare @Where nvarchar(1000) -- 内部判断条件
	declare @StrOrder nvarchar(1000)  --排序
	set @Where=' 1=1 '
	set @StrOrder=' dbo.fnGetDistance('+@Latitude+','+@Longitude+',[Latitude],[Longitude]) asc'
	set @strGetFields='dbo.fnGetDistance('+@Latitude+','+@Longitude+',[Latitude],[Longitude]) as distance,'+@strGetFields --添加距离字段
IF @minKM IS NOT NULL AND @minKM<>0 --最小距离不为0
	BEGIN
		SET @Where=@Where+' and ('+ @minKM+' < dbo.fnGetDistance('+@Latitude+','+@Longitude+',[Latitude],[Longitude]))'
	END
IF @MaxKM IS NOT NULL AND @MaxKM<>0 --最大距离不为0
	BEGIN
	SET @Where=@Where+' and ('+ @MaxKM+' > dbo.fnGetDistance('+@Latitude+','+@Longitude+',[Latitude],[Longitude]))'
	END
	
IF @strWhere IS NOT NULL AND @strWhere<>'' --条件不为空
	BEGIN
	SET @Where=@Where+' and ('+ @strWhere+')'
	END


   set @strSQL = 'select '+@strGetFields+' from ' + @tableName + ' where '+@Where +' order by '+@StrOrder
        


SET NOCOUNT off  
 exec sp_executesql @strSQL

print @strSQL
GO
/****** Object:  Table [dbo].[sggbxxxg]    Script Date: 02/01/2016 23:54:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sggbxxxg](
	[ID] [varchar](50) NOT NULL,
	[CreatName] [nvarchar](100) NULL,
	[CreateTime] [datetime] NULL,
	[sggbxm] [nvarchar](500) NULL,
	[gbssdw] [nvarchar](500) NULL,
	[sgxxgxx] [nvarchar](500) NULL,
	[dasyjsj] [nvarchar](500) NULL,
	[gkksqsrmsj] [nvarchar](500) NULL,
	[gkks] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sggbdaclsrjxx]    Script Date: 02/01/2016 23:54:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sggbdaclsrjxx](
	[ID] [varchar](50) NOT NULL,
	[CreatName] [nvarchar](100) NULL,
	[CreateTime] [datetime] NULL,
	[ck] [nvarchar](100) NULL,
	[bh] [nvarchar](500) NULL,
	[sj] [nvarchar](500) NULL,
	[zdr] [nvarchar](500) NULL,
	[zldw] [nvarchar](500) NULL,
	[fsys] [nvarchar](500) NULL,
	[daclmc] [nvarchar](500) NULL,
	[sggbxm] [nvarchar](500) NULL,
	[gbssdw] [nvarchar](500) NULL,
	[xgxhxgxx] [nvarchar](500) NULL,
	[qsrxmjsj] [nvarchar](500) NULL,
	[gbykqsrxm] [nvarchar](500) NULL,
	[gkkssqrxmjsj] [nvarchar](500) NULL,
	[gkks] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sgbxxgxxg2]    Script Date: 02/01/2016 23:54:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sgbxxgxxg2](
	[ID] [varchar](50) NOT NULL,
	[CreatName] [nvarchar](100) NULL,
	[CreateTime] [datetime] NULL,
	[bh] [nvarchar](500) NULL,
	[sgbxm] [nvarchar](500) NULL,
	[gbssdw] [nvarchar](500) NULL,
	[xgxhxgxx] [nvarchar](500) NULL,
	[dasyjrsj] [nvarchar](500) NULL,
	[gdssxmjsj] [nvarchar](500) NULL,
	[gdks] [nvarchar](500) NULL,
	[bz] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RMS_UserRole]    Script Date: 02/01/2016 23:54:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RMS_UserRole](
	[Id] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NULL,
	[RoleId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_RMS_UserRole] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[RMS_UserRole] ([Id], [UserId], [RoleId]) VALUES (N'ac410646-d841-4569-861c-2da6b0855b11', N'bf5ce36d-f8e7-4488-befa-809abe3d10c8', N'7e4a372b-3191-4e69-9e51-ad0d5bb37191')
INSERT [dbo].[RMS_UserRole] ([Id], [UserId], [RoleId]) VALUES (N'4bdcda01-d99b-4f08-a854-af942e91259d', N'079654f1-5033-4207-8919-9a8bc3212735', N'fb38f312-0078-4f44-9cda-1183c8042db8')
INSERT [dbo].[RMS_UserRole] ([Id], [UserId], [RoleId]) VALUES (N'7f9658c6-1745-40e2-9978-5f2cf3fd8887', N'22794746-04b0-41d7-8dd8-b91d4b6a9c03', N'6b4bcfc7-ddbd-4013-afeb-e36bdbf47114')
INSERT [dbo].[RMS_UserRole] ([Id], [UserId], [RoleId]) VALUES (N'868d1a42-3fe8-4de3-a513-a89cb350f584', N'caeee0c8-8b0c-4ba7-9d0a-cdd0d602c14e', N'7e4a372b-3191-4e69-9e51-ad0d5bb37191')
/****** Object:  Table [dbo].[RMS_User]    Script Date: 02/01/2016 23:54:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RMS_User](
	[Id] [uniqueidentifier] NOT NULL,
	[LoginName] [nvarchar](50) NULL,
	[TrueName] [nvarchar](50) NULL,
	[Password] [nvarchar](200) NULL,
	[CreateTime] [datetime] NULL,
	[ModifyTime] [datetime] NULL,
	[DepartmentId] [uniqueidentifier] NULL,
	[UserType] [int] NULL,
	[Tel] [nvarchar](200) NULL,
	[Phone] [nvarchar](200) NULL,
 CONSTRAINT [PK_RMS_User] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RMS_User', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户类型 为1正常 姓名登录为0，身份证为2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RMS_User', @level2type=N'COLUMN',@level2name=N'UserType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'办公电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RMS_User', @level2type=N'COLUMN',@level2name=N'Tel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'手机' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RMS_User', @level2type=N'COLUMN',@level2name=N'Phone'
GO
INSERT [dbo].[RMS_User] ([Id], [LoginName], [TrueName], [Password], [CreateTime], [ModifyTime], [DepartmentId], [UserType], [Tel], [Phone]) VALUES (N'bf5ce36d-f8e7-4488-befa-809abe3d10c8', N'ludy', N'卢迪', N'123456', CAST(0x0000A2FC0010A16C AS DateTime), CAST(0x0000A2FC0010A16C AS DateTime), N'35f45b17-30b2-43b8-8859-9a964bfb339d', 1, NULL, NULL)
INSERT [dbo].[RMS_User] ([Id], [LoginName], [TrueName], [Password], [CreateTime], [ModifyTime], [DepartmentId], [UserType], [Tel], [Phone]) VALUES (N'079654f1-5033-4207-8919-9a8bc3212735', N'admin', N'小家活', N'123456', CAST(0x0000A2FE013D295C AS DateTime), CAST(0x0000A2FE013D295C AS DateTime), N'a38084f4-1239-4d51-b71e-af53417ee682', 1, NULL, NULL)
INSERT [dbo].[RMS_User] ([Id], [LoginName], [TrueName], [Password], [CreateTime], [ModifyTime], [DepartmentId], [UserType], [Tel], [Phone]) VALUES (N'22794746-04b0-41d7-8dd8-b91d4b6a9c03', N'1212121', NULL, NULL, CAST(0x0000A59901878BBA AS DateTime), CAST(0x0000A59901878BBA AS DateTime), NULL, 2, NULL, NULL)
INSERT [dbo].[RMS_User] ([Id], [LoginName], [TrueName], [Password], [CreateTime], [ModifyTime], [DepartmentId], [UserType], [Tel], [Phone]) VALUES (N'caeee0c8-8b0c-4ba7-9d0a-cdd0d602c14e', N'admin', NULL, NULL, CAST(0x0000A59A0005A984 AS DateTime), CAST(0x0000A59A0005A984 AS DateTime), NULL, 0, NULL, NULL)
/****** Object:  Table [dbo].[RMS_RoleManus]    Script Date: 02/01/2016 23:54:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RMS_RoleManus](
	[Id] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NULL,
	[ManuId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_RMS_RoleManus] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'dd8d8b78-1eff-4d17-b8c6-abff2d150fce', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'c03f01bc-29a4-4c32-b2f8-53e4736c6aa4')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'655578a9-843c-4020-a4a0-539a732abfee', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'cbc19245-4fe9-4080-bc9b-f83563e62a54')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'fd0c9cf9-515b-4b53-af4c-35f9b810ee56', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'7a8c4046-04e3-4559-bc1c-53f945b99bb1')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'dcd4460d-1450-4ea6-a60e-70b23d4cd919', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'18f90f0f-842d-403c-b459-760550bd3277')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'bec50cb1-1912-436a-a5b2-152bfab4536e', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'b3e07fa4-2820-4c2f-a88f-941b2a5976c7')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'3a2d07ae-444b-4530-8e3e-60526c6ec3f8', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'029a6c5c-4c4e-41d8-bdc6-1174318741e3')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'29281925-3701-40d2-bd27-781f658f8f1f', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'82ab8599-04d0-409b-818b-11cd5ea642ef')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'190180c4-07ac-42a9-a514-840f33d23075', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'8cf825de-ad5e-498f-a2aa-836c521ce009')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'f1a4714b-8c77-4204-a2fe-b7b66b74aa68', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'701d6086-8d50-4d8c-b775-90c547ec25d5')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'61a27801-4fce-4a91-afcb-0850c2b94671', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'1fbd7363-1186-4a53-bdd3-9678a0093589')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'48e1439e-4908-41cb-bcfb-f6dd54b50d95', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'cb6a3fd7-a581-41c3-a52e-d3b385a9b219')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'def8d9f5-c84f-457c-b5a8-89d6bc38c849', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'f94992a9-68e7-44e3-86f3-93a5a4f10a4e')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'f65aeee1-0646-4549-b9f8-76529d37bd61', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'fcab7171-5c19-4117-af0e-c0407e6d280e')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'd4d2bf8b-24cc-4cc7-8c72-0e9c5c23419f', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'5942d6f5-903a-4870-8545-48cfaec77387')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'a7c34bf2-557b-4c8c-858c-10eac698cca8', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'4eef9033-2c87-45e5-a500-278e10e14b9d')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'77650dac-0db1-4514-8b65-3461319983f9', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'25b900c5-6306-4a3f-887f-815e9bf372e8')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'cc73a789-6c66-4d01-b2be-9520f675c5a6', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'a83eaa2a-2f6f-49ed-bac0-fea7369b4fc2')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'dec3fd7b-d8b5-410a-8afd-6c3d639c7c7e', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'5e72df14-8788-4307-a700-d5787732cbb5')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'327937ae-e748-4bad-adeb-9057a0e452b6', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'9b7cd5ef-a033-42c6-98bc-4157d6ff23b7')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'7b96e2c2-7f6b-442b-ac86-57de279afe20', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'c5f56312-eb83-479e-8836-fa66913642c8')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'fcdee512-c609-4635-8759-1beba8e162bc', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'ae0bea25-acca-43ad-b8ee-bbaa2dc62795')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'abcd63fe-d010-40bb-8db6-e5c862057aa7', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'0211853c-2580-4b25-a473-62a33c7b2782')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'dd8b87f7-43c2-4087-b47a-4a5915ab93d4', N'7e4a372b-3191-4e69-9e51-ad0d5bb37191', N'97415592-11af-42d5-9709-92ef78487f1a')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'7f841939-3954-4c8d-8e43-c57134655e23', N'7e4a372b-3191-4e69-9e51-ad0d5bb37191', N'a8b23326-01d0-4407-9b7f-82dadf483382')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'c1db8574-082a-40d7-8228-7ebb3522dcf2', N'6b4bcfc7-ddbd-4013-afeb-e36bdbf47114', N'5e72df14-8788-4307-a700-d5787732cbb5')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'3d7b6690-3e41-4b5a-a999-233d1c769b32', N'6b4bcfc7-ddbd-4013-afeb-e36bdbf47114', N'9b7cd5ef-a033-42c6-98bc-4157d6ff23b7')
/****** Object:  Table [dbo].[RMS_RoleManuButtons]    Script Date: 02/01/2016 23:54:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RMS_RoleManuButtons](
	[Id] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NULL,
	[MenuButtonsId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_RMS_RoleManuButtons] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'ebb1df6b-58a8-459c-b47c-42c6a89044e0', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'10986a68-1641-457f-96d8-5e3d522019cf')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'2c9b2240-edc9-4624-80ec-8ced3e68d561', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'42b0ca5b-4e28-46c1-b1b9-d01ba0642075')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'61761f8e-2acf-4dc8-9cf0-388e23ffed3d', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'c2800a63-cf5c-4036-9eb2-ff37919731d6')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'd7f00298-54a0-4acc-8f95-5e82c659934e', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'bfd300cd-eca1-4ed6-8441-c3056d958854')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'633c4c5e-3d17-40a1-9b81-4c46d190f40b', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'c0214a1b-3944-495b-90a2-aafd8c9d1cc3')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'3c9454ed-c012-446c-9c1f-82e0998ebd1e', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'd0d87890-5f48-4d6a-a4b8-f54e0253c2b8')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'57fbfe25-51e4-4916-a347-35da559fb9f3', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'832ca926-0ce3-40f3-b337-fe0c221ac6b6')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'ce2719c1-152b-4bd4-9504-f9389735c071', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'e6523d84-fb82-4ae7-9cfc-2c1db20df936')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'274d542b-01f0-4743-b5f6-4b61f0f611dd', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'9a79f2c8-1a38-4f10-a775-4069503ef057')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'0207d7ad-6955-4b01-b3e2-b427ed7761ca', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'98a05a8d-fb7c-43a3-b44c-3564e1d273ab')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'c8289ac8-1ed7-414f-9fd4-17ca637487b1', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'4b9f0b04-83d0-469f-a49c-f7114db923dd')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'23b02c74-eb88-4cd7-9798-e75d82024198', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'bdad042b-79d4-424d-83ab-9d20708c9e77')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'bad69933-6a21-4895-9e39-09ba68ea231f', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'badf8f06-3623-4d10-aff1-db95cd381b2e')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'42e6aa66-0b54-49a1-a582-661af3e568df', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'6d8a5b93-c4c3-459a-9e22-6873809d7a3e')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'35f7f517-bc48-4933-95aa-ced73b9d2ea1', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'b612d11d-6cfd-40f2-b367-c246c9b08e79')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'4d2276df-a0dc-4b38-becf-c6a91b1a1344', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'ce45f87c-653f-4ad1-b85b-d290ebe8f1e3')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'32c97dd3-8e15-400c-84ab-b9d1987c3e12', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'4253cab5-80ff-4765-bdf4-c1ae60219a1f')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'cd69dc1f-e82c-4ec3-b4cf-2b22436d6fe5', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'41bf1fda-62e7-4095-b5d9-b9834b658688')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'0968fa22-c335-4f9c-9de8-a91b73321cd3', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'2316e4c7-72fb-4c8c-8845-376f6d7db38c')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'44420f4e-bb00-4697-85af-f25477c8c70f', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'b648e8a0-39fc-4549-8adf-a0b2056e60e3')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'e9056072-0e87-40d4-a1b2-34eef693bee1', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'bccec2de-22e5-4b7d-98a6-35ae2fa6fcde')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'b246d3cd-60ce-4ebf-8887-58dee7445128', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'0c4e0848-68f4-4128-9b3f-a11398236f70')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'1b28ab05-ed49-4063-a627-e76c1791f964', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'bd5f3345-b02a-438f-804a-f21a16947990')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'49436723-346c-4815-8a2f-f9cb31c836ea', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'81551402-958f-4aeb-a77b-f7c725ce699a')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'514f6c69-f139-4faa-9b0b-a090058d0c96', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'1a006175-1ae0-45e9-b233-322c1715bcb6')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'e480ba47-fe7b-4f40-bbf2-f3d6d3457d1d', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'2369f740-2836-4b3a-af29-462d7b56f6ac')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'd68f72dc-8c67-4853-a273-ff9b31b385a0', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'18381400-99b5-4bc2-9045-77be5c7c2d1c')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'bbafc569-4c77-4c93-a091-63bf09d9736d', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'0e5b6abf-ae50-45ef-bf33-00c68d3fa161')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'f2ac04e5-19d9-4976-9ac9-692e07e2ade5', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'bde2c1f4-8197-4fb5-b8ee-7223067739fb')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'f397cacb-cfa4-447a-924e-a06fcb91a1ae', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'ed99db36-efe7-4f57-82a8-5b4f44f9e66a')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'f2371a07-ce31-44d6-bfa3-d8b87fa124d6', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'0eb8b1c2-51b2-4bfa-87e4-2b11ebce36d4')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'79242534-67f2-44ad-9c0b-444077566faa', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'bddb8ba8-87f4-4871-9a0f-0d2c630c4c6f')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'169590e0-4cae-433c-b1dd-8c66958b9ab7', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'd0968c5b-a592-43ea-811f-1c5af6552b7b')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'8f398964-7c41-4bc6-8551-fa2f3dc052c3', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'e029fcea-92e2-4694-b448-9caa4ffb86cb')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'56185d7f-f884-4df2-9edf-dfd0bec2c211', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'1c6cafec-e599-4af6-a5ac-e5d0e900ffc0')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'0c92d943-1162-49b3-9566-342bbb5d6922', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'799f490f-2920-4f25-9bc5-00ad025db684')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'78f94504-6b11-4dfd-b89a-774376cc2947', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'89da12b8-dc9c-4908-b6be-79aea484394e')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'd3a03802-8b8e-4c27-b6ad-a93c094cd9ab', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'fe4acc8c-53a2-4adf-9c1b-eb74709f5985')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'2af6a36c-ef9d-48d4-841c-34363d69c206', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'24040ad2-80a9-43c5-b8fc-a9a3bddaf93e')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'f35328fb-71bc-4e39-aa1c-2c35c9fc1a6a', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'415fc710-652d-4d7f-a3a6-16034f5fcc01')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'45f7c589-eb05-437d-a247-58ff07edb48c', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'52959c9b-86b3-45d2-8a1a-8018f299cd5d')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'3d5c7ea2-eabf-4859-95fd-b3bf7734beb9', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'884caf14-acd2-4d58-9451-74290e3bdde4')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'bce73510-cb2f-498b-bd7d-f09b9631959b', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'77337595-1714-4f5e-8ef0-30d43ccc6c3b')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'963191ea-40d6-4344-b32c-7a1e7b2f8b62', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'640e7f8a-190d-4459-a790-2f5d194baf78')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'0a8f9816-b379-44d8-8892-6c57ef678521', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'33408194-80f0-4e50-a96f-68dab6c46c57')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'9e878477-1f4d-45a4-a412-5476cedc0385', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'f1109d53-c8df-4125-8293-2b3cccd90afa')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'8eab9628-0044-41f7-8c5d-8de4f48f2685', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'd742bb5a-f413-45bd-9a9f-de1a05b7c60d')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'1d88d0b8-aeec-4140-8e4b-9b838dc94d1e', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'052f960a-2bd7-4e50-9ae0-455f8ff441d3')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'8665b1a4-34e9-438e-9107-ac72bd7a69d1', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'8d1e943b-7631-4d64-90e2-c23d15e86ebc')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'383e7a8e-32ab-46c6-97ff-e36f0557b49f', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'c1a38b17-95e1-47c5-bb04-24377b02ef61')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'9fc103cb-86c6-429e-953e-b8e6324a1cb8', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'd546efaf-71f3-43ea-ae30-b6a0ab1d5310')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'ab95465c-41a1-4b74-8de1-66b3c4a2bf24', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'8d7638be-56f0-4360-acaf-7062165e4e7f')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'10c8a956-d517-4626-a7aa-944cafa91772', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'e0274a3a-4a7d-4916-8584-fd2b6f3cb130')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'd7d2dbbc-3e47-46ce-882c-bb68d2ab37ca', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'7449b38f-55e9-4e0d-be25-ccd55a599ea7')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'8f1e5a9f-7b5d-4c44-a8eb-9a6b6cf6cc8a', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'7bde7bf4-6187-4caa-b3d5-9b17f3bc2a92')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'735cd672-a9c0-443d-a1a7-d2b6ef0ba55e', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'75295c8d-8166-431d-8dd1-8d1e4cd854a4')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'1ebd995e-f290-4e81-9f8e-eb3a86e5cb57', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'9b423185-08d9-45ee-a070-555ed1037767')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'acd64cdf-72d4-4711-b07a-7c058b32eacd', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'e9b3d839-bc2c-434a-95ee-0491b14136ac')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'c82393bf-3422-4b33-9b0b-f4e3504b53ba', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'df875da3-ba22-458e-861d-9c1e82836aa4')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'aa37fdc0-9af6-459d-b363-ab3f02aa1515', N'6b4bcfc7-ddbd-4013-afeb-e36bdbf47114', N'f1109d53-c8df-4125-8293-2b3cccd90afa')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'baa9efbd-3362-4f92-9319-024ada735a2e', N'6b4bcfc7-ddbd-4013-afeb-e36bdbf47114', N'd742bb5a-f413-45bd-9a9f-de1a05b7c60d')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'2689f78f-d203-49d8-adef-17cdbf9405f3', N'6b4bcfc7-ddbd-4013-afeb-e36bdbf47114', N'052f960a-2bd7-4e50-9ae0-455f8ff441d3')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'66d0c696-7944-4374-bbec-e117f26825fe', N'6b4bcfc7-ddbd-4013-afeb-e36bdbf47114', N'8d1e943b-7631-4d64-90e2-c23d15e86ebc')
/****** Object:  Table [dbo].[RMS_Role]    Script Date: 02/01/2016 23:54:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RMS_Role](
	[Id] [uniqueidentifier] NOT NULL,
	[RoleName] [nvarchar](50) NOT NULL,
	[Remarks] [nvarchar](200) NULL,
	[CreateBy] [nvarchar](200) NULL,
	[CreateTime] [datetime] NULL,
	[ModifyBy] [nvarchar](200) NULL,
	[ModifyTime] [datetime] NULL,
	[RoleTypes] [int] NULL,
 CONSTRAINT [PK_RMS_Role] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色类型（1管理员）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RMS_Role', @level2type=N'COLUMN',@level2name=N'RoleTypes'
GO
INSERT [dbo].[RMS_Role] ([Id], [RoleName], [Remarks], [CreateBy], [CreateTime], [ModifyBy], [ModifyTime], [RoleTypes]) VALUES (N'fb38f312-0078-4f44-9cda-1183c8042db8', N'系统管理员', N'1', N'1', CAST(0x0000A2F9001CF098 AS DateTime), N'1', CAST(0x0000A2F9001CF098 AS DateTime), 1)
INSERT [dbo].[RMS_Role] ([Id], [RoleName], [Remarks], [CreateBy], [CreateTime], [ModifyBy], [ModifyTime], [RoleTypes]) VALUES (N'7e4a372b-3191-4e69-9e51-ad0d5bb37191', N'姓名登录', N'2323', N'1', NULL, N'1', CAST(0x0000A5990172314C AS DateTime), 0)
INSERT [dbo].[RMS_Role] ([Id], [RoleName], [Remarks], [CreateBy], [CreateTime], [ModifyBy], [ModifyTime], [RoleTypes]) VALUES (N'6b4bcfc7-ddbd-4013-afeb-e36bdbf47114', N'身份证登录', N'苛', N'1', CAST(0x0000A59901724DF1 AS DateTime), N'1', CAST(0x0000A59901724DF1 AS DateTime), 2)
/****** Object:  Table [dbo].[RMS_Menus]    Script Date: 02/01/2016 23:54:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RMS_Menus](
	[Id] [uniqueidentifier] NOT NULL,
	[ParentManuId] [uniqueidentifier] NULL,
	[OrderNo] [int] NULL,
	[Remarks] [nvarchar](300) NULL,
	[ManuName] [nvarchar](100) NULL,
	[URL] [nvarchar](200) NULL,
	[IsShow] [bit] NULL,
	[IsEnable] [bit] NULL,
	[CreateTime] [datetime] NULL,
	[ModifyTime] [datetime] NULL,
	[Icon] [nvarchar](100) NULL,
	[MIcon] [nvarchar](100) NULL,
 CONSTRAINT [PK_RMS_Menus] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[RMS_Menus] ([Id], [ParentManuId], [OrderNo], [Remarks], [ManuName], [URL], [IsShow], [IsEnable], [CreateTime], [ModifyTime], [Icon], [MIcon]) VALUES (N'029a6c5c-4c4e-41d8-bdc6-1174318741e3', N'b3e07fa4-2820-4c2f-a88f-941b2a5976c7', 4, N'登录用户的信息', N'用户管理', N'User', 1, 1, CAST(0x0000A2FE0159DF5C AS DateTime), CAST(0x0000A2FE0159DF5C AS DateTime), N'icon-user', N'icon-user')
INSERT [dbo].[RMS_Menus] ([Id], [ParentManuId], [OrderNo], [Remarks], [ManuName], [URL], [IsShow], [IsEnable], [CreateTime], [ModifyTime], [Icon], [MIcon]) VALUES (N'82ab8599-04d0-409b-818b-11cd5ea642ef', N'b3e07fa4-2820-4c2f-a88f-941b2a5976c7', 23, N'23', N'角色管理', N'Role', 1, 1, CAST(0x0000A2FE0159E9E8 AS DateTime), CAST(0x0000A2FE0159E9E8 AS DateTime), N'icon-arrow_nsew', N'icon-arrow_nsew')
INSERT [dbo].[RMS_Menus] ([Id], [ParentManuId], [OrderNo], [Remarks], [ManuName], [URL], [IsShow], [IsEnable], [CreateTime], [ModifyTime], [Icon], [MIcon]) VALUES (N'9b7cd5ef-a033-42c6-98bc-4157d6ff23b7', N'5e72df14-8788-4307-a700-d5787732cbb5', 1, N'1221', N'生平管理', N'TF_LifeComments', 1, 1, CAST(0x0000A59F0188FAAB AS DateTime), CAST(0x0000A59F0188FAAB AS DateTime), N'icon-tick', NULL)
INSERT [dbo].[RMS_Menus] ([Id], [ParentManuId], [OrderNo], [Remarks], [ManuName], [URL], [IsShow], [IsEnable], [CreateTime], [ModifyTime], [Icon], [MIcon]) VALUES (N'c03f01bc-29a4-4c32-b2f8-53e4736c6aa4', N'00000000-0000-0000-0000-000000000000', 6, N'111', N'系统配置', N'#', 1, 1, CAST(0x0000A59F017EDA97 AS DateTime), CAST(0x0000A59F017EDA97 AS DateTime), N'icon-shape_square_select', N'icon-shape_square_select')
INSERT [dbo].[RMS_Menus] ([Id], [ParentManuId], [OrderNo], [Remarks], [ManuName], [URL], [IsShow], [IsEnable], [CreateTime], [ModifyTime], [Icon], [MIcon]) VALUES (N'f94992a9-68e7-44e3-86f3-93a5a4f10a4e', N'cb6a3fd7-a581-41c3-a52e-d3b385a9b219', 2, NULL, N'单位档案设置', N'TF_PersonnelFile/Set', 1, 1, CAST(0x0000A59F01872744 AS DateTime), CAST(0x0000A59F01872744 AS DateTime), N'icon-wrench_orange', N'/Content/JqueryEasyUI/themes/icons/32/sport_tennis.png')
INSERT [dbo].[RMS_Menus] ([Id], [ParentManuId], [OrderNo], [Remarks], [ManuName], [URL], [IsShow], [IsEnable], [CreateTime], [ModifyTime], [Icon], [MIcon]) VALUES (N'8cf825de-ad5e-498f-a2aa-836c521ce009', N'b3e07fa4-2820-4c2f-a88f-941b2a5976c7', 12, N'12', N'菜单管理', N'Manu', 1, 1, CAST(0x0000A2FE0159F474 AS DateTime), CAST(0x0000A2FE0159F474 AS DateTime), N'icon-rainbow', N'icon-rainbow')
INSERT [dbo].[RMS_Menus] ([Id], [ParentManuId], [OrderNo], [Remarks], [ManuName], [URL], [IsShow], [IsEnable], [CreateTime], [ModifyTime], [Icon], [MIcon]) VALUES (N'701d6086-8d50-4d8c-b775-90c547ec25d5', N'b3e07fa4-2820-4c2f-a88f-941b2a5976c7', 2, N'2', N'按钮管理', N'Buttons', 1, 1, CAST(0x0000A2FE0159FDD4 AS DateTime), CAST(0x0000A2FE0159FDD4 AS DateTime), N'icon-tags_red', N'icon-tags_red')
INSERT [dbo].[RMS_Menus] ([Id], [ParentManuId], [OrderNo], [Remarks], [ManuName], [URL], [IsShow], [IsEnable], [CreateTime], [ModifyTime], [Icon], [MIcon]) VALUES (N'b3e07fa4-2820-4c2f-a88f-941b2a5976c7', N'00000000-0000-0000-0000-000000000000', 7, N'12', N'权限管理', N'#', 1, 1, CAST(0x0000A59F017EE3D5 AS DateTime), CAST(0x0000A59F017EE3D5 AS DateTime), N'icon-book', N'icon-book')
INSERT [dbo].[RMS_Menus] ([Id], [ParentManuId], [OrderNo], [Remarks], [ManuName], [URL], [IsShow], [IsEnable], [CreateTime], [ModifyTime], [Icon], [MIcon]) VALUES (N'1fbd7363-1186-4a53-bdd3-9678a0093589', N'b3e07fa4-2820-4c2f-a88f-941b2a5976c7', 1, N'12', N'部门设置', N'Department', 1, 1, CAST(0x0000A46B009BA93E AS DateTime), CAST(0x0000A46B009BA93E AS DateTime), N'icon-users', N'icon-users')
INSERT [dbo].[RMS_Menus] ([Id], [ParentManuId], [OrderNo], [Remarks], [ManuName], [URL], [IsShow], [IsEnable], [CreateTime], [ModifyTime], [Icon], [MIcon]) VALUES (N'fcab7171-5c19-4117-af0e-c0407e6d280e', N'cb6a3fd7-a581-41c3-a52e-d3b385a9b219', 3, NULL, N'档案转入', N'TF_PersonnelFile/ChangeInto', 1, 1, CAST(0x0000A59F01878713 AS DateTime), CAST(0x0000A59F01878713 AS DateTime), N'icon-vector', NULL)
INSERT [dbo].[RMS_Menus] ([Id], [ParentManuId], [OrderNo], [Remarks], [ManuName], [URL], [IsShow], [IsEnable], [CreateTime], [ModifyTime], [Icon], [MIcon]) VALUES (N'cbc19245-4fe9-4080-bc9b-f83563e62a54', N'c03f01bc-29a4-4c32-b2f8-53e4736c6aa4', 0, N'系统使用', N'数据词典', N'Dictionary', 1, 1, CAST(0x0000A30400BA3C90 AS DateTime), CAST(0x0000A30400BA3C90 AS DateTime), N'icon-text_inverse', N'/Content/JqueryEasyUI/themes/icons/32/add.png')
INSERT [dbo].[RMS_Menus] ([Id], [ParentManuId], [OrderNo], [Remarks], [ManuName], [URL], [IsShow], [IsEnable], [CreateTime], [ModifyTime], [Icon], [MIcon]) VALUES (N'cb6a3fd7-a581-41c3-a52e-d3b385a9b219', N'00000000-0000-0000-0000-000000000000', 1, NULL, N'档案管理', N'#', 1, 1, CAST(0x0000A58400FC08E6 AS DateTime), CAST(0x0000A58400FC08E6 AS DateTime), N'icon-sport_golf_practice', N'/Content/JqueryEasyUI/themes/icons/32/car.png')
INSERT [dbo].[RMS_Menus] ([Id], [ParentManuId], [OrderNo], [Remarks], [ManuName], [URL], [IsShow], [IsEnable], [CreateTime], [ModifyTime], [Icon], [MIcon]) VALUES (N'97415592-11af-42d5-9709-92ef78487f1a', N'00000000-0000-0000-0000-000000000000', 0, NULL, N'单位材料处理', N'#', 1, 1, CAST(0x0000A59F017E84E0 AS DateTime), CAST(0x0000A59F017E84E0 AS DateTime), N'icon-page_white_star', NULL)
INSERT [dbo].[RMS_Menus] ([Id], [ParentManuId], [OrderNo], [Remarks], [ManuName], [URL], [IsShow], [IsEnable], [CreateTime], [ModifyTime], [Icon], [MIcon]) VALUES (N'5942d6f5-903a-4870-8545-48cfaec77387', N'97415592-11af-42d5-9709-92ef78487f1a', 3, NULL, N'办件审核', N'#', 1, 1, CAST(0x0000A59F017FEC8A AS DateTime), CAST(0x0000A59F017FEC8A AS DateTime), N'icon-rainbow', NULL)
INSERT [dbo].[RMS_Menus] ([Id], [ParentManuId], [OrderNo], [Remarks], [ManuName], [URL], [IsShow], [IsEnable], [CreateTime], [ModifyTime], [Icon], [MIcon]) VALUES (N'4eef9033-2c87-45e5-a500-278e10e14b9d', N'cb6a3fd7-a581-41c3-a52e-d3b385a9b219', 4, NULL, N'档案转出', N'TF_PersonnelFile/ChangeOut', 1, 1, CAST(0x0000A59F0187FA0C AS DateTime), CAST(0x0000A59F0187FA0C AS DateTime), N'icon-plugin', NULL)
INSERT [dbo].[RMS_Menus] ([Id], [ParentManuId], [OrderNo], [Remarks], [ManuName], [URL], [IsShow], [IsEnable], [CreateTime], [ModifyTime], [Icon], [MIcon]) VALUES (N'25b900c5-6306-4a3f-887f-815e9bf372e8', N'cb6a3fd7-a581-41c3-a52e-d3b385a9b219', 0, NULL, N'人员档案库', N'TF_PersonnelFile', 1, 1, CAST(0x0000A59F0186FEAB AS DateTime), CAST(0x0000A59F0186FEAB AS DateTime), N'icon-rgb', NULL)
INSERT [dbo].[RMS_Menus] ([Id], [ParentManuId], [OrderNo], [Remarks], [ManuName], [URL], [IsShow], [IsEnable], [CreateTime], [ModifyTime], [Icon], [MIcon]) VALUES (N'5e72df14-8788-4307-a700-d5787732cbb5', N'00000000-0000-0000-0000-000000000000', 2, N'运营端，管理医院数据', N'干部生平管理', N'#', 1, 1, CAST(0x0000A59F017F03BC AS DateTime), CAST(0x0000A59F017F03BC AS DateTime), N'icon-group32', N'/Content/JqueryEasyUI/themes/icons/32/group_error.png')
INSERT [dbo].[RMS_Menus] ([Id], [ParentManuId], [OrderNo], [Remarks], [ManuName], [URL], [IsShow], [IsEnable], [CreateTime], [ModifyTime], [Icon], [MIcon]) VALUES (N'7a8c4046-04e3-4559-bc1c-53f945b99bb1', N'c03f01bc-29a4-4c32-b2f8-53e4736c6aa4', 3, NULL, N'城市管理', N'Sys_CityArea', 1, 1, CAST(0x0000A56E015CD543 AS DateTime), CAST(0x0000A56E015CD543 AS DateTime), N'icon-color_swatch', NULL)
INSERT [dbo].[RMS_Menus] ([Id], [ParentManuId], [OrderNo], [Remarks], [ManuName], [URL], [IsShow], [IsEnable], [CreateTime], [ModifyTime], [Icon], [MIcon]) VALUES (N'c5f56312-eb83-479e-8836-fa66913642c8', N'00000000-0000-0000-0000-000000000000', 3, NULL, N'日常文件材料管理', N'#', 1, 1, CAST(0x0000A59F017EC817 AS DateTime), CAST(0x0000A59F017EC817 AS DateTime), N'icon-folder', NULL)
INSERT [dbo].[RMS_Menus] ([Id], [ParentManuId], [OrderNo], [Remarks], [ManuName], [URL], [IsShow], [IsEnable], [CreateTime], [ModifyTime], [Icon], [MIcon]) VALUES (N'ae0bea25-acca-43ad-b8ee-bbaa2dc62795', N'c5f56312-eb83-479e-8836-fa66913642c8', 23, N'电车卖家，电池卖家等', N'纸质文件', N'TF_PaperFile', 1, 1, CAST(0x0000A58400FB04F1 AS DateTime), CAST(0x0000A58400FB04F1 AS DateTime), N'icon-page_white_swoosh', N'/Content/JqueryEasyUI/themes/icons/32/bell_link.png')
INSERT [dbo].[RMS_Menus] ([Id], [ParentManuId], [OrderNo], [Remarks], [ManuName], [URL], [IsShow], [IsEnable], [CreateTime], [ModifyTime], [Icon], [MIcon]) VALUES (N'a8b23326-01d0-4407-9b7f-82dadf483382', N'97415592-11af-42d5-9709-92ef78487f1a', 1, NULL, N'办件分类', N'#', 1, 1, CAST(0x0000A59F0182D4B8 AS DateTime), CAST(0x0000A59F0182D4B8 AS DateTime), N'icon-arrow_branch', NULL)
INSERT [dbo].[RMS_Menus] ([Id], [ParentManuId], [OrderNo], [Remarks], [ManuName], [URL], [IsShow], [IsEnable], [CreateTime], [ModifyTime], [Icon], [MIcon]) VALUES (N'a83eaa2a-2f6f-49ed-bac0-fea7369b4fc2', N'97415592-11af-42d5-9709-92ef78487f1a', 2, N'资讯类型', N'办件登记', N'#', 1, 1, CAST(0x0000A59F017FC7B0 AS DateTime), CAST(0x0000A59F017FC7B0 AS DateTime), N'icon-book', NULL)
INSERT [dbo].[RMS_Menus] ([Id], [ParentManuId], [OrderNo], [Remarks], [ManuName], [URL], [IsShow], [IsEnable], [CreateTime], [ModifyTime], [Icon], [MIcon]) VALUES (N'0211853c-2580-4b25-a473-62a33c7b2782', N'c5f56312-eb83-479e-8836-fa66913642c8', NULL, N'维修店用', N'电子文件', N'TF_ElectronicFile', 1, 1, CAST(0x0000A58400FB0E55 AS DateTime), CAST(0x0000A58400FB0E55 AS DateTime), N'icon-page_white_font', NULL)
INSERT [dbo].[RMS_Menus] ([Id], [ParentManuId], [OrderNo], [Remarks], [ManuName], [URL], [IsShow], [IsEnable], [CreateTime], [ModifyTime], [Icon], [MIcon]) VALUES (N'18f90f0f-842d-403c-b459-760550bd3277', N'c03f01bc-29a4-4c32-b2f8-53e4736c6aa4', 1, NULL, N'模板管理', N'DynamicTable', 1, 1, CAST(0x0000A59F0189A734 AS DateTime), CAST(0x0000A59F0189A734 AS DateTime), N'icon-plugin', NULL)
INSERT [dbo].[RMS_Menus] ([Id], [ParentManuId], [OrderNo], [Remarks], [ManuName], [URL], [IsShow], [IsEnable], [CreateTime], [ModifyTime], [Icon], [MIcon]) VALUES (N'a5ce5d2d-9fb4-402b-a717-d869054764b8', N'00000000-0000-0000-0000-000000000000', 5, NULL, N'工资管理', N'#', 1, 1, CAST(0x0000A59F017D394D AS DateTime), CAST(0x0000A59F017D394D AS DateTime), N'icon-coins', NULL)
INSERT [dbo].[RMS_Menus] ([Id], [ParentManuId], [OrderNo], [Remarks], [ManuName], [URL], [IsShow], [IsEnable], [CreateTime], [ModifyTime], [Icon], [MIcon]) VALUES (N'13fbc9c8-d918-4480-a8c9-15908b74beec', N'97415592-11af-42d5-9709-92ef78487f1a', 4, NULL, N'办件信息提取', N'#', 1, 1, CAST(0x0000A59F01802217 AS DateTime), CAST(0x0000A59F01802217 AS DateTime), N'icon-arrow_branch', NULL)
INSERT [dbo].[RMS_Menus] ([Id], [ParentManuId], [OrderNo], [Remarks], [ManuName], [URL], [IsShow], [IsEnable], [CreateTime], [ModifyTime], [Icon], [MIcon]) VALUES (N'0c310986-8e5e-4adc-90ae-0a393a39add5', N'97415592-11af-42d5-9709-92ef78487f1a', 5, NULL, N'办件分发', N'#', 1, 1, CAST(0x0000A59F01806306 AS DateTime), CAST(0x0000A59F01806306 AS DateTime), N'icon-arrow_nw_ne_sw_se', NULL)
INSERT [dbo].[RMS_Menus] ([Id], [ParentManuId], [OrderNo], [Remarks], [ManuName], [URL], [IsShow], [IsEnable], [CreateTime], [ModifyTime], [Icon], [MIcon]) VALUES (N'e6d04c97-58ec-4159-9233-755015452c45', N'97415592-11af-42d5-9709-92ef78487f1a', 6, NULL, N'办件接收确认', N'#', 1, 1, CAST(0x0000A59F0180DE5E AS DateTime), CAST(0x0000A59F0180DE5E AS DateTime), N'icon-ok', NULL)
INSERT [dbo].[RMS_Menus] ([Id], [ParentManuId], [OrderNo], [Remarks], [ManuName], [URL], [IsShow], [IsEnable], [CreateTime], [ModifyTime], [Icon], [MIcon]) VALUES (N'8fd3c145-4eac-436e-b689-e3b9574b0e53', N'97415592-11af-42d5-9709-92ef78487f1a', 7, NULL, N'办件管理', N'#', 1, 1, CAST(0x0000A59F0182CB8B AS DateTime), CAST(0x0000A59F0182CB8B AS DateTime), N'icon-border_all', NULL)
INSERT [dbo].[RMS_Menus] ([Id], [ParentManuId], [OrderNo], [Remarks], [ManuName], [URL], [IsShow], [IsEnable], [CreateTime], [ModifyTime], [Icon], [MIcon]) VALUES (N'cd986342-511d-4869-8751-0f474ddd95ad', N'cb6a3fd7-a581-41c3-a52e-d3b385a9b219', 5, NULL, N'档案查阅', N'TF_PersonnelFile/consult', 1, 1, CAST(0x0000A59F01886CE9 AS DateTime), CAST(0x0000A59F01886CE9 AS DateTime), N'icon-application_form_magnify', NULL)
INSERT [dbo].[RMS_Menus] ([Id], [ParentManuId], [OrderNo], [Remarks], [ManuName], [URL], [IsShow], [IsEnable], [CreateTime], [ModifyTime], [Icon], [MIcon]) VALUES (N'01b2df1a-a36f-4327-b490-60a7ca085e75', N'cb6a3fd7-a581-41c3-a52e-d3b385a9b219', 6, NULL, N'档案借阅', N'TF_PersonnelFile/Borrow', 1, 1, CAST(0x0000A59F0188CD53 AS DateTime), CAST(0x0000A59F0188CD53 AS DateTime), N'icon-page_add', NULL)
INSERT [dbo].[RMS_Menus] ([Id], [ParentManuId], [OrderNo], [Remarks], [ManuName], [URL], [IsShow], [IsEnable], [CreateTime], [ModifyTime], [Icon], [MIcon]) VALUES (N'a1010003-7e5d-42ea-88a8-c06b22cccd0f', N'a5ce5d2d-9fb4-402b-a717-d869054764b8', 1, NULL, N'市管干部工资办理登记', N'#', 1, 1, CAST(0x0000A59F018964AE AS DateTime), CAST(0x0000A59F018964AE AS DateTime), N'icon-note', NULL)
INSERT [dbo].[RMS_Menus] ([Id], [ParentManuId], [OrderNo], [Remarks], [ManuName], [URL], [IsShow], [IsEnable], [CreateTime], [ModifyTime], [Icon], [MIcon]) VALUES (N'333bb424-811f-4ca3-95a5-7514cd7ebff4', N'a5ce5d2d-9fb4-402b-a717-d869054764b8', 2, NULL, N'区管、中管干部', N'#', 1, 1, CAST(0x0000A59F01898C57 AS DateTime), CAST(0x0000A59F01898C57 AS DateTime), N'icon-package', NULL)
/****** Object:  Table [dbo].[RMS_MenuButtons]    Script Date: 02/01/2016 23:54:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RMS_MenuButtons](
	[Id] [uniqueidentifier] NOT NULL,
	[ManuId] [uniqueidentifier] NULL,
	[ButtonId] [uniqueidentifier] NULL,
	[OrderNo] [int] NULL,
 CONSTRAINT [PK_RMS_MenuButtons] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'c2800a63-cf5c-4036-9eb2-ff37919731d6', N'cbc19245-4fe9-4080-bc9b-f83563e62a54', N'7f6272f8-1990-40e0-9ae1-2593e7a60f43', 2)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'10986a68-1641-457f-96d8-5e3d522019cf', N'cbc19245-4fe9-4080-bc9b-f83563e62a54', N'cb27b325-cb67-4b19-9149-030f4fed5deb', 1)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'42b0ca5b-4e28-46c1-b1b9-d01ba0642075', N'cbc19245-4fe9-4080-bc9b-f83563e62a54', N'90984d1f-fe51-4efd-9e2b-0dfa85f867a3', 0)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'e6523d84-fb82-4ae7-9cfc-2c1db20df936', N'029a6c5c-4c4e-41d8-bdc6-1174318741e3', N'90984d1f-fe51-4efd-9e2b-0dfa85f867a3', 0)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'832ca926-0ce3-40f3-b337-fe0c221ac6b6', N'029a6c5c-4c4e-41d8-bdc6-1174318741e3', N'cb27b325-cb67-4b19-9149-030f4fed5deb', 1)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'9a79f2c8-1a38-4f10-a775-4069503ef057', N'029a6c5c-4c4e-41d8-bdc6-1174318741e3', N'7f6272f8-1990-40e0-9ae1-2593e7a60f43', 2)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'bdad042b-79d4-424d-83ab-9d20708c9e77', N'82ab8599-04d0-409b-818b-11cd5ea642ef', N'7f6272f8-1990-40e0-9ae1-2593e7a60f43', 2)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'98a05a8d-fb7c-43a3-b44c-3564e1d273ab', N'82ab8599-04d0-409b-818b-11cd5ea642ef', N'cb27b325-cb67-4b19-9149-030f4fed5deb', 1)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'4b9f0b04-83d0-469f-a49c-f7114db923dd', N'82ab8599-04d0-409b-818b-11cd5ea642ef', N'90984d1f-fe51-4efd-9e2b-0dfa85f867a3', 0)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'badf8f06-3623-4d10-aff1-db95cd381b2e', N'8cf825de-ad5e-498f-a2aa-836c521ce009', N'cb27b325-cb67-4b19-9149-030f4fed5deb', 1)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'b612d11d-6cfd-40f2-b367-c246c9b08e79', N'8cf825de-ad5e-498f-a2aa-836c521ce009', N'7f6272f8-1990-40e0-9ae1-2593e7a60f43', 2)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'6d8a5b93-c4c3-459a-9e22-6873809d7a3e', N'8cf825de-ad5e-498f-a2aa-836c521ce009', N'90984d1f-fe51-4efd-9e2b-0dfa85f867a3', 0)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'ce45f87c-653f-4ad1-b85b-d290ebe8f1e3', N'701d6086-8d50-4d8c-b775-90c547ec25d5', N'cb27b325-cb67-4b19-9149-030f4fed5deb', 1)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'41bf1fda-62e7-4095-b5d9-b9834b658688', N'701d6086-8d50-4d8c-b775-90c547ec25d5', N'7f6272f8-1990-40e0-9ae1-2593e7a60f43', 2)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'4253cab5-80ff-4765-bdf4-c1ae60219a1f', N'701d6086-8d50-4d8c-b775-90c547ec25d5', N'90984d1f-fe51-4efd-9e2b-0dfa85f867a3', 0)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'b648e8a0-39fc-4549-8adf-a0b2056e60e3', N'1fbd7363-1186-4a53-bdd3-9678a0093589', N'90984d1f-fe51-4efd-9e2b-0dfa85f867a3', 0)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'bccec2de-22e5-4b7d-98a6-35ae2fa6fcde', N'1fbd7363-1186-4a53-bdd3-9678a0093589', N'7f6272f8-1990-40e0-9ae1-2593e7a60f43', 2)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'2316e4c7-72fb-4c8c-8845-376f6d7db38c', N'1fbd7363-1186-4a53-bdd3-9678a0093589', N'cb27b325-cb67-4b19-9149-030f4fed5deb', 1)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'e0274a3a-4a7d-4916-8584-fd2b6f3cb130', N'ae0bea25-acca-43ad-b8ee-bbaa2dc62795', N'69cf2259-4856-4e5b-8ba2-2181774232d9', 4)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'c1a38b17-95e1-47c5-bb04-24377b02ef61', N'ae0bea25-acca-43ad-b8ee-bbaa2dc62795', N'42e41d0f-c75e-4b9c-8a03-007252304924', 3)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'7449b38f-55e9-4e0d-be25-ccd55a599ea7', N'ae0bea25-acca-43ad-b8ee-bbaa2dc62795', N'7f6272f8-1990-40e0-9ae1-2593e7a60f43', 2)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'e9b3d839-bc2c-434a-95ee-0491b14136ac', N'0211853c-2580-4b25-a473-62a33c7b2782', N'69cf2259-4856-4e5b-8ba2-2181774232d9', 4)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'052f960a-2bd7-4e50-9ae0-455f8ff441d3', N'9b7cd5ef-a033-42c6-98bc-4157d6ff23b7', N'69cf2259-4856-4e5b-8ba2-2181774232d9', 3)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'f1109d53-c8df-4125-8293-2b3cccd90afa', N'9b7cd5ef-a033-42c6-98bc-4157d6ff23b7', N'cb27b325-cb67-4b19-9149-030f4fed5deb', 1)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'8d1e943b-7631-4d64-90e2-c23d15e86ebc', N'9b7cd5ef-a033-42c6-98bc-4157d6ff23b7', N'7f6272f8-1990-40e0-9ae1-2593e7a60f43', 2)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'd742bb5a-f413-45bd-9a9f-de1a05b7c60d', N'9b7cd5ef-a033-42c6-98bc-4157d6ff23b7', N'90984d1f-fe51-4efd-9e2b-0dfa85f867a3', 0)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'bd5f3345-b02a-438f-804a-f21a16947990', N'f94992a9-68e7-44e3-86f3-93a5a4f10a4e', N'90984d1f-fe51-4efd-9e2b-0dfa85f867a3', 0)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'0c4e0848-68f4-4128-9b3f-a11398236f70', N'f94992a9-68e7-44e3-86f3-93a5a4f10a4e', N'cb27b325-cb67-4b19-9149-030f4fed5deb', 1)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'81551402-958f-4aeb-a77b-f7c725ce699a', N'f94992a9-68e7-44e3-86f3-93a5a4f10a4e', N'69cf2259-4856-4e5b-8ba2-2181774232d9', 3)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'0e5b6abf-ae50-45ef-bf33-00c68d3fa161', N'fcab7171-5c19-4117-af0e-c0407e6d280e', N'69cf2259-4856-4e5b-8ba2-2181774232d9', 3)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'e029fcea-92e2-4694-b448-9caa4ffb86cb', N'4eef9033-2c87-45e5-a500-278e10e14b9d', N'cb27b325-cb67-4b19-9149-030f4fed5deb', 1)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'2369f740-2836-4b3a-af29-462d7b56f6ac', N'fcab7171-5c19-4117-af0e-c0407e6d280e', N'cb27b325-cb67-4b19-9149-030f4fed5deb', 1)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'18381400-99b5-4bc2-9045-77be5c7c2d1c', N'fcab7171-5c19-4117-af0e-c0407e6d280e', N'90984d1f-fe51-4efd-9e2b-0dfa85f867a3', 0)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'0eb8b1c2-51b2-4bfa-87e4-2b11ebce36d4', N'5942d6f5-903a-4870-8545-48cfaec77387', N'90984d1f-fe51-4efd-9e2b-0dfa85f867a3', 0)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'bddb8ba8-87f4-4871-9a0f-0d2c630c4c6f', N'5942d6f5-903a-4870-8545-48cfaec77387', N'69cf2259-4856-4e5b-8ba2-2181774232d9', 3)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'ed99db36-efe7-4f57-82a8-5b4f44f9e66a', N'5942d6f5-903a-4870-8545-48cfaec77387', N'cb27b325-cb67-4b19-9149-030f4fed5deb', 1)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'799f490f-2920-4f25-9bc5-00ad025db684', N'4eef9033-2c87-45e5-a500-278e10e14b9d', N'69cf2259-4856-4e5b-8ba2-2181774232d9', 3)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'1c6cafec-e599-4af6-a5ac-e5d0e900ffc0', N'4eef9033-2c87-45e5-a500-278e10e14b9d', N'90984d1f-fe51-4efd-9e2b-0dfa85f867a3', 0)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'89da12b8-dc9c-4908-b6be-79aea484394e', N'4eef9033-2c87-45e5-a500-278e10e14b9d', N'7f6272f8-1990-40e0-9ae1-2593e7a60f43', 2)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'd0968c5b-a592-43ea-811f-1c5af6552b7b', N'5942d6f5-903a-4870-8545-48cfaec77387', N'7f6272f8-1990-40e0-9ae1-2593e7a60f43', 2)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'bde2c1f4-8197-4fb5-b8ee-7223067739fb', N'fcab7171-5c19-4117-af0e-c0407e6d280e', N'7f6272f8-1990-40e0-9ae1-2593e7a60f43', 2)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'1a006175-1ae0-45e9-b233-322c1715bcb6', N'f94992a9-68e7-44e3-86f3-93a5a4f10a4e', N'7f6272f8-1990-40e0-9ae1-2593e7a60f43', 2)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'52959c9b-86b3-45d2-8a1a-8018f299cd5d', N'25b900c5-6306-4a3f-887f-815e9bf372e8', N'7f6272f8-1990-40e0-9ae1-2593e7a60f43', 2)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'fe4acc8c-53a2-4adf-9c1b-eb74709f5985', N'25b900c5-6306-4a3f-887f-815e9bf372e8', N'cb27b325-cb67-4b19-9149-030f4fed5deb', 1)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'415fc710-652d-4d7f-a3a6-16034f5fcc01', N'25b900c5-6306-4a3f-887f-815e9bf372e8', N'69cf2259-4856-4e5b-8ba2-2181774232d9', 3)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'24040ad2-80a9-43c5-b8fc-a9a3bddaf93e', N'25b900c5-6306-4a3f-887f-815e9bf372e8', N'90984d1f-fe51-4efd-9e2b-0dfa85f867a3', 0)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'c0214a1b-3944-495b-90a2-aafd8c9d1cc3', N'7a8c4046-04e3-4559-bc1c-53f945b99bb1', N'90984d1f-fe51-4efd-9e2b-0dfa85f867a3', 0)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'd0d87890-5f48-4d6a-a4b8-f54e0253c2b8', N'7a8c4046-04e3-4559-bc1c-53f945b99bb1', N'7f6272f8-1990-40e0-9ae1-2593e7a60f43', 2)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'bfd300cd-eca1-4ed6-8441-c3056d958854', N'7a8c4046-04e3-4559-bc1c-53f945b99bb1', N'cb27b325-cb67-4b19-9149-030f4fed5deb', 1)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'33408194-80f0-4e50-a96f-68dab6c46c57', N'a83eaa2a-2f6f-49ed-bac0-fea7369b4fc2', N'7f6272f8-1990-40e0-9ae1-2593e7a60f43', 2)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'884caf14-acd2-4d58-9451-74290e3bdde4', N'a83eaa2a-2f6f-49ed-bac0-fea7369b4fc2', N'cb27b325-cb67-4b19-9149-030f4fed5deb', 1)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'77337595-1714-4f5e-8ef0-30d43ccc6c3b', N'a83eaa2a-2f6f-49ed-bac0-fea7369b4fc2', N'90984d1f-fe51-4efd-9e2b-0dfa85f867a3', 0)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'7bde7bf4-6187-4caa-b3d5-9b17f3bc2a92', N'0211853c-2580-4b25-a473-62a33c7b2782', N'42e41d0f-c75e-4b9c-8a03-007252304924', 3)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'640e7f8a-190d-4459-a790-2f5d194baf78', N'a83eaa2a-2f6f-49ed-bac0-fea7369b4fc2', N'69cf2259-4856-4e5b-8ba2-2181774232d9', 3)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'd546efaf-71f3-43ea-ae30-b6a0ab1d5310', N'ae0bea25-acca-43ad-b8ee-bbaa2dc62795', N'cb27b325-cb67-4b19-9149-030f4fed5deb', 1)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'8d7638be-56f0-4360-acaf-7062165e4e7f', N'ae0bea25-acca-43ad-b8ee-bbaa2dc62795', N'90984d1f-fe51-4efd-9e2b-0dfa85f867a3', 0)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'75295c8d-8166-431d-8dd1-8d1e4cd854a4', N'0211853c-2580-4b25-a473-62a33c7b2782', N'cb27b325-cb67-4b19-9149-030f4fed5deb', 1)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'9b423185-08d9-45ee-a070-555ed1037767', N'0211853c-2580-4b25-a473-62a33c7b2782', N'90984d1f-fe51-4efd-9e2b-0dfa85f867a3', 0)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'f1b6d737-e7e6-4944-8e20-1a64d63422a1', N'a14c20d5-c5d3-438f-89bd-2cc541feb3f5', N'cb27b325-cb67-4b19-9149-030f4fed5deb', 1)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'b0f6e48c-bc57-4ba5-b124-8e23f6d5d63e', N'a14c20d5-c5d3-438f-89bd-2cc541feb3f5', N'90984d1f-fe51-4efd-9e2b-0dfa85f867a3', 0)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'4f874dfc-16f9-4aa8-a696-6b22f00e253e', N'a342d8d0-bc69-43ba-9b30-ca0949052447', N'cb27b325-cb67-4b19-9149-030f4fed5deb', 1)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'3584d0b4-ca6c-499a-a512-4092a9d6c1a8', N'a342d8d0-bc69-43ba-9b30-ca0949052447', N'7f6272f8-1990-40e0-9ae1-2593e7a60f43', 2)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'3f9cd1d6-b486-4a41-b034-a2e69c2f10f4', N'a342d8d0-bc69-43ba-9b30-ca0949052447', N'90984d1f-fe51-4efd-9e2b-0dfa85f867a3', 0)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'df875da3-ba22-458e-861d-9c1e82836aa4', N'0211853c-2580-4b25-a473-62a33c7b2782', N'7f6272f8-1990-40e0-9ae1-2593e7a60f43', 2)
/****** Object:  Table [dbo].[RMS_Department]    Script Date: 02/01/2016 23:54:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RMS_Department](
	[Id] [uniqueidentifier] NOT NULL,
	[ParentId] [uniqueidentifier] NULL,
	[OrderNo] [int] NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Remarks] [nvarchar](100) NULL,
	[CreateTime] [datetime] NULL,
	[ModifyTime] [datetime] NULL,
	[Icon] [nvarchar](50) NULL,
	[YH_HospitalId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_RMS_Department] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[RMS_Department] ([Id], [ParentId], [OrderNo], [Name], [Remarks], [CreateTime], [ModifyTime], [Icon], [YH_HospitalId]) VALUES (N'35f45b17-30b2-43b8-8859-9a964bfb339d', N'43e58774-34f2-434b-8200-fc9fe2e10f0e', 12, N'临床医学', N'12', CAST(0x0000A46100F17BB9 AS DateTime), CAST(0x0000A46100F17BB9 AS DateTime), N'icon-shape_shade_a', N'd37f2b1e-06af-441d-9882-65498a6ff0cb')
INSERT [dbo].[RMS_Department] ([Id], [ParentId], [OrderNo], [Name], [Remarks], [CreateTime], [ModifyTime], [Icon], [YH_HospitalId]) VALUES (N'29c05683-eaee-4e10-91ee-7f1232a0f408', N'00000000-0000-0000-0000-000000000000', 1, N'开发部', N'2112', CAST(0x0000A2FC01662654 AS DateTime), CAST(0x0000A2FC01662654 AS DateTime), N'icon-arrow_left', NULL)
INSERT [dbo].[RMS_Department] ([Id], [ParentId], [OrderNo], [Name], [Remarks], [CreateTime], [ModifyTime], [Icon], [YH_HospitalId]) VALUES (N'a38084f4-1239-4d51-b71e-af53417ee682', N'29c05683-eaee-4e10-91ee-7f1232a0f408', 2, N'B小组', N'23', CAST(0x0000A46800EDC68D AS DateTime), CAST(0x0000A46800EDC68D AS DateTime), N'icon-bug', NULL)
INSERT [dbo].[RMS_Department] ([Id], [ParentId], [OrderNo], [Name], [Remarks], [CreateTime], [ModifyTime], [Icon], [YH_HospitalId]) VALUES (N'0b0d8df1-ab27-4375-9eb5-db772bfaebbb', N'43e58774-34f2-434b-8200-fc9fe2e10f0e', 2, N'编码高手', N'23', CAST(0x0000A2FD012A5ED0 AS DateTime), CAST(0x0000A2FD012A5ED0 AS DateTime), N'icon-control_equalizer', NULL)
INSERT [dbo].[RMS_Department] ([Id], [ParentId], [OrderNo], [Name], [Remarks], [CreateTime], [ModifyTime], [Icon], [YH_HospitalId]) VALUES (N'43e58774-34f2-434b-8200-fc9fe2e10f0e', N'00000000-0000-0000-0000-000000000000', 23, N'业务部', N'2', CAST(0x0000A46100EF91ED AS DateTime), CAST(0x0000A46100EF91ED AS DateTime), N'icon-arrow_nsew', N'd37f2b1e-06af-441d-9882-65498a6ff0cb')
INSERT [dbo].[RMS_Department] ([Id], [ParentId], [OrderNo], [Name], [Remarks], [CreateTime], [ModifyTime], [Icon], [YH_HospitalId]) VALUES (N'712ffc65-eadf-460b-aed3-ff8847b598ef', N'29c05683-eaee-4e10-91ee-7f1232a0f408', 2, N'A小组', N'23', CAST(0x0000A367017718A9 AS DateTime), CAST(0x0000A367017718A9 AS DateTime), N'icon-bell_start', NULL)
INSERT [dbo].[RMS_Department] ([Id], [ParentId], [OrderNo], [Name], [Remarks], [CreateTime], [ModifyTime], [Icon], [YH_HospitalId]) VALUES (N'9164f509-ef6a-4134-806e-97f7e946584f', N'00000000-0000-0000-0000-000000000000', 10, N'临床科', N'1010', CAST(0x0000A46100EF739B AS DateTime), CAST(0x0000A46100EF739B AS DateTime), N'icon-color_wheel', N'81c304f2-642c-42f3-840f-7f8386261e3f')
INSERT [dbo].[RMS_Department] ([Id], [ParentId], [OrderNo], [Name], [Remarks], [CreateTime], [ModifyTime], [Icon], [YH_HospitalId]) VALUES (N'b537a743-1bb8-46ef-bae9-e470975551e9', N'712ffc65-eadf-460b-aed3-ff8847b598ef', 23, N'23', N'23', CAST(0x0000A46800EDDFC8 AS DateTime), CAST(0x0000A46800EDDFC8 AS DateTime), N'icon-bullet_sparkle', NULL)
/****** Object:  Table [dbo].[RMS_Buttons]    Script Date: 02/01/2016 23:54:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RMS_Buttons](
	[Id] [uniqueidentifier] NOT NULL,
	[ButtonName] [nvarchar](50) NULL,
	[OrderNo] [int] NULL,
	[Icon] [nvarchar](250) NULL,
	[Remarks] [nvarchar](150) NULL,
	[CreateTime] [datetime] NULL,
	[ModifyTime] [datetime] NULL,
	[ValueName] [nvarchar](50) NULL,
	[FunctionName] [nvarchar](50) NULL,
 CONSTRAINT [PK_RMS_Buttons] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[RMS_Buttons] ([Id], [ButtonName], [OrderNo], [Icon], [Remarks], [CreateTime], [ModifyTime], [ValueName], [FunctionName]) VALUES (N'42e41d0f-c75e-4b9c-8a03-007252304924', N'导出', 4, N'icon-arrow_nw_ne_sw_se', N'导出Excel World等', CAST(0x0000A2F9000BE488 AS DateTime), CAST(0x0000A2F9000BE488 AS DateTime), N'ExportBtn', N'Export')
INSERT [dbo].[RMS_Buttons] ([Id], [ButtonName], [OrderNo], [Icon], [Remarks], [CreateTime], [ModifyTime], [ValueName], [FunctionName]) VALUES (N'cb27b325-cb67-4b19-9149-030f4fed5deb', N'修改', 1, N'icon-edit', N'编辑修改数据', CAST(0x0000A2F9000B1AF8 AS DateTime), CAST(0x0000A2F9000B1AF8 AS DateTime), N'EditBtn', N'EditInfo')
INSERT [dbo].[RMS_Buttons] ([Id], [ButtonName], [OrderNo], [Icon], [Remarks], [CreateTime], [ModifyTime], [ValueName], [FunctionName]) VALUES (N'0da111b2-3cb2-4e1a-a4a4-0625b9f26038', N'导入', 5, N'icon-arrow_in_longer', N'导入，导入Excel xml等操作按钮', CAST(0x0000A2F9000C3FF0 AS DateTime), CAST(0x0000A2F9000C3FF0 AS DateTime), N'ImportBtn', N'Import')
INSERT [dbo].[RMS_Buttons] ([Id], [ButtonName], [OrderNo], [Icon], [Remarks], [CreateTime], [ModifyTime], [ValueName], [FunctionName]) VALUES (N'90984d1f-fe51-4efd-9e2b-0dfa85f867a3', N'添加', 0, N'icon-add', N'添加数据', CAST(0x0000A2F90009E340 AS DateTime), CAST(0x0000A2F90009E340 AS DateTime), N'AddBtn', N'AddInfo')
INSERT [dbo].[RMS_Buttons] ([Id], [ButtonName], [OrderNo], [Icon], [Remarks], [CreateTime], [ModifyTime], [ValueName], [FunctionName]) VALUES (N'69cf2259-4856-4e5b-8ba2-2181774232d9', N'搜索', 3, N'icon-search', N'按条件搜索数据', CAST(0x0000A2F9000B9154 AS DateTime), CAST(0x0000A2F9000B9154 AS DateTime), N'DivSearh', N'Search')
INSERT [dbo].[RMS_Buttons] ([Id], [ButtonName], [OrderNo], [Icon], [Remarks], [CreateTime], [ModifyTime], [ValueName], [FunctionName]) VALUES (N'7f6272f8-1990-40e0-9ae1-2593e7a60f43', N'删除', 2, N'icon-delete', N'删除数据', CAST(0x0000A2F9000B42D0 AS DateTime), CAST(0x0000A2F9000B42D0 AS DateTime), N'DelBtn', N'Del')
INSERT [dbo].[RMS_Buttons] ([Id], [ButtonName], [OrderNo], [Icon], [Remarks], [CreateTime], [ModifyTime], [ValueName], [FunctionName]) VALUES (N'dc1d6f6a-269e-4f5d-a313-555d896fee7f', N'处理', 6, N'icon-tick', N'处理问题', CAST(0x0000A47A0112BD31 AS DateTime), CAST(0x0000A47A0112BD31 AS DateTime), N'HandleBtn', N'HandleOP')
INSERT [dbo].[RMS_Buttons] ([Id], [ButtonName], [OrderNo], [Icon], [Remarks], [CreateTime], [ModifyTime], [ValueName], [FunctionName]) VALUES (N'a6032fbc-4587-4feb-b7ab-b6d6722f6c19', N'查看', NULL, N'icon-zoom', NULL, CAST(0x0000A47C01162906 AS DateTime), CAST(0x0000A47C01162906 AS DateTime), N'DetailsBtn', N'ShowDetails')
INSERT [dbo].[RMS_Buttons] ([Id], [ButtonName], [OrderNo], [Icon], [Remarks], [CreateTime], [ModifyTime], [ValueName], [FunctionName]) VALUES (N'69daef95-a0a6-4208-8445-2d18be9ba9af', N'分配权限', 9, N'icon-user_edit', NULL, CAST(0x0000A5700104AD47 AS DateTime), CAST(0x0000A5700104AD47 AS DateTime), N'btnSetRole', N'SetRole')
/****** Object:  StoredProcedure [dbo].[proc_DelForSetDelete]    Script Date: 02/01/2016 23:54:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[proc_DelForSetDelete]
	(@tableName NVARCHAR(200),      ----要显示的表或多个表的连接
	@Idfied NVARCHAR(200),      ----id或列名称
	@IdSet NVARCHAR(1000)      ----id集，","号隔开如："3","4"
	)
AS
Declare @sql NVARCHAR(1000)    ----存放动态生成的SQL语句
BEGIN
SET @sql = ' update  '+@tableName +' set isDeleted=1 where '+ @Idfied+' in ('+@IdSet+')'
exec(@sql) 
select @@rowcount --执行完后保存受影响的行数至变量

end
GO
/****** Object:  StoredProcedure [dbo].[proc_DataPagingList]    Script Date: 02/01/2016 23:54:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_DataPagingList]
(
@tableName NVARCHAR(200),      ----要显示的表或多个表的连接
@fieldNames NVARCHAR(200), ----要显示的字段列表
@pageSize INT = 10,            ----每页显示的记录个数
@page INT = 10,                ----要显示那一页的记录
@pageCount INT = 1 output,     ----查询结果分页后的总页数
@counts INT = 1 output,        ----查询到的总记录数
@fieldSort NVARCHAR(200)= null,----排序字段列表或条件
@condition NVARCHAR(200)= null,----查询条件,不需WHERE
@keyID NVARCHAR(100),          ----主表的主键
@distinct BIT = 0              ----是否添加查询字段的 DISTINCT 默认0不添加/1添加
)
AS

SET NOCOUNT ON
Declare @SELECT NVARCHAR(1000)    ----存放动态生成的SQL语句
Declare @strCounts NVARCHAR(1000) ----存放取得查询结果总数的查询语句
Declare @strID  NVARCHAR(1000)    ----存放取得查询开头或结尾ID的查询语句


Declare @distSelect NVARCHAR(50)  ----对含有DISTINCT的查询进行SQL构造
Declare @distCounts NVARCHAR(50)  ----对含有DISTINCT的总数查询进行SQL构造

DECLARE @SortfieldA NVARCHAR(max)  ----对含有是否还有排序字段时的排序方式组合A
DECLARE @SortfieldB NVARCHAR(max)   ----对含有是否还有排序字段时的排序方式组合B


IF @distinct = 0
	BEGIN
		SET @distSelect = 'SELECT '
		SET @distCounts = ' COUNT(*)'
	END
ELSE
	BEGIN
		SET @distSelect = 'SELECT distinct '
		SET @distCounts = ' COUNT(DISTINCT '+@keyID+')'
	END



IF @fieldSort IS NOT NULL AND @fieldSort<>'' --排序字段不为空时
	BEGIN
		SET @SortfieldB=' order by '+ @fieldSort +' '
		SET @SortfieldA=' order by '+ @fieldSort +' ' 
	END
ELSE
	BEGIN
		SET @SortfieldB=''
		SET @SortfieldA=''
	END

--------生成查询语句--------
--此处@strCounts为取得查询结果数量的语句
IF @condition is null or @condition=''     --没有设置显示条件
	BEGIN
		SET @SELECT =  @fieldNames + ' FROM ' + @tableName
		SET @strCounts = @distSelect+' @counts='+@distCounts+' FROM '+@tableName
		SET @strID = ' FROM ' + @tableName
	END
ELSE
	BEGIN
		SET @SELECT = + @fieldNames + 'FROM ' + @tableName + ' WHERE  ' + @condition
		SET @strCounts = @distSelect+' @counts='+@distCounts+' FROM '+@tableName + ' WHERE ' + @condition
		SET @strID = ' FROM ' + @tableName + ' WHERE  ' + @condition
	END

----取得查询结果总数量-----
exec sp_executesql @strCounts,N'@counts INT out ',@counts out
DECLARE @tmpCounts INT

IF @counts = 0
    SET @tmpCounts = 1
ELSE
    SET @tmpCounts = @counts

    --取得分页总数
    SET @pageCount=(@tmpCounts+@pageSize-1)/@pageSize

    --/**当前页大于总页数 取最后一页**/
    IF @page>@pageCount
        SET @page=@pageCount

    --/*-----数据分页2分处理-------*/
    DECLARE @pageIndex INT --总数/页大小
    DECLARE @lastcount INT --总数%页大小 

    SET @pageIndex = @tmpCounts/@pageSize
    SET @lastcount = @tmpCounts%@pageSize
    IF @lastcount > 0
        SET @pageIndex = @pageIndex + 1
    ELSE
        SET @lastcount = @pageSize

    --显示分页
    IF @condition is null or @condition=''     --没有设置显示条件
    BEGIN
        IF @pageIndex<2 or @page<=@pageIndex / 2 + @pageIndex % 2   --前半部分数据处理
            BEGIN 
                SET @strCounts=@distSelect+' TOP '+ CAST(@pageSize as VARCHAR(6))+' '+ @fieldNames+' FROM '+@tableName + ' WHERE '+@keyID+' not in('+ @distSelect+' TOP '+ CAST(@pageSize*(@page-1) as Varchar(20)) +' '+ @keyID +' FROM '+@tableName + @SortfieldB +')' + @SortfieldB 
            END
        ELSE
            BEGIN
            SET @page = @pageIndex-@page+1 --后半部分数据处理
                IF @page <= 1 --最后一页数据显示
                    SET @strCounts=@distSelect+@fieldNames+'  FROM ('+@distSelect+' TOP '+ CAST(@lastcount as VARCHAR(4))+' '+ @fieldNames+' FROM '+@tableName + @SortfieldA+') AS TempTB '+@SortfieldB
                ELSE                
                    SET @strCounts=@distSelect+@fieldNames+'  FROM ('+@distSelect+' TOP '+ CAST(@pageSize as VARCHAR(6))+' '+ @fieldNames+' FROM '+@tableName + ' WHERE '+@keyID+' not in('+ @distSelect+' TOP '+ CAST(@pageSize*(@page-2)+@lastcount as Varchar(20)) +' '+ @keyID +' FROM '+@tableName + @SortfieldA+')' + @SortfieldA+') AS TempTB '+@SortfieldB
            END
    END

    ELSE --有查询条件
    BEGIN
        IF @pageIndex<2 or @page<=@pageIndex / 2 + @pageIndex % 2   --前半部分数据处理
        BEGIN 
                SET @strCounts=@distSelect+' TOP '+ CAST(@pageSize as VARCHAR(6))+' '+ @fieldNames +' FROM  '+@tableName + ' WHERE '+@keyID+' not in('+ @distSelect+' TOP '+ CAST(@pageSize*(@page-1) as Varchar(20)) +' '+ @keyID +' FROM '+@tableName + ' Where ' + @condition + @SortfieldB+')'+' AND ' + @condition + @SortfieldB                 
        END
        ELSE
        BEGIN 
            SET @page = @pageIndex-@page+1 --后半部分数据处理
            IF @page <= 1 --最后一页数据显示
                    SET @strCounts=@distSelect+@fieldNames+'  FROM ('+@distSelect+' TOP '+ CAST(@lastcount as VARCHAR(4))+' '+ @fieldNames+' FROM '+@tableName + ' WHERE  '+ @condition +@SortfieldA+') AS TempTB '+@SortfieldB
            ELSE
                    SET @strCounts=@distSelect+@fieldNames+'  FROM ('+@distSelect+' TOP '+ CAST(@pageSize as VARCHAR(6))+' '+ @fieldNames+' FROM '+@tableName + ' WHERE '+@keyID+' not in('+ @distSelect+' TOP '+ CAST(@pageSize*(@page-2)+@lastcount as Varchar(20)) +' ' + @keyID +' FROM '+@tableName +' WHERE  '+ @condition +@SortfieldA+')' +' AND '+ @condition +@SortfieldA+') AS TempTB ' + @SortfieldB 
        END    
    END

------返回查询结果-----
exec sp_executesql @strCounts
SET NOCOUNT OFF
GO
/****** Object:  StoredProcedure [dbo].[proc_CountOne]    Script Date: 02/01/2016 23:54:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		卢迪
-- 
-- Description:	 统计，给某一字段加1，如点击量，点赞数，呼叫量
-- =============================================
CREATE PROCEDURE [dbo].[proc_CountOne]
	(@tableName NVARCHAR(100),      ----表名
	@Countfied NVARCHAR(100),      ----要统计的列名称
	@Idfied  NVARCHAR(100) ,     ----id列名
	@Id NVARCHAR(100)      ----id
	)
AS
Declare @sql NVARCHAR(1000)    ----存放动态生成的SQL语句
BEGIN
SET @sql = ' update  '+@tableName +' set '+@Countfied+'='+@Countfied+'+1 where '+ @Idfied+'='''+@Id+''''
exec(@sql) 
select @@rowcount --执行完后保存受影响的行数至变量

end
GO
/****** Object:  Table [dbo].[lsdaclzdj]    Script Date: 02/01/2016 23:54:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[lsdaclzdj](
	[ID] [varchar](50) NOT NULL,
	[CreatName] [nvarchar](100) NULL,
	[CreateTime] [datetime] NULL,
	[bh] [nvarchar](500) NULL,
	[zcdw] [nvarchar](500) NULL,
	[clmc] [nvarchar](500) NULL,
	[fsys] [nvarchar](500) NULL,
	[zdfs] [nvarchar](500) NULL,
	[zdyy] [nvarchar](500) NULL,
	[zdr] [nvarchar](500) NULL,
	[qsrjsj] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[lsdaclqsb]    Script Date: 02/01/2016 23:54:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[lsdaclqsb](
	[ID] [varchar](50) NOT NULL,
	[CreatName] [nvarchar](100) NULL,
	[CreateTime] [datetime] NULL,
	[zcdw] [nvarchar](500) NULL,
	[xh] [nvarchar](500) NULL,
	[daclmc] [nvarchar](500) NULL,
	[fsys] [nvarchar](500) NULL,
	[qsrjsj] [nvarchar](500) NULL,
	[bz] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  UserDefinedFunction [dbo].[fnGetDistance]    Script Date: 02/01/2016 23:54:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--计算地球上两个坐标点（经度，纬度）之间距离sql函数
--作者：lordbaby
--整理：www.aspbc.com 
create FUNCTION [dbo].[fnGetDistance](@LatBegin REAL, @LngBegin REAL, @LatEnd REAL, @LngEnd REAL) RETURNS FLOAT
  AS
BEGIN
  --距离(千米)
  DECLARE @Distance REAL
  DECLARE @EARTH_RADIUS REAL
  SET @EARTH_RADIUS = 6378.137  
  DECLARE @RadLatBegin REAL,@RadLatEnd REAL,@RadLatDiff REAL,@RadLngDiff REAL
  SET @RadLatBegin = @LatBegin *PI()/180.0  
  SET @RadLatEnd = @LatEnd *PI()/180.0  
  SET @RadLatDiff = @RadLatBegin - @RadLatEnd  
  SET @RadLngDiff = @LngBegin *PI()/180.0 - @LngEnd *PI()/180.0   
  SET @Distance = 2 *ASIN(SQRT(POWER(SIN(@RadLatDiff/2), 2)+COS(@RadLatBegin)*COS(@RadLatEnd)*POWER(SIN(@RadLngDiff/2), 2)))
  SET @Distance = @Distance * @EARTH_RADIUS  
  --SET @Distance = Round(@Distance * 10000) / 10000  
  RETURN @Distance
END
GO
/****** Object:  Table [dbo].[File_Image]    Script Date: 02/01/2016 23:54:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[File_Image](
	[Id] [uniqueidentifier] NOT NULL,
	[ToId] [uniqueidentifier] NULL,
	[ShowName] [nvarchar](50) NULL,
	[FileName] [nvarchar](50) NULL,
	[SourceTable] [nvarchar](20) NULL,
	[Route] [nvarchar](150) NULL,
	[FullRoute] [nvarchar](200) NULL,
	[Suffix] [nvarchar](20) NULL,
	[FileType] [nvarchar](20) NULL,
	[AddTime] [datetime] NULL,
	[UpdateTime] [datetime] NULL,
 CONSTRAINT [PK_File_Image] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'File_Image', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所禹对象Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'File_Image', @level2type=N'COLUMN',@level2name=N'ToId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'显示名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'File_Image', @level2type=N'COLUMN',@level2name=N'ShowName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'File_Image', @level2type=N'COLUMN',@level2name=N'FileName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所禹表名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'File_Image', @level2type=N'COLUMN',@level2name=N'SourceTable'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'路径' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'File_Image', @level2type=N'COLUMN',@level2name=N'Route'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'全文件地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'File_Image', @level2type=N'COLUMN',@level2name=N'FullRoute'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'后缀名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'File_Image', @level2type=N'COLUMN',@level2name=N'Suffix'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'File_Image', @level2type=N'COLUMN',@level2name=N'FileType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'File_Image', @level2type=N'COLUMN',@level2name=N'AddTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'File_Image', @level2type=N'COLUMN',@level2name=N'UpdateTime'
GO
INSERT [dbo].[File_Image] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'7117087a-d8b1-4feb-a6c4-09ffea96deae', N'a7b1a111-4667-4099-b855-8a2958777970', N'u=2013932676,760075586&fm=21&gp=0.jpg', N'20151210121450_109.jpg', N'TS_Shop', N'/Upload/', N'/Upload/20151210121450_109.jpg', N'.jpg', N'图片', CAST(0x0000A56A00041393 AS DateTime), CAST(0x0000A56A00041393 AS DateTime))
INSERT [dbo].[File_Image] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'b1f75090-06d1-4ea3-b35c-0d2402613f36', N'6627f0b5-3fea-4b9d-83b6-2683fb0c54c2', N'044E0A6F6B75AA3D5329EF38B8658F7C.png', N'20151209113946_293.png', N'TS_Service', N'/Upload/', N'/Upload/20151209113946_293.png', N'.png', N'图片', CAST(0x0000A5690185F3B0 AS DateTime), CAST(0x0000A5690185F3B0 AS DateTime))
INSERT [dbo].[File_Image] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'a8807959-d888-4770-8b5a-0dd1fd0d925b', N'a8807959-d888-4770-8b5a-0dd1fd0d925b', N'u=2658325281,3631624802&fm=21&gp=0.jpg', N'20151209105718_182.jpg', N'TS_Transaction', N'/Upload/', N'/Upload/20151209105718_182.jpg', N'.jpg', N'图片', CAST(0x0000A569017A4295 AS DateTime), CAST(0x0000A569017A42DA AS DateTime))
INSERT [dbo].[File_Image] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'c7b53e3c-1ecd-438c-889e-113b9d0e3096', N'c7b53e3c-1ecd-438c-889e-113b9d0e3096', N'新建 Microsoft Office Word 2007 文档.docx', N'20160105104504_705.docx', N'TF_PaperFile', N'/Upload/file/', N'/Upload/file/20160105104504_705.docx', N'.docx', N'文件', CAST(0x0000A5840176EDE4 AS DateTime), CAST(0x0000A5840176EDE4 AS DateTime))
INSERT [dbo].[File_Image] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'a2a904dc-f69c-4865-8342-115ec141668e', N'a2a904dc-f69c-4865-8342-115ec141668e', N'u=2658325281,3631624802&fm=21&gp=0.jpg', N'20151209110153_631.jpg', N'TS_Transaction', N'/Upload/', N'/Upload/20151209110153_631.jpg', N'.jpg', N'图片', CAST(0x0000A569017B8CCD AS DateTime), CAST(0x0000A569017B8CCD AS DateTime))
INSERT [dbo].[File_Image] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'38f11c16-8df4-4045-a3d7-1966cf5f0ec6', N'd6807c66-c4fb-4350-83fd-afd19cb82693', N'u=3005229777,3975664085&fm=21&gp=0.jpg', N'20151210121528_601.jpg', N'TS_Shop', N'/Upload/', N'/Upload/20151210121528_601.jpg', N'.jpg', N'图片', CAST(0x0000A56A00043F92 AS DateTime), CAST(0x0000A56A00043F92 AS DateTime))
INSERT [dbo].[File_Image] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'1140457f-b3de-433b-a5af-19afbfd1ee8c', N'1140457f-b3de-433b-a5af-19afbfd1ee8c', N'u=3005229777,3975664085&fm=21&gp=0.jpg', N'20151209112815_122.jpg', N'TS_Transaction', N'/Upload/', N'/Upload/20151209112815_122.jpg', N'.jpg', N'图片', CAST(0x0000A5690182C9EE AS DateTime), CAST(0x0000A5690182C9EE AS DateTime))
INSERT [dbo].[File_Image] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'a5b33713-9a16-4872-be66-1b4b8dc7ca9d', N'c068ca04-f3b4-4895-b561-57785e3b14c6', N'u=3567764886,687894654&fm=21&gp=0.jpg', N'20151209114436_144.jpg', N'TS_Service', N'/Upload/', N'/Upload/20151209114436_144.jpg', N'.jpg', N'图片', CAST(0x0000A5690187478D AS DateTime), CAST(0x0000A5690187478D AS DateTime))
INSERT [dbo].[File_Image] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'f3ba3cb0-8a95-44e7-9e9d-254535fad9d7', N'6627f0b5-3fea-4b9d-83b6-2683fb0c54c2', N'QQ图片20151129103535.jpg', N'20151209114027_769.jpg', N'TS_Service', N'/Upload/', N'/Upload/20151209114027_769.jpg', N'.jpg', N'图片', CAST(0x0000A56901862443 AS DateTime), CAST(0x0000A56901862443 AS DateTime))
INSERT [dbo].[File_Image] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'd52718c5-2047-4298-8a8d-27b1879f2ea5', N'977465ff-b0c9-4556-8254-71a7770ddf1f', N'u=2658325281,3631624802&fm=21&gp=0.jpg', N'20160105102213_356.jpg', N'TF_PaperFile', N'/Upload/', N'/Upload/20160105102213_356.jpg', N'.jpg', N'图片', CAST(0x0000A5840170A749 AS DateTime), CAST(0x0000A5840170A749 AS DateTime))
INSERT [dbo].[File_Image] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'30db267b-5aa0-4133-b975-2cc280135708', N'a7b1a111-4667-4099-b855-8a2958777970', N'u=261243862,3752134608&fm=21&gp=0.jpg', N'20151210121443_572.jpg', N'TS_Shop', N'/Upload/', N'/Upload/20151210121443_572.jpg', N'.jpg', N'图片', CAST(0x0000A56A00040BD3 AS DateTime), CAST(0x0000A56A00040BD3 AS DateTime))
INSERT [dbo].[File_Image] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'ba8c33dc-4cd4-40fb-9d35-2e56105cac94', N'ef2366fe-6a76-4450-8026-91d10c0d5184', N'u=3005229777,3975664085&fm=21&gp=0.jpg', N'20160105103155_564.jpg', N'TF_PaperFile', N'/Upload/file/', N'/Upload/file/20160105103155_564.jpg', N'.jpg', N'文件', CAST(0x0000A584017351B0 AS DateTime), CAST(0x0000A584017351B0 AS DateTime))
INSERT [dbo].[File_Image] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'154311e5-e392-454d-8346-3c271a9fcd90', N'27fd68b9-430b-4b99-b69c-bf2a6af8451c', N'u=2658325281,3631624802&fm=21&gp=0.jpg', N'20151209115931_717.jpg', N'TS_Service', N'/Upload/', N'/Upload/20151209115931_717.jpg', N'.jpg', N'图片', CAST(0x0000A569018B60BA AS DateTime), CAST(0x0000A569018B60BA AS DateTime))
INSERT [dbo].[File_Image] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'6c02de65-3ec1-4fd1-a243-3e570cd531ee', N'977465ff-b0c9-4556-8254-71a7770ddf1f', N'QQ图片20151129103535.jpg', N'20160105100504_167.jpg', N'TF_PaperFile', N'/Upload/file/', N'/Upload/file/20160105100504_167.jpg', N'.jpg', N'文件', CAST(0x0000A584016BF122 AS DateTime), CAST(0x0000A584016BF122 AS DateTime))
INSERT [dbo].[File_Image] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'76726d79-ed60-4d28-accc-413324471fc4', N'5c79c9cd-d01a-40a6-bf81-fa85ebece5df', N'电车e管家软件开发合同.doc', N'20160105101516_588.doc', N'TF_PaperFile', N'/Upload/file/', N'/Upload/file/20160105101516_588.doc', N'.doc', N'文件', CAST(0x0000A584016EBEB2 AS DateTime), CAST(0x0000A584016EBEB2 AS DateTime))
INSERT [dbo].[File_Image] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'57794da5-a70c-4473-bdef-49b393a848d1', N'f0240045-38eb-4887-b3b9-64d528230258', N'u=2658325281,3631624802&fm=21&gp=0.jpg', N'20151209115659_622.jpg', N'TS_Transaction', N'/Upload/', N'/Upload/20151209115659_622.jpg', N'.jpg', N'图片', CAST(0x0000A569018AAE41 AS DateTime), CAST(0x0000A569018AAE41 AS DateTime))
INSERT [dbo].[File_Image] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'dfd64fd6-a225-4121-ba6b-4ac16ae3dbc3', N'972515f4-a5d1-4c06-9a12-030a77a864e2', N'u=2573171573,3165954685&fm=21&gp=0.jpg', N'20151209113447_795.jpg', N'TS_Service', N'/Upload/', N'/Upload/20151209113447_795.jpg', N'.jpg', N'图片', CAST(0x0000A56901849617 AS DateTime), CAST(0x0000A56901849617 AS DateTime))
INSERT [dbo].[File_Image] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'08c03ee8-ca84-48a2-b4e6-4b9a0e636c88', N'08c03ee8-ca84-48a2-b4e6-4b9a0e636c88', N'QQ图片20151129103535.jpg', N'20160105103015_471.jpg', N'TF_PaperFile', N'/Upload/', N'/Upload/20160105103015_471.jpg', N'.jpg', N'图片', CAST(0x0000A5840172DC56 AS DateTime), CAST(0x0000A5840172DC56 AS DateTime))
INSERT [dbo].[File_Image] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'0006a8f0-7a18-4da0-b850-4cf9852fefba', N'0006a8f0-7a18-4da0-b850-4cf9852fefba', N'u=2658325281,3631624802&fm=21&gp=0.jpg', N'20160105075557_968.jpg', N'TF_PaperFile', N'/Upload/', N'/Upload/20160105075557_968.jpg', N'.jpg', N'图片', CAST(0x0000A58401487A6F AS DateTime), CAST(0x0000A58401487A6F AS DateTime))
INSERT [dbo].[File_Image] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'8a8fc456-2f21-4f7b-8404-5ec0cedc8e8d', N'4b71d779-fd28-4848-bcd9-cfd91b6e8367', N'u=3005229777,3975664085&fm=21&gp=0.jpg', N'20151209115743_701.jpg', N'TS_Service', N'/Upload/', N'/Upload/20151209115743_701.jpg', N'.jpg', N'图片', CAST(0x0000A569018AE1DD AS DateTime), CAST(0x0000A569018AE1DD AS DateTime))
INSERT [dbo].[File_Image] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'511a1ef1-0a28-4f4f-9d25-6404db599609', N'4b71d779-fd28-4848-bcd9-cfd91b6e8367', N'u=2658325281,3631624802&fm=21&gp=0.jpg', N'20151209115737_582.jpg', N'TS_Service', N'/Upload/', N'/Upload/20151209115737_582.jpg', N'.jpg', N'图片', CAST(0x0000A569018ADAE1 AS DateTime), CAST(0x0000A569018ADAE1 AS DateTime))
INSERT [dbo].[File_Image] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'a3c2809a-db80-4bdf-8a91-6536abdb8860', N'a3c2809a-db80-4bdf-8a91-6536abdb8860', N'u=3261219742,370558686&fm=21&gp=0.jpg', N'20151209105803_103.jpg', N'TS_Transaction', N'/Upload/', N'/Upload/20151209105803_103.jpg', N'.jpg', N'图片', CAST(0x0000A569017A7F28 AS DateTime), CAST(0x0000A569017A7F28 AS DateTime))
INSERT [dbo].[File_Image] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'bf1c7173-48fb-4980-a593-6c64b240cef3', N'bf1c7173-48fb-4980-a593-6c64b240cef3', N'2015082803481046.jpg', N'20160105052539_314.jpg', N'TF_PaperFile', N'/Upload/', N'/Upload/20160105052539_314.jpg', N'.jpg', N'图片', CAST(0x0000A584011F32EB AS DateTime), CAST(0x0000A584011F32EB AS DateTime))
INSERT [dbo].[File_Image] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'c7496458-56bc-417d-a169-6cacd8096503', N'c7496458-56bc-417d-a169-6cacd8096503', N'20150828034659046.jpg', N'20160105051944_465.jpg', N'TF_PaperFile', N'/Upload/', N'/Upload/20160105051944_465.jpg', N'.jpg', N'图片', CAST(0x0000A584011D8B64 AS DateTime), CAST(0x0000A584011D8E2C AS DateTime))
INSERT [dbo].[File_Image] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'0b6b4cc1-224e-41c8-a06e-8b1b12e8d28b', N'b2acb895-5576-4ceb-a30e-b8c9f04fda74', N'u=2658325281,3631624802&fm=21&gp=0.jpg', N'20151209111354_701.jpg', N'TS_Transaction', N'/Upload/', N'/Upload/20151209111354_701.jpg', N'.jpg', N'图片', CAST(0x0000A569017ED89B AS DateTime), CAST(0x0000A569017ED89B AS DateTime))
INSERT [dbo].[File_Image] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'd3af1f00-a000-4645-b87f-95f1a2054da3', N'f0240045-38eb-4887-b3b9-64d528230258', N'u=3005229777,3975664085&fm=21&gp=0.jpg', N'20151209115706_704.jpg', N'TS_Transaction', N'/Upload/', N'/Upload/20151209115706_704.jpg', N'.jpg', N'图片', CAST(0x0000A569018AB64A AS DateTime), CAST(0x0000A569018AB64A AS DateTime))
INSERT [dbo].[File_Image] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'034318f9-4d67-4338-bf8a-969cefc65217', N'034318f9-4d67-4338-bf8a-969cefc65217', N'u=2658325281,3631624802&fm=21&gp=0.jpg', N'20160105095832_529.jpg', N'TF_PaperFile', N'/Upload/', N'/Upload/20160105095832_529.jpg', N'.jpg', N'图片', CAST(0x0000A584016A266E AS DateTime), CAST(0x0000A584016A266E AS DateTime))
INSERT [dbo].[File_Image] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'be33a4a0-679c-49e1-b091-9eac3e0e0088', N'be33a4a0-679c-49e1-b091-9eac3e0e0088', N'url替换说明.txt', N'20160105100347_347.txt', N'TF_PaperFile', N'/Upload/file/', N'/Upload/file/20160105100347_347.txt', N'.txt', N'文件', CAST(0x0000A584016B97A3 AS DateTime), CAST(0x0000A584016B97A3 AS DateTime))
INSERT [dbo].[File_Image] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'1ddcedc1-aa61-4ea6-94cc-a43be158d88a', N'972515f4-a5d1-4c06-9a12-030a77a864e2', N'u=3567764886,687894654&fm=21&gp=0.jpg', N'20151209113345_668.jpg', N'TS_Service', N'/Upload/', N'/Upload/20151209113345_668.jpg', N'.jpg', N'图片', CAST(0x0000A56901844CA5 AS DateTime), CAST(0x0000A56901844CA5 AS DateTime))
INSERT [dbo].[File_Image] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'0b9ef2b8-25f1-4f47-a2ac-a6a9c79d21dd', N'0b9ef2b8-25f1-4f47-a2ac-a6a9c79d21dd', N'u=2658325281,3631624802&fm=21&gp=0.jpg', N'20151209110227_861.jpg', N'TS_Transaction', N'/Upload/', N'/Upload/20151209110227_861.jpg', N'.jpg', N'图片', CAST(0x0000A569017BB3DB AS DateTime), CAST(0x0000A569017BB3DB AS DateTime))
INSERT [dbo].[File_Image] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'923d334b-90e8-4659-998a-a9d6ca776acf', N'0f46f2d9-e1c2-46cc-8901-50aa64720a83', N'u=3567764886,687894654&fm=21&gp=0.jpg', N'20151210120005_939.jpg', N'TS_Service', N'/Upload/', N'/Upload/20151210120005_939.jpg', N'.jpg', N'图片', CAST(0x0000A56A000006DF AS DateTime), CAST(0x0000A56A000006DF AS DateTime))
INSERT [dbo].[File_Image] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'995386ce-49c6-489c-ba8a-aa1f90470c57', N'27fd68b9-430b-4b99-b69c-bf2a6af8451c', N'u=3005229777,3975664085&fm=21&gp=0.jpg', N'20151209115937_257.jpg', N'TS_Service', N'/Upload/', N'/Upload/20151209115937_257.jpg', N'.jpg', N'图片', CAST(0x0000A569018B6815 AS DateTime), CAST(0x0000A569018B6815 AS DateTime))
INSERT [dbo].[File_Image] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'3bcca6a6-5ca2-456d-a0c2-aab6c8b7fdbd', N'3bcca6a6-5ca2-456d-a0c2-aab6c8b7fdbd', N'20150828034634250.jpg', N'20160105051805_978.jpg', N'TF_PaperFile', N'/Upload/', N'/Upload/20160105051805_978.jpg', N'.jpg', N'图片', CAST(0x0000A584011D1EBF AS DateTime), CAST(0x0000A584011D1EBF AS DateTime))
INSERT [dbo].[File_Image] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'c634142f-180e-4194-b4c1-abf1c9829029', N'977465ff-b0c9-4556-8254-71a7770ddf1f', N'u=261243862,3752134608&fm=21&gp=0.jpg', N'20160105102327_746.jpg', N'TF_PaperFile', N'/Upload/', N'/Upload/20160105102327_746.jpg', N'.jpg', N'图片', CAST(0x0000A5840170FE2B AS DateTime), CAST(0x0000A5840170FE2B AS DateTime))
INSERT [dbo].[File_Image] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'eea0e01a-fb5d-42d7-8750-b3e30fa79d8f', N'27fd68b9-430b-4b99-b69c-bf2a6af8451c', N'u=2573171573,3165954685&fm=21&gp=0.jpg', N'20151209115753_475.jpg', N'TS_Service', N'/Upload/', N'/Upload/20151209115753_475.jpg', N'.jpg', N'图片', CAST(0x0000A569018AEE24 AS DateTime), CAST(0x0000A569018AEE24 AS DateTime))
INSERT [dbo].[File_Image] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'b8b65365-e168-4d8c-9854-beaa81929536', N'b8b65365-e168-4d8c-9854-beaa81929536', N'u=1209623904,4030962403&fm=21&gp=0.jpg', N'20151209105752_285.jpg', N'TS_Transaction', N'/Upload/', N'/Upload/20151209105752_285.jpg', N'.jpg', N'图片', CAST(0x0000A569017A7248 AS DateTime), CAST(0x0000A569017A7248 AS DateTime))
INSERT [dbo].[File_Image] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'1f5f760a-0ab0-459f-a128-c0d5717098ea', N'fd67e07d-9e4c-4afa-8fb3-b5dd004550ec', N'url替换说明.txt', N'20160105103134_224.txt', N'TF_PaperFile', N'/Upload/file/', N'/Upload/file/20160105103134_224.txt', N'.txt', N'文件', CAST(0x0000A5840173382F AS DateTime), CAST(0x0000A5840173382F AS DateTime))
INSERT [dbo].[File_Image] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'6e250303-4976-4058-a3ff-c1abf451336a', N'6e250303-4976-4058-a3ff-c1abf451336a', N'u=2658325281,3631624802&fm=21&gp=0.jpg', N'20151210121055_778.jpg', N'TS_Shop', N'/Upload/', N'/Upload/20151210121055_778.jpg', N'.jpg', N'图片', CAST(0x0000A56A00030065 AS DateTime), CAST(0x0000A56A00030065 AS DateTime))
INSERT [dbo].[File_Image] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'bf2da4a5-061f-42e2-a403-c3fbd4a87aa9', N'bf2da4a5-061f-42e2-a403-c3fbd4a87aa9', N'ac536b166d224f4af4c35f2b0ef790529922d1dc.jpg', N'20160105052139_489.jpg', N'TF_PaperFile', N'/Upload/', N'/Upload/20160105052139_489.jpg', N'.jpg', N'图片', CAST(0x0000A584011E193D AS DateTime), CAST(0x0000A584011E193D AS DateTime))
INSERT [dbo].[File_Image] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'c2b7b5fc-7229-4018-a923-e8aab0c9b0b5', N'a81fb98c-bdc1-4819-8da2-4bca2e218e48', N'044E0A6F6B75AA3D5329EF38B8658F7C.png', N'20151209111508_459.png', N'TS_Transaction', N'/Upload/', N'/Upload/20151209111508_459.png', N'.png', N'图片', CAST(0x0000A569017F3057 AS DateTime), CAST(0x0000A569017F3057 AS DateTime))
INSERT [dbo].[File_Image] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'5f55780d-3897-4707-8bb5-fd0608481e30', N'5f55780d-3897-4707-8bb5-fd0608481e30', N'u=3005229777,3975664085&fm=21&gp=0.jpg', N'20151209110220_379.jpg', N'TS_Transaction', N'/Upload/', N'/Upload/20151209110220_379.jpg', N'.jpg', N'图片', CAST(0x0000A569017BABE3 AS DateTime), CAST(0x0000A569017BABE3 AS DateTime))
INSERT [dbo].[File_Image] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'ccc082b5-ac29-4723-bc81-ffa1341797f2', N'ccc082b5-ac29-4723-bc81-ffa1341797f2', N'u=3005229777,3975664085&fm=21&gp=0.jpg', N'20151209110147_242.jpg', N'TS_Transaction', N'/Upload/', N'/Upload/20151209110147_242.jpg', N'.jpg', N'图片', CAST(0x0000A569017B854F AS DateTime), CAST(0x0000A569017B854F AS DateTime))
/****** Object:  UserDefinedFunction [dbo].[F_PoiDistance]    Script Date: 02/01/2016 23:54:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		谭杰
-- Create date: 20150302
-- Description:	计算百度地图2个坐标之间的距离
-- =============================================
create Function [dbo].[F_PoiDistance](@lat_a float,@lng_a float,@lat_b float,@lng_b float)
	returns float
AS
	Begin
		Declare @pk float
		Declare @a1 float
		Declare @a2 float
		Declare @b1 float
		Declare @b2 float

		Declare @t1 float
		Declare @t2 float
		Declare @t3 float
		Declare @t4 float

		set @pk = 180/3.14169

		set @a1 = @lat_a / @pk
		set @a2 = @lng_a / @pk

		set @b1 = @lat_b / @pk
		set @b2 = @lng_b / @pk

		set @t1 = COS(@a1)*COS(@a2)*COS(@b1)*COS(@b2)
		set @t2 = COS(@a1)*sin(@a2)*COS(@b1)*sin(@b2)
		set @t3 = SIN(@a1)*SIN(@b1)
		set @t4 = ACOS(@t1+@t2+@t3)
		return @t4*6366000
	End
GO
/****** Object:  Table [dbo].[ColumnCharts]    Script Date: 02/01/2016 23:54:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ColumnCharts](
	[ID] [nvarchar](50) NOT NULL,
	[CategoryTableID] [varchar](50) NULL,
	[field] [varchar](200) NULL,
	[title] [nvarchar](200) NULL,
	[rowspan] [int] NULL,
	[width] [int] NULL,
	[colspan] [int] NULL,
	[align] [varchar](200) NULL,
	[resizable] [bit] NULL,
	[hidden] [bit] NULL,
	[formatter] [varchar](max) NULL,
	[checkbox] [bit] NULL,
	[styler] [nvarchar](max) NULL,
	[editor] [varchar](max) NULL,
	[SortNo] [decimal](3, 0) NULL,
	[IsEnable] [bit] NULL,
	[IsNumber] [bit] NULL,
	[NumberAddress] [nvarchar](max) NULL,
	[MergeHeader] [bit] NULL,
	[ParentId] [nvarchar](50) NULL,
	[ISLogpeople] [bit] NULL,
	[ISLoginsector] [bit] NULL,
 CONSTRAINT [PK_COLUMNCHARTS] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [AK_KEY_1_COLUMNCH] UNIQUE NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否启用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ColumnCharts', @level2type=N'COLUMN',@level2name=N'IsEnable'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ColumnCharts', @level2type=N'COLUMN',@level2name=N'IsNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'启动公式计算地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ColumnCharts', @level2type=N'COLUMN',@level2name=N'NumberAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'列头表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ColumnCharts'
GO
INSERT [dbo].[ColumnCharts] ([ID], [CategoryTableID], [field], [title], [rowspan], [width], [colspan], [align], [resizable], [hidden], [formatter], [checkbox], [styler], [editor], [SortNo], [IsEnable], [IsNumber], [NumberAddress], [MergeHeader], [ParentId], [ISLogpeople], [ISLoginsector]) VALUES (N'024fa84c-e2fb-4e21-8cb5-6adb6929bb8a', N'6c349365-2d46-4985-9935-23da01e18960', N'sgbxm', N'市干部姓名', 1, 100, 1, N'center', NULL, NULL, NULL, NULL, NULL, N'type: ''validatebox'', options: { required: true}', CAST(2 AS Decimal(3, 0)), 1, 0, NULL, 0, NULL, 0, 0)
INSERT [dbo].[ColumnCharts] ([ID], [CategoryTableID], [field], [title], [rowspan], [width], [colspan], [align], [resizable], [hidden], [formatter], [checkbox], [styler], [editor], [SortNo], [IsEnable], [IsNumber], [NumberAddress], [MergeHeader], [ParentId], [ISLogpeople], [ISLoginsector]) VALUES (N'0490f401-c193-44c0-9604-aabcac289d24', N'6c349365-2d46-4985-9935-23da01e18960', N'gbssdw', N'干部所属单位', 1, 100, 1, N'center', NULL, NULL, NULL, NULL, NULL, N'type: ''validatebox'', options: { required: true}', CAST(3 AS Decimal(3, 0)), 1, 0, NULL, 0, NULL, 0, 0)
INSERT [dbo].[ColumnCharts] ([ID], [CategoryTableID], [field], [title], [rowspan], [width], [colspan], [align], [resizable], [hidden], [formatter], [checkbox], [styler], [editor], [SortNo], [IsEnable], [IsNumber], [NumberAddress], [MergeHeader], [ParentId], [ISLogpeople], [ISLoginsector]) VALUES (N'08e59a42-d1dc-4cb0-afa3-75b72bde8332', N'6c349365-2d46-4985-9935-23da01e18960', N'dasyjrsj', N'档案室移交人和时间', 1, 100, 1, N'center', NULL, NULL, NULL, NULL, NULL, N'type: ''validatebox'', options: { required: true}', CAST(5 AS Decimal(3, 0)), 1, 0, NULL, 0, NULL, 0, 0)
INSERT [dbo].[ColumnCharts] ([ID], [CategoryTableID], [field], [title], [rowspan], [width], [colspan], [align], [resizable], [hidden], [formatter], [checkbox], [styler], [editor], [SortNo], [IsEnable], [IsNumber], [NumberAddress], [MergeHeader], [ParentId], [ISLogpeople], [ISLoginsector]) VALUES (N'10a950c5-5b32-4324-bbe7-acff98b79cb2', N'970a8d70-a530-483e-a4cf-58c0d934ab18', N'gkksqsrmsj', N'归口科室签收人姓名及时间', 1, 100, 1, N'center', NULL, NULL, NULL, NULL, NULL, N'type: ''validatebox'', options: { required: true}', CAST(5 AS Decimal(3, 0)), 1, 0, NULL, 0, NULL, 0, 0)
INSERT [dbo].[ColumnCharts] ([ID], [CategoryTableID], [field], [title], [rowspan], [width], [colspan], [align], [resizable], [hidden], [formatter], [checkbox], [styler], [editor], [SortNo], [IsEnable], [IsNumber], [NumberAddress], [MergeHeader], [ParentId], [ISLogpeople], [ISLoginsector]) VALUES (N'122583f5-cab1-4f78-b866-20000dc98da3', N'be8cef72-5c83-435e-8397-4138048bd478', N'zcdw', N'转出单位', 1, 100, 1, N'center', NULL, NULL, NULL, NULL, NULL, N'type: ''validatebox'', options: { required: true}', CAST(2 AS Decimal(3, 0)), 1, 0, NULL, 0, NULL, 0, 0)
INSERT [dbo].[ColumnCharts] ([ID], [CategoryTableID], [field], [title], [rowspan], [width], [colspan], [align], [resizable], [hidden], [formatter], [checkbox], [styler], [editor], [SortNo], [IsEnable], [IsNumber], [NumberAddress], [MergeHeader], [ParentId], [ISLogpeople], [ISLoginsector]) VALUES (N'1de72368-29aa-42c7-b3b2-e62f1ab69348', N'c7d96b43-20e2-4630-b927-5e3ea59d21aa', N'bh', N'编号', 1, 100, 1, N'center', NULL, NULL, NULL, NULL, NULL, NULL, CAST(1 AS Decimal(3, 0)), 1, 1, NULL, 0, NULL, 0, 0)
INSERT [dbo].[ColumnCharts] ([ID], [CategoryTableID], [field], [title], [rowspan], [width], [colspan], [align], [resizable], [hidden], [formatter], [checkbox], [styler], [editor], [SortNo], [IsEnable], [IsNumber], [NumberAddress], [MergeHeader], [ParentId], [ISLogpeople], [ISLoginsector]) VALUES (N'1e895fa7-8af8-4f43-aeb3-9738750ac41d', N'c7d96b43-20e2-4630-b927-5e3ea59d21aa', N'gkkssqrxmjsj', N'归口科室签收人姓名及时间', 1, 100, 1, N'center', NULL, NULL, NULL, NULL, NULL, N'type: ''validatebox'', options: { required: true}', CAST(13 AS Decimal(3, 0)), 1, 0, NULL, 0, NULL, 0, 0)
INSERT [dbo].[ColumnCharts] ([ID], [CategoryTableID], [field], [title], [rowspan], [width], [colspan], [align], [resizable], [hidden], [formatter], [checkbox], [styler], [editor], [SortNo], [IsEnable], [IsNumber], [NumberAddress], [MergeHeader], [ParentId], [ISLogpeople], [ISLoginsector]) VALUES (N'2153b6a8-9e58-40e7-a974-7e7d3944eb0f', N'c7d96b43-20e2-4630-b927-5e3ea59d21aa', N'ck', N'ck', 1, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ColumnCharts] ([ID], [CategoryTableID], [field], [title], [rowspan], [width], [colspan], [align], [resizable], [hidden], [formatter], [checkbox], [styler], [editor], [SortNo], [IsEnable], [IsNumber], [NumberAddress], [MergeHeader], [ParentId], [ISLogpeople], [ISLoginsector]) VALUES (N'21aa79a8-26c1-40d2-aae5-5c73f970ddce', N'be8cef72-5c83-435e-8397-4138048bd478', N'clmc', N'材料名称', 1, 200, 1, N'center', NULL, NULL, NULL, NULL, NULL, N'type: ''validatebox'', options: { required: true}', CAST(3 AS Decimal(3, 0)), 1, 0, NULL, 0, NULL, 0, 0)
INSERT [dbo].[ColumnCharts] ([ID], [CategoryTableID], [field], [title], [rowspan], [width], [colspan], [align], [resizable], [hidden], [formatter], [checkbox], [styler], [editor], [SortNo], [IsEnable], [IsNumber], [NumberAddress], [MergeHeader], [ParentId], [ISLogpeople], [ISLoginsector]) VALUES (N'28fd46ca-2933-4c95-bc80-68884ed43d35', N'c7d96b43-20e2-4630-b927-5e3ea59d21aa', N'qsrxmjsj', N'签收人姓名及时间', 1, 100, 1, N'center', NULL, NULL, NULL, NULL, NULL, N'type: ''validatebox'', options: { required: true}', CAST(11 AS Decimal(3, 0)), 1, 0, NULL, 0, NULL, 0, 0)
INSERT [dbo].[ColumnCharts] ([ID], [CategoryTableID], [field], [title], [rowspan], [width], [colspan], [align], [resizable], [hidden], [formatter], [checkbox], [styler], [editor], [SortNo], [IsEnable], [IsNumber], [NumberAddress], [MergeHeader], [ParentId], [ISLogpeople], [ISLoginsector]) VALUES (N'388e614a-6aed-4ce7-8d93-34aee235013a', N'970a8d70-a530-483e-a4cf-58c0d934ab18', N'gkks', N'归口科室', 1, 100, 1, N'center', NULL, NULL, NULL, NULL, NULL, N'type: ''validatebox'', options: { required: true}', CAST(6 AS Decimal(3, 0)), 1, 0, NULL, 0, NULL, 0, 0)
INSERT [dbo].[ColumnCharts] ([ID], [CategoryTableID], [field], [title], [rowspan], [width], [colspan], [align], [resizable], [hidden], [formatter], [checkbox], [styler], [editor], [SortNo], [IsEnable], [IsNumber], [NumberAddress], [MergeHeader], [ParentId], [ISLogpeople], [ISLoginsector]) VALUES (N'397d61e0-0785-4d25-968f-cd9b9036e41d', N'c7d96b43-20e2-4630-b927-5e3ea59d21aa', N'sj', N'时间', 1, 100, 1, N'center', NULL, NULL, NULL, NULL, NULL, N'type: ''validatebox'', options: { required: true}', CAST(2 AS Decimal(3, 0)), 1, 0, NULL, 0, NULL, 0, 0)
INSERT [dbo].[ColumnCharts] ([ID], [CategoryTableID], [field], [title], [rowspan], [width], [colspan], [align], [resizable], [hidden], [formatter], [checkbox], [styler], [editor], [SortNo], [IsEnable], [IsNumber], [NumberAddress], [MergeHeader], [ParentId], [ISLogpeople], [ISLoginsector]) VALUES (N'3bd6eb72-7a4f-4556-b2fc-23721b1616a9', N'be8cef72-5c83-435e-8397-4138048bd478', N'zdfs', N'转递方式', 1, 100, 1, N'center', NULL, NULL, NULL, NULL, NULL, N'type: ''validatebox'', options: { required: true}', CAST(5 AS Decimal(3, 0)), 1, 0, NULL, 0, NULL, 0, 0)
INSERT [dbo].[ColumnCharts] ([ID], [CategoryTableID], [field], [title], [rowspan], [width], [colspan], [align], [resizable], [hidden], [formatter], [checkbox], [styler], [editor], [SortNo], [IsEnable], [IsNumber], [NumberAddress], [MergeHeader], [ParentId], [ISLogpeople], [ISLoginsector]) VALUES (N'475aced1-7f46-49c5-8d24-fb2ebd4bec09', N'be8cef72-5c83-435e-8397-4138048bd478', N'fsys', N'份数/页数', 1, 100, 1, N'center', NULL, NULL, NULL, NULL, NULL, N'type: ''validatebox'', options: { required: true}', CAST(4 AS Decimal(3, 0)), 1, 0, NULL, 0, NULL, 0, 0)
INSERT [dbo].[ColumnCharts] ([ID], [CategoryTableID], [field], [title], [rowspan], [width], [colspan], [align], [resizable], [hidden], [formatter], [checkbox], [styler], [editor], [SortNo], [IsEnable], [IsNumber], [NumberAddress], [MergeHeader], [ParentId], [ISLogpeople], [ISLoginsector]) VALUES (N'4af8f72d-96b4-4eab-8a7b-c1a50a3e0b78', N'be8cef72-5c83-435e-8397-4138048bd478', N'qsrjsj', N'签收人及时间', 1, 100, 1, N'center', NULL, NULL, NULL, NULL, NULL, N'type: ''validatebox'', options: { required: true}', CAST(8 AS Decimal(3, 0)), 1, 0, NULL, 0, NULL, 0, 0)
INSERT [dbo].[ColumnCharts] ([ID], [CategoryTableID], [field], [title], [rowspan], [width], [colspan], [align], [resizable], [hidden], [formatter], [checkbox], [styler], [editor], [SortNo], [IsEnable], [IsNumber], [NumberAddress], [MergeHeader], [ParentId], [ISLogpeople], [ISLoginsector]) VALUES (N'54f3444a-8ad9-4a9b-9ab4-88099ce89767', N'c7d96b43-20e2-4630-b927-5e3ea59d21aa', N'xgxhxgxx', N'需更新或修改的信息', 1, 200, 1, N'center', NULL, NULL, NULL, NULL, NULL, N'type: ''validatebox'', options: { required: true}', CAST(10 AS Decimal(3, 0)), 1, 0, NULL, 0, NULL, 0, 0)
INSERT [dbo].[ColumnCharts] ([ID], [CategoryTableID], [field], [title], [rowspan], [width], [colspan], [align], [resizable], [hidden], [formatter], [checkbox], [styler], [editor], [SortNo], [IsEnable], [IsNumber], [NumberAddress], [MergeHeader], [ParentId], [ISLogpeople], [ISLoginsector]) VALUES (N'58962694-a8d6-4112-b48b-d6bf1a4f5cfb', N'be8cef72-5c83-435e-8397-4138048bd478', N'bh', N'编号', 1, 100, 1, N'center', NULL, NULL, NULL, NULL, NULL, NULL, CAST(1 AS Decimal(3, 0)), 1, 1, NULL, 0, NULL, 0, 0)
INSERT [dbo].[ColumnCharts] ([ID], [CategoryTableID], [field], [title], [rowspan], [width], [colspan], [align], [resizable], [hidden], [formatter], [checkbox], [styler], [editor], [SortNo], [IsEnable], [IsNumber], [NumberAddress], [MergeHeader], [ParentId], [ISLogpeople], [ISLoginsector]) VALUES (N'599ef93f-eee5-47b2-b4a1-ae5de69d3df7', N'c7d96b43-20e2-4630-b927-5e3ea59d21aa', N'gbssdw', N'干部所属单位', 1, 100, 1, N'center', NULL, NULL, NULL, NULL, NULL, N'type: ''validatebox'', options: { required: true}', CAST(9 AS Decimal(3, 0)), 1, 0, NULL, 0, NULL, 0, 0)
INSERT [dbo].[ColumnCharts] ([ID], [CategoryTableID], [field], [title], [rowspan], [width], [colspan], [align], [resizable], [hidden], [formatter], [checkbox], [styler], [editor], [SortNo], [IsEnable], [IsNumber], [NumberAddress], [MergeHeader], [ParentId], [ISLogpeople], [ISLoginsector]) VALUES (N'5dae83cb-0223-4deb-99de-c47a3321531e', N'6c349365-2d46-4985-9935-23da01e18960', N'xgxhxgxx', N'需更新或修改的信息', 1, 300, 1, N'center', NULL, NULL, NULL, NULL, NULL, N'type: ''validatebox'', options: { required: true}', CAST(4 AS Decimal(3, 0)), 1, 0, NULL, 0, NULL, 0, 0)
INSERT [dbo].[ColumnCharts] ([ID], [CategoryTableID], [field], [title], [rowspan], [width], [colspan], [align], [resizable], [hidden], [formatter], [checkbox], [styler], [editor], [SortNo], [IsEnable], [IsNumber], [NumberAddress], [MergeHeader], [ParentId], [ISLogpeople], [ISLoginsector]) VALUES (N'67b43282-9065-4735-b4f1-61e61c71df8d', N'be8cef72-5c83-435e-8397-4138048bd478', N'zdyy', N'转递原因', 1, 100, 1, N'center', NULL, NULL, NULL, NULL, NULL, N'type: ''validatebox'', options: { required: true}', CAST(6 AS Decimal(3, 0)), 1, 0, NULL, 0, NULL, 0, 0)
INSERT [dbo].[ColumnCharts] ([ID], [CategoryTableID], [field], [title], [rowspan], [width], [colspan], [align], [resizable], [hidden], [formatter], [checkbox], [styler], [editor], [SortNo], [IsEnable], [IsNumber], [NumberAddress], [MergeHeader], [ParentId], [ISLogpeople], [ISLoginsector]) VALUES (N'716b337b-7b8d-4982-9e4b-6c030f90c6be', N'50a24a81-bf2c-4cfa-b227-c6b6c665c085', N'qsrjsj', N'签收人及时间', 1, 100, 1, N'center', NULL, NULL, NULL, NULL, NULL, N'type: ''validatebox'', options: { required: true}', CAST(5 AS Decimal(3, 0)), 1, 0, NULL, 0, NULL, 0, 0)
INSERT [dbo].[ColumnCharts] ([ID], [CategoryTableID], [field], [title], [rowspan], [width], [colspan], [align], [resizable], [hidden], [formatter], [checkbox], [styler], [editor], [SortNo], [IsEnable], [IsNumber], [NumberAddress], [MergeHeader], [ParentId], [ISLogpeople], [ISLoginsector]) VALUES (N'75f5bf21-8c40-41d7-a77c-3898b6c3f6b3', N'6c349365-2d46-4985-9935-23da01e18960', N'bh', N'编号', 1, 100, 1, N'center', NULL, NULL, NULL, NULL, NULL, NULL, CAST(1 AS Decimal(3, 0)), 1, 1, NULL, 0, NULL, 0, 0)
INSERT [dbo].[ColumnCharts] ([ID], [CategoryTableID], [field], [title], [rowspan], [width], [colspan], [align], [resizable], [hidden], [formatter], [checkbox], [styler], [editor], [SortNo], [IsEnable], [IsNumber], [NumberAddress], [MergeHeader], [ParentId], [ISLogpeople], [ISLoginsector]) VALUES (N'79ef0ea1-057b-4faa-9f14-2017d3205e02', N'50a24a81-bf2c-4cfa-b227-c6b6c665c085', N'daclmc', N'档案材料名称', 1, 300, 1, N'center', NULL, NULL, NULL, NULL, NULL, N'type: ''validatebox'', options: { required: true}', CAST(3 AS Decimal(3, 0)), 1, 0, NULL, 0, NULL, 0, 0)
INSERT [dbo].[ColumnCharts] ([ID], [CategoryTableID], [field], [title], [rowspan], [width], [colspan], [align], [resizable], [hidden], [formatter], [checkbox], [styler], [editor], [SortNo], [IsEnable], [IsNumber], [NumberAddress], [MergeHeader], [ParentId], [ISLogpeople], [ISLoginsector]) VALUES (N'7ab67f8b-5681-4210-b832-3f0bbd490fc5', N'be8cef72-5c83-435e-8397-4138048bd478', N'zdr', N'转递人', 1, 100, 1, N'center', NULL, NULL, NULL, NULL, NULL, N'type: ''validatebox'', options: { required: true}', CAST(7 AS Decimal(3, 0)), 1, 0, NULL, 0, NULL, 1, 0)
INSERT [dbo].[ColumnCharts] ([ID], [CategoryTableID], [field], [title], [rowspan], [width], [colspan], [align], [resizable], [hidden], [formatter], [checkbox], [styler], [editor], [SortNo], [IsEnable], [IsNumber], [NumberAddress], [MergeHeader], [ParentId], [ISLogpeople], [ISLoginsector]) VALUES (N'7d399382-000c-48b7-8c07-dbf1a8fb8084', N'c7d96b43-20e2-4630-b927-5e3ea59d21aa', N'gkks', N'归口科室', 1, 100, 1, N'center', NULL, NULL, NULL, NULL, NULL, N'type: ''validatebox'', options: { required: true}', CAST(14 AS Decimal(3, 0)), 1, 0, NULL, 0, NULL, 0, 0)
INSERT [dbo].[ColumnCharts] ([ID], [CategoryTableID], [field], [title], [rowspan], [width], [colspan], [align], [resizable], [hidden], [formatter], [checkbox], [styler], [editor], [SortNo], [IsEnable], [IsNumber], [NumberAddress], [MergeHeader], [ParentId], [ISLogpeople], [ISLoginsector]) VALUES (N'7f9e9d24-4304-4d75-b69e-1794d6781750', N'50a24a81-bf2c-4cfa-b227-c6b6c665c085', N'xh', N'序号', 1, 100, 1, N'center', NULL, NULL, NULL, NULL, NULL, N'type: ''validatebox'', options: { required: true}', CAST(2 AS Decimal(3, 0)), 1, 0, NULL, 0, NULL, 0, 0)
INSERT [dbo].[ColumnCharts] ([ID], [CategoryTableID], [field], [title], [rowspan], [width], [colspan], [align], [resizable], [hidden], [formatter], [checkbox], [styler], [editor], [SortNo], [IsEnable], [IsNumber], [NumberAddress], [MergeHeader], [ParentId], [ISLogpeople], [ISLoginsector]) VALUES (N'809b27fd-1522-44cd-aec5-b53f912fd8e4', N'50a24a81-bf2c-4cfa-b227-c6b6c665c085', N'bz', N'备注', 1, 100, 1, N'center', NULL, NULL, NULL, NULL, NULL, N'type: ''validatebox'', options: { required: true}', CAST(6 AS Decimal(3, 0)), 1, 0, NULL, 0, NULL, 0, 0)
INSERT [dbo].[ColumnCharts] ([ID], [CategoryTableID], [field], [title], [rowspan], [width], [colspan], [align], [resizable], [hidden], [formatter], [checkbox], [styler], [editor], [SortNo], [IsEnable], [IsNumber], [NumberAddress], [MergeHeader], [ParentId], [ISLogpeople], [ISLoginsector]) VALUES (N'8227f6dc-80a6-47e9-a0a0-b744993b62fe', N'c7d96b43-20e2-4630-b927-5e3ea59d21aa', N'zdr', N'专递人', 1, 100, 1, N'center', NULL, NULL, NULL, NULL, NULL, N'type: ''validatebox'', options: { required: true}', CAST(5 AS Decimal(3, 0)), 1, 0, NULL, 0, NULL, 0, 0)
INSERT [dbo].[ColumnCharts] ([ID], [CategoryTableID], [field], [title], [rowspan], [width], [colspan], [align], [resizable], [hidden], [formatter], [checkbox], [styler], [editor], [SortNo], [IsEnable], [IsNumber], [NumberAddress], [MergeHeader], [ParentId], [ISLogpeople], [ISLoginsector]) VALUES (N'83ca3f60-55e8-4987-83ee-31352106e66a', N'970a8d70-a530-483e-a4cf-58c0d934ab18', N'gbssdw', N'干部所属单位', 1, 100, 1, N'center', NULL, NULL, NULL, NULL, NULL, N'type: ''validatebox'', options: { required: true}', CAST(2 AS Decimal(3, 0)), 1, 0, NULL, 0, NULL, 0, 0)
INSERT [dbo].[ColumnCharts] ([ID], [CategoryTableID], [field], [title], [rowspan], [width], [colspan], [align], [resizable], [hidden], [formatter], [checkbox], [styler], [editor], [SortNo], [IsEnable], [IsNumber], [NumberAddress], [MergeHeader], [ParentId], [ISLogpeople], [ISLoginsector]) VALUES (N'8803f1c8-ea1f-49c8-ac6f-bcbea4f6f2d5', N'c7d96b43-20e2-4630-b927-5e3ea59d21aa', N'zldw', N'转来单位', 1, 100, 1, N'center', NULL, NULL, NULL, NULL, NULL, N'type: ''validatebox'', options: { required: true}', CAST(4 AS Decimal(3, 0)), 1, 0, NULL, 0, NULL, 0, 0)
INSERT [dbo].[ColumnCharts] ([ID], [CategoryTableID], [field], [title], [rowspan], [width], [colspan], [align], [resizable], [hidden], [formatter], [checkbox], [styler], [editor], [SortNo], [IsEnable], [IsNumber], [NumberAddress], [MergeHeader], [ParentId], [ISLogpeople], [ISLoginsector]) VALUES (N'8e8fe2b3-e424-4a85-8edc-348067b4225b', N'6c349365-2d46-4985-9935-23da01e18960', N'gdks', N'归档科室', 1, 100, 1, N'center', NULL, NULL, NULL, NULL, NULL, N'type: ''validatebox'', options: { required: true}', CAST(7 AS Decimal(3, 0)), 1, 0, NULL, 0, NULL, 0, 0)
INSERT [dbo].[ColumnCharts] ([ID], [CategoryTableID], [field], [title], [rowspan], [width], [colspan], [align], [resizable], [hidden], [formatter], [checkbox], [styler], [editor], [SortNo], [IsEnable], [IsNumber], [NumberAddress], [MergeHeader], [ParentId], [ISLogpeople], [ISLoginsector]) VALUES (N'96bc1925-4a25-4daf-b1e4-a638197dfd45', N'c7d96b43-20e2-4630-b927-5e3ea59d21aa', N'gbykqsrxm', N'干部一科签收人姓名及时间', 1, 100, 1, N'center', NULL, NULL, NULL, NULL, NULL, N'type: ''validatebox'', options: { required: true}', CAST(12 AS Decimal(3, 0)), 1, 0, NULL, 0, NULL, 0, 0)
INSERT [dbo].[ColumnCharts] ([ID], [CategoryTableID], [field], [title], [rowspan], [width], [colspan], [align], [resizable], [hidden], [formatter], [checkbox], [styler], [editor], [SortNo], [IsEnable], [IsNumber], [NumberAddress], [MergeHeader], [ParentId], [ISLogpeople], [ISLoginsector]) VALUES (N'980973a7-5f07-4b2c-bac1-7ee9c1bda296', N'970a8d70-a530-483e-a4cf-58c0d934ab18', N'sggbxm', N'市管干部姓名', 1, 100, 1, N'center', NULL, NULL, NULL, NULL, NULL, N'type: ''validatebox'', options: { required: true}', CAST(1 AS Decimal(3, 0)), 1, 0, NULL, 0, NULL, 0, 0)
INSERT [dbo].[ColumnCharts] ([ID], [CategoryTableID], [field], [title], [rowspan], [width], [colspan], [align], [resizable], [hidden], [formatter], [checkbox], [styler], [editor], [SortNo], [IsEnable], [IsNumber], [NumberAddress], [MergeHeader], [ParentId], [ISLogpeople], [ISLoginsector]) VALUES (N'9baef6f3-2184-4a3d-ad87-7640e3dd9fd1', N'6c349365-2d46-4985-9935-23da01e18960', N'gdssxmjsj', N'归档科室签收人姓名及时间', 1, 200, 1, N'center', NULL, NULL, NULL, NULL, NULL, N'type: ''validatebox'', options: { required: true}', CAST(6 AS Decimal(3, 0)), 1, 0, NULL, 0, NULL, 0, 0)
INSERT [dbo].[ColumnCharts] ([ID], [CategoryTableID], [field], [title], [rowspan], [width], [colspan], [align], [resizable], [hidden], [formatter], [checkbox], [styler], [editor], [SortNo], [IsEnable], [IsNumber], [NumberAddress], [MergeHeader], [ParentId], [ISLogpeople], [ISLoginsector]) VALUES (N'9d445a3c-7988-460b-b39c-c363e9c0cc60', N'6c349365-2d46-4985-9935-23da01e18960', N'bz', N'备注', 1, 100, 1, N'center', NULL, NULL, NULL, NULL, NULL, N'type: ''validatebox'', options: { required: true}', CAST(8 AS Decimal(3, 0)), 1, 0, NULL, 0, NULL, 0, 0)
INSERT [dbo].[ColumnCharts] ([ID], [CategoryTableID], [field], [title], [rowspan], [width], [colspan], [align], [resizable], [hidden], [formatter], [checkbox], [styler], [editor], [SortNo], [IsEnable], [IsNumber], [NumberAddress], [MergeHeader], [ParentId], [ISLogpeople], [ISLoginsector]) VALUES (N'a786839c-a502-458a-bc00-b786b897c0a8', N'970a8d70-a530-483e-a4cf-58c0d934ab18', N'sgxxgxx', N'需更新或修改的信息', 1, 200, 1, N'center', NULL, NULL, NULL, NULL, NULL, N'type: ''validatebox'', options: { required: true}', CAST(3 AS Decimal(3, 0)), 1, 0, NULL, 0, NULL, 0, 0)
INSERT [dbo].[ColumnCharts] ([ID], [CategoryTableID], [field], [title], [rowspan], [width], [colspan], [align], [resizable], [hidden], [formatter], [checkbox], [styler], [editor], [SortNo], [IsEnable], [IsNumber], [NumberAddress], [MergeHeader], [ParentId], [ISLogpeople], [ISLoginsector]) VALUES (N'b87a3f30-e1fe-467c-8122-c02b11b40539', N'c7d96b43-20e2-4630-b927-5e3ea59d21aa', N'fsys', N'份数/页数', 1, 100, 1, N'center', NULL, NULL, NULL, NULL, NULL, N'type: ''validatebox'', options: { required: true}', CAST(6 AS Decimal(3, 0)), 1, 0, NULL, 0, NULL, 0, 0)
INSERT [dbo].[ColumnCharts] ([ID], [CategoryTableID], [field], [title], [rowspan], [width], [colspan], [align], [resizable], [hidden], [formatter], [checkbox], [styler], [editor], [SortNo], [IsEnable], [IsNumber], [NumberAddress], [MergeHeader], [ParentId], [ISLogpeople], [ISLoginsector]) VALUES (N'cc430815-8e25-4201-8bbe-64f23516fda8', N'50a24a81-bf2c-4cfa-b227-c6b6c665c085', N'fsys', N'份数/页数', 1, 100, 1, N'center', NULL, NULL, NULL, NULL, NULL, N'type: ''validatebox'', options: { required: true}', CAST(4 AS Decimal(3, 0)), 1, 0, NULL, 0, NULL, 0, 0)
INSERT [dbo].[ColumnCharts] ([ID], [CategoryTableID], [field], [title], [rowspan], [width], [colspan], [align], [resizable], [hidden], [formatter], [checkbox], [styler], [editor], [SortNo], [IsEnable], [IsNumber], [NumberAddress], [MergeHeader], [ParentId], [ISLogpeople], [ISLoginsector]) VALUES (N'd1fbe5d4-5ea4-4812-b205-cfb0454f1a89', N'50a24a81-bf2c-4cfa-b227-c6b6c665c085', N'zcdw', N'转出单位', 1, 100, 1, N'center', NULL, NULL, NULL, NULL, NULL, N'type: ''validatebox'', options: { required: true}', CAST(1 AS Decimal(3, 0)), 1, 0, NULL, 0, NULL, 0, 0)
INSERT [dbo].[ColumnCharts] ([ID], [CategoryTableID], [field], [title], [rowspan], [width], [colspan], [align], [resizable], [hidden], [formatter], [checkbox], [styler], [editor], [SortNo], [IsEnable], [IsNumber], [NumberAddress], [MergeHeader], [ParentId], [ISLogpeople], [ISLoginsector]) VALUES (N'd3b10f23-9efc-4dc8-a7a9-4d92117e888d', N'970a8d70-a530-483e-a4cf-58c0d934ab18', N'dasyjsj', N'档案室移交人及时间', 1, 100, 1, N'center', NULL, NULL, NULL, NULL, NULL, N'type: ''validatebox'', options: { required: true}', CAST(4 AS Decimal(3, 0)), 1, 0, NULL, 0, NULL, 0, 0)
INSERT [dbo].[ColumnCharts] ([ID], [CategoryTableID], [field], [title], [rowspan], [width], [colspan], [align], [resizable], [hidden], [formatter], [checkbox], [styler], [editor], [SortNo], [IsEnable], [IsNumber], [NumberAddress], [MergeHeader], [ParentId], [ISLogpeople], [ISLoginsector]) VALUES (N'e4eee59d-eded-4d70-aa0d-6184babb171c', N'c7d96b43-20e2-4630-b927-5e3ea59d21aa', N'daclmc', N'档案材料名称', 1, 100, 1, N'center', NULL, NULL, NULL, NULL, NULL, N'type: ''validatebox'', options: { required: true}', CAST(7 AS Decimal(3, 0)), 1, 0, NULL, 0, NULL, 0, 0)
INSERT [dbo].[ColumnCharts] ([ID], [CategoryTableID], [field], [title], [rowspan], [width], [colspan], [align], [resizable], [hidden], [formatter], [checkbox], [styler], [editor], [SortNo], [IsEnable], [IsNumber], [NumberAddress], [MergeHeader], [ParentId], [ISLogpeople], [ISLoginsector]) VALUES (N'f9400094-a28c-4ce1-ac37-88488176b093', N'c7d96b43-20e2-4630-b927-5e3ea59d21aa', N'sggbxm', N'市管干部姓名', 1, 100, 1, N'center', NULL, NULL, NULL, NULL, NULL, N'type: ''validatebox'', options: { required: true}', CAST(8 AS Decimal(3, 0)), 1, 0, NULL, 0, NULL, 0, 0)
/****** Object:  Table [dbo].[CategoryTable]    Script Date: 02/01/2016 23:54:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CategoryTable](
	[ID] [varchar](50) NOT NULL,
	[UserTableName] [varchar](300) NULL,
	[ChineseName] [varchar](300) NULL,
	[TableProperties] [varchar](300) NULL,
	[Column_5] [datetime] NULL,
	[Column_6] [bit] NULL,
	[Column_7] [varchar](300) NULL,
	[Column_8] [varchar](300) NULL,
	[Column_9] [varchar](300) NULL,
	[Column_10] [int] NULL,
 CONSTRAINT [PK_CATEGORYTABLE] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [AK_KEY_1_CATEGORY] UNIQUE NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'表名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CategoryTable', @level2type=N'COLUMN',@level2name=N'UserTableName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CategoryTable', @level2type=N'COLUMN',@level2name=N'ChineseName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'表属性' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CategoryTable', @level2type=N'COLUMN',@level2name=N'TableProperties'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类别表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CategoryTable'
GO
INSERT [dbo].[CategoryTable] ([ID], [UserTableName], [ChineseName], [TableProperties], [Column_5], [Column_6], [Column_7], [Column_8], [Column_9], [Column_10]) VALUES (N'50a24a81-bf2c-4cfa-b227-c6b6c665c085', N'lsdaclqsb', N'零散档案材料签收表', N'无', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[CategoryTable] ([ID], [UserTableName], [ChineseName], [TableProperties], [Column_5], [Column_6], [Column_7], [Column_8], [Column_9], [Column_10]) VALUES (N'6c349365-2d46-4985-9935-23da01e18960', N'sgbxxgxxg2', N'市干部信息更新修改表', N'（签收后请交换一份回干部档案室）（归口）', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[CategoryTable] ([ID], [UserTableName], [ChineseName], [TableProperties], [Column_5], [Column_6], [Column_7], [Column_8], [Column_9], [Column_10]) VALUES (N'970a8d70-a530-483e-a4cf-58c0d934ab18', N'sggbxxxg', N'市管干部信息更新修改表', N'(签收后请交换一份回干部档案室)', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[CategoryTable] ([ID], [UserTableName], [ChineseName], [TableProperties], [Column_5], [Column_6], [Column_7], [Column_8], [Column_9], [Column_10]) VALUES (N'be8cef72-5c83-435e-8397-4138048bd478', N'lsdaclzdj', N'零散档案材料转递登记表', N'无', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[CategoryTable] ([ID], [UserTableName], [ChineseName], [TableProperties], [Column_5], [Column_6], [Column_7], [Column_8], [Column_9], [Column_10]) VALUES (N'c7d96b43-20e2-4630-b927-5e3ea59d21aa', N'sggbdaclsrjxx', N'市管干部档案材料收人及信息更新登记表', N'无', NULL, NULL, NULL, NULL, NULL, NULL)
/****** Object:  Table [dbo].[Bascharvalue]    Script Date: 02/01/2016 23:54:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Bascharvalue](
	[CharId] [varchar](40) NOT NULL,
	[CharTypeId] [varchar](40) NULL,
	[CharName] [varchar](200) NULL,
	[Is_Delete] [bit] NULL,
	[Status] [bit] NULL,
	[SerialNo] [int] NULL,
	[CharNumber] [varchar](40) NULL,
 CONSTRAINT [PK_BASCHARVALUE] PRIMARY KEY NONCLUSTERED 
(
	[CharId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Baschartype]    Script Date: 02/01/2016 23:54:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Baschartype](
	[CharTypeId] [varchar](40) NOT NULL,
	[CharTypeName] [varchar](200) NULL,
	[CharTypeNum] [varchar](40) NULL,
	[Is_Delete] [bit] NULL,
	[Status] [bit] NULL,
	[SerialNo] [int] NULL,
	[IsVisible] [bit] NULL,
 CONSTRAINT [PK_BASCHARTYPE] PRIMARY KEY CLUSTERED 
(
	[CharTypeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Baschartype] ([CharTypeId], [CharTypeName], [CharTypeNum], [Is_Delete], [Status], [SerialNo], [IsVisible]) VALUES (N'1233werwer', N'Year', N'2016', NULL, NULL, NULL, NULL)
INSERT [dbo].[Baschartype] ([CharTypeId], [CharTypeName], [CharTypeNum], [Is_Delete], [Status], [SerialNo], [IsVisible]) VALUES (N'ewqeqqweeqweqwe', N'liushui', N'01', NULL, NULL, NULL, NULL)
/****** Object:  View [dbo].[V_UserRole]    Script Date: 02/01/2016 23:54:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[V_UserRole]
AS
SELECT     dbo.RMS_User.Id, dbo.RMS_User.LoginName, dbo.RMS_User.TrueName, dbo.RMS_User.Password, dbo.RMS_User.CreateTime, dbo.RMS_User.ModifyTime, 
                      dbo.RMS_User.DepartmentId, dbo.RMS_UserRole.RoleId, dbo.RMS_Role.RoleName, dbo.RMS_User.UserType, dbo.RMS_User.Phone, dbo.RMS_User.Tel
FROM         dbo.RMS_User LEFT OUTER JOIN
                      dbo.RMS_UserRole ON dbo.RMS_User.Id = dbo.RMS_UserRole.UserId LEFT OUTER JOIN
                      dbo.RMS_Role ON dbo.RMS_UserRole.RoleId = dbo.RMS_Role.Id
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "RMS_UserRole"
            Begin Extent = 
               Top = 7
               Left = 354
               Bottom = 236
               Right = 496
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "RMS_Role"
            Begin Extent = 
               Top = 10
               Left = 608
               Bottom = 250
               Right = 752
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "RMS_User"
            Begin Extent = 
               Top = 1
               Left = 141
               Bottom = 199
               Right = 297
            End
            DisplayFlags = 280
            TopColumn = 1
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_UserRole'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_UserRole'
GO
/****** Object:  View [dbo].[v_Sys_CityArea]    Script Date: 02/01/2016 23:54:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[v_Sys_CityArea]
AS
SELECT     dbo.Sys_CityArea.Id, dbo.Sys_CityArea.ParentId, dbo.Sys_CityArea.OrderNo, dbo.Sys_CityArea.Name, dbo.Sys_CityArea.ValueName, dbo.Sys_CityArea.Remarks, 
                      dbo.Sys_CityArea.Icon, dbo.Sys_CityArea.AreaTypes, dbo.SysItem.ItemName AS AreaTypesName
FROM         dbo.Sys_CityArea LEFT OUTER JOIN
                      dbo.SysItem ON dbo.Sys_CityArea.AreaTypes = dbo.SysItem.ItemValue
WHERE     (dbo.SysItem.ItemType = 'AreaTypes')
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Sys_CityArea"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 258
               Right = 180
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "SysItem"
            Begin Extent = 
               Top = 24
               Left = 550
               Bottom = 291
               Right = 694
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_Sys_CityArea'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_Sys_CityArea'
GO
/****** Object:  View [dbo].[V_RoleManus]    Script Date: 02/01/2016 23:54:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[V_RoleManus]
AS
SELECT     dbo.RMS_RoleManus.ManuId, dbo.RMS_RoleManus.RoleId, dbo.RMS_Menus.ParentManuId, dbo.RMS_Menus.Remarks, dbo.RMS_Menus.OrderNo, 
                      dbo.RMS_Menus.ManuName, dbo.RMS_Menus.URL, dbo.RMS_Menus.IsShow, dbo.RMS_Menus.IsEnable, dbo.RMS_Menus.Icon, dbo.RMS_Menus.MIcon
FROM         dbo.RMS_Menus INNER JOIN
                      dbo.RMS_RoleManus ON dbo.RMS_Menus.Id = dbo.RMS_RoleManus.ManuId
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "RMS_RoleManus"
            Begin Extent = 
               Top = 1
               Left = 156
               Bottom = 256
               Right = 298
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "RMS_Menus"
            Begin Extent = 
               Top = 3
               Left = 386
               Bottom = 262
               Right = 543
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_RoleManus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_RoleManus'
GO
/****** Object:  View [dbo].[V_RoleManuButtons]    Script Date: 02/01/2016 23:54:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[V_RoleManuButtons]
AS
SELECT     dbo.RMS_RoleManuButtons.RoleId, dbo.RMS_MenuButtons.ManuId, dbo.RMS_MenuButtons.OrderNo, dbo.RMS_Buttons.Icon, dbo.RMS_Buttons.Remarks, 
                      dbo.RMS_Buttons.CreateTime, dbo.RMS_Buttons.ModifyTime, dbo.RMS_Buttons.ValueName, dbo.RMS_Buttons.FunctionName, dbo.RMS_Buttons.ButtonName, 
                      dbo.RMS_Buttons.Id
FROM         dbo.RMS_RoleManuButtons INNER JOIN
                      dbo.RMS_MenuButtons ON dbo.RMS_RoleManuButtons.MenuButtonsId = dbo.RMS_MenuButtons.Id INNER JOIN
                      dbo.RMS_Buttons ON dbo.RMS_MenuButtons.ButtonId = dbo.RMS_Buttons.Id
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "RMS_RoleManuButtons"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 257
               Right = 237
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "RMS_MenuButtons"
            Begin Extent = 
               Top = 13
               Left = 258
               Bottom = 266
               Right = 400
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "RMS_Buttons"
            Begin Extent = 
               Top = 6
               Left = 438
               Bottom = 275
               Right = 595
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_RoleManuButtons'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_RoleManuButtons'
GO
/****** Object:  View [dbo].[V_Role]    Script Date: 02/01/2016 23:54:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[V_Role]
AS
SELECT     dbo.RMS_Role.Id, dbo.RMS_Role.RoleName, dbo.RMS_Role.Remarks, dbo.RMS_Role.CreateBy, dbo.RMS_Role.CreateTime, dbo.RMS_Role.ModifyBy, 
                      dbo.RMS_Role.ModifyTime, dbo.RMS_Role.RoleTypes, dbo.SysItem.ItemName AS RoleTypesName
FROM         dbo.RMS_Role LEFT OUTER JOIN
                      dbo.SysItem ON dbo.RMS_Role.RoleTypes = dbo.SysItem.ItemValue
WHERE     (dbo.SysItem.ItemType = 'RoleTypes')
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "RMS_Role"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 182
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "SysItem"
            Begin Extent = 
               Top = 6
               Left = 220
               Bottom = 125
               Right = 364
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_Role'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_Role'
GO
/****** Object:  View [dbo].[V_MenuButtons]    Script Date: 02/01/2016 23:54:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[V_MenuButtons]
AS
SELECT     dbo.RMS_MenuButtons.ManuId, dbo.RMS_MenuButtons.OrderNo, dbo.RMS_Buttons.Id, dbo.RMS_Buttons.ButtonName, dbo.RMS_Buttons.Icon, 
                      dbo.RMS_Buttons.Remarks, dbo.RMS_Buttons.CreateTime, dbo.RMS_Buttons.ModifyTime, dbo.RMS_Buttons.ValueName, 
                      dbo.RMS_MenuButtons.Id AS MenuButtonsId, dbo.RMS_Buttons.FunctionName
FROM         dbo.RMS_MenuButtons INNER JOIN
                      dbo.RMS_Buttons ON dbo.RMS_MenuButtons.ButtonId = dbo.RMS_Buttons.Id
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[33] 4[28] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "RMS_MenuButtons"
            Begin Extent = 
               Top = 32
               Left = 505
               Bottom = 252
               Right = 749
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "RMS_Buttons"
            Begin Extent = 
               Top = 21
               Left = 174
               Bottom = 248
               Right = 322
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_MenuButtons'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_MenuButtons'
GO
/****** Object:  Default [DF__SystemPar__Creat__44FF419A]    Script Date: 02/01/2016 23:54:03 ******/
ALTER TABLE [dbo].[SystemParameters] ADD  DEFAULT (getdate()) FOR [CreateOn]
GO
/****** Object:  Default [DF__SystemLog__Recor__300424B4]    Script Date: 02/01/2016 23:54:03 ******/
ALTER TABLE [dbo].[SystemLogs] ADD  CONSTRAINT [DF__SystemLog__Recor__300424B4]  DEFAULT (getdate()) FOR [Position]
GO
/****** Object:  Default [DF_SysItem_OrderID]    Script Date: 02/01/2016 23:54:03 ******/
ALTER TABLE [dbo].[SysItem] ADD  CONSTRAINT [DF_SysItem_OrderID]  DEFAULT ((10)) FOR [OrderID]
GO
/****** Object:  Default [DF_SysItem_isValid]    Script Date: 02/01/2016 23:54:03 ******/
ALTER TABLE [dbo].[SysItem] ADD  CONSTRAINT [DF_SysItem_isValid]  DEFAULT ((1)) FOR [isValid]
GO
/****** Object:  Default [DF_SysItem_isDeleted]    Script Date: 02/01/2016 23:54:03 ******/
ALTER TABLE [dbo].[SysItem] ADD  CONSTRAINT [DF_SysItem_isDeleted]  DEFAULT ((1)) FOR [isDeleted]
GO
/****** Object:  Default [DF__Sys_Dicti__Order__4E88ABD4]    Script Date: 02/01/2016 23:54:03 ******/
ALTER TABLE [dbo].[Sys_Dictionary] ADD  CONSTRAINT [DF__Sys_Dicti__Order__4E88ABD4]  DEFAULT ((0)) FOR [OrderNo]
GO
/****** Object:  Default [DF_Sys_CityArea_OrderNo]    Script Date: 02/01/2016 23:54:03 ******/
ALTER TABLE [dbo].[Sys_CityArea] ADD  CONSTRAINT [DF_Sys_CityArea_OrderNo]  DEFAULT ((0)) FOR [OrderNo]
GO
/****** Object:  Default [DF__RMS_User__Create__4BAC3F29]    Script Date: 02/01/2016 23:54:04 ******/
ALTER TABLE [dbo].[RMS_User] ADD  DEFAULT (getdate()) FOR [CreateTime]
GO
/****** Object:  Default [DF__RMS_Role__Create__4CA06362]    Script Date: 02/01/2016 23:54:04 ******/
ALTER TABLE [dbo].[RMS_Role] ADD  DEFAULT (getdate()) FOR [CreateTime]
GO
/****** Object:  Default [DF__RMS_Menus__IsSho__4D94879B]    Script Date: 02/01/2016 23:54:04 ******/
ALTER TABLE [dbo].[RMS_Menus] ADD  DEFAULT ('true') FOR [IsShow]
GO
/****** Object:  Default [DF__RMS_Menus__IsEna__4E88ABD4]    Script Date: 02/01/2016 23:54:04 ******/
ALTER TABLE [dbo].[RMS_Menus] ADD  DEFAULT ('true') FOR [IsEnable]
GO
/****** Object:  Default [DF__RMS_Menus__Creat__4F7CD00D]    Script Date: 02/01/2016 23:54:04 ******/
ALTER TABLE [dbo].[RMS_Menus] ADD  DEFAULT (getdate()) FOR [CreateTime]
GO
/****** Object:  Default [DF__RMS_Depar__Order__29572725]    Script Date: 02/01/2016 23:54:04 ******/
ALTER TABLE [dbo].[RMS_Department] ADD  CONSTRAINT [DF__RMS_Depar__Order__29572725]  DEFAULT ((0)) FOR [OrderNo]
GO
/****** Object:  Default [DF__RMS_Butto__Creat__5165187F]    Script Date: 02/01/2016 23:54:04 ******/
ALTER TABLE [dbo].[RMS_Buttons] ADD  DEFAULT (getdate()) FOR [CreateTime]
GO
