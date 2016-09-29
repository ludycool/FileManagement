USE [FileManagementDB]
GO

/****** Object:  Table [dbo].[Baschartype]    Script Date: 01/26/2016 12:49:13 ******/
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


USE [FileManagementDB]
GO

/****** Object:  Table [dbo].[Bascharvalue]    Script Date: 01/26/2016 12:49:09 ******/
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


USE [FileManagementDB]
GO

/****** Object:  Table [dbo].[CategoryTable]    Script Date: 01/26/2016 12:49:31 ******/
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

USE [FileManagementDB]
GO

/****** Object:  Table [dbo].[ColumnCharts]    Script Date: 01/26/2016 12:49:42 ******/
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



