USE [FileManagementDB]
GO
/****** Object:  Table [dbo].[TF_Units]    Script Date: 03/28/2016 09:50:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TF_Units](
	[Id] [uniqueidentifier] NOT NULL,
	[TName] [nvarchar](50) NULL,
	[Category] [nvarchar](20) NULL,
	[TCode] [nvarchar](50) NULL,
	[remarks] [nvarchar](200) NULL,
	[CreateMan] [nvarchar](40) NULL,
	[CreateTime] [datetime] NULL,
	[UpdateTime] [datetime] NULL,
	[isValid] [bit] NULL,
	[isDeleted] [bit] NULL,
 CONSTRAINT [PK_TF_UNITS] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_Units', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_Units', @level2type=N'COLUMN',@level2name=N'TName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_Units', @level2type=N'COLUMN',@level2name=N'Category'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_Units', @level2type=N'COLUMN',@level2name=N'TCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_Units', @level2type=N'COLUMN',@level2name=N'remarks'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_Units', @level2type=N'COLUMN',@level2name=N'CreateMan'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_Units', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_Units', @level2type=N'COLUMN',@level2name=N'UpdateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否有效' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_Units', @level2type=N'COLUMN',@level2name=N'isValid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否删除' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_Units', @level2type=N'COLUMN',@level2name=N'isDeleted'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_Units'
GO
INSERT [dbo].[TF_Units] ([Id], [TName], [Category], [TCode], [remarks], [CreateMan], [CreateTime], [UpdateTime], [isValid], [isDeleted]) VALUES (N'808e39bf-b99d-4a1f-b9fe-4c8b5bc180c5', N'宣传部', N'0301', N'03232', N'23需要枯', N'admin', CAST(0x0000A5A30004D65E AS DateTime), CAST(0x0000A5A30004D65E AS DateTime), 1, 0)
INSERT [dbo].[TF_Units] ([Id], [TName], [Category], [TCode], [remarks], [CreateMan], [CreateTime], [UpdateTime], [isValid], [isDeleted]) VALUES (N'08682a57-7832-4002-868d-e71b9ac877dc', N'组织部', N'0301', N'0203023', N'2323', N'admin', CAST(0x0000A5A2016C9F5C AS DateTime), CAST(0x0000A5A2016CA4C7 AS DateTime), 1, 0)
/****** Object:  Table [dbo].[TF_PersonnelFile_Units_Out]    Script Date: 03/28/2016 09:50:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TF_PersonnelFile_Units_Out](
	[Id] [uniqueidentifier] NOT NULL,
	[PersonnelFileId] [uniqueidentifier] NULL,
	[UnitsId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_TF_PERSONNELFILE_UNITS_OUT] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PersonnelFile_Units_Out', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'人员档案Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PersonnelFile_Units_Out', @level2type=N'COLUMN',@level2name=N'PersonnelFileId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单位Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PersonnelFile_Units_Out', @level2type=N'COLUMN',@level2name=N'UnitsId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'人员档案-可转出单位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PersonnelFile_Units_Out'
GO
INSERT [dbo].[TF_PersonnelFile_Units_Out] ([Id], [PersonnelFileId], [UnitsId]) VALUES (N'fed54ca5-0d5b-4b7a-8c16-96253226355d', N'ab1c7866-e6e7-4a78-a6a1-2d112ce18206', N'808e39bf-b99d-4a1f-b9fe-4c8b5bc180c5')
/****** Object:  Table [dbo].[TF_PersonnelFile_Units_In]    Script Date: 03/28/2016 09:50:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TF_PersonnelFile_Units_In](
	[Id] [uniqueidentifier] NOT NULL,
	[PersonnelFileId] [uniqueidentifier] NULL,
	[UnitsId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_TF_PERSONNELFILE_UNITS_IN] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PersonnelFile_Units_In', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'人员档案Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PersonnelFile_Units_In', @level2type=N'COLUMN',@level2name=N'PersonnelFileId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单位Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PersonnelFile_Units_In', @level2type=N'COLUMN',@level2name=N'UnitsId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'人员档案-可转入单位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PersonnelFile_Units_In'
GO
INSERT [dbo].[TF_PersonnelFile_Units_In] ([Id], [PersonnelFileId], [UnitsId]) VALUES (N'8793a924-d3ce-43e1-95d8-3028c1a20050', N'3c62f30c-9edd-4c68-9b66-23a8f033a155', N'808e39bf-b99d-4a1f-b9fe-4c8b5bc180c5')
INSERT [dbo].[TF_PersonnelFile_Units_In] ([Id], [PersonnelFileId], [UnitsId]) VALUES (N'2985361b-4271-4783-a891-384fc3e6bdd4', N'ab1c7866-e6e7-4a78-a6a1-2d112ce18206', N'808e39bf-b99d-4a1f-b9fe-4c8b5bc180c5')
INSERT [dbo].[TF_PersonnelFile_Units_In] ([Id], [PersonnelFileId], [UnitsId]) VALUES (N'2f9afb90-b243-4e15-ab23-997d2cd118f5', N'3c62f30c-9edd-4c68-9b66-23a8f033a155', N'08682a57-7832-4002-868d-e71b9ac877dc')
INSERT [dbo].[TF_PersonnelFile_Units_In] ([Id], [PersonnelFileId], [UnitsId]) VALUES (N'34a8cd85-9ca4-458d-88fe-e271a5fa2f30', N'acbfa157-3815-4c19-9e22-4476ebe10af3', N'08682a57-7832-4002-868d-e71b9ac877dc')
/****** Object:  Table [dbo].[TF_PersonnelFile_Transmitting_Out_Item]    Script Date: 03/28/2016 09:50:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TF_PersonnelFile_Transmitting_Out_Item](
	[Id] [uniqueidentifier] NOT NULL,
	[OwnerId] [uniqueidentifier] NULL,
	[PersonnelFileId] [uniqueidentifier] NULL,
	[RealName] [nvarchar](50) NULL,
	[Units] [nvarchar](100) NULL,
	[Duties] [nvarchar](20) NULL,
	[Reasons] [nvarchar](100) NULL,
	[OriginalCount] [int] NULL,
	[DuplicateCount] [int] NULL,
	[MaterialCount] [int] NULL,
 CONSTRAINT [PK_TF_PERSONNELFILE_TRANSMITTI_Out_Item] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PersonnelFile_Transmitting_Out_Item', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'转递单Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PersonnelFile_Transmitting_Out_Item', @level2type=N'COLUMN',@level2name=N'OwnerId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'人员档案Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PersonnelFile_Transmitting_Out_Item', @level2type=N'COLUMN',@level2name=N'PersonnelFileId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PersonnelFile_Transmitting_Out_Item', @level2type=N'COLUMN',@level2name=N'RealName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PersonnelFile_Transmitting_Out_Item', @level2type=N'COLUMN',@level2name=N'Units'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'职务' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PersonnelFile_Transmitting_Out_Item', @level2type=N'COLUMN',@level2name=N'Duties'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'转递原因' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PersonnelFile_Transmitting_Out_Item', @level2type=N'COLUMN',@level2name=N'Reasons'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'正本（卷）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PersonnelFile_Transmitting_Out_Item', @level2type=N'COLUMN',@level2name=N'OriginalCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'副本（卷）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PersonnelFile_Transmitting_Out_Item', @level2type=N'COLUMN',@level2name=N'DuplicateCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'材料（份）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PersonnelFile_Transmitting_Out_Item', @level2type=N'COLUMN',@level2name=N'MaterialCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'人员档案转递单（出）项' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PersonnelFile_Transmitting_Out_Item'
GO
INSERT [dbo].[TF_PersonnelFile_Transmitting_Out_Item] ([Id], [OwnerId], [PersonnelFileId], [RealName], [Units], [Duties], [Reasons], [OriginalCount], [DuplicateCount], [MaterialCount]) VALUES (N'0b53a650-6eda-4b68-8963-32354681b24a', N'f8daa27b-7b1f-4fa9-afab-873821353c06', N'27c01028-d5f1-4c70-abbf-47401414f1b8', N'卢小帅', N'软件', N'程序员', N'1', 2, 3, 4)
INSERT [dbo].[TF_PersonnelFile_Transmitting_Out_Item] ([Id], [OwnerId], [PersonnelFileId], [RealName], [Units], [Duties], [Reasons], [OriginalCount], [DuplicateCount], [MaterialCount]) VALUES (N'832a5004-a047-477e-9215-3822a57caaa0', N'bd588243-1a5e-49bf-9098-c1e78739f74b', N'dd240f8c-c302-4b08-b99c-0082a061de5e', N'张三', N'组织部', N'部长', N'1', 3, 4, 5)
INSERT [dbo].[TF_PersonnelFile_Transmitting_Out_Item] ([Id], [OwnerId], [PersonnelFileId], [RealName], [Units], [Duties], [Reasons], [OriginalCount], [DuplicateCount], [MaterialCount]) VALUES (N'07459afc-0e5f-4ba1-87ec-a71b39e35904', N'f8daa27b-7b1f-4fa9-afab-873821353c06', N'3c62f30c-9edd-4c68-9b66-23a8f033a155', N'陈光', N'开发部', N'程序员', N'1', 2, 3, 4)
INSERT [dbo].[TF_PersonnelFile_Transmitting_Out_Item] ([Id], [OwnerId], [PersonnelFileId], [RealName], [Units], [Duties], [Reasons], [OriginalCount], [DuplicateCount], [MaterialCount]) VALUES (N'e796d252-6d69-4745-b47d-b9435d73da5c', N'bd588243-1a5e-49bf-9098-c1e78739f74b', N'4807d449-1e13-45eb-a5ba-e7be92c32328', N'克罗斯', N'AC米兰', N'员球', N'1', 2, 3, 4)
/****** Object:  Table [dbo].[TF_PersonnelFile_Transmitting_Out]    Script Date: 03/28/2016 09:50:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TF_PersonnelFile_Transmitting_Out](
	[Id] [uniqueidentifier] NOT NULL,
	[TransmittingMan] [nvarchar](50) NULL,
	[Series] [nvarchar](50) NULL,
	[Nos] [nvarchar](50) NULL,
	[OriginalCount] [int] NULL,
	[DuplicateCount] [int] NULL,
	[MaterialCount] [int] NULL,
	[FistName] [nvarchar](50) NULL,
	[NumberS] [int] NULL,
	[CreateManId] [uniqueidentifier] NULL,
	[CreateMan] [nvarchar](50) NULL,
	[States] [int] NULL,
	[TransmittingTime] [datetime] NULL,
	[CreateTime] [datetime] NULL,
	[isDeleted] [bit] NULL,
 CONSTRAINT [PK_TF_PERSONNELFILE_TRANSMITTI_Out] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PersonnelFile_Transmitting_Out', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'转递人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PersonnelFile_Transmitting_Out', @level2type=N'COLUMN',@level2name=N'TransmittingMan'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PersonnelFile_Transmitting_Out', @level2type=N'COLUMN',@level2name=N'Series'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PersonnelFile_Transmitting_Out', @level2type=N'COLUMN',@level2name=N'Nos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'正本（卷）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PersonnelFile_Transmitting_Out', @level2type=N'COLUMN',@level2name=N'OriginalCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'副本（卷）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PersonnelFile_Transmitting_Out', @level2type=N'COLUMN',@level2name=N'DuplicateCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'材料（份）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PersonnelFile_Transmitting_Out', @level2type=N'COLUMN',@level2name=N'MaterialCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'第一个人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PersonnelFile_Transmitting_Out', @level2type=N'COLUMN',@level2name=N'FistName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'人数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PersonnelFile_Transmitting_Out', @level2type=N'COLUMN',@level2name=N'NumberS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PersonnelFile_Transmitting_Out', @level2type=N'COLUMN',@level2name=N'CreateManId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PersonnelFile_Transmitting_Out', @level2type=N'COLUMN',@level2name=N'CreateMan'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态（2已转出，未操作0，关闭-1）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PersonnelFile_Transmitting_Out', @level2type=N'COLUMN',@level2name=N'States'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'转递时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PersonnelFile_Transmitting_Out', @level2type=N'COLUMN',@level2name=N'TransmittingTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PersonnelFile_Transmitting_Out', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否删除' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PersonnelFile_Transmitting_Out', @level2type=N'COLUMN',@level2name=N'isDeleted'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'人员档案转递单（出）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PersonnelFile_Transmitting_Out'
GO
INSERT [dbo].[TF_PersonnelFile_Transmitting_Out] ([Id], [TransmittingMan], [Series], [Nos], [OriginalCount], [DuplicateCount], [MaterialCount], [FistName], [NumberS], [CreateManId], [CreateMan], [States], [TransmittingTime], [CreateTime], [isDeleted]) VALUES (N'f8daa27b-7b1f-4fa9-afab-873821353c06', N'陈风', N'1', N'2', 4, 6, 8, N'卢小帅', 2, N'079654f1-5033-4207-8919-9a8bc3212735', N'admin', 0, CAST(0x0000A5D700000000 AS DateTime), CAST(0x0000A5D700000435 AS DateTime), 0)
INSERT [dbo].[TF_PersonnelFile_Transmitting_Out] ([Id], [TransmittingMan], [Series], [Nos], [OriginalCount], [DuplicateCount], [MaterialCount], [FistName], [NumberS], [CreateManId], [CreateMan], [States], [TransmittingTime], [CreateTime], [isDeleted]) VALUES (N'bd588243-1a5e-49bf-9098-c1e78739f74b', N'1212', N'112', N'12', 5, 7, 9, N'克罗斯', 2, N'079654f1-5033-4207-8919-9a8bc3212735', N'admin', 0, CAST(0x0000A5D700015F90 AS DateTime), CAST(0x0000A5D70001ADE1 AS DateTime), 0)
/****** Object:  Table [dbo].[TF_PersonnelFile_Transmitting_In_Item]    Script Date: 03/28/2016 09:50:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TF_PersonnelFile_Transmitting_In_Item](
	[Id] [uniqueidentifier] NOT NULL,
	[OwnerId] [uniqueidentifier] NULL,
	[PersonnelFileId] [uniqueidentifier] NULL,
	[RealName] [nvarchar](50) NULL,
	[Units] [nvarchar](100) NULL,
	[Duties] [nvarchar](20) NULL,
	[Reasons] [nvarchar](100) NULL,
	[OriginalCount] [int] NULL,
	[DuplicateCount] [int] NULL,
	[MaterialCount] [int] NULL,
 CONSTRAINT [PK_TF_PERSONNELFILE_TRANSMITTI_In_Item] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PersonnelFile_Transmitting_In_Item', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'转递单Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PersonnelFile_Transmitting_In_Item', @level2type=N'COLUMN',@level2name=N'OwnerId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'人员档案Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PersonnelFile_Transmitting_In_Item', @level2type=N'COLUMN',@level2name=N'PersonnelFileId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PersonnelFile_Transmitting_In_Item', @level2type=N'COLUMN',@level2name=N'RealName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PersonnelFile_Transmitting_In_Item', @level2type=N'COLUMN',@level2name=N'Units'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'职务' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PersonnelFile_Transmitting_In_Item', @level2type=N'COLUMN',@level2name=N'Duties'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'转递原因' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PersonnelFile_Transmitting_In_Item', @level2type=N'COLUMN',@level2name=N'Reasons'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'正本（卷）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PersonnelFile_Transmitting_In_Item', @level2type=N'COLUMN',@level2name=N'OriginalCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'副本（卷）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PersonnelFile_Transmitting_In_Item', @level2type=N'COLUMN',@level2name=N'DuplicateCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'材料（份）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PersonnelFile_Transmitting_In_Item', @level2type=N'COLUMN',@level2name=N'MaterialCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'人员档案转递单（入）项' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PersonnelFile_Transmitting_In_Item'
GO
INSERT [dbo].[TF_PersonnelFile_Transmitting_In_Item] ([Id], [OwnerId], [PersonnelFileId], [RealName], [Units], [Duties], [Reasons], [OriginalCount], [DuplicateCount], [MaterialCount]) VALUES (N'99e54ce6-6dab-4865-9140-071785e12598', N'c10e5d5e-fefa-4805-a2a5-19666f1885d3', N'c8d8f34d-2a5d-4794-b8df-03659ae6ac96', N'卢一', N'档案科', N'收集员', N'想看1', 1, 2, 3)
INSERT [dbo].[TF_PersonnelFile_Transmitting_In_Item] ([Id], [OwnerId], [PersonnelFileId], [RealName], [Units], [Duties], [Reasons], [OriginalCount], [DuplicateCount], [MaterialCount]) VALUES (N'ed304e46-0fba-46bf-b79c-3fe2654351ae', N'c10e5d5e-fefa-4805-a2a5-19666f1885d3', N'3c62f30c-9edd-4c68-9b66-23a8f033a155', N'陈光', N'开发部', N'程序员', N'想看4', 10, 11, 12)
INSERT [dbo].[TF_PersonnelFile_Transmitting_In_Item] ([Id], [OwnerId], [PersonnelFileId], [RealName], [Units], [Duties], [Reasons], [OriginalCount], [DuplicateCount], [MaterialCount]) VALUES (N'1e47d71b-5272-4617-959d-733cc3043fee', N'd9f07cea-ae07-477d-ab84-d3c7ea376e69', N'c8d8f34d-2a5d-4794-b8df-03659ae6ac96', N'卢一', N'档案科', N'收集员', N'5', 6, 7, 8)
INSERT [dbo].[TF_PersonnelFile_Transmitting_In_Item] ([Id], [OwnerId], [PersonnelFileId], [RealName], [Units], [Duties], [Reasons], [OriginalCount], [DuplicateCount], [MaterialCount]) VALUES (N'303d1eca-ba78-4953-96ad-98e94db6e176', N'79219b58-2434-4f2f-b10b-3de95a6a228b', N'1fba039c-933e-4535-bd30-0dd72caccf48', N'托雷斯', N'马德里竞技', N'球星', N'3', 4, 5, 6)
INSERT [dbo].[TF_PersonnelFile_Transmitting_In_Item] ([Id], [OwnerId], [PersonnelFileId], [RealName], [Units], [Duties], [Reasons], [OriginalCount], [DuplicateCount], [MaterialCount]) VALUES (N'c7433c99-b974-4847-96f6-c165afb1d08a', N'b9d82fdd-0896-4d08-9d15-f13c5d3fe115', N'c8d8f34d-2a5d-4794-b8df-03659ae6ac96', N'卢一', N'档案科', N'收集员', N'1', 2, 3, 4)
INSERT [dbo].[TF_PersonnelFile_Transmitting_In_Item] ([Id], [OwnerId], [PersonnelFileId], [RealName], [Units], [Duties], [Reasons], [OriginalCount], [DuplicateCount], [MaterialCount]) VALUES (N'85bb35aa-a228-4937-a4ff-c3d903842b7b', N'c10e5d5e-fefa-4805-a2a5-19666f1885d3', N'dd240f8c-c302-4b08-b99c-0082a061de5e', N'张三', N'组织部', N'部长', N'想看2', 4, 5, 6)
INSERT [dbo].[TF_PersonnelFile_Transmitting_In_Item] ([Id], [OwnerId], [PersonnelFileId], [RealName], [Units], [Duties], [Reasons], [OriginalCount], [DuplicateCount], [MaterialCount]) VALUES (N'11e27d37-89e8-4477-ad34-cb1a4168ed35', N'c10e5d5e-fefa-4805-a2a5-19666f1885d3', N'fb6f5b3c-78b3-4ce5-9e15-92f9e9841a78', N'王大', N'档案科', N'文员1', N'想看3', 7, 8, 9)
INSERT [dbo].[TF_PersonnelFile_Transmitting_In_Item] ([Id], [OwnerId], [PersonnelFileId], [RealName], [Units], [Duties], [Reasons], [OriginalCount], [DuplicateCount], [MaterialCount]) VALUES (N'1545533e-224e-4712-85d9-ccfcbb57911c', N'd9f07cea-ae07-477d-ab84-d3c7ea376e69', N'c222a217-360d-4169-9a5a-6e51aba6ca6a', N'卢利奇', N'拉齐奥', N'队长', N'1', 2, 3, 4)
INSERT [dbo].[TF_PersonnelFile_Transmitting_In_Item] ([Id], [OwnerId], [PersonnelFileId], [RealName], [Units], [Duties], [Reasons], [OriginalCount], [DuplicateCount], [MaterialCount]) VALUES (N'5899c15a-c9c6-44a4-829b-d4ee29e3cbab', N'b9d82fdd-0896-4d08-9d15-f13c5d3fe115', N'fb6f5b3c-78b3-4ce5-9e15-92f9e9841a78', N'王大', N'档案科', N'文员1', N'5', 6, 7, 8)
INSERT [dbo].[TF_PersonnelFile_Transmitting_In_Item] ([Id], [OwnerId], [PersonnelFileId], [RealName], [Units], [Duties], [Reasons], [OriginalCount], [DuplicateCount], [MaterialCount]) VALUES (N'0c06c428-662a-4a58-a615-df6ba5a3b4fd', N'2ae87996-de36-4e5f-855a-7dda330af243', N'c8d8f34d-2a5d-4794-b8df-03659ae6ac96', N'卢一', N'档案科', N'收集员', N'1', 1, 1, 1)
/****** Object:  Table [dbo].[TF_PersonnelFile_Transmitting_In]    Script Date: 03/28/2016 09:50:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TF_PersonnelFile_Transmitting_In](
	[Id] [uniqueidentifier] NOT NULL,
	[TransmittingMan] [nvarchar](50) NULL,
	[Series] [nvarchar](50) NULL,
	[Nos] [nvarchar](50) NULL,
	[OriginalCount] [int] NULL,
	[DuplicateCount] [int] NULL,
	[MaterialCount] [int] NULL,
	[FistName] [nvarchar](50) NULL,
	[NumberS] [int] NULL,
	[CreateManId] [uniqueidentifier] NULL,
	[CreateMan] [nvarchar](50) NULL,
	[States] [int] NULL,
	[TransmittingTime] [datetime] NULL,
	[CreateTime] [datetime] NULL,
	[isDeleted] [bit] NULL,
 CONSTRAINT [PK_TF_PERSONNELFILE_TRANSMITTI] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PersonnelFile_Transmitting_In', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'转递人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PersonnelFile_Transmitting_In', @level2type=N'COLUMN',@level2name=N'TransmittingMan'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PersonnelFile_Transmitting_In', @level2type=N'COLUMN',@level2name=N'Series'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PersonnelFile_Transmitting_In', @level2type=N'COLUMN',@level2name=N'Nos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'正本（卷）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PersonnelFile_Transmitting_In', @level2type=N'COLUMN',@level2name=N'OriginalCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'副本（卷）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PersonnelFile_Transmitting_In', @level2type=N'COLUMN',@level2name=N'DuplicateCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'材料（份）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PersonnelFile_Transmitting_In', @level2type=N'COLUMN',@level2name=N'MaterialCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'第一个人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PersonnelFile_Transmitting_In', @level2type=N'COLUMN',@level2name=N'FistName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'人数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PersonnelFile_Transmitting_In', @level2type=N'COLUMN',@level2name=N'NumberS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PersonnelFile_Transmitting_In', @level2type=N'COLUMN',@level2name=N'CreateManId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PersonnelFile_Transmitting_In', @level2type=N'COLUMN',@level2name=N'CreateMan'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态（2已转入，未操作0，关闭-1）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PersonnelFile_Transmitting_In', @level2type=N'COLUMN',@level2name=N'States'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'转递时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PersonnelFile_Transmitting_In', @level2type=N'COLUMN',@level2name=N'TransmittingTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PersonnelFile_Transmitting_In', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否删除' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PersonnelFile_Transmitting_In', @level2type=N'COLUMN',@level2name=N'isDeleted'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'人员档案转递单（入）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PersonnelFile_Transmitting_In'
GO
INSERT [dbo].[TF_PersonnelFile_Transmitting_In] ([Id], [TransmittingMan], [Series], [Nos], [OriginalCount], [DuplicateCount], [MaterialCount], [FistName], [NumberS], [CreateManId], [CreateMan], [States], [TransmittingTime], [CreateTime], [isDeleted]) VALUES (N'c10e5d5e-fefa-4805-a2a5-19666f1885d3', N'陈主任', N'11', N'12', 22, 26, 30, N'卢一', 4, N'079654f1-5033-4207-8919-9a8bc3212735', N'admin', 0, CAST(0x0000A5D701198650 AS DateTime), CAST(0x0000A5D60119B53F AS DateTime), 0)
INSERT [dbo].[TF_PersonnelFile_Transmitting_In] ([Id], [TransmittingMan], [Series], [Nos], [OriginalCount], [DuplicateCount], [MaterialCount], [FistName], [NumberS], [CreateManId], [CreateMan], [States], [TransmittingTime], [CreateTime], [isDeleted]) VALUES (N'79219b58-2434-4f2f-b10b-3de95a6a228b', N'232', N'1', N'2', 4, 5, 6, N'托雷斯', 1, N'079654f1-5033-4207-8919-9a8bc3212735', N'admin', 0, CAST(0x0000A5D700015F90 AS DateTime), CAST(0x0000A5D700018514 AS DateTime), 0)
INSERT [dbo].[TF_PersonnelFile_Transmitting_In] ([Id], [TransmittingMan], [Series], [Nos], [OriginalCount], [DuplicateCount], [MaterialCount], [FistName], [NumberS], [CreateManId], [CreateMan], [States], [TransmittingTime], [CreateTime], [isDeleted]) VALUES (N'2ae87996-de36-4e5f-855a-7dda330af243', N'1', N'1', N'1', 1, 1, 1, N'卢一', 1, N'079654f1-5033-4207-8919-9a8bc3212735', N'admin', 0, CAST(0x0000A5D101643B50 AS DateTime), CAST(0x0000A5D60164661B AS DateTime), 0)
INSERT [dbo].[TF_PersonnelFile_Transmitting_In] ([Id], [TransmittingMan], [Series], [Nos], [OriginalCount], [DuplicateCount], [MaterialCount], [FistName], [NumberS], [CreateManId], [CreateMan], [States], [TransmittingTime], [CreateTime], [isDeleted]) VALUES (N'4dcf0d5a-90b8-4d47-be75-834f131d6cd4', N'小风', N'102-1', N'9001', 2, 3, 4, NULL, NULL, N'079654f1-5033-4207-8919-9a8bc3212735', N'admin', 0, CAST(0x0000A5B1008043F0 AS DateTime), CAST(0x0000A5A30080518E AS DateTime), 0)
INSERT [dbo].[TF_PersonnelFile_Transmitting_In] ([Id], [TransmittingMan], [Series], [Nos], [OriginalCount], [DuplicateCount], [MaterialCount], [FistName], [NumberS], [CreateManId], [CreateMan], [States], [TransmittingTime], [CreateTime], [isDeleted]) VALUES (N'd9f07cea-ae07-477d-ab84-d3c7ea376e69', N'陈主任', N'1', N'2', 8, 10, 12, N'卢利奇', 2, N'079654f1-5033-4207-8919-9a8bc3212735', N'admin', 0, CAST(0x0000A5D60161C280 AS DateTime), CAST(0x0000A5D60161E0EF AS DateTime), 0)
INSERT [dbo].[TF_PersonnelFile_Transmitting_In] ([Id], [TransmittingMan], [Series], [Nos], [OriginalCount], [DuplicateCount], [MaterialCount], [FistName], [NumberS], [CreateManId], [CreateMan], [States], [TransmittingTime], [CreateTime], [isDeleted]) VALUES (N'b9d82fdd-0896-4d08-9d15-f13c5d3fe115', N'李大爷', N'11', N'12', 8, 10, 12, N'卢一', 2, N'079654f1-5033-4207-8919-9a8bc3212735', N'admin', 0, CAST(0x0000A5D6011A12F0 AS DateTime), CAST(0x0000A5D6011A2BDA AS DateTime), 0)
/****** Object:  Table [dbo].[TF_PersonnelFile_Consult]    Script Date: 03/28/2016 09:50:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TF_PersonnelFile_Consult](
	[Id] [uniqueidentifier] NOT NULL,
	[ConsultMan] [nvarchar](50) NULL,
	[Units] [nvarchar](100) NULL,
	[PersonnelFileId] [uniqueidentifier] NULL,
	[PersonnelFile] [nvarchar](50) NULL,
	[ConsultDetail] [nvarchar](50) NULL,
	[Remarks] [nvarchar](200) NULL,
	[CreateManId] [uniqueidentifier] NULL,
	[CreateMan] [nvarchar](50) NULL,
	[ConsultTime] [nvarchar](50) NULL,
	[States] [int] NULL,
	[CreateTime] [datetime] NULL,
	[isDeleted] [bit] NULL,
 CONSTRAINT [PK_TF_PERSONNELFILE_CONSULT] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PersonnelFile_Consult', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'查阅人姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PersonnelFile_Consult', @level2type=N'COLUMN',@level2name=N'ConsultMan'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'查阅人单位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PersonnelFile_Consult', @level2type=N'COLUMN',@level2name=N'Units'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'人员档案Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PersonnelFile_Consult', @level2type=N'COLUMN',@level2name=N'PersonnelFileId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'档案姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PersonnelFile_Consult', @level2type=N'COLUMN',@level2name=N'PersonnelFile'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'查阅内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PersonnelFile_Consult', @level2type=N'COLUMN',@level2name=N'ConsultDetail'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PersonnelFile_Consult', @level2type=N'COLUMN',@level2name=N'Remarks'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PersonnelFile_Consult', @level2type=N'COLUMN',@level2name=N'CreateManId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PersonnelFile_Consult', @level2type=N'COLUMN',@level2name=N'CreateMan'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'查阅时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PersonnelFile_Consult', @level2type=N'COLUMN',@level2name=N'ConsultTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态（2已查阅，未操作0，关闭-1）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PersonnelFile_Consult', @level2type=N'COLUMN',@level2name=N'States'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PersonnelFile_Consult', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否删除' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PersonnelFile_Consult', @level2type=N'COLUMN',@level2name=N'isDeleted'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'人员档案查阅单' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PersonnelFile_Consult'
GO
INSERT [dbo].[TF_PersonnelFile_Consult] ([Id], [ConsultMan], [Units], [PersonnelFileId], [PersonnelFile], [ConsultDetail], [Remarks], [CreateManId], [CreateMan], [ConsultTime], [States], [CreateTime], [isDeleted]) VALUES (N'a150d9d2-736d-40e7-b872-0af7f69d5c35', N'李大', N'宣传部', N'ef5df90f-8b90-413f-a19c-be27df55dd03', N'C罗', N'生平', N'2323', N'079654f1-5033-4207-8919-9a8bc3212735', N'admin', N'12 12 2012 12:00AM', 0, CAST(0x0000A5D70010EAB6 AS DateTime), 0)
INSERT [dbo].[TF_PersonnelFile_Consult] ([Id], [ConsultMan], [Units], [PersonnelFileId], [PersonnelFile], [ConsultDetail], [Remarks], [CreateManId], [CreateMan], [ConsultTime], [States], [CreateTime], [isDeleted]) VALUES (N'14ce8616-e36a-455f-8711-0eb42d1547bf', N'4', N'5', N'4807d449-1e13-45eb-a5ba-e7be92c32328', N'克罗斯', N'3', N'2', N'079654f1-5033-4207-8919-9a8bc3212735', N'admin', N'1', 0, CAST(0x0000A5D7001318FF AS DateTime), 0)
INSERT [dbo].[TF_PersonnelFile_Consult] ([Id], [ConsultMan], [Units], [PersonnelFileId], [PersonnelFile], [ConsultDetail], [Remarks], [CreateManId], [CreateMan], [ConsultTime], [States], [CreateTime], [isDeleted]) VALUES (N'cab9ab26-945e-48cc-a80d-51257c00288a', N'6', N'5', N'fb6f5b3c-78b3-4ce5-9e15-92f9e9841a78', N'王大', N'7', N'9', N'079654f1-5033-4207-8919-9a8bc3212735', N'admin', N'12 12 2012 12:00AM', 0, CAST(0x0000A5D70010EABB AS DateTime), 0)
INSERT [dbo].[TF_PersonnelFile_Consult] ([Id], [ConsultMan], [Units], [PersonnelFileId], [PersonnelFile], [ConsultDetail], [Remarks], [CreateManId], [CreateMan], [ConsultTime], [States], [CreateTime], [isDeleted]) VALUES (N'7ca11186-ec6e-4806-a480-7973bdd98a5b', N'1', N'宣传部2', N'c8d8f34d-2a5d-4794-b8df-03659ae6ac96', N'卢一', N'2', N'4', N'079654f1-5033-4207-8919-9a8bc3212735', N'admin', N'12 12 2012 12:00AM', 0, CAST(0x0000A5D70010EAB8 AS DateTime), 0)
INSERT [dbo].[TF_PersonnelFile_Consult] ([Id], [ConsultMan], [Units], [PersonnelFileId], [PersonnelFile], [ConsultDetail], [Remarks], [CreateManId], [CreateMan], [ConsultTime], [States], [CreateTime], [isDeleted]) VALUES (N'040f047c-d0b0-4488-977e-79c87233a2c4', N'', N'', N'67000ffb-0209-4796-9942-86bd4b96047d', N'大鹏', N'', N'', N'079654f1-5033-4207-8919-9a8bc3212735', N'admin', NULL, 0, CAST(0x0000A5D7000F51B3 AS DateTime), 1)
INSERT [dbo].[TF_PersonnelFile_Consult] ([Id], [ConsultMan], [Units], [PersonnelFileId], [PersonnelFile], [ConsultDetail], [Remarks], [CreateManId], [CreateMan], [ConsultTime], [States], [CreateTime], [isDeleted]) VALUES (N'32357490-5897-42da-972a-bd76e0c1ce61', N'2', N'1', N'c222a217-360d-4169-9a5a-6e51aba6ca6a', N'卢利奇', N'3', N'5', N'079654f1-5033-4207-8919-9a8bc3212735', N'admin', N'4', 0, CAST(0x0000A5D70019964B AS DateTime), 0)
/****** Object:  Table [dbo].[TF_PersonnelFile_Borrow]    Script Date: 03/28/2016 09:50:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TF_PersonnelFile_Borrow](
	[Id] [uniqueidentifier] NOT NULL,
	[BorrowMan] [nvarchar](50) NULL,
	[Units] [nvarchar](100) NULL,
	[PersonnelFileId] [uniqueidentifier] NULL,
	[PersonnelFile] [nvarchar](50) NULL,
	[BorrowDetail] [nvarchar](50) NULL,
	[Remarks] [nvarchar](200) NULL,
	[CreateManId] [uniqueidentifier] NULL,
	[CreateMan] [nvarchar](50) NULL,
	[BorrowTime] [nvarchar](50) NULL,
	[ReturnTime] [nvarchar](50) NULL,
	[States] [int] NULL,
	[CreateTime] [datetime] NULL,
	[isDeleted] [bit] NULL,
 CONSTRAINT [PK_TF_PERSONNELFILE_BORROW] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PersonnelFile_Borrow', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'借用人姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PersonnelFile_Borrow', @level2type=N'COLUMN',@level2name=N'BorrowMan'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'借用人单位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PersonnelFile_Borrow', @level2type=N'COLUMN',@level2name=N'Units'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'人员档案Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PersonnelFile_Borrow', @level2type=N'COLUMN',@level2name=N'PersonnelFileId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'档案姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PersonnelFile_Borrow', @level2type=N'COLUMN',@level2name=N'PersonnelFile'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'借用内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PersonnelFile_Borrow', @level2type=N'COLUMN',@level2name=N'BorrowDetail'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PersonnelFile_Borrow', @level2type=N'COLUMN',@level2name=N'Remarks'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PersonnelFile_Borrow', @level2type=N'COLUMN',@level2name=N'CreateManId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PersonnelFile_Borrow', @level2type=N'COLUMN',@level2name=N'CreateMan'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'借用时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PersonnelFile_Borrow', @level2type=N'COLUMN',@level2name=N'BorrowTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'归还时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PersonnelFile_Borrow', @level2type=N'COLUMN',@level2name=N'ReturnTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态（2已借出，3已归还，未操作0，关闭-1）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PersonnelFile_Borrow', @level2type=N'COLUMN',@level2name=N'States'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PersonnelFile_Borrow', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否删除' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PersonnelFile_Borrow', @level2type=N'COLUMN',@level2name=N'isDeleted'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'人员档案借用单' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PersonnelFile_Borrow'
GO
INSERT [dbo].[TF_PersonnelFile_Borrow] ([Id], [BorrowMan], [Units], [PersonnelFileId], [PersonnelFile], [BorrowDetail], [Remarks], [CreateManId], [CreateMan], [BorrowTime], [ReturnTime], [States], [CreateTime], [isDeleted]) VALUES (N'c99f3ef4-39f3-49e6-b9db-3f8c0d61bcc2', N'2', N'1', N'27c01028-d5f1-4c70-abbf-47401414f1b8', N'卢小帅', N'3', N'6', N'079654f1-5033-4207-8919-9a8bc3212735', N'admin', NULL, N'5', 0, CAST(0x0000A5D70019B69E AS DateTime), 0)
INSERT [dbo].[TF_PersonnelFile_Borrow] ([Id], [BorrowMan], [Units], [PersonnelFileId], [PersonnelFile], [BorrowDetail], [Remarks], [CreateManId], [CreateMan], [BorrowTime], [ReturnTime], [States], [CreateTime], [isDeleted]) VALUES (N'21c53ce2-8922-4a5a-bb43-63810d0c859d', NULL, N'1', N'c8d8f34d-2a5d-4794-b8df-03659ae6ac96', N'卢一', NULL, N'5', N'079654f1-5033-4207-8919-9a8bc3212735', N'admin', NULL, NULL, 0, CAST(0x0000A5D700197391 AS DateTime), 0)
INSERT [dbo].[TF_PersonnelFile_Borrow] ([Id], [BorrowMan], [Units], [PersonnelFileId], [PersonnelFile], [BorrowDetail], [Remarks], [CreateManId], [CreateMan], [BorrowTime], [ReturnTime], [States], [CreateTime], [isDeleted]) VALUES (N'fecf8dcb-2d59-4248-8814-87f8edc9effd', N'2', N'1', N'ab1c7866-e6e7-4a78-a6a1-2d112ce18206', N'范德法特', N'3', N'6', N'079654f1-5033-4207-8919-9a8bc3212735', N'admin', N'4', N'5', 0, CAST(0x0000A5D7001A8163 AS DateTime), 0)
INSERT [dbo].[TF_PersonnelFile_Borrow] ([Id], [BorrowMan], [Units], [PersonnelFileId], [PersonnelFile], [BorrowDetail], [Remarks], [CreateManId], [CreateMan], [BorrowTime], [ReturnTime], [States], [CreateTime], [isDeleted]) VALUES (N'b3d044ae-48b3-44a7-a6c9-a95407570063', NULL, N'6', N'dd240f8c-c302-4b08-b99c-0082a061de5e', N'张三', NULL, N'10', N'079654f1-5033-4207-8919-9a8bc3212735', N'admin', NULL, NULL, 0, CAST(0x0000A5D700184B1E AS DateTime), 0)
INSERT [dbo].[TF_PersonnelFile_Borrow] ([Id], [BorrowMan], [Units], [PersonnelFileId], [PersonnelFile], [BorrowDetail], [Remarks], [CreateManId], [CreateMan], [BorrowTime], [ReturnTime], [States], [CreateTime], [isDeleted]) VALUES (N'6d7ee6e3-5f36-41be-ab06-b0a2c3f35abd', NULL, N'1', N'c222a217-360d-4169-9a5a-6e51aba6ca6a', N'卢利奇', NULL, N'5', N'079654f1-5033-4207-8919-9a8bc3212735', N'admin', NULL, NULL, 0, CAST(0x0000A5D700184B1C AS DateTime), 0)
INSERT [dbo].[TF_PersonnelFile_Borrow] ([Id], [BorrowMan], [Units], [PersonnelFileId], [PersonnelFile], [BorrowDetail], [Remarks], [CreateManId], [CreateMan], [BorrowTime], [ReturnTime], [States], [CreateTime], [isDeleted]) VALUES (N'2f8de91e-52f6-4d19-99d4-cc70b421372b', NULL, N'6', N'fb6f5b3c-78b3-4ce5-9e15-92f9e9841a78', N'王大', NULL, N'10', N'079654f1-5033-4207-8919-9a8bc3212735', N'admin', NULL, NULL, 0, CAST(0x0000A5D700197394 AS DateTime), 0)
/****** Object:  Table [dbo].[TF_PersonnelFile]    Script Date: 03/28/2016 09:50:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TF_PersonnelFile](
	[Id] [uniqueidentifier] NOT NULL,
	[TName] [nvarchar](50) NULL,
	[RealName] [nvarchar](50) NULL,
	[Category] [nvarchar](20) NULL,
	[Units] [nvarchar](100) NULL,
	[Duties] [nvarchar](20) NULL,
	[Summary] [text] NULL,
	[location] [nvarchar](500) NULL,
	[CreateMan] [nvarchar](40) NULL,
	[CreateTime] [datetime] NULL,
	[UpdateTime] [datetime] NULL,
	[isValid] [bit] NULL,
	[isDeleted] [bit] NULL,
 CONSTRAINT [PK_TF_PERSONNELFILE] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PersonnelFile', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PersonnelFile', @level2type=N'COLUMN',@level2name=N'TName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PersonnelFile', @level2type=N'COLUMN',@level2name=N'RealName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PersonnelFile', @level2type=N'COLUMN',@level2name=N'Category'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PersonnelFile', @level2type=N'COLUMN',@level2name=N'Units'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'职务' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PersonnelFile', @level2type=N'COLUMN',@level2name=N'Duties'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'摘要' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PersonnelFile', @level2type=N'COLUMN',@level2name=N'Summary'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'存放位置' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PersonnelFile', @level2type=N'COLUMN',@level2name=N'location'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PersonnelFile', @level2type=N'COLUMN',@level2name=N'CreateMan'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PersonnelFile', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PersonnelFile', @level2type=N'COLUMN',@level2name=N'UpdateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否有效' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PersonnelFile', @level2type=N'COLUMN',@level2name=N'isValid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否删除' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PersonnelFile', @level2type=N'COLUMN',@level2name=N'isDeleted'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'人员档案' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TF_PersonnelFile'
GO
INSERT [dbo].[TF_PersonnelFile] ([Id], [TName], [RealName], [Category], [Units], [Duties], [Summary], [location], [CreateMan], [CreateTime], [UpdateTime], [isValid], [isDeleted]) VALUES (N'dd240f8c-c302-4b08-b99c-0082a061de5e', NULL, N'张三', NULL, N'组织部', N'部长', NULL, NULL, N'admin', CAST(0x0000A5D50121F3BC AS DateTime), CAST(0x0000A5D600DB5248 AS DateTime), 1, 0)
INSERT [dbo].[TF_PersonnelFile] ([Id], [TName], [RealName], [Category], [Units], [Duties], [Summary], [location], [CreateMan], [CreateTime], [UpdateTime], [isValid], [isDeleted]) VALUES (N'c8d8f34d-2a5d-4794-b8df-03659ae6ac96', NULL, N'卢一', NULL, N'档案科', N'收集员', NULL, NULL, N'admin', CAST(0x0000A5D501220424 AS DateTime), CAST(0x0000A5D600DBAED9 AS DateTime), 1, 0)
INSERT [dbo].[TF_PersonnelFile] ([Id], [TName], [RealName], [Category], [Units], [Duties], [Summary], [location], [CreateMan], [CreateTime], [UpdateTime], [isValid], [isDeleted]) VALUES (N'1fba039c-933e-4535-bd30-0dd72caccf48', NULL, N'托雷斯', NULL, N'马德里竞技', N'球星', NULL, NULL, N'admin', CAST(0x0000A5D501224498 AS DateTime), CAST(0x0000A5D600DC19E9 AS DateTime), 1, 0)
INSERT [dbo].[TF_PersonnelFile] ([Id], [TName], [RealName], [Category], [Units], [Duties], [Summary], [location], [CreateMan], [CreateTime], [UpdateTime], [isValid], [isDeleted]) VALUES (N'3c62f30c-9edd-4c68-9b66-23a8f033a155', NULL, N'陈光', NULL, N'开发部', N'程序员', N'捕枯霜要', N'有诉昝在一在地', N'admin', CAST(0x0000A5A20169791C AS DateTime), CAST(0x0000A5A20169881E AS DateTime), 1, 0)
INSERT [dbo].[TF_PersonnelFile] ([Id], [TName], [RealName], [Category], [Units], [Duties], [Summary], [location], [CreateMan], [CreateTime], [UpdateTime], [isValid], [isDeleted]) VALUES (N'ab1c7866-e6e7-4a78-a6a1-2d112ce18206', NULL, N'范德法特', NULL, N'荷兰', N'前腰', NULL, NULL, N'admin', CAST(0x0000A5D5012261E4 AS DateTime), CAST(0x0000A5D600DC2E73 AS DateTime), 1, 0)
INSERT [dbo].[TF_PersonnelFile] ([Id], [TName], [RealName], [Category], [Units], [Duties], [Summary], [location], [CreateMan], [CreateTime], [UpdateTime], [isValid], [isDeleted]) VALUES (N'acbfa157-3815-4c19-9e22-4476ebe10af3', NULL, N'李四', NULL, N'宣传部', N'部长', NULL, NULL, N'admin', CAST(0x0000A5D50121EB88 AS DateTime), CAST(0x0000A5D600DB1C7D AS DateTime), 1, 0)
INSERT [dbo].[TF_PersonnelFile] ([Id], [TName], [RealName], [Category], [Units], [Duties], [Summary], [location], [CreateMan], [CreateTime], [UpdateTime], [isValid], [isDeleted]) VALUES (N'27c01028-d5f1-4c70-abbf-47401414f1b8', NULL, N'卢小帅', NULL, N'软件', N'程序员', N'天要要', N'架子上', N'admin', CAST(0x0000A5D500C0E88E AS DateTime), CAST(0x0000A5D500C0E88E AS DateTime), 1, 0)
INSERT [dbo].[TF_PersonnelFile] ([Id], [TName], [RealName], [Category], [Units], [Duties], [Summary], [location], [CreateMan], [CreateTime], [UpdateTime], [isValid], [isDeleted]) VALUES (N'c222a217-360d-4169-9a5a-6e51aba6ca6a', NULL, N'卢利奇', NULL, N'拉齐奥', N'队长', NULL, NULL, N'admin', CAST(0x0000A5D5012229A4 AS DateTime), CAST(0x0000A5D600DBEE16 AS DateTime), 1, 0)
INSERT [dbo].[TF_PersonnelFile] ([Id], [TName], [RealName], [Category], [Units], [Duties], [Summary], [location], [CreateMan], [CreateTime], [UpdateTime], [isValid], [isDeleted]) VALUES (N'67000ffb-0209-4796-9942-86bd4b96047d', NULL, N'大鹏', NULL, N'新闻部', N'记者', NULL, NULL, N'admin', CAST(0x0000A5D501221234 AS DateTime), CAST(0x0000A5D600DBC8A3 AS DateTime), 1, 0)
INSERT [dbo].[TF_PersonnelFile] ([Id], [TName], [RealName], [Category], [Units], [Duties], [Summary], [location], [CreateMan], [CreateTime], [UpdateTime], [isValid], [isDeleted]) VALUES (N'fb6f5b3c-78b3-4ce5-9e15-92f9e9841a78', NULL, N'王大', NULL, N'档案科', N'文员1', NULL, NULL, N'admin', CAST(0x0000A5D50121DFD0 AS DateTime), CAST(0x0000A5D600DAF6BD AS DateTime), 1, 0)
INSERT [dbo].[TF_PersonnelFile] ([Id], [TName], [RealName], [Category], [Units], [Duties], [Summary], [location], [CreateMan], [CreateTime], [UpdateTime], [isValid], [isDeleted]) VALUES (N'ef5df90f-8b90-413f-a19c-be27df55dd03', NULL, N'C罗', NULL, N'皇家马德里', N'球员 ', NULL, NULL, N'admin', CAST(0x0000A5D501223430 AS DateTime), CAST(0x0000A5D600DC0596 AS DateTime), 1, 0)
INSERT [dbo].[TF_PersonnelFile] ([Id], [TName], [RealName], [Category], [Units], [Duties], [Summary], [location], [CreateMan], [CreateTime], [UpdateTime], [isValid], [isDeleted]) VALUES (N'4807d449-1e13-45eb-a5ba-e7be92c32328', NULL, N'克罗斯', NULL, N'AC米兰', N'员球', NULL, NULL, N'admin', CAST(0x0000A5D501221DEC AS DateTime), CAST(0x0000A5D600DBDDA5 AS DateTime), 1, 0)
/****** Object:  Table [dbo].[TF_PaperFile]    Script Date: 03/28/2016 09:50:42 ******/
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
/****** Object:  Table [dbo].[TF_LifeComments]    Script Date: 03/28/2016 09:50:42 ******/
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
/****** Object:  Table [dbo].[TF_ElectronicFile]    Script Date: 03/28/2016 09:50:42 ******/
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
/****** Object:  Table [dbo].[SystemParameters]    Script Date: 03/28/2016 09:50:42 ******/
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
/****** Object:  Table [dbo].[SystemLogs]    Script Date: 03/28/2016 09:50:42 ******/
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
/****** Object:  Table [dbo].[SysItem]    Script Date: 03/28/2016 09:50:42 ******/
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
INSERT [dbo].[SysItem] ([Id], [ItemType], [ItemValue], [ItemName], [Icon], [OrderID], [Remark], [CreateTime], [CreateMan], [isValid], [isDeleted]) VALUES (22, N'Transmitting_In', N'2', N'已转入', NULL, 10, NULL, NULL, NULL, 1, 0)
INSERT [dbo].[SysItem] ([Id], [ItemType], [ItemValue], [ItemName], [Icon], [OrderID], [Remark], [CreateTime], [CreateMan], [isValid], [isDeleted]) VALUES (23, N'Transmitting_In', N'0', N'未操作', NULL, 10, NULL, NULL, NULL, 1, 0)
INSERT [dbo].[SysItem] ([Id], [ItemType], [ItemValue], [ItemName], [Icon], [OrderID], [Remark], [CreateTime], [CreateMan], [isValid], [isDeleted]) VALUES (24, N'Transmitting_In', N'-1', N'关闭', NULL, 10, NULL, NULL, NULL, 1, 0)
SET IDENTITY_INSERT [dbo].[SysItem] OFF
/****** Object:  Table [dbo].[Sys_Dictionary]    Script Date: 03/28/2016 09:50:42 ******/
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
INSERT [dbo].[Sys_Dictionary] ([Id], [ParentId], [OrderNo], [Name], [ValueName], [Remarks], [CreateTime], [ModifyTime], [Icon]) VALUES (N'21f01eda-7848-4a05-8e24-13daae970053', NULL, 1, N'单位类型', N'03', NULL, CAST(0x0000A5A2016A3782 AS DateTime), CAST(0x0000A5A2016A3782 AS DateTime), N'icon-tag')
INSERT [dbo].[Sys_Dictionary] ([Id], [ParentId], [OrderNo], [Name], [ValueName], [Remarks], [CreateTime], [ModifyTime], [Icon]) VALUES (N'5fd39867-a11b-4a0c-b957-579c968721b8', N'21f01eda-7848-4a05-8e24-13daae970053', 1, N'档案科', N'0301', NULL, CAST(0x0000A5A2016A6841 AS DateTime), CAST(0x0000A5A2016A6841 AS DateTime), N'icon-shape_square')
/****** Object:  Table [dbo].[Sys_CityArea]    Script Date: 03/28/2016 09:50:42 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_PaginationEx]    Script Date: 03/28/2016 09:50:40 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_GetByDistancesOrderByLL]    Script Date: 03/28/2016 09:50:40 ******/
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
/****** Object:  Table [dbo].[sggbxxxg]    Script Date: 03/28/2016 09:50:42 ******/
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
/****** Object:  Table [dbo].[sggbdaclsrjxx]    Script Date: 03/28/2016 09:50:42 ******/
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
/****** Object:  Table [dbo].[sgbxxgxxg2]    Script Date: 03/28/2016 09:50:42 ******/
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
	[ck] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[sgbxxgxxg2] ([ID], [CreatName], [CreateTime], [bh], [sgbxm], [gbssdw], [xgxhxgxx], [dasyjrsj], [gdssxmjsj], [gdks], [bz], [ck]) VALUES (N'881a021b-18fe-472d-b196-80e1b63d14dc', N'admin', NULL, N'2016-3', N'1', N'2', N'3', N'4', N'5', N'6', N'7', NULL)
/****** Object:  Table [dbo].[RMS_UserRole]    Script Date: 03/28/2016 09:50:42 ******/
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
INSERT [dbo].[RMS_UserRole] ([Id], [UserId], [RoleId]) VALUES (N'7fe0c91c-c7df-4447-af37-f25655827d20', N'9fcdd9fa-4fc2-422e-99fe-dc7734bd8d75', N'6b4bcfc7-ddbd-4013-afeb-e36bdbf47114')
/****** Object:  Table [dbo].[RMS_User]    Script Date: 03/28/2016 09:50:42 ******/
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
INSERT [dbo].[RMS_User] ([Id], [LoginName], [TrueName], [Password], [CreateTime], [ModifyTime], [DepartmentId], [UserType], [Tel], [Phone]) VALUES (N'079654f1-5033-4207-8919-9a8bc3212735', N'admin', N'小家活', N'123456', CAST(0x0000A2FE013D295C AS DateTime), CAST(0x0000A2FE013D295C AS DateTime), N'808e39bf-b99d-4a1f-b9fe-4c8b5bc180c5', 1, NULL, NULL)
INSERT [dbo].[RMS_User] ([Id], [LoginName], [TrueName], [Password], [CreateTime], [ModifyTime], [DepartmentId], [UserType], [Tel], [Phone]) VALUES (N'22794746-04b0-41d7-8dd8-b91d4b6a9c03', N'1212121', N'12', N'111', CAST(0x0000A59901878BBA AS DateTime), CAST(0x0000A59901878BBA AS DateTime), N'08682a57-7832-4002-868d-e71b9ac877dc', 2, NULL, NULL)
INSERT [dbo].[RMS_User] ([Id], [LoginName], [TrueName], [Password], [CreateTime], [ModifyTime], [DepartmentId], [UserType], [Tel], [Phone]) VALUES (N'caeee0c8-8b0c-4ba7-9d0a-cdd0d602c14e', N'admin', NULL, NULL, CAST(0x0000A59A0005A984 AS DateTime), CAST(0x0000A59A0005A984 AS DateTime), NULL, 0, NULL, NULL)
INSERT [dbo].[RMS_User] ([Id], [LoginName], [TrueName], [Password], [CreateTime], [ModifyTime], [DepartmentId], [UserType], [Tel], [Phone]) VALUES (N'9fcdd9fa-4fc2-422e-99fe-dc7734bd8d75', N'admin', NULL, NULL, CAST(0x0000A5D300C5E8EA AS DateTime), CAST(0x0000A5D300C5E8EA AS DateTime), NULL, 2, NULL, NULL)
/****** Object:  Table [dbo].[RMS_RoleManus]    Script Date: 03/28/2016 09:50:42 ******/
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
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'49cd9722-c856-49e2-8d3c-5660f5af20f3', N'7e4a372b-3191-4e69-9e51-ad0d5bb37191', N'cb6a3fd7-a581-41c3-a52e-d3b385a9b219')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'ae2eb816-d9a6-4dff-8de2-d264ac461bdf', N'7e4a372b-3191-4e69-9e51-ad0d5bb37191', N'fcab7171-5c19-4117-af0e-c0407e6d280e')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'88c12bba-5842-493b-8f83-50d13d603f3b', N'6b4bcfc7-ddbd-4013-afeb-e36bdbf47114', N'cb6a3fd7-a581-41c3-a52e-d3b385a9b219')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'2ed8106f-cb08-4050-86e4-3faa7951b2ac', N'6b4bcfc7-ddbd-4013-afeb-e36bdbf47114', N'fcab7171-5c19-4117-af0e-c0407e6d280e')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'd97fb757-542f-4561-938b-62da3c38ac1c', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'c03f01bc-29a4-4c32-b2f8-53e4736c6aa4')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'fab7b1ce-63a6-4219-ae33-715c8d3d16d0', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'cbc19245-4fe9-4080-bc9b-f83563e62a54')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'07034f5c-1615-4876-a53d-3b9bb3e70577', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'18f90f0f-842d-403c-b459-760550bd3277')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'0b1f7e01-10b4-4dd1-a3f9-a90b6c801e1c', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'5294777a-8ee9-4ceb-b8b2-2a93025e69c3')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'fe0745da-f6eb-492a-9cb8-134cb972f771', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'd977588e-680f-4e2a-afba-25732c4ee0c5')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'df707960-76b6-4ec7-a4dc-d848ff840f6b', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'b3e07fa4-2820-4c2f-a88f-941b2a5976c7')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'85bc9e43-d29a-4fed-bd49-f769456d43b0', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'029a6c5c-4c4e-41d8-bdc6-1174318741e3')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'aa568271-062b-49c1-821b-b514b8a1c363', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'82ab8599-04d0-409b-818b-11cd5ea642ef')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'90218c77-943c-4e11-8036-d54180dac5d8', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'8cf825de-ad5e-498f-a2aa-836c521ce009')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'7dbf53f9-bc04-494f-ad5c-d9484a43731e', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'701d6086-8d50-4d8c-b775-90c547ec25d5')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'08bb6d75-c401-4679-a42f-b0cb4383acf6', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'7f51b89f-2141-4e7f-ab41-c5291982355a')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'aa73a38c-b9ff-4621-8d2d-73e22867cc69', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'cb6a3fd7-a581-41c3-a52e-d3b385a9b219')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'688ca3fa-fb53-4f9d-9fe2-3f578d9e5041', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'f94992a9-68e7-44e3-86f3-93a5a4f10a4e')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'00a129b1-bfc9-4623-94fb-fab0e5e37860', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'fcab7171-5c19-4117-af0e-c0407e6d280e')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'3ffc20b0-054e-44ab-9f07-af165ca6d0f0', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'4eef9033-2c87-45e5-a500-278e10e14b9d')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'32414b8b-9701-49ec-835e-505c5f428486', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'25b900c5-6306-4a3f-887f-815e9bf372e8')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'46ede6fe-4cea-4570-acda-be6c3832950f', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'cd986342-511d-4869-8751-0f474ddd95ad')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'd33d3105-042d-46e4-ab31-4bc36f239419', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'01b2df1a-a36f-4327-b490-60a7ca085e75')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'aedb7ab3-1730-4949-b083-01b370f1f886', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'97415592-11af-42d5-9709-92ef78487f1a')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'22e830b3-adef-41b5-9a5b-cdf2abfaac86', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'a83eaa2a-2f6f-49ed-bac0-fea7369b4fc2')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'b6ceaab8-fe1e-48ae-ba8e-4121aefd6e6b', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'5e72df14-8788-4307-a700-d5787732cbb5')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'd4105f06-894a-4202-95a8-4fdfcece9230', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'9b7cd5ef-a033-42c6-98bc-4157d6ff23b7')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'188e6c21-721f-47e1-8f2f-31d2dec0bf19', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'c5f56312-eb83-479e-8836-fa66913642c8')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'4529412d-346f-4fdd-80d2-eab6d084ecce', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'ae0bea25-acca-43ad-b8ee-bbaa2dc62795')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'67e25b6d-6e27-4911-bb30-b0730d8d4481', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'0211853c-2580-4b25-a473-62a33c7b2782')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'da1e55ce-7062-4021-be43-7dbcda39cdfc', N'7e4a372b-3191-4e69-9e51-ad0d5bb37191', N'4eef9033-2c87-45e5-a500-278e10e14b9d')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'368e7a08-965a-422f-bf04-7fef77e04226', N'7e4a372b-3191-4e69-9e51-ad0d5bb37191', N'cd986342-511d-4869-8751-0f474ddd95ad')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'1897d800-aa92-4082-a54e-667b4c62c49f', N'7e4a372b-3191-4e69-9e51-ad0d5bb37191', N'01b2df1a-a36f-4327-b490-60a7ca085e75')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'65d49671-1174-4adf-8117-5e1f90ea9602', N'7e4a372b-3191-4e69-9e51-ad0d5bb37191', N'5e72df14-8788-4307-a700-d5787732cbb5')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'00325713-f9bf-4f97-b9d9-a2bc1085e485', N'7e4a372b-3191-4e69-9e51-ad0d5bb37191', N'9b7cd5ef-a033-42c6-98bc-4157d6ff23b7')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'0696d05c-5047-4100-9848-4b79ad27e0da', N'6b4bcfc7-ddbd-4013-afeb-e36bdbf47114', N'4eef9033-2c87-45e5-a500-278e10e14b9d')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'97740b87-40cd-47b2-b45e-0fb03cef012b', N'6b4bcfc7-ddbd-4013-afeb-e36bdbf47114', N'25b900c5-6306-4a3f-887f-815e9bf372e8')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'3866ca9e-8272-4a87-877e-3c614d0920f1', N'6b4bcfc7-ddbd-4013-afeb-e36bdbf47114', N'cd986342-511d-4869-8751-0f474ddd95ad')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'578d8c8f-7762-46ce-98ba-a6b2148092f5', N'6b4bcfc7-ddbd-4013-afeb-e36bdbf47114', N'01b2df1a-a36f-4327-b490-60a7ca085e75')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'9397c1c4-6538-4e19-806d-2719e31b3225', N'6b4bcfc7-ddbd-4013-afeb-e36bdbf47114', N'5e72df14-8788-4307-a700-d5787732cbb5')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'3a142253-050b-4220-a957-982cc4c892b9', N'6b4bcfc7-ddbd-4013-afeb-e36bdbf47114', N'9b7cd5ef-a033-42c6-98bc-4157d6ff23b7')
/****** Object:  Table [dbo].[RMS_RoleManuButtons]    Script Date: 03/28/2016 09:50:42 ******/
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
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'20acce5d-3b40-46ba-af1c-f62b30ed4dc6', N'6b4bcfc7-ddbd-4013-afeb-e36bdbf47114', N'18381400-99b5-4bc2-9045-77be5c7c2d1c')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'8eebc0d6-9d5e-4e52-9e5d-0502ab1f636a', N'6b4bcfc7-ddbd-4013-afeb-e36bdbf47114', N'0e5b6abf-ae50-45ef-bf33-00c68d3fa161')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'620c7969-a2ed-4f73-93a8-141ac61c39ce', N'6b4bcfc7-ddbd-4013-afeb-e36bdbf47114', N'72858b93-808a-4456-896e-1a0445db8fee')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'0b191aa1-a36a-416f-ab02-4717b2105901', N'6b4bcfc7-ddbd-4013-afeb-e36bdbf47114', N'af5cf4e0-44fc-4491-bdf7-4db858aa825d')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'e1351271-3255-48aa-a551-edb758e65a3b', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'10986a68-1641-457f-96d8-5e3d522019cf')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'6402fb37-13cc-4652-9413-f0f795d34544', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'42b0ca5b-4e28-46c1-b1b9-d01ba0642075')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'd3a8e8a6-11e2-4627-85de-ecff5b7765c0', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'c2800a63-cf5c-4036-9eb2-ff37919731d6')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'49dcfbcd-0fda-44e8-986b-29d5bbd912cb', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'832ca926-0ce3-40f3-b337-fe0c221ac6b6')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'9cb0a460-873b-4e63-ae66-1251f1e7b771', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'e6523d84-fb82-4ae7-9cfc-2c1db20df936')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'd4d8e28f-2959-4511-b145-2c9a15103b25', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'9a79f2c8-1a38-4f10-a775-4069503ef057')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'c2cb3104-acd8-4f65-b590-47ec82657b7b', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'98a05a8d-fb7c-43a3-b44c-3564e1d273ab')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'efbd70ba-aa0b-49db-9a2c-3c5a04474d93', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'4b9f0b04-83d0-469f-a49c-f7114db923dd')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'c595fce6-af54-4f15-a712-64baf6fed423', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'bdad042b-79d4-424d-83ab-9d20708c9e77')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'2478f3ab-363d-4b8a-b671-991dec3ef7ee', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'badf8f06-3623-4d10-aff1-db95cd381b2e')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'01224dd3-dc65-4335-b793-21c423034bc0', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'6d8a5b93-c4c3-459a-9e22-6873809d7a3e')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'940fc8ef-326f-4523-87ac-8ec5670a49bc', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'b612d11d-6cfd-40f2-b367-c246c9b08e79')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'65cbb4da-943a-466c-960e-34cec25b4e00', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'ce45f87c-653f-4ad1-b85b-d290ebe8f1e3')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'abd149d3-707b-4fff-b0f0-662a05b62f03', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'4253cab5-80ff-4765-bdf4-c1ae60219a1f')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'6998a969-2940-455d-983c-267530a6ae43', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'41bf1fda-62e7-4095-b5d9-b9834b658688')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'53b71564-c01e-4558-8a0b-b00e8c7baa78', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'd847b854-f5fb-4c5a-9a93-d5f70c263ca3')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'3558091e-f485-4631-a4aa-970f2dd837be', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'4aaa6ad3-3da9-44ce-870c-4e1223d97951')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'b792a3a0-53e6-4933-8938-a9104f51631c', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'e6b8a011-cbb7-424d-b613-973d9150727e')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'e760bb10-2355-4685-9960-53bb7b242ff1', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'1a7615df-dafb-4e69-9384-07221996a0c7')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'f3787115-5cca-421d-bc57-143c6c502299', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'18381400-99b5-4bc2-9045-77be5c7c2d1c')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'b87174f8-ff20-43cb-9089-db5896b02c21', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'0e5b6abf-ae50-45ef-bf33-00c68d3fa161')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'b39062a6-a5a6-4b36-8dc3-9fe73913ed0b', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'bde2c1f4-8197-4fb5-b8ee-7223067739fb')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'e91d7695-e135-46a8-915e-9ea7ebecc2d4', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'72858b93-808a-4456-896e-1a0445db8fee')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'0c70da3e-790c-4659-8d14-d438e9040920', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'af5cf4e0-44fc-4491-bdf7-4db858aa825d')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'26e4d33a-345f-4775-b340-d8086fe3e9c3', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'1c6cafec-e599-4af6-a5ac-e5d0e900ffc0')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'fc30f9e3-8944-4498-9de7-fca01fd0ee58', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'799f490f-2920-4f25-9bc5-00ad025db684')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'3de3819a-e52a-4ccc-9af3-c50ace34c1ea', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'89da12b8-dc9c-4908-b6be-79aea484394e')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'30460793-1807-4aed-bfd1-a48e38745e78', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'80197e0f-ceec-4a4b-b5ed-f0577672d9e2')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'cf805187-2ee5-4e41-8f73-dbdfd7795e68', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'4e47c426-e29d-41d7-a186-de78fa385e02')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'363e87d1-60b2-4e16-b658-4ca5e09437e4', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'fe4acc8c-53a2-4adf-9c1b-eb74709f5985')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'b31d5087-d453-4208-93c5-08bf706b2f6d', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'24040ad2-80a9-43c5-b8fc-a9a3bddaf93e')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'cefb8245-14c6-491d-a20e-2a0265b5b64c', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'415fc710-652d-4d7f-a3a6-16034f5fcc01')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'86d59e3f-47f3-43b9-8082-4c556fa463b7', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'52959c9b-86b3-45d2-8a1a-8018f299cd5d')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'b4fa81b2-cc4f-469c-8218-b1152b53f8f4', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'e607c1e1-b9e1-43c0-bc00-3dcc84e9a659')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'a1109e83-54e8-4df7-a155-a5b76bee8f55', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'293c77bd-c034-41f4-b004-d74a2dd68a9b')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'93be33ca-d9e7-47bd-84eb-e8c340fd8674', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'603b0af5-5a16-4d07-a435-b6373740ebc1')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'ebace508-c1cb-41f4-8eec-e8a040f2553b', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'43f27833-fa92-4932-bc9b-fa3e6f694d3c')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'ac23a094-3f3b-4bc0-ab95-694ba5d3f88a', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'cf8ac4dc-4c56-4051-b13f-ac3fedf34447')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'cf307fa1-7bbb-4335-8517-2759512eaab6', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'6f8bba2d-7a8a-4fa1-bdaa-cc228b05f146')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'488d64f2-3db4-46b1-94cb-267f35078cdf', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'8784962d-ff92-4868-a266-42573edb3152')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'c1384fb5-07b6-4fa8-a0d8-354b8beb5895', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'6c358086-fffb-4ddc-98a0-718dedc25279')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'eaca0754-03c3-43ed-a3fe-b3711a8b51cb', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'0e7760d3-3ce7-4342-8354-78a36a6e504a')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'0924013f-98c7-4a90-a6ce-dc611b23eb06', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'7827aad0-bafb-4290-9816-7849b8dce8e8')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'71238edf-b186-40a2-8635-eb552cec9930', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'a1daf1b6-354f-456c-8776-a10d0641edbb')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'110535b7-a9a2-423a-96ac-8b7854ef395c', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'2d6cd685-f146-40b0-9919-89c2ae6c7bf6')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'1c55616b-d922-4c17-8023-4c40183cd263', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'884caf14-acd2-4d58-9451-74290e3bdde4')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'74bdb747-e666-4b2a-84f8-c07b8267c2d4', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'77337595-1714-4f5e-8ef0-30d43ccc6c3b')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'3f1ec235-5caf-48fd-9f30-54d02db7b9ce', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'640e7f8a-190d-4459-a790-2f5d194baf78')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'afbc62ad-f90b-47ae-b674-4aa82c89021d', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'33408194-80f0-4e50-a96f-68dab6c46c57')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'751037ea-8828-4af6-8a8d-95a46d504fe3', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'f1109d53-c8df-4125-8293-2b3cccd90afa')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'285d7de1-6a16-4e95-8cf3-eb02eae7a867', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'd742bb5a-f413-45bd-9a9f-de1a05b7c60d')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'764afebe-7e47-49b3-b1ad-76a5ff2c2961', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'052f960a-2bd7-4e50-9ae0-455f8ff441d3')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'69bb05e6-eacf-4c5e-b8e9-5b54d753a89b', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'8d1e943b-7631-4d64-90e2-c23d15e86ebc')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'd278bc22-57f2-4146-b939-ca65d718c4c8', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'c1a38b17-95e1-47c5-bb04-24377b02ef61')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'35fea60f-d534-4bf4-aa26-81417e7b770f', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'd546efaf-71f3-43ea-ae30-b6a0ab1d5310')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'dc6d2ef0-634c-45a4-93b7-5cbfef0a74bf', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'8d7638be-56f0-4360-acaf-7062165e4e7f')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'57a19247-967b-4c96-a780-2e3d2d592ba8', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'e0274a3a-4a7d-4916-8584-fd2b6f3cb130')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'e736e982-5043-4a34-9523-94e60837e6e9', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'7449b38f-55e9-4e0d-be25-ccd55a599ea7')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'f307ef28-9f60-41c8-abed-0a7e87fbf3f3', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'7bde7bf4-6187-4caa-b3d5-9b17f3bc2a92')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'1d05fe86-125e-4ccd-b0e9-4050e05e594d', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'75295c8d-8166-431d-8dd1-8d1e4cd854a4')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'47fedc00-e34e-4f06-996b-837ae4692527', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'9b423185-08d9-45ee-a070-555ed1037767')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'7d109513-8866-4e81-a444-600de49699c1', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'e9b3d839-bc2c-434a-95ee-0491b14136ac')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'bf1d46d7-b687-47e9-aaa1-0d4b122c0d2a', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'df875da3-ba22-458e-861d-9c1e82836aa4')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'd541c235-697e-4f5e-ae6c-f93b0f2b697b', N'7e4a372b-3191-4e69-9e51-ad0d5bb37191', N'18381400-99b5-4bc2-9045-77be5c7c2d1c')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'9c10072d-8289-420d-babe-61c49df44c7f', N'7e4a372b-3191-4e69-9e51-ad0d5bb37191', N'0e5b6abf-ae50-45ef-bf33-00c68d3fa161')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'32959e9c-c68b-48ab-8c4c-939ab7d5b90a', N'7e4a372b-3191-4e69-9e51-ad0d5bb37191', N'72858b93-808a-4456-896e-1a0445db8fee')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'b01e95a2-7251-4575-98f8-37f4929911c5', N'7e4a372b-3191-4e69-9e51-ad0d5bb37191', N'af5cf4e0-44fc-4491-bdf7-4db858aa825d')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'fe0f5eea-1049-49a2-ac36-08740f1117c0', N'7e4a372b-3191-4e69-9e51-ad0d5bb37191', N'1c6cafec-e599-4af6-a5ac-e5d0e900ffc0')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'dadf1b91-1cad-4bad-b1b7-d90f16b7acf0', N'7e4a372b-3191-4e69-9e51-ad0d5bb37191', N'799f490f-2920-4f25-9bc5-00ad025db684')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'c979f32c-b36c-4293-9302-eab9be0576fa', N'7e4a372b-3191-4e69-9e51-ad0d5bb37191', N'80197e0f-ceec-4a4b-b5ed-f0577672d9e2')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'137c7dd3-5d9b-49d0-932d-c7a16f267dbc', N'7e4a372b-3191-4e69-9e51-ad0d5bb37191', N'4e47c426-e29d-41d7-a186-de78fa385e02')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'0258b751-3b9b-46a4-825b-c95bae8d5bba', N'7e4a372b-3191-4e69-9e51-ad0d5bb37191', N'603b0af5-5a16-4d07-a435-b6373740ebc1')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'3f4fbcd1-76ae-4950-a3be-3ff799225374', N'7e4a372b-3191-4e69-9e51-ad0d5bb37191', N'43f27833-fa92-4932-bc9b-fa3e6f694d3c')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'3f644cd7-f65a-4992-a9a7-050653b38d2a', N'7e4a372b-3191-4e69-9e51-ad0d5bb37191', N'6f8bba2d-7a8a-4fa1-bdaa-cc228b05f146')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'f116ecf5-f1b4-4cbb-a2fb-ecb1bad41788', N'7e4a372b-3191-4e69-9e51-ad0d5bb37191', N'8784962d-ff92-4868-a266-42573edb3152')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'b9aded2b-c885-483d-bf4d-2be5d1ca36f1', N'7e4a372b-3191-4e69-9e51-ad0d5bb37191', N'6c358086-fffb-4ddc-98a0-718dedc25279')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'43f1c272-095b-41fb-ba44-9b69df1b23af', N'7e4a372b-3191-4e69-9e51-ad0d5bb37191', N'0e7760d3-3ce7-4342-8354-78a36a6e504a')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'4344508b-2293-4d3c-a5fd-2712c1467c5a', N'7e4a372b-3191-4e69-9e51-ad0d5bb37191', N'a1daf1b6-354f-456c-8776-a10d0641edbb')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'870f722a-f95a-40db-ac04-149fa672fcef', N'7e4a372b-3191-4e69-9e51-ad0d5bb37191', N'2d6cd685-f146-40b0-9919-89c2ae6c7bf6')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'2d2c0019-8978-40d8-93c8-93786434f0c3', N'7e4a372b-3191-4e69-9e51-ad0d5bb37191', N'd742bb5a-f413-45bd-9a9f-de1a05b7c60d')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'86ad8eee-8b0d-4165-8f56-7580513733c5', N'7e4a372b-3191-4e69-9e51-ad0d5bb37191', N'052f960a-2bd7-4e50-9ae0-455f8ff441d3')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'a974e2c7-000b-4522-aacd-8a60770a211a', N'6b4bcfc7-ddbd-4013-afeb-e36bdbf47114', N'1c6cafec-e599-4af6-a5ac-e5d0e900ffc0')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'007b0380-4fc7-40a0-b17d-97a70f8b82be', N'6b4bcfc7-ddbd-4013-afeb-e36bdbf47114', N'799f490f-2920-4f25-9bc5-00ad025db684')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'f5a5d72d-8154-4bef-816e-d14569aedb00', N'6b4bcfc7-ddbd-4013-afeb-e36bdbf47114', N'80197e0f-ceec-4a4b-b5ed-f0577672d9e2')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'5dbab65f-7072-4f6a-8a41-782f4a1c2ca4', N'6b4bcfc7-ddbd-4013-afeb-e36bdbf47114', N'4e47c426-e29d-41d7-a186-de78fa385e02')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'9446f982-ba4c-4f9a-a8be-c230b476a383', N'6b4bcfc7-ddbd-4013-afeb-e36bdbf47114', N'24040ad2-80a9-43c5-b8fc-a9a3bddaf93e')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'e31341d0-9104-4b8c-8898-f56b3896933a', N'6b4bcfc7-ddbd-4013-afeb-e36bdbf47114', N'603b0af5-5a16-4d07-a435-b6373740ebc1')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'3c4a6503-9db7-48b5-82d1-4ed75edd452e', N'6b4bcfc7-ddbd-4013-afeb-e36bdbf47114', N'43f27833-fa92-4932-bc9b-fa3e6f694d3c')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'f8a4c6a2-f8aa-413e-a46d-5c08840e813f', N'6b4bcfc7-ddbd-4013-afeb-e36bdbf47114', N'8784962d-ff92-4868-a266-42573edb3152')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'719b59a8-daff-4ffe-85f3-e1905c4aedf9', N'6b4bcfc7-ddbd-4013-afeb-e36bdbf47114', N'6c358086-fffb-4ddc-98a0-718dedc25279')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'8530cd99-a9f1-4845-9b21-1f1ba0b4c307', N'6b4bcfc7-ddbd-4013-afeb-e36bdbf47114', N'0e7760d3-3ce7-4342-8354-78a36a6e504a')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'c53de4a9-b6ec-4f5e-9045-3d45d7afa91c', N'6b4bcfc7-ddbd-4013-afeb-e36bdbf47114', N'2d6cd685-f146-40b0-9919-89c2ae6c7bf6')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'3d710646-1d17-4c7f-812c-45b10f141cd5', N'6b4bcfc7-ddbd-4013-afeb-e36bdbf47114', N'f1109d53-c8df-4125-8293-2b3cccd90afa')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'7f818289-1e33-467c-95ba-9c3f6b839d63', N'6b4bcfc7-ddbd-4013-afeb-e36bdbf47114', N'd742bb5a-f413-45bd-9a9f-de1a05b7c60d')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'31ec88f4-61c2-4ba9-8f3a-c89451f33f56', N'6b4bcfc7-ddbd-4013-afeb-e36bdbf47114', N'052f960a-2bd7-4e50-9ae0-455f8ff441d3')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'2379d680-9641-42a6-9f55-3d02ae7b92e1', N'6b4bcfc7-ddbd-4013-afeb-e36bdbf47114', N'8d1e943b-7631-4d64-90e2-c23d15e86ebc')
/****** Object:  Table [dbo].[RMS_Role]    Script Date: 03/28/2016 09:50:42 ******/
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
/****** Object:  Table [dbo].[RMS_Menus]    Script Date: 03/28/2016 09:50:42 ******/
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
INSERT [dbo].[RMS_Menus] ([Id], [ParentManuId], [OrderNo], [Remarks], [ManuName], [URL], [IsShow], [IsEnable], [CreateTime], [ModifyTime], [Icon], [MIcon]) VALUES (N'029a6c5c-4c4e-41d8-bdc6-1174318741e3', N'b3e07fa4-2820-4c2f-a88f-941b2a5976c7', 2, N'登录用户的信息', N'用户管理', N'User', 1, 1, CAST(0x0000A5A30073494A AS DateTime), CAST(0x0000A5A30073494A AS DateTime), N'icon-user', N'icon-user')
INSERT [dbo].[RMS_Menus] ([Id], [ParentManuId], [OrderNo], [Remarks], [ManuName], [URL], [IsShow], [IsEnable], [CreateTime], [ModifyTime], [Icon], [MIcon]) VALUES (N'82ab8599-04d0-409b-818b-11cd5ea642ef', N'b3e07fa4-2820-4c2f-a88f-941b2a5976c7', 3, N'23', N'角色管理', N'Role', 1, 1, CAST(0x0000A5A3007376D9 AS DateTime), CAST(0x0000A5A3007376D9 AS DateTime), N'icon-arrow_nsew', N'icon-arrow_nsew')
INSERT [dbo].[RMS_Menus] ([Id], [ParentManuId], [OrderNo], [Remarks], [ManuName], [URL], [IsShow], [IsEnable], [CreateTime], [ModifyTime], [Icon], [MIcon]) VALUES (N'9b7cd5ef-a033-42c6-98bc-4157d6ff23b7', N'5e72df14-8788-4307-a700-d5787732cbb5', 1, N'1221', N'生平管理', N'TF_LifeComments', 1, 1, CAST(0x0000A59F0188FAAB AS DateTime), CAST(0x0000A59F0188FAAB AS DateTime), N'icon-tick', NULL)
INSERT [dbo].[RMS_Menus] ([Id], [ParentManuId], [OrderNo], [Remarks], [ManuName], [URL], [IsShow], [IsEnable], [CreateTime], [ModifyTime], [Icon], [MIcon]) VALUES (N'c03f01bc-29a4-4c32-b2f8-53e4736c6aa4', N'00000000-0000-0000-0000-000000000000', 6, N'111', N'系统配置', N'#', 1, 1, CAST(0x0000A59F017EDA97 AS DateTime), CAST(0x0000A59F017EDA97 AS DateTime), N'icon-shape_square_select', N'icon-shape_square_select')
INSERT [dbo].[RMS_Menus] ([Id], [ParentManuId], [OrderNo], [Remarks], [ManuName], [URL], [IsShow], [IsEnable], [CreateTime], [ModifyTime], [Icon], [MIcon]) VALUES (N'f94992a9-68e7-44e3-86f3-93a5a4f10a4e', N'cb6a3fd7-a581-41c3-a52e-d3b385a9b219', 2, NULL, N'单位档案设置', N'TF_PersonnelFile_AetUnits', 1, 1, CAST(0x0000A5D700970369 AS DateTime), CAST(0x0000A5D700970369 AS DateTime), N'icon-wrench_orange', N'/Content/JqueryEasyUI/themes/icons/32/sport_tennis.png')
INSERT [dbo].[RMS_Menus] ([Id], [ParentManuId], [OrderNo], [Remarks], [ManuName], [URL], [IsShow], [IsEnable], [CreateTime], [ModifyTime], [Icon], [MIcon]) VALUES (N'8cf825de-ad5e-498f-a2aa-836c521ce009', N'b3e07fa4-2820-4c2f-a88f-941b2a5976c7', 4, N'12', N'菜单管理', N'Manu', 1, 1, CAST(0x0000A5A300736E55 AS DateTime), CAST(0x0000A5A300736E55 AS DateTime), N'icon-rainbow', N'icon-rainbow')
INSERT [dbo].[RMS_Menus] ([Id], [ParentManuId], [OrderNo], [Remarks], [ManuName], [URL], [IsShow], [IsEnable], [CreateTime], [ModifyTime], [Icon], [MIcon]) VALUES (N'701d6086-8d50-4d8c-b775-90c547ec25d5', N'b3e07fa4-2820-4c2f-a88f-941b2a5976c7', 6, N'2', N'按钮管理', N'Buttons', 1, 1, CAST(0x0000A5A300735E78 AS DateTime), CAST(0x0000A5A300735E78 AS DateTime), N'icon-tags_red', N'icon-tags_red')
INSERT [dbo].[RMS_Menus] ([Id], [ParentManuId], [OrderNo], [Remarks], [ManuName], [URL], [IsShow], [IsEnable], [CreateTime], [ModifyTime], [Icon], [MIcon]) VALUES (N'b3e07fa4-2820-4c2f-a88f-941b2a5976c7', N'00000000-0000-0000-0000-000000000000', 7, N'12', N'权限管理', N'#', 1, 1, CAST(0x0000A59F017EE3D5 AS DateTime), CAST(0x0000A59F017EE3D5 AS DateTime), N'icon-book', N'icon-book')
INSERT [dbo].[RMS_Menus] ([Id], [ParentManuId], [OrderNo], [Remarks], [ManuName], [URL], [IsShow], [IsEnable], [CreateTime], [ModifyTime], [Icon], [MIcon]) VALUES (N'1fbd7363-1186-4a53-bdd3-9678a0093589', N'b3e07fa4-2820-4c2f-a88f-941b2a5976c7', 1, N'12', N'部门设置', N'Department', 1, 1, CAST(0x0000A46B009BA93E AS DateTime), CAST(0x0000A46B009BA93E AS DateTime), N'icon-users', N'icon-users')
INSERT [dbo].[RMS_Menus] ([Id], [ParentManuId], [OrderNo], [Remarks], [ManuName], [URL], [IsShow], [IsEnable], [CreateTime], [ModifyTime], [Icon], [MIcon]) VALUES (N'fcab7171-5c19-4117-af0e-c0407e6d280e', N'cb6a3fd7-a581-41c3-a52e-d3b385a9b219', 3, NULL, N'档案转入', N'TF_PersonnelFile_Transmitting_In', 1, 1, CAST(0x0000A5A3000EA3E8 AS DateTime), CAST(0x0000A5A3000EA3E8 AS DateTime), N'icon-vector', NULL)
INSERT [dbo].[RMS_Menus] ([Id], [ParentManuId], [OrderNo], [Remarks], [ManuName], [URL], [IsShow], [IsEnable], [CreateTime], [ModifyTime], [Icon], [MIcon]) VALUES (N'cbc19245-4fe9-4080-bc9b-f83563e62a54', N'c03f01bc-29a4-4c32-b2f8-53e4736c6aa4', 0, N'系统使用', N'数据词典', N'Dictionary', 1, 1, CAST(0x0000A30400BA3C90 AS DateTime), CAST(0x0000A30400BA3C90 AS DateTime), N'icon-text_inverse', N'/Content/JqueryEasyUI/themes/icons/32/add.png')
INSERT [dbo].[RMS_Menus] ([Id], [ParentManuId], [OrderNo], [Remarks], [ManuName], [URL], [IsShow], [IsEnable], [CreateTime], [ModifyTime], [Icon], [MIcon]) VALUES (N'cb6a3fd7-a581-41c3-a52e-d3b385a9b219', N'00000000-0000-0000-0000-000000000000', 1, NULL, N'档案管理', N'#', 1, 1, CAST(0x0000A58400FC08E6 AS DateTime), CAST(0x0000A58400FC08E6 AS DateTime), N'icon-sport_golf_practice', N'/Content/JqueryEasyUI/themes/icons/32/car.png')
INSERT [dbo].[RMS_Menus] ([Id], [ParentManuId], [OrderNo], [Remarks], [ManuName], [URL], [IsShow], [IsEnable], [CreateTime], [ModifyTime], [Icon], [MIcon]) VALUES (N'97415592-11af-42d5-9709-92ef78487f1a', N'00000000-0000-0000-0000-000000000000', 0, NULL, N'单位材料处理', N'#', 1, 1, CAST(0x0000A59F017E84E0 AS DateTime), CAST(0x0000A59F017E84E0 AS DateTime), N'icon-page_white_star', NULL)
INSERT [dbo].[RMS_Menus] ([Id], [ParentManuId], [OrderNo], [Remarks], [ManuName], [URL], [IsShow], [IsEnable], [CreateTime], [ModifyTime], [Icon], [MIcon]) VALUES (N'5942d6f5-903a-4870-8545-48cfaec77387', N'97415592-11af-42d5-9709-92ef78487f1a', 3, NULL, N'办件审核', N'#', 1, 1, CAST(0x0000A59F017FEC8A AS DateTime), CAST(0x0000A59F017FEC8A AS DateTime), N'icon-rainbow', NULL)
INSERT [dbo].[RMS_Menus] ([Id], [ParentManuId], [OrderNo], [Remarks], [ManuName], [URL], [IsShow], [IsEnable], [CreateTime], [ModifyTime], [Icon], [MIcon]) VALUES (N'4eef9033-2c87-45e5-a500-278e10e14b9d', N'cb6a3fd7-a581-41c3-a52e-d3b385a9b219', 4, NULL, N'档案转出', N'TF_PersonnelFile_Transmitting_Out', 1, 1, CAST(0x0000A5D601898B02 AS DateTime), CAST(0x0000A5D601898B02 AS DateTime), N'icon-plugin', NULL)
INSERT [dbo].[RMS_Menus] ([Id], [ParentManuId], [OrderNo], [Remarks], [ManuName], [URL], [IsShow], [IsEnable], [CreateTime], [ModifyTime], [Icon], [MIcon]) VALUES (N'25b900c5-6306-4a3f-887f-815e9bf372e8', N'cb6a3fd7-a581-41c3-a52e-d3b385a9b219', 0, NULL, N'人员档案库', N'TF_PersonnelFile', 1, 1, CAST(0x0000A59F0186FEAB AS DateTime), CAST(0x0000A59F0186FEAB AS DateTime), N'icon-rgb', NULL)
INSERT [dbo].[RMS_Menus] ([Id], [ParentManuId], [OrderNo], [Remarks], [ManuName], [URL], [IsShow], [IsEnable], [CreateTime], [ModifyTime], [Icon], [MIcon]) VALUES (N'5e72df14-8788-4307-a700-d5787732cbb5', N'00000000-0000-0000-0000-000000000000', 2, N'运营端，管理医院数据', N'干部生平管理', N'#', 1, 1, CAST(0x0000A59F017F03BC AS DateTime), CAST(0x0000A59F017F03BC AS DateTime), N'icon-group32', N'/Content/JqueryEasyUI/themes/icons/32/group_error.png')
INSERT [dbo].[RMS_Menus] ([Id], [ParentManuId], [OrderNo], [Remarks], [ManuName], [URL], [IsShow], [IsEnable], [CreateTime], [ModifyTime], [Icon], [MIcon]) VALUES (N'7a8c4046-04e3-4559-bc1c-53f945b99bb1', N'c03f01bc-29a4-4c32-b2f8-53e4736c6aa4', 3, NULL, N'城市管理', N'Sys_CityArea', 1, 1, CAST(0x0000A56E015CD543 AS DateTime), CAST(0x0000A56E015CD543 AS DateTime), N'icon-color_swatch', NULL)
INSERT [dbo].[RMS_Menus] ([Id], [ParentManuId], [OrderNo], [Remarks], [ManuName], [URL], [IsShow], [IsEnable], [CreateTime], [ModifyTime], [Icon], [MIcon]) VALUES (N'c5f56312-eb83-479e-8836-fa66913642c8', N'00000000-0000-0000-0000-000000000000', 3, NULL, N'日常文件材料管理', N'#', 1, 1, CAST(0x0000A59F017EC817 AS DateTime), CAST(0x0000A59F017EC817 AS DateTime), N'icon-folder', NULL)
INSERT [dbo].[RMS_Menus] ([Id], [ParentManuId], [OrderNo], [Remarks], [ManuName], [URL], [IsShow], [IsEnable], [CreateTime], [ModifyTime], [Icon], [MIcon]) VALUES (N'ae0bea25-acca-43ad-b8ee-bbaa2dc62795', N'c5f56312-eb83-479e-8836-fa66913642c8', 23, N'电车卖家，电池卖家等', N'纸质文件', N'TF_PaperFile', 1, 1, CAST(0x0000A58400FB04F1 AS DateTime), CAST(0x0000A58400FB04F1 AS DateTime), N'icon-page_white_swoosh', N'/Content/JqueryEasyUI/themes/icons/32/bell_link.png')
INSERT [dbo].[RMS_Menus] ([Id], [ParentManuId], [OrderNo], [Remarks], [ManuName], [URL], [IsShow], [IsEnable], [CreateTime], [ModifyTime], [Icon], [MIcon]) VALUES (N'a8b23326-01d0-4407-9b7f-82dadf483382', N'97415592-11af-42d5-9709-92ef78487f1a', 1, NULL, N'办件分类', N'#', 1, 1, CAST(0x0000A59F0182D4B8 AS DateTime), CAST(0x0000A59F0182D4B8 AS DateTime), N'icon-arrow_branch', NULL)
INSERT [dbo].[RMS_Menus] ([Id], [ParentManuId], [OrderNo], [Remarks], [ManuName], [URL], [IsShow], [IsEnable], [CreateTime], [ModifyTime], [Icon], [MIcon]) VALUES (N'a83eaa2a-2f6f-49ed-bac0-fea7369b4fc2', N'97415592-11af-42d5-9709-92ef78487f1a', 2, N'资讯类型', N'办件登记', N'DynamicTable/TemplateList', 1, 1, CAST(0x0000A5A2012CEFA9 AS DateTime), CAST(0x0000A5A2012CEFA9 AS DateTime), N'icon-book', NULL)
INSERT [dbo].[RMS_Menus] ([Id], [ParentManuId], [OrderNo], [Remarks], [ManuName], [URL], [IsShow], [IsEnable], [CreateTime], [ModifyTime], [Icon], [MIcon]) VALUES (N'0211853c-2580-4b25-a473-62a33c7b2782', N'c5f56312-eb83-479e-8836-fa66913642c8', NULL, N'维修店用', N'电子文件', N'TF_ElectronicFile', 1, 1, CAST(0x0000A58400FB0E55 AS DateTime), CAST(0x0000A58400FB0E55 AS DateTime), N'icon-page_white_font', NULL)
INSERT [dbo].[RMS_Menus] ([Id], [ParentManuId], [OrderNo], [Remarks], [ManuName], [URL], [IsShow], [IsEnable], [CreateTime], [ModifyTime], [Icon], [MIcon]) VALUES (N'18f90f0f-842d-403c-b459-760550bd3277', N'c03f01bc-29a4-4c32-b2f8-53e4736c6aa4', 1, NULL, N'模板管理', N'DynamicTable', 1, 1, CAST(0x0000A59F0189A734 AS DateTime), CAST(0x0000A59F0189A734 AS DateTime), N'icon-plugin', NULL)
INSERT [dbo].[RMS_Menus] ([Id], [ParentManuId], [OrderNo], [Remarks], [ManuName], [URL], [IsShow], [IsEnable], [CreateTime], [ModifyTime], [Icon], [MIcon]) VALUES (N'a5ce5d2d-9fb4-402b-a717-d869054764b8', N'00000000-0000-0000-0000-000000000000', 5, NULL, N'工资管理', N'#', 1, 1, CAST(0x0000A59F017D394D AS DateTime), CAST(0x0000A59F017D394D AS DateTime), N'icon-coins', NULL)
INSERT [dbo].[RMS_Menus] ([Id], [ParentManuId], [OrderNo], [Remarks], [ManuName], [URL], [IsShow], [IsEnable], [CreateTime], [ModifyTime], [Icon], [MIcon]) VALUES (N'13fbc9c8-d918-4480-a8c9-15908b74beec', N'97415592-11af-42d5-9709-92ef78487f1a', 4, NULL, N'办件信息提取', N'#', 1, 1, CAST(0x0000A59F01802217 AS DateTime), CAST(0x0000A59F01802217 AS DateTime), N'icon-arrow_branch', NULL)
INSERT [dbo].[RMS_Menus] ([Id], [ParentManuId], [OrderNo], [Remarks], [ManuName], [URL], [IsShow], [IsEnable], [CreateTime], [ModifyTime], [Icon], [MIcon]) VALUES (N'0c310986-8e5e-4adc-90ae-0a393a39add5', N'97415592-11af-42d5-9709-92ef78487f1a', 5, NULL, N'办件分发', N'#', 1, 1, CAST(0x0000A59F01806306 AS DateTime), CAST(0x0000A59F01806306 AS DateTime), N'icon-arrow_nw_ne_sw_se', NULL)
INSERT [dbo].[RMS_Menus] ([Id], [ParentManuId], [OrderNo], [Remarks], [ManuName], [URL], [IsShow], [IsEnable], [CreateTime], [ModifyTime], [Icon], [MIcon]) VALUES (N'7f51b89f-2141-4e7f-ab41-c5291982355a', N'b3e07fa4-2820-4c2f-a88f-941b2a5976c7', NULL, NULL, N'单位管理', N'TF_Units', 1, 1, CAST(0x0000A5A30072FE7B AS DateTime), CAST(0x0000A5A30072FE7B AS DateTime), N'icon-tag', NULL)
INSERT [dbo].[RMS_Menus] ([Id], [ParentManuId], [OrderNo], [Remarks], [ManuName], [URL], [IsShow], [IsEnable], [CreateTime], [ModifyTime], [Icon], [MIcon]) VALUES (N'e6d04c97-58ec-4159-9233-755015452c45', N'97415592-11af-42d5-9709-92ef78487f1a', 6, NULL, N'办件接收确认', N'#', 1, 1, CAST(0x0000A59F0180DE5E AS DateTime), CAST(0x0000A59F0180DE5E AS DateTime), N'icon-ok', NULL)
INSERT [dbo].[RMS_Menus] ([Id], [ParentManuId], [OrderNo], [Remarks], [ManuName], [URL], [IsShow], [IsEnable], [CreateTime], [ModifyTime], [Icon], [MIcon]) VALUES (N'8fd3c145-4eac-436e-b689-e3b9574b0e53', N'97415592-11af-42d5-9709-92ef78487f1a', 7, NULL, N'办件管理', N'#', 1, 1, CAST(0x0000A59F0182CB8B AS DateTime), CAST(0x0000A59F0182CB8B AS DateTime), N'icon-border_all', NULL)
INSERT [dbo].[RMS_Menus] ([Id], [ParentManuId], [OrderNo], [Remarks], [ManuName], [URL], [IsShow], [IsEnable], [CreateTime], [ModifyTime], [Icon], [MIcon]) VALUES (N'cd986342-511d-4869-8751-0f474ddd95ad', N'cb6a3fd7-a581-41c3-a52e-d3b385a9b219', 5, NULL, N'档案查阅', N'TF_PersonnelFile_Consult', 1, 1, CAST(0x0000A5D700065F11 AS DateTime), CAST(0x0000A5D700065F11 AS DateTime), N'icon-application_form_magnify', NULL)
INSERT [dbo].[RMS_Menus] ([Id], [ParentManuId], [OrderNo], [Remarks], [ManuName], [URL], [IsShow], [IsEnable], [CreateTime], [ModifyTime], [Icon], [MIcon]) VALUES (N'01b2df1a-a36f-4327-b490-60a7ca085e75', N'cb6a3fd7-a581-41c3-a52e-d3b385a9b219', 6, NULL, N'档案借用', N'TF_PersonnelFile_Borrow', 1, 1, CAST(0x0000A5D7001670C7 AS DateTime), CAST(0x0000A5D7001670C7 AS DateTime), N'icon-page_add', NULL)
INSERT [dbo].[RMS_Menus] ([Id], [ParentManuId], [OrderNo], [Remarks], [ManuName], [URL], [IsShow], [IsEnable], [CreateTime], [ModifyTime], [Icon], [MIcon]) VALUES (N'a1010003-7e5d-42ea-88a8-c06b22cccd0f', N'a5ce5d2d-9fb4-402b-a717-d869054764b8', 1, NULL, N'市管干部工资办理登记', N'#', 1, 1, CAST(0x0000A59F018964AE AS DateTime), CAST(0x0000A59F018964AE AS DateTime), N'icon-note', NULL)
INSERT [dbo].[RMS_Menus] ([Id], [ParentManuId], [OrderNo], [Remarks], [ManuName], [URL], [IsShow], [IsEnable], [CreateTime], [ModifyTime], [Icon], [MIcon]) VALUES (N'333bb424-811f-4ca3-95a5-7514cd7ebff4', N'a5ce5d2d-9fb4-402b-a717-d869054764b8', 2, NULL, N'区管、中管干部', N'#', 1, 1, CAST(0x0000A59F01898C57 AS DateTime), CAST(0x0000A59F01898C57 AS DateTime), N'icon-package', NULL)
INSERT [dbo].[RMS_Menus] ([Id], [ParentManuId], [OrderNo], [Remarks], [ManuName], [URL], [IsShow], [IsEnable], [CreateTime], [ModifyTime], [Icon], [MIcon]) VALUES (N'5294777a-8ee9-4ceb-b8b2-2a93025e69c3', N'c03f01bc-29a4-4c32-b2f8-53e4736c6aa4', 1, NULL, N'字典类型', N'DynamicTable/BaschartypeResult', 1, 1, CAST(0x0000A5C900982246 AS DateTime), CAST(0x0000A5C900982246 AS DateTime), N'icon-page_white_star', NULL)
INSERT [dbo].[RMS_Menus] ([Id], [ParentManuId], [OrderNo], [Remarks], [ManuName], [URL], [IsShow], [IsEnable], [CreateTime], [ModifyTime], [Icon], [MIcon]) VALUES (N'd977588e-680f-4e2a-afba-25732c4ee0c5', N'c03f01bc-29a4-4c32-b2f8-53e4736c6aa4', 2, NULL, N'字典值录入', N'DynamicTable/BascharvalueResult', 1, 1, CAST(0x0000A5C900985B4D AS DateTime), CAST(0x0000A5C900985B4D AS DateTime), N'icon-calculator_add', NULL)
/****** Object:  Table [dbo].[RMS_MenuButtons]    Script Date: 03/28/2016 09:50:42 ******/
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
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'0e5b6abf-ae50-45ef-bf33-00c68d3fa161', N'fcab7171-5c19-4117-af0e-c0407e6d280e', N'69cf2259-4856-4e5b-8ba2-2181774232d9', 4)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'72858b93-808a-4456-896e-1a0445db8fee', N'fcab7171-5c19-4117-af0e-c0407e6d280e', N'a6032fbc-4587-4feb-b7ab-b6d6722f6c19', 3)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'80197e0f-ceec-4a4b-b5ed-f0577672d9e2', N'4eef9033-2c87-45e5-a500-278e10e14b9d', N'a6032fbc-4587-4feb-b7ab-b6d6722f6c19', 3)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'18381400-99b5-4bc2-9045-77be5c7c2d1c', N'fcab7171-5c19-4117-af0e-c0407e6d280e', N'90984d1f-fe51-4efd-9e2b-0dfa85f867a3', 1)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'0eb8b1c2-51b2-4bfa-87e4-2b11ebce36d4', N'5942d6f5-903a-4870-8545-48cfaec77387', N'90984d1f-fe51-4efd-9e2b-0dfa85f867a3', 0)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'bddb8ba8-87f4-4871-9a0f-0d2c630c4c6f', N'5942d6f5-903a-4870-8545-48cfaec77387', N'69cf2259-4856-4e5b-8ba2-2181774232d9', 3)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'ed99db36-efe7-4f57-82a8-5b4f44f9e66a', N'5942d6f5-903a-4870-8545-48cfaec77387', N'cb27b325-cb67-4b19-9149-030f4fed5deb', 1)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'799f490f-2920-4f25-9bc5-00ad025db684', N'4eef9033-2c87-45e5-a500-278e10e14b9d', N'69cf2259-4856-4e5b-8ba2-2181774232d9', 4)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'1c6cafec-e599-4af6-a5ac-e5d0e900ffc0', N'4eef9033-2c87-45e5-a500-278e10e14b9d', N'90984d1f-fe51-4efd-9e2b-0dfa85f867a3', 1)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'89da12b8-dc9c-4908-b6be-79aea484394e', N'4eef9033-2c87-45e5-a500-278e10e14b9d', N'7f6272f8-1990-40e0-9ae1-2593e7a60f43', 2)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'd0968c5b-a592-43ea-811f-1c5af6552b7b', N'5942d6f5-903a-4870-8545-48cfaec77387', N'7f6272f8-1990-40e0-9ae1-2593e7a60f43', 2)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'bde2c1f4-8197-4fb5-b8ee-7223067739fb', N'fcab7171-5c19-4117-af0e-c0407e6d280e', N'7f6272f8-1990-40e0-9ae1-2593e7a60f43', 2)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'52959c9b-86b3-45d2-8a1a-8018f299cd5d', N'25b900c5-6306-4a3f-887f-815e9bf372e8', N'7f6272f8-1990-40e0-9ae1-2593e7a60f43', 2)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'fe4acc8c-53a2-4adf-9c1b-eb74709f5985', N'25b900c5-6306-4a3f-887f-815e9bf372e8', N'cb27b325-cb67-4b19-9149-030f4fed5deb', 1)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'415fc710-652d-4d7f-a3a6-16034f5fcc01', N'25b900c5-6306-4a3f-887f-815e9bf372e8', N'69cf2259-4856-4e5b-8ba2-2181774232d9', 5)
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
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'e6b8a011-cbb7-424d-b613-973d9150727e', N'7f51b89f-2141-4e7f-ab41-c5291982355a', N'69cf2259-4856-4e5b-8ba2-2181774232d9', 3)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'1a7615df-dafb-4e69-9384-07221996a0c7', N'7f51b89f-2141-4e7f-ab41-c5291982355a', N'7f6272f8-1990-40e0-9ae1-2593e7a60f43', 2)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'd847b854-f5fb-4c5a-9a93-d5f70c263ca3', N'7f51b89f-2141-4e7f-ab41-c5291982355a', N'cb27b325-cb67-4b19-9149-030f4fed5deb', 1)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'4aaa6ad3-3da9-44ce-870c-4e1223d97951', N'7f51b89f-2141-4e7f-ab41-c5291982355a', N'90984d1f-fe51-4efd-9e2b-0dfa85f867a3', 0)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'293c77bd-c034-41f4-b004-d74a2dd68a9b', N'25b900c5-6306-4a3f-887f-815e9bf372e8', N'd805c462-07ac-4b83-9587-143c754e5586', 4)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'e607c1e1-b9e1-43c0-bc00-3dcc84e9a659', N'25b900c5-6306-4a3f-887f-815e9bf372e8', N'a04c45d9-8225-4a6c-94f6-ca95b880d6c8', 3)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'af5cf4e0-44fc-4491-bdf7-4db858aa825d', N'fcab7171-5c19-4117-af0e-c0407e6d280e', N'a8c25fda-8e77-41e4-87c1-c6a7d976964e', 0)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'4e47c426-e29d-41d7-a186-de78fa385e02', N'4eef9033-2c87-45e5-a500-278e10e14b9d', N'a8c25fda-8e77-41e4-87c1-c6a7d976964e', 0)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'cf8ac4dc-4c56-4051-b13f-ac3fedf34447', N'cd986342-511d-4869-8751-0f474ddd95ad', N'7f6272f8-1990-40e0-9ae1-2593e7a60f43', 2)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'43f27833-fa92-4932-bc9b-fa3e6f694d3c', N'cd986342-511d-4869-8751-0f474ddd95ad', N'69cf2259-4856-4e5b-8ba2-2181774232d9', 4)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'603b0af5-5a16-4d07-a435-b6373740ebc1', N'cd986342-511d-4869-8751-0f474ddd95ad', N'90984d1f-fe51-4efd-9e2b-0dfa85f867a3', 1)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'8784962d-ff92-4868-a266-42573edb3152', N'cd986342-511d-4869-8751-0f474ddd95ad', N'a8c25fda-8e77-41e4-87c1-c6a7d976964e', 0)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'2d6cd685-f146-40b0-9919-89c2ae6c7bf6', N'01b2df1a-a36f-4327-b490-60a7ca085e75', N'a8c25fda-8e77-41e4-87c1-c6a7d976964e', 0)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'0e7760d3-3ce7-4342-8354-78a36a6e504a', N'01b2df1a-a36f-4327-b490-60a7ca085e75', N'69cf2259-4856-4e5b-8ba2-2181774232d9', 4)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'7827aad0-bafb-4290-9816-7849b8dce8e8', N'01b2df1a-a36f-4327-b490-60a7ca085e75', N'7f6272f8-1990-40e0-9ae1-2593e7a60f43', 2)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'6f8bba2d-7a8a-4fa1-bdaa-cc228b05f146', N'cd986342-511d-4869-8751-0f474ddd95ad', N'a6032fbc-4587-4feb-b7ab-b6d6722f6c19', 3)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'6c358086-fffb-4ddc-98a0-718dedc25279', N'01b2df1a-a36f-4327-b490-60a7ca085e75', N'90984d1f-fe51-4efd-9e2b-0dfa85f867a3', 1)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'a1daf1b6-354f-456c-8776-a10d0641edbb', N'01b2df1a-a36f-4327-b490-60a7ca085e75', N'a6032fbc-4587-4feb-b7ab-b6d6722f6c19', 3)
/****** Object:  Table [dbo].[RMS_Department]    Script Date: 03/28/2016 09:50:42 ******/
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
/****** Object:  Table [dbo].[RMS_Buttons]    Script Date: 03/28/2016 09:50:42 ******/
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
INSERT [dbo].[RMS_Buttons] ([Id], [ButtonName], [OrderNo], [Icon], [Remarks], [CreateTime], [ModifyTime], [ValueName], [FunctionName]) VALUES (N'a04c45d9-8225-4a6c-94f6-ca95b880d6c8', N'分配转入单位', NULL, N'icon-arrow_in_longer', N'人员档案 设置可以转入的单位', CAST(0x0000A5A2016E872E AS DateTime), CAST(0x0000A5A2016E872E AS DateTime), N'Transmitting_InBtn', N'Transmitting_InOp')
INSERT [dbo].[RMS_Buttons] ([Id], [ButtonName], [OrderNo], [Icon], [Remarks], [CreateTime], [ModifyTime], [ValueName], [FunctionName]) VALUES (N'd805c462-07ac-4b83-9587-143c754e5586', N'分配转出单位', NULL, N'icon-arrow_out_longer', N'人员档案 设置可以转出的单位', CAST(0x0000A5A2016EBFDC AS DateTime), CAST(0x0000A5A2016EBFDC AS DateTime), N'Transmitting_OutBtn', N'Transmitting_OutOP')
INSERT [dbo].[RMS_Buttons] ([Id], [ButtonName], [OrderNo], [Icon], [Remarks], [CreateTime], [ModifyTime], [ValueName], [FunctionName]) VALUES (N'a8c25fda-8e77-41e4-87c1-c6a7d976964e', N'刷新', 1, N'icon-arrow_refresh', NULL, CAST(0x0000A5D60165AB35 AS DateTime), CAST(0x0000A5D60165AB35 AS DateTime), N'RefreshBtn', N'RefreshOP')
INSERT [dbo].[RMS_Buttons] ([Id], [ButtonName], [OrderNo], [Icon], [Remarks], [CreateTime], [ModifyTime], [ValueName], [FunctionName]) VALUES (N'1df6821c-53ea-4e14-b454-caafda67072b', N'打印', 2, N'icon-printer_connect', NULL, CAST(0x0000A5D6016C0823 AS DateTime), CAST(0x0000A5D6016C0823 AS DateTime), N'PrintBtn', N'PrintOP')
/****** Object:  StoredProcedure [dbo].[proc_DelForSetDelete]    Script Date: 03/28/2016 09:50:40 ******/
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
/****** Object:  StoredProcedure [dbo].[proc_DataPagingList]    Script Date: 03/28/2016 09:50:40 ******/
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
/****** Object:  StoredProcedure [dbo].[proc_CountOne]    Script Date: 03/28/2016 09:50:40 ******/
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
/****** Object:  Table [dbo].[MainAssociation]    Script Date: 03/28/2016 09:50:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MainAssociation](
	[ID] [varchar](40) NULL,
	[CategoryTableID] [varchar](40) NULL,
	[ChildCategoryTableID] [varchar](40) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[MainAssociation] ([ID], [CategoryTableID], [ChildCategoryTableID]) VALUES (N'26965040-a15c-4ed4-994b-db55bb1a7757', N'c7d96b43-20e2-4630-b927-5e3ea59d21aa', N'be8cef72-5c83-435e-8397-4138048bd478')
INSERT [dbo].[MainAssociation] ([ID], [CategoryTableID], [ChildCategoryTableID]) VALUES (N'1581c52e-43fe-46f0-9bba-11cf75386411', N'50a24a81-bf2c-4cfa-b227-c6b6c665c085', N'970a8d70-a530-483e-a4cf-58c0d934ab18')
INSERT [dbo].[MainAssociation] ([ID], [CategoryTableID], [ChildCategoryTableID]) VALUES (N'85ef6ad8-309a-4d0b-8012-77ff96bd45ad', N'50a24a81-bf2c-4cfa-b227-c6b6c665c085', N'6c349365-2d46-4985-9935-23da01e18960')
INSERT [dbo].[MainAssociation] ([ID], [CategoryTableID], [ChildCategoryTableID]) VALUES (N'87c0af94-2289-458e-b06d-be28a979dfc5', N'6c349365-2d46-4985-9935-23da01e18960', N'50a24a81-bf2c-4cfa-b227-c6b6c665c085')
INSERT [dbo].[MainAssociation] ([ID], [CategoryTableID], [ChildCategoryTableID]) VALUES (N'b32930ef-460a-499c-b168-b76197725e47', N'6c349365-2d46-4985-9935-23da01e18960', N'970a8d70-a530-483e-a4cf-58c0d934ab18')
INSERT [dbo].[MainAssociation] ([ID], [CategoryTableID], [ChildCategoryTableID]) VALUES (N'3b56fff7-d47b-4b6a-b7a7-72501b6c3d64', N'6c349365-2d46-4985-9935-23da01e18960', N'c7d96b43-20e2-4630-b927-5e3ea59d21aa')
INSERT [dbo].[MainAssociation] ([ID], [CategoryTableID], [ChildCategoryTableID]) VALUES (N'420c9c0a-1856-4b93-826c-95ac95201a31', N'970a8d70-a530-483e-a4cf-58c0d934ab18', N'6c349365-2d46-4985-9935-23da01e18960')
/****** Object:  Table [dbo].[lsdaclzdj]    Script Date: 03/28/2016 09:50:42 ******/
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
/****** Object:  Table [dbo].[lsdaclqsb]    Script Date: 03/28/2016 09:50:42 ******/
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
	[ck] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[lsdaclqsb] ([ID], [CreatName], [CreateTime], [zcdw], [xh], [daclmc], [fsys], [qsrjsj], [bz], [ck]) VALUES (N'bdc5410a-1cd0-46cd-806d-7ef1ed61cc92', N'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
/****** Object:  UserDefinedFunction [dbo].[fnGetDistance]    Script Date: 03/28/2016 09:50:42 ******/
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
/****** Object:  Table [dbo].[File_Image]    Script Date: 03/28/2016 09:50:42 ******/
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
/****** Object:  UserDefinedFunction [dbo].[F_PoiDistance]    Script Date: 03/28/2016 09:50:42 ******/
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
/****** Object:  Table [dbo].[CorrelateColumns]    Script Date: 03/28/2016 09:50:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CorrelateColumns](
	[ID] [varchar](40) NULL,
	[ColumnChartsID] [varchar](40) NULL,
	[ChildColumnChartsID] [varchar](40) NULL,
	[MainAssociationID] [varchar](40) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CorrelateColumns', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'住列的iD' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CorrelateColumns', @level2type=N'COLUMN',@level2name=N'ColumnChartsID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'关联列的主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CorrelateColumns', @level2type=N'COLUMN',@level2name=N'ChildColumnChartsID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'关联表id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CorrelateColumns', @level2type=N'COLUMN',@level2name=N'MainAssociationID'
GO
/****** Object:  Table [dbo].[ColumnCharts]    Script Date: 03/28/2016 09:50:42 ******/
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
	[ManagingStatus] [bit] NULL,
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
INSERT [dbo].[ColumnCharts] ([ID], [CategoryTableID], [field], [title], [rowspan], [width], [colspan], [align], [resizable], [hidden], [formatter], [checkbox], [styler], [editor], [SortNo], [IsEnable], [IsNumber], [NumberAddress], [MergeHeader], [ParentId], [ISLogpeople], [ISLoginsector], [ManagingStatus]) VALUES (N'024fa84c-e2fb-4e21-8cb5-6adb6929bb8a', N'6c349365-2d46-4985-9935-23da01e18960', N'sgbxm', N'市干部姓名', 1, 100, 1, N'center', NULL, NULL, NULL, NULL, NULL, N'type: ''text'', options: { }', CAST(2 AS Decimal(3, 0)), 1, 0, NULL, 0, NULL, 0, 0, NULL)
INSERT [dbo].[ColumnCharts] ([ID], [CategoryTableID], [field], [title], [rowspan], [width], [colspan], [align], [resizable], [hidden], [formatter], [checkbox], [styler], [editor], [SortNo], [IsEnable], [IsNumber], [NumberAddress], [MergeHeader], [ParentId], [ISLogpeople], [ISLoginsector], [ManagingStatus]) VALUES (N'0490f401-c193-44c0-9604-aabcac289d24', N'6c349365-2d46-4985-9935-23da01e18960', N'gbssdw', N'干部所属单位', 1, 100, 1, N'center', NULL, NULL, NULL, NULL, NULL, N'type: ''text'', options: { }', CAST(3 AS Decimal(3, 0)), 1, 0, NULL, 0, NULL, 0, 0, NULL)
INSERT [dbo].[ColumnCharts] ([ID], [CategoryTableID], [field], [title], [rowspan], [width], [colspan], [align], [resizable], [hidden], [formatter], [checkbox], [styler], [editor], [SortNo], [IsEnable], [IsNumber], [NumberAddress], [MergeHeader], [ParentId], [ISLogpeople], [ISLoginsector], [ManagingStatus]) VALUES (N'08e59a42-d1dc-4cb0-afa3-75b72bde8332', N'6c349365-2d46-4985-9935-23da01e18960', N'dasyjrsj', N'档案室移交人和时间', 1, 100, 1, N'center', NULL, NULL, NULL, NULL, NULL, N'type: ''text'', options: { }', CAST(5 AS Decimal(3, 0)), 1, 0, NULL, 0, NULL, 0, 0, NULL)
INSERT [dbo].[ColumnCharts] ([ID], [CategoryTableID], [field], [title], [rowspan], [width], [colspan], [align], [resizable], [hidden], [formatter], [checkbox], [styler], [editor], [SortNo], [IsEnable], [IsNumber], [NumberAddress], [MergeHeader], [ParentId], [ISLogpeople], [ISLoginsector], [ManagingStatus]) VALUES (N'0e88a2ab-d2e0-471b-a8a3-32510fc258f0', N'50a24a81-bf2c-4cfa-b227-c6b6c665c085', N'ck', N'ck', 1, 10, 1, N'center', NULL, NULL, NULL, NULL, NULL, NULL, CAST(0 AS Decimal(3, 0)), 1, 0, NULL, 0, NULL, 0, 0, NULL)
INSERT [dbo].[ColumnCharts] ([ID], [CategoryTableID], [field], [title], [rowspan], [width], [colspan], [align], [resizable], [hidden], [formatter], [checkbox], [styler], [editor], [SortNo], [IsEnable], [IsNumber], [NumberAddress], [MergeHeader], [ParentId], [ISLogpeople], [ISLoginsector], [ManagingStatus]) VALUES (N'10a950c5-5b32-4324-bbe7-acff98b79cb2', N'970a8d70-a530-483e-a4cf-58c0d934ab18', N'gkksqsrmsj', N'归口科室签收人姓名及时间', 1, 100, 1, N'center', NULL, NULL, NULL, NULL, NULL, N'type: ''text'', options: { }', CAST(5 AS Decimal(3, 0)), 1, 0, NULL, 0, NULL, 0, 0, NULL)
INSERT [dbo].[ColumnCharts] ([ID], [CategoryTableID], [field], [title], [rowspan], [width], [colspan], [align], [resizable], [hidden], [formatter], [checkbox], [styler], [editor], [SortNo], [IsEnable], [IsNumber], [NumberAddress], [MergeHeader], [ParentId], [ISLogpeople], [ISLoginsector], [ManagingStatus]) VALUES (N'122583f5-cab1-4f78-b866-20000dc98da3', N'be8cef72-5c83-435e-8397-4138048bd478', N'zcdw', N'转出单位', 1, 100, 1, N'center', NULL, NULL, NULL, NULL, NULL, N'type: ''text'', options: { }', CAST(2 AS Decimal(3, 0)), 1, 0, NULL, 0, NULL, 0, 0, NULL)
INSERT [dbo].[ColumnCharts] ([ID], [CategoryTableID], [field], [title], [rowspan], [width], [colspan], [align], [resizable], [hidden], [formatter], [checkbox], [styler], [editor], [SortNo], [IsEnable], [IsNumber], [NumberAddress], [MergeHeader], [ParentId], [ISLogpeople], [ISLoginsector], [ManagingStatus]) VALUES (N'1de72368-29aa-42c7-b3b2-e62f1ab69348', N'c7d96b43-20e2-4630-b927-5e3ea59d21aa', N'bh', N'编号', 1, 100, 1, N'center', NULL, NULL, NULL, NULL, NULL, NULL, CAST(1 AS Decimal(3, 0)), 1, 1, NULL, 0, NULL, 0, 0, NULL)
INSERT [dbo].[ColumnCharts] ([ID], [CategoryTableID], [field], [title], [rowspan], [width], [colspan], [align], [resizable], [hidden], [formatter], [checkbox], [styler], [editor], [SortNo], [IsEnable], [IsNumber], [NumberAddress], [MergeHeader], [ParentId], [ISLogpeople], [ISLoginsector], [ManagingStatus]) VALUES (N'1e895fa7-8af8-4f43-aeb3-9738750ac41d', N'c7d96b43-20e2-4630-b927-5e3ea59d21aa', N'gkkssqrxmjsj', N'归口科室签收人姓名及时间', 1, 100, 1, N'center', NULL, NULL, NULL, NULL, NULL, N'type: ''text'', options: { }', CAST(13 AS Decimal(3, 0)), 1, 0, NULL, 0, NULL, 0, 0, NULL)
INSERT [dbo].[ColumnCharts] ([ID], [CategoryTableID], [field], [title], [rowspan], [width], [colspan], [align], [resizable], [hidden], [formatter], [checkbox], [styler], [editor], [SortNo], [IsEnable], [IsNumber], [NumberAddress], [MergeHeader], [ParentId], [ISLogpeople], [ISLoginsector], [ManagingStatus]) VALUES (N'2153b6a8-9e58-40e7-a974-7e7d3944eb0f', N'c7d96b43-20e2-4630-b927-5e3ea59d21aa', N'ck', N'ck', 1, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ColumnCharts] ([ID], [CategoryTableID], [field], [title], [rowspan], [width], [colspan], [align], [resizable], [hidden], [formatter], [checkbox], [styler], [editor], [SortNo], [IsEnable], [IsNumber], [NumberAddress], [MergeHeader], [ParentId], [ISLogpeople], [ISLoginsector], [ManagingStatus]) VALUES (N'21aa79a8-26c1-40d2-aae5-5c73f970ddce', N'be8cef72-5c83-435e-8397-4138048bd478', N'clmc', N'材料名称', 1, 200, 1, N'center', NULL, NULL, NULL, NULL, NULL, N'type: ''text'', options: { }', CAST(3 AS Decimal(3, 0)), 1, 0, NULL, 0, NULL, 0, 0, NULL)
INSERT [dbo].[ColumnCharts] ([ID], [CategoryTableID], [field], [title], [rowspan], [width], [colspan], [align], [resizable], [hidden], [formatter], [checkbox], [styler], [editor], [SortNo], [IsEnable], [IsNumber], [NumberAddress], [MergeHeader], [ParentId], [ISLogpeople], [ISLoginsector], [ManagingStatus]) VALUES (N'28fd46ca-2933-4c95-bc80-68884ed43d35', N'c7d96b43-20e2-4630-b927-5e3ea59d21aa', N'qsrxmjsj', N'签收人姓名及时间', 1, 100, 1, N'center', NULL, NULL, NULL, NULL, NULL, N'type: ''text'', options: { }', CAST(11 AS Decimal(3, 0)), 1, 0, NULL, 0, NULL, 0, 0, NULL)
INSERT [dbo].[ColumnCharts] ([ID], [CategoryTableID], [field], [title], [rowspan], [width], [colspan], [align], [resizable], [hidden], [formatter], [checkbox], [styler], [editor], [SortNo], [IsEnable], [IsNumber], [NumberAddress], [MergeHeader], [ParentId], [ISLogpeople], [ISLoginsector], [ManagingStatus]) VALUES (N'388e614a-6aed-4ce7-8d93-34aee235013a', N'970a8d70-a530-483e-a4cf-58c0d934ab18', N'gkks', N'归口科室', 1, 100, 1, N'center', NULL, NULL, NULL, NULL, NULL, N'type: ''text'', options: { }', CAST(6 AS Decimal(3, 0)), 1, 0, NULL, 0, NULL, 0, 0, NULL)
INSERT [dbo].[ColumnCharts] ([ID], [CategoryTableID], [field], [title], [rowspan], [width], [colspan], [align], [resizable], [hidden], [formatter], [checkbox], [styler], [editor], [SortNo], [IsEnable], [IsNumber], [NumberAddress], [MergeHeader], [ParentId], [ISLogpeople], [ISLoginsector], [ManagingStatus]) VALUES (N'397d61e0-0785-4d25-968f-cd9b9036e41d', N'c7d96b43-20e2-4630-b927-5e3ea59d21aa', N'sj', N'时间', 1, 100, 1, N'center', NULL, NULL, NULL, NULL, NULL, N'type: ''text'', options: { }', CAST(2 AS Decimal(3, 0)), 1, 0, NULL, 0, NULL, 0, 0, NULL)
INSERT [dbo].[ColumnCharts] ([ID], [CategoryTableID], [field], [title], [rowspan], [width], [colspan], [align], [resizable], [hidden], [formatter], [checkbox], [styler], [editor], [SortNo], [IsEnable], [IsNumber], [NumberAddress], [MergeHeader], [ParentId], [ISLogpeople], [ISLoginsector], [ManagingStatus]) VALUES (N'3bd6eb72-7a4f-4556-b2fc-23721b1616a9', N'be8cef72-5c83-435e-8397-4138048bd478', N'zdfs', N'转递方式', 1, 100, 1, N'center', NULL, NULL, NULL, NULL, NULL, N'type: ''text'', options: { }', CAST(5 AS Decimal(3, 0)), 1, 0, NULL, 0, NULL, 0, 0, NULL)
INSERT [dbo].[ColumnCharts] ([ID], [CategoryTableID], [field], [title], [rowspan], [width], [colspan], [align], [resizable], [hidden], [formatter], [checkbox], [styler], [editor], [SortNo], [IsEnable], [IsNumber], [NumberAddress], [MergeHeader], [ParentId], [ISLogpeople], [ISLoginsector], [ManagingStatus]) VALUES (N'475aced1-7f46-49c5-8d24-fb2ebd4bec09', N'be8cef72-5c83-435e-8397-4138048bd478', N'fsys', N'份数/页数', 1, 100, 1, N'center', NULL, NULL, NULL, NULL, NULL, N'type: ''text'', options: { }', CAST(4 AS Decimal(3, 0)), 1, 0, NULL, 0, NULL, 0, 0, NULL)
INSERT [dbo].[ColumnCharts] ([ID], [CategoryTableID], [field], [title], [rowspan], [width], [colspan], [align], [resizable], [hidden], [formatter], [checkbox], [styler], [editor], [SortNo], [IsEnable], [IsNumber], [NumberAddress], [MergeHeader], [ParentId], [ISLogpeople], [ISLoginsector], [ManagingStatus]) VALUES (N'4af8f72d-96b4-4eab-8a7b-c1a50a3e0b78', N'be8cef72-5c83-435e-8397-4138048bd478', N'qsrjsj', N'签收人及时间', 1, 100, 1, N'center', NULL, NULL, NULL, NULL, NULL, N'type: ''text'', options: { }', CAST(8 AS Decimal(3, 0)), 1, 0, NULL, 0, NULL, 0, 0, NULL)
INSERT [dbo].[ColumnCharts] ([ID], [CategoryTableID], [field], [title], [rowspan], [width], [colspan], [align], [resizable], [hidden], [formatter], [checkbox], [styler], [editor], [SortNo], [IsEnable], [IsNumber], [NumberAddress], [MergeHeader], [ParentId], [ISLogpeople], [ISLoginsector], [ManagingStatus]) VALUES (N'54f3444a-8ad9-4a9b-9ab4-88099ce89767', N'c7d96b43-20e2-4630-b927-5e3ea59d21aa', N'xgxhxgxx', N'需更新或修改的信息', 1, 200, 1, N'center', NULL, NULL, NULL, NULL, NULL, N'type: ''text'', options: { }', CAST(10 AS Decimal(3, 0)), 1, 0, NULL, 0, NULL, 0, 0, NULL)
INSERT [dbo].[ColumnCharts] ([ID], [CategoryTableID], [field], [title], [rowspan], [width], [colspan], [align], [resizable], [hidden], [formatter], [checkbox], [styler], [editor], [SortNo], [IsEnable], [IsNumber], [NumberAddress], [MergeHeader], [ParentId], [ISLogpeople], [ISLoginsector], [ManagingStatus]) VALUES (N'58962694-a8d6-4112-b48b-d6bf1a4f5cfb', N'be8cef72-5c83-435e-8397-4138048bd478', N'bh', N'编号', 1, 100, 1, N'center', NULL, NULL, NULL, NULL, NULL, NULL, CAST(1 AS Decimal(3, 0)), 1, 1, NULL, 0, NULL, 0, 0, NULL)
INSERT [dbo].[ColumnCharts] ([ID], [CategoryTableID], [field], [title], [rowspan], [width], [colspan], [align], [resizable], [hidden], [formatter], [checkbox], [styler], [editor], [SortNo], [IsEnable], [IsNumber], [NumberAddress], [MergeHeader], [ParentId], [ISLogpeople], [ISLoginsector], [ManagingStatus]) VALUES (N'599ef93f-eee5-47b2-b4a1-ae5de69d3df7', N'c7d96b43-20e2-4630-b927-5e3ea59d21aa', N'gbssdw', N'干部所属单位', 1, 100, 1, N'center', NULL, NULL, NULL, NULL, NULL, N'type: ''text'', options: { }', CAST(9 AS Decimal(3, 0)), 1, 0, NULL, 0, NULL, 0, 0, NULL)
INSERT [dbo].[ColumnCharts] ([ID], [CategoryTableID], [field], [title], [rowspan], [width], [colspan], [align], [resizable], [hidden], [formatter], [checkbox], [styler], [editor], [SortNo], [IsEnable], [IsNumber], [NumberAddress], [MergeHeader], [ParentId], [ISLogpeople], [ISLoginsector], [ManagingStatus]) VALUES (N'5dae83cb-0223-4deb-99de-c47a3321531e', N'6c349365-2d46-4985-9935-23da01e18960', N'xgxhxgxx', N'需更新或修改的信息', 1, 300, 1, N'center', NULL, NULL, NULL, NULL, NULL, N'type: ''text'', options: { }', CAST(4 AS Decimal(3, 0)), 1, 0, NULL, 0, NULL, 0, 0, NULL)
INSERT [dbo].[ColumnCharts] ([ID], [CategoryTableID], [field], [title], [rowspan], [width], [colspan], [align], [resizable], [hidden], [formatter], [checkbox], [styler], [editor], [SortNo], [IsEnable], [IsNumber], [NumberAddress], [MergeHeader], [ParentId], [ISLogpeople], [ISLoginsector], [ManagingStatus]) VALUES (N'67b43282-9065-4735-b4f1-61e61c71df8d', N'be8cef72-5c83-435e-8397-4138048bd478', N'zdyy', N'转递原因', 1, 100, 1, N'center', NULL, NULL, NULL, NULL, NULL, N'type: ''text'', options: { }', CAST(6 AS Decimal(3, 0)), 1, 0, NULL, 0, NULL, 0, 0, NULL)
INSERT [dbo].[ColumnCharts] ([ID], [CategoryTableID], [field], [title], [rowspan], [width], [colspan], [align], [resizable], [hidden], [formatter], [checkbox], [styler], [editor], [SortNo], [IsEnable], [IsNumber], [NumberAddress], [MergeHeader], [ParentId], [ISLogpeople], [ISLoginsector], [ManagingStatus]) VALUES (N'716b337b-7b8d-4982-9e4b-6c030f90c6be', N'50a24a81-bf2c-4cfa-b227-c6b6c665c085', N'qsrjsj', N'签收人及时间', 1, 100, 1, N'center', NULL, NULL, NULL, NULL, NULL, N'type: ''text'', options: { }', CAST(5 AS Decimal(3, 0)), 1, 0, NULL, 0, NULL, 0, 0, NULL)
INSERT [dbo].[ColumnCharts] ([ID], [CategoryTableID], [field], [title], [rowspan], [width], [colspan], [align], [resizable], [hidden], [formatter], [checkbox], [styler], [editor], [SortNo], [IsEnable], [IsNumber], [NumberAddress], [MergeHeader], [ParentId], [ISLogpeople], [ISLoginsector], [ManagingStatus]) VALUES (N'75f5bf21-8c40-41d7-a77c-3898b6c3f6b3', N'6c349365-2d46-4985-9935-23da01e18960', N'bh', N'编号', 1, 100, 1, N'center', NULL, NULL, NULL, NULL, NULL, NULL, CAST(1 AS Decimal(3, 0)), 1, 1, NULL, 0, NULL, 0, 0, NULL)
INSERT [dbo].[ColumnCharts] ([ID], [CategoryTableID], [field], [title], [rowspan], [width], [colspan], [align], [resizable], [hidden], [formatter], [checkbox], [styler], [editor], [SortNo], [IsEnable], [IsNumber], [NumberAddress], [MergeHeader], [ParentId], [ISLogpeople], [ISLoginsector], [ManagingStatus]) VALUES (N'79ef0ea1-057b-4faa-9f14-2017d3205e02', N'50a24a81-bf2c-4cfa-b227-c6b6c665c085', N'daclmc', N'档案材料名称', 1, 300, 1, N'center', NULL, NULL, NULL, NULL, NULL, N'type: ''text'', options: { }', CAST(3 AS Decimal(3, 0)), 1, 0, NULL, 0, NULL, 0, 0, NULL)
INSERT [dbo].[ColumnCharts] ([ID], [CategoryTableID], [field], [title], [rowspan], [width], [colspan], [align], [resizable], [hidden], [formatter], [checkbox], [styler], [editor], [SortNo], [IsEnable], [IsNumber], [NumberAddress], [MergeHeader], [ParentId], [ISLogpeople], [ISLoginsector], [ManagingStatus]) VALUES (N'7ab67f8b-5681-4210-b832-3f0bbd490fc5', N'be8cef72-5c83-435e-8397-4138048bd478', N'zdr', N'转递人', 1, 100, 1, N'center', NULL, NULL, NULL, NULL, NULL, N'type: ''text'', options: { }', CAST(7 AS Decimal(3, 0)), 1, 0, NULL, 0, NULL, 1, 0, NULL)
INSERT [dbo].[ColumnCharts] ([ID], [CategoryTableID], [field], [title], [rowspan], [width], [colspan], [align], [resizable], [hidden], [formatter], [checkbox], [styler], [editor], [SortNo], [IsEnable], [IsNumber], [NumberAddress], [MergeHeader], [ParentId], [ISLogpeople], [ISLoginsector], [ManagingStatus]) VALUES (N'7d399382-000c-48b7-8c07-dbf1a8fb8084', N'c7d96b43-20e2-4630-b927-5e3ea59d21aa', N'gkks', N'归口科室', 1, 100, 1, N'center', NULL, NULL, NULL, NULL, NULL, N'type: ''text'', options: { }', CAST(14 AS Decimal(3, 0)), 1, 0, NULL, 0, NULL, 0, 0, NULL)
INSERT [dbo].[ColumnCharts] ([ID], [CategoryTableID], [field], [title], [rowspan], [width], [colspan], [align], [resizable], [hidden], [formatter], [checkbox], [styler], [editor], [SortNo], [IsEnable], [IsNumber], [NumberAddress], [MergeHeader], [ParentId], [ISLogpeople], [ISLoginsector], [ManagingStatus]) VALUES (N'7f9e9d24-4304-4d75-b69e-1794d6781750', N'50a24a81-bf2c-4cfa-b227-c6b6c665c085', N'xh', N'序号', 1, 100, 1, N'center', NULL, NULL, NULL, NULL, NULL, N'type: ''text'', options: { }', CAST(2 AS Decimal(3, 0)), 1, 0, NULL, 0, NULL, 0, 0, NULL)
INSERT [dbo].[ColumnCharts] ([ID], [CategoryTableID], [field], [title], [rowspan], [width], [colspan], [align], [resizable], [hidden], [formatter], [checkbox], [styler], [editor], [SortNo], [IsEnable], [IsNumber], [NumberAddress], [MergeHeader], [ParentId], [ISLogpeople], [ISLoginsector], [ManagingStatus]) VALUES (N'809b27fd-1522-44cd-aec5-b53f912fd8e4', N'50a24a81-bf2c-4cfa-b227-c6b6c665c085', N'bz', N'备注', 1, 100, 1, N'center', NULL, NULL, NULL, NULL, NULL, N'type: ''text'', options: { }', CAST(6 AS Decimal(3, 0)), 1, 0, NULL, 0, NULL, 0, 0, NULL)
INSERT [dbo].[ColumnCharts] ([ID], [CategoryTableID], [field], [title], [rowspan], [width], [colspan], [align], [resizable], [hidden], [formatter], [checkbox], [styler], [editor], [SortNo], [IsEnable], [IsNumber], [NumberAddress], [MergeHeader], [ParentId], [ISLogpeople], [ISLoginsector], [ManagingStatus]) VALUES (N'8227f6dc-80a6-47e9-a0a0-b744993b62fe', N'c7d96b43-20e2-4630-b927-5e3ea59d21aa', N'zdr', N'专递人', 1, 100, 1, N'center', NULL, NULL, NULL, NULL, NULL, N'type: ''text'', options: { }', CAST(5 AS Decimal(3, 0)), 1, 0, NULL, 0, NULL, 0, 0, NULL)
INSERT [dbo].[ColumnCharts] ([ID], [CategoryTableID], [field], [title], [rowspan], [width], [colspan], [align], [resizable], [hidden], [formatter], [checkbox], [styler], [editor], [SortNo], [IsEnable], [IsNumber], [NumberAddress], [MergeHeader], [ParentId], [ISLogpeople], [ISLoginsector], [ManagingStatus]) VALUES (N'83ca3f60-55e8-4987-83ee-31352106e66a', N'970a8d70-a530-483e-a4cf-58c0d934ab18', N'gbssdw', N'干部所属单位', 1, 100, 1, N'center', NULL, NULL, NULL, NULL, NULL, N'type: ''text'', options: { }', CAST(2 AS Decimal(3, 0)), 1, 0, NULL, 0, NULL, 0, 0, NULL)
INSERT [dbo].[ColumnCharts] ([ID], [CategoryTableID], [field], [title], [rowspan], [width], [colspan], [align], [resizable], [hidden], [formatter], [checkbox], [styler], [editor], [SortNo], [IsEnable], [IsNumber], [NumberAddress], [MergeHeader], [ParentId], [ISLogpeople], [ISLoginsector], [ManagingStatus]) VALUES (N'8803f1c8-ea1f-49c8-ac6f-bcbea4f6f2d5', N'c7d96b43-20e2-4630-b927-5e3ea59d21aa', N'zldw', N'转来单位', 1, 100, 1, N'center', NULL, NULL, NULL, NULL, NULL, N'type: ''text'', options: { }', CAST(4 AS Decimal(3, 0)), 1, 0, NULL, 0, NULL, 0, 0, NULL)
INSERT [dbo].[ColumnCharts] ([ID], [CategoryTableID], [field], [title], [rowspan], [width], [colspan], [align], [resizable], [hidden], [formatter], [checkbox], [styler], [editor], [SortNo], [IsEnable], [IsNumber], [NumberAddress], [MergeHeader], [ParentId], [ISLogpeople], [ISLoginsector], [ManagingStatus]) VALUES (N'8e8fe2b3-e424-4a85-8edc-348067b4225b', N'6c349365-2d46-4985-9935-23da01e18960', N'gdks', N'归档科室', 1, 100, 1, N'center', NULL, NULL, NULL, NULL, NULL, N'type: ''text'', options: { }', CAST(7 AS Decimal(3, 0)), 1, 0, NULL, 0, NULL, 0, 0, NULL)
INSERT [dbo].[ColumnCharts] ([ID], [CategoryTableID], [field], [title], [rowspan], [width], [colspan], [align], [resizable], [hidden], [formatter], [checkbox], [styler], [editor], [SortNo], [IsEnable], [IsNumber], [NumberAddress], [MergeHeader], [ParentId], [ISLogpeople], [ISLoginsector], [ManagingStatus]) VALUES (N'96bc1925-4a25-4daf-b1e4-a638197dfd45', N'c7d96b43-20e2-4630-b927-5e3ea59d21aa', N'gbykqsrxm', N'干部一科签收人姓名及时间', 1, 100, 1, N'center', NULL, NULL, NULL, NULL, NULL, N'type: ''text'', options: { }', CAST(12 AS Decimal(3, 0)), 1, 0, NULL, 0, NULL, 0, 0, NULL)
INSERT [dbo].[ColumnCharts] ([ID], [CategoryTableID], [field], [title], [rowspan], [width], [colspan], [align], [resizable], [hidden], [formatter], [checkbox], [styler], [editor], [SortNo], [IsEnable], [IsNumber], [NumberAddress], [MergeHeader], [ParentId], [ISLogpeople], [ISLoginsector], [ManagingStatus]) VALUES (N'980973a7-5f07-4b2c-bac1-7ee9c1bda296', N'970a8d70-a530-483e-a4cf-58c0d934ab18', N'sggbxm', N'市管干部姓名', 1, 100, 1, N'center', NULL, NULL, NULL, NULL, NULL, N'type: ''text'', options: { }', CAST(1 AS Decimal(3, 0)), 1, 0, NULL, 0, NULL, 0, 0, NULL)
INSERT [dbo].[ColumnCharts] ([ID], [CategoryTableID], [field], [title], [rowspan], [width], [colspan], [align], [resizable], [hidden], [formatter], [checkbox], [styler], [editor], [SortNo], [IsEnable], [IsNumber], [NumberAddress], [MergeHeader], [ParentId], [ISLogpeople], [ISLoginsector], [ManagingStatus]) VALUES (N'9baef6f3-2184-4a3d-ad87-7640e3dd9fd1', N'6c349365-2d46-4985-9935-23da01e18960', N'gdssxmjsj', N'归档科室签收人姓名及时间', 1, 200, 1, N'center', NULL, NULL, NULL, NULL, NULL, N'type: ''text'', options: { }', CAST(6 AS Decimal(3, 0)), 1, 0, NULL, 0, NULL, 0, 0, NULL)
INSERT [dbo].[ColumnCharts] ([ID], [CategoryTableID], [field], [title], [rowspan], [width], [colspan], [align], [resizable], [hidden], [formatter], [checkbox], [styler], [editor], [SortNo], [IsEnable], [IsNumber], [NumberAddress], [MergeHeader], [ParentId], [ISLogpeople], [ISLoginsector], [ManagingStatus]) VALUES (N'9d445a3c-7988-460b-b39c-c363e9c0cc60', N'6c349365-2d46-4985-9935-23da01e18960', N'bz', N'备注', 1, 100, 1, N'center', NULL, NULL, NULL, NULL, NULL, N'type: ''text'', options: { }', CAST(8 AS Decimal(3, 0)), 1, 0, NULL, 0, NULL, 0, 0, NULL)
INSERT [dbo].[ColumnCharts] ([ID], [CategoryTableID], [field], [title], [rowspan], [width], [colspan], [align], [resizable], [hidden], [formatter], [checkbox], [styler], [editor], [SortNo], [IsEnable], [IsNumber], [NumberAddress], [MergeHeader], [ParentId], [ISLogpeople], [ISLoginsector], [ManagingStatus]) VALUES (N'a786839c-a502-458a-bc00-b786b897c0a8', N'970a8d70-a530-483e-a4cf-58c0d934ab18', N'sgxxgxx', N'需更新或修改的信息', 1, 200, 1, N'center', NULL, NULL, NULL, NULL, NULL, N'type: ''text'', options: { }', CAST(3 AS Decimal(3, 0)), 1, 0, NULL, 0, NULL, 0, 0, NULL)
INSERT [dbo].[ColumnCharts] ([ID], [CategoryTableID], [field], [title], [rowspan], [width], [colspan], [align], [resizable], [hidden], [formatter], [checkbox], [styler], [editor], [SortNo], [IsEnable], [IsNumber], [NumberAddress], [MergeHeader], [ParentId], [ISLogpeople], [ISLoginsector], [ManagingStatus]) VALUES (N'b87a3f30-e1fe-467c-8122-c02b11b40539', N'c7d96b43-20e2-4630-b927-5e3ea59d21aa', N'fsys', N'份数/页数', 1, 100, 1, N'center', NULL, NULL, NULL, NULL, NULL, N'type: ''text'', options: { }', CAST(6 AS Decimal(3, 0)), 1, 0, NULL, 0, NULL, 0, 0, NULL)
INSERT [dbo].[ColumnCharts] ([ID], [CategoryTableID], [field], [title], [rowspan], [width], [colspan], [align], [resizable], [hidden], [formatter], [checkbox], [styler], [editor], [SortNo], [IsEnable], [IsNumber], [NumberAddress], [MergeHeader], [ParentId], [ISLogpeople], [ISLoginsector], [ManagingStatus]) VALUES (N'cc430815-8e25-4201-8bbe-64f23516fda8', N'50a24a81-bf2c-4cfa-b227-c6b6c665c085', N'fsys', N'份数/页数', 1, 100, 1, N'center', NULL, NULL, NULL, NULL, NULL, N'type: ''text'', options: { }', CAST(4 AS Decimal(3, 0)), 1, 0, NULL, 0, NULL, 0, 0, NULL)
INSERT [dbo].[ColumnCharts] ([ID], [CategoryTableID], [field], [title], [rowspan], [width], [colspan], [align], [resizable], [hidden], [formatter], [checkbox], [styler], [editor], [SortNo], [IsEnable], [IsNumber], [NumberAddress], [MergeHeader], [ParentId], [ISLogpeople], [ISLoginsector], [ManagingStatus]) VALUES (N'd1fbe5d4-5ea4-4812-b205-cfb0454f1a89', N'50a24a81-bf2c-4cfa-b227-c6b6c665c085', N'zcdw', N'转出单位', 1, 100, 1, N'center', NULL, NULL, NULL, NULL, NULL, N'type: ''text'', options: { }', CAST(1 AS Decimal(3, 0)), 1, 0, NULL, 0, NULL, 0, 0, NULL)
INSERT [dbo].[ColumnCharts] ([ID], [CategoryTableID], [field], [title], [rowspan], [width], [colspan], [align], [resizable], [hidden], [formatter], [checkbox], [styler], [editor], [SortNo], [IsEnable], [IsNumber], [NumberAddress], [MergeHeader], [ParentId], [ISLogpeople], [ISLoginsector], [ManagingStatus]) VALUES (N'd3b10f23-9efc-4dc8-a7a9-4d92117e888d', N'970a8d70-a530-483e-a4cf-58c0d934ab18', N'dasyjsj', N'档案室移交人及时间', 1, 100, 1, N'center', NULL, NULL, NULL, NULL, NULL, N'type: ''text'', options: { }', CAST(4 AS Decimal(3, 0)), 1, 0, NULL, 0, NULL, 0, 0, NULL)
INSERT [dbo].[ColumnCharts] ([ID], [CategoryTableID], [field], [title], [rowspan], [width], [colspan], [align], [resizable], [hidden], [formatter], [checkbox], [styler], [editor], [SortNo], [IsEnable], [IsNumber], [NumberAddress], [MergeHeader], [ParentId], [ISLogpeople], [ISLoginsector], [ManagingStatus]) VALUES (N'e4eee59d-eded-4d70-aa0d-6184babb171c', N'c7d96b43-20e2-4630-b927-5e3ea59d21aa', N'daclmc', N'档案材料名称', 1, 100, 1, N'center', NULL, NULL, NULL, NULL, NULL, N'type: ''text'', options: { }', CAST(7 AS Decimal(3, 0)), 1, 0, NULL, 0, NULL, 0, 0, NULL)
INSERT [dbo].[ColumnCharts] ([ID], [CategoryTableID], [field], [title], [rowspan], [width], [colspan], [align], [resizable], [hidden], [formatter], [checkbox], [styler], [editor], [SortNo], [IsEnable], [IsNumber], [NumberAddress], [MergeHeader], [ParentId], [ISLogpeople], [ISLoginsector], [ManagingStatus]) VALUES (N'f075432c-f4a5-4347-bb99-1db91ce8d406', N'6c349365-2d46-4985-9935-23da01e18960', N'ck', N'ck', 1, 10, 1, N'center', NULL, NULL, NULL, NULL, NULL, NULL, CAST(0 AS Decimal(3, 0)), 1, 0, NULL, 0, NULL, 0, 0, NULL)
INSERT [dbo].[ColumnCharts] ([ID], [CategoryTableID], [field], [title], [rowspan], [width], [colspan], [align], [resizable], [hidden], [formatter], [checkbox], [styler], [editor], [SortNo], [IsEnable], [IsNumber], [NumberAddress], [MergeHeader], [ParentId], [ISLogpeople], [ISLoginsector], [ManagingStatus]) VALUES (N'f9400094-a28c-4ce1-ac37-88488176b093', N'c7d96b43-20e2-4630-b927-5e3ea59d21aa', N'sggbxm', N'市管干部姓名', 1, 100, 1, N'center', NULL, NULL, NULL, NULL, NULL, N'type: ''text'', options: { }', CAST(8 AS Decimal(3, 0)), 1, 0, NULL, 0, NULL, 0, 0, NULL)
/****** Object:  Table [dbo].[CategoryTable]    Script Date: 03/28/2016 09:50:42 ******/
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
/****** Object:  Table [dbo].[Bascharvalue]    Script Date: 03/28/2016 09:50:42 ******/
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
INSERT [dbo].[Bascharvalue] ([CharId], [CharTypeId], [CharName], [Is_Delete], [Status], [SerialNo], [CharNumber]) VALUES (N'1233werwer', N'Year', N'2016', NULL, NULL, NULL, N'3')
/****** Object:  Table [dbo].[Baschartype]    Script Date: 03/28/2016 09:50:42 ******/
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
INSERT [dbo].[Baschartype] ([CharTypeId], [CharTypeName], [CharTypeNum], [Is_Delete], [Status], [SerialNo], [IsVisible]) VALUES (N'a3eda5f9-af4c-428b-a2fe-30588ceaf9c9', N'录入表格类型', N'lybglx', NULL, NULL, NULL, NULL)
INSERT [dbo].[Baschartype] ([CharTypeId], [CharTypeName], [CharTypeNum], [Is_Delete], [Status], [SerialNo], [IsVisible]) VALUES (N'Dic', N'表格基础数据', N'jcsj', NULL, NULL, NULL, NULL)
/****** Object:  View [dbo].[VcorrelateColumns]    Script Date: 03/28/2016 09:50:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VcorrelateColumns]
AS
SELECT     ID, ColumnChartsID, ChildColumnChartsID, MainAssociationID,
                          (SELECT     title
                            FROM          dbo.ColumnCharts
                            WHERE      (ID = dbo.CorrelateColumns.ColumnChartsID)) AS yuanlai,
                          (SELECT     field
                            FROM          dbo.ColumnCharts AS ColumnCharts_2
                            WHERE      (ID = dbo.CorrelateColumns.ColumnChartsID)) AS yuanfield,
                          (SELECT     title
                            FROM          dbo.ColumnCharts AS ColumnCharts_1
                            WHERE      (ID = dbo.CorrelateColumns.ChildColumnChartsID)) AS guanlian,
                          (SELECT     field
                            FROM          dbo.ColumnCharts AS ColumnCharts_1
                            WHERE      (ID = dbo.CorrelateColumns.ChildColumnChartsID)) AS guanfield
FROM         dbo.CorrelateColumns
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
         Begin Table = "CorrelateColumns"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 166
               Right = 219
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
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VcorrelateColumns'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VcorrelateColumns'
GO
/****** Object:  View [dbo].[V_UserRole]    Script Date: 03/28/2016 09:50:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[V_UserRole]
AS
SELECT     dbo.RMS_User.Id, dbo.RMS_User.LoginName, dbo.RMS_User.TrueName, dbo.RMS_User.Password, dbo.RMS_User.CreateTime, dbo.RMS_User.ModifyTime, 
                      dbo.RMS_User.DepartmentId, dbo.RMS_UserRole.RoleId, dbo.RMS_Role.RoleName, dbo.RMS_User.UserType, dbo.RMS_User.Phone, dbo.RMS_User.Tel, 
                      dbo.TF_Units.TName AS DepartmentName
FROM         dbo.RMS_User LEFT OUTER JOIN
                      dbo.TF_Units ON dbo.RMS_User.DepartmentId = dbo.TF_Units.Id LEFT OUTER JOIN
                      dbo.RMS_UserRole ON dbo.RMS_User.Id = dbo.RMS_UserRole.UserId LEFT OUTER JOIN
                      dbo.RMS_Role ON dbo.RMS_UserRole.RoleId = dbo.RMS_Role.Id
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[55] 4[5] 2[20] 3) )"
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
         Begin Table = "RMS_User"
            Begin Extent = 
               Top = 61
               Left = 73
               Bottom = 366
               Right = 229
            End
            DisplayFlags = 280
            TopColumn = 1
         End
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
         Begin Table = "TF_Units"
            Begin Extent = 
               Top = 260
               Left = 470
               Bottom = 379
               Right = 616
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_UserRole'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_UserRole'
GO
/****** Object:  View [dbo].[v_TF_PersonnelFile_Units_Out]    Script Date: 03/28/2016 09:50:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[v_TF_PersonnelFile_Units_Out]
AS
SELECT     dbo.TF_PersonnelFile.*, dbo.TF_PersonnelFile_Units_Out.UnitsId
FROM         dbo.TF_PersonnelFile_Units_Out INNER JOIN
                      dbo.TF_PersonnelFile ON dbo.TF_PersonnelFile_Units_Out.PersonnelFileId = dbo.TF_PersonnelFile.Id
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[38] 4[24] 2[33] 3) )"
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
         Begin Table = "TF_PersonnelFile_Units_Out"
            Begin Extent = 
               Top = 35
               Left = 200
               Bottom = 344
               Right = 362
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TF_PersonnelFile"
            Begin Extent = 
               Top = 25
               Left = 518
               Bottom = 382
               Right = 664
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_TF_PersonnelFile_Units_Out'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_TF_PersonnelFile_Units_Out'
GO
/****** Object:  View [dbo].[v_TF_PersonnelFile_Units_In]    Script Date: 03/28/2016 09:50:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[v_TF_PersonnelFile_Units_In]
AS
SELECT     dbo.TF_PersonnelFile.Id, dbo.TF_PersonnelFile.TName, dbo.TF_PersonnelFile.RealName, dbo.TF_PersonnelFile.Category, dbo.TF_PersonnelFile.Units, 
                      dbo.TF_PersonnelFile.Duties, dbo.TF_PersonnelFile.Summary, dbo.TF_PersonnelFile.location, dbo.TF_PersonnelFile.CreateMan, dbo.TF_PersonnelFile.CreateTime, 
                      dbo.TF_PersonnelFile.UpdateTime, dbo.TF_PersonnelFile.isValid, dbo.TF_PersonnelFile.isDeleted, dbo.TF_PersonnelFile_Units_In.UnitsId
FROM         dbo.TF_PersonnelFile INNER JOIN
                      dbo.TF_PersonnelFile_Units_In ON dbo.TF_PersonnelFile.Id = dbo.TF_PersonnelFile_Units_In.PersonnelFileId
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[51] 4[4] 2[28] 3) )"
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
         Begin Table = "TF_PersonnelFile"
            Begin Extent = 
               Top = 54
               Left = 447
               Bottom = 344
               Right = 593
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TF_PersonnelFile_Units_In"
            Begin Extent = 
               Top = 46
               Left = 0
               Bottom = 302
               Right = 162
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_TF_PersonnelFile_Units_In'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_TF_PersonnelFile_Units_In'
GO
/****** Object:  View [dbo].[v_TF_PersonnelFile_Transmitting_Out]    Script Date: 03/28/2016 09:50:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[v_TF_PersonnelFile_Transmitting_Out]
AS
SELECT     dbo.TF_PersonnelFile_Transmitting_Out.Id, dbo.TF_PersonnelFile_Transmitting_Out.TransmittingMan, dbo.TF_PersonnelFile_Transmitting_Out.Series, 
                      dbo.TF_PersonnelFile_Transmitting_Out.Nos, dbo.TF_PersonnelFile_Transmitting_Out.OriginalCount, dbo.TF_PersonnelFile_Transmitting_Out.DuplicateCount, 
                      dbo.TF_PersonnelFile_Transmitting_Out.MaterialCount, dbo.TF_PersonnelFile_Transmitting_Out.FistName, dbo.TF_PersonnelFile_Transmitting_Out.NumberS, 
                      dbo.TF_PersonnelFile_Transmitting_Out.CreateManId, dbo.TF_PersonnelFile_Transmitting_Out.CreateMan, dbo.TF_PersonnelFile_Transmitting_Out.States, 
                      dbo.TF_PersonnelFile_Transmitting_Out.TransmittingTime, dbo.TF_PersonnelFile_Transmitting_Out.CreateTime, dbo.TF_PersonnelFile_Transmitting_Out.isDeleted, 
                      dbo.TF_PersonnelFile_Units_Out.UnitsId
FROM         dbo.TF_PersonnelFile_Transmitting_Out LEFT OUTER JOIN
                      dbo.TF_PersonnelFile_Units_Out ON dbo.TF_PersonnelFile_Transmitting_Out.Id = dbo.TF_PersonnelFile_Units_Out.PersonnelFileId
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
         Begin Table = "TF_PersonnelFile_Transmitting_Out"
            Begin Extent = 
               Top = 0
               Left = 114
               Bottom = 276
               Right = 284
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TF_PersonnelFile_Units_Out"
            Begin Extent = 
               Top = 42
               Left = 398
               Bottom = 272
               Right = 560
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_TF_PersonnelFile_Transmitting_Out'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_TF_PersonnelFile_Transmitting_Out'
GO
/****** Object:  View [dbo].[v_TF_PersonnelFile_Transmitting_In]    Script Date: 03/28/2016 09:50:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[v_TF_PersonnelFile_Transmitting_In]
AS
SELECT     dbo.SysItem.ItemName AS StatesName, dbo.TF_PersonnelFile_Transmitting_In.Id, dbo.TF_PersonnelFile_Transmitting_In.TransmittingMan, 
                      dbo.TF_PersonnelFile_Transmitting_In.Series, dbo.TF_PersonnelFile_Transmitting_In.Nos, dbo.TF_PersonnelFile_Transmitting_In.OriginalCount, 
                      dbo.TF_PersonnelFile_Transmitting_In.DuplicateCount, dbo.TF_PersonnelFile_Transmitting_In.MaterialCount, dbo.TF_PersonnelFile_Transmitting_In.FistName, 
                      dbo.TF_PersonnelFile_Transmitting_In.NumberS, dbo.TF_PersonnelFile_Transmitting_In.CreateManId, dbo.TF_PersonnelFile_Transmitting_In.CreateMan, 
                      dbo.TF_PersonnelFile_Transmitting_In.States, dbo.TF_PersonnelFile_Transmitting_In.TransmittingTime, dbo.TF_PersonnelFile_Transmitting_In.CreateTime, 
                      dbo.TF_PersonnelFile_Transmitting_In.isDeleted
FROM         dbo.TF_PersonnelFile_Transmitting_In LEFT OUTER JOIN
                      dbo.SysItem ON dbo.TF_PersonnelFile_Transmitting_In.States = dbo.SysItem.ItemValue
WHERE     (dbo.SysItem.ItemType = 'Transmitting_In')
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
         Begin Table = "TF_PersonnelFile_Transmitting_In"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 308
               Right = 295
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "SysItem"
            Begin Extent = 
               Top = 27
               Left = 552
               Bottom = 286
               Right = 696
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
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_TF_PersonnelFile_Transmitting_In'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_TF_PersonnelFile_Transmitting_In'
GO
/****** Object:  View [dbo].[v_Sys_CityArea]    Script Date: 03/28/2016 09:50:43 ******/
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
/****** Object:  View [dbo].[V_RoleManus]    Script Date: 03/28/2016 09:50:43 ******/
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
/****** Object:  View [dbo].[V_RoleManuButtons]    Script Date: 03/28/2016 09:50:43 ******/
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
/****** Object:  View [dbo].[V_Role]    Script Date: 03/28/2016 09:50:43 ******/
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
/****** Object:  View [dbo].[V_MenuButtons]    Script Date: 03/28/2016 09:50:43 ******/
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
/****** Object:  Default [DF__RMS_Butto__Creat__6E01572D]    Script Date: 03/28/2016 09:50:42 ******/
ALTER TABLE [dbo].[RMS_Buttons] ADD  DEFAULT (getdate()) FOR [CreateTime]
GO
/****** Object:  Default [DF__RMS_Depar__Order__29572725]    Script Date: 03/28/2016 09:50:42 ******/
ALTER TABLE [dbo].[RMS_Department] ADD  CONSTRAINT [DF__RMS_Depar__Order__29572725]  DEFAULT ((0)) FOR [OrderNo]
GO
/****** Object:  Default [DF__RMS_Menus__IsSho__6A30C649]    Script Date: 03/28/2016 09:50:42 ******/
ALTER TABLE [dbo].[RMS_Menus] ADD  DEFAULT ('true') FOR [IsShow]
GO
/****** Object:  Default [DF__RMS_Menus__IsEna__6B24EA82]    Script Date: 03/28/2016 09:50:42 ******/
ALTER TABLE [dbo].[RMS_Menus] ADD  DEFAULT ('true') FOR [IsEnable]
GO
/****** Object:  Default [DF__RMS_Menus__Creat__6C190EBB]    Script Date: 03/28/2016 09:50:42 ******/
ALTER TABLE [dbo].[RMS_Menus] ADD  DEFAULT (getdate()) FOR [CreateTime]
GO
/****** Object:  Default [DF__RMS_Role__Create__693CA210]    Script Date: 03/28/2016 09:50:42 ******/
ALTER TABLE [dbo].[RMS_Role] ADD  DEFAULT (getdate()) FOR [CreateTime]
GO
/****** Object:  Default [DF__RMS_User__Create__68487DD7]    Script Date: 03/28/2016 09:50:42 ******/
ALTER TABLE [dbo].[RMS_User] ADD  DEFAULT (getdate()) FOR [CreateTime]
GO
/****** Object:  Default [DF_Sys_CityArea_OrderNo]    Script Date: 03/28/2016 09:50:42 ******/
ALTER TABLE [dbo].[Sys_CityArea] ADD  CONSTRAINT [DF_Sys_CityArea_OrderNo]  DEFAULT ((0)) FOR [OrderNo]
GO
/****** Object:  Default [DF__Sys_Dicti__Order__4E88ABD4]    Script Date: 03/28/2016 09:50:42 ******/
ALTER TABLE [dbo].[Sys_Dictionary] ADD  CONSTRAINT [DF__Sys_Dicti__Order__4E88ABD4]  DEFAULT ((0)) FOR [OrderNo]
GO
/****** Object:  Default [DF_SysItem_OrderID]    Script Date: 03/28/2016 09:50:42 ******/
ALTER TABLE [dbo].[SysItem] ADD  CONSTRAINT [DF_SysItem_OrderID]  DEFAULT ((10)) FOR [OrderID]
GO
/****** Object:  Default [DF_SysItem_isValid]    Script Date: 03/28/2016 09:50:42 ******/
ALTER TABLE [dbo].[SysItem] ADD  CONSTRAINT [DF_SysItem_isValid]  DEFAULT ((1)) FOR [isValid]
GO
/****** Object:  Default [DF_SysItem_isDeleted]    Script Date: 03/28/2016 09:50:42 ******/
ALTER TABLE [dbo].[SysItem] ADD  CONSTRAINT [DF_SysItem_isDeleted]  DEFAULT ((1)) FOR [isDeleted]
GO
/****** Object:  Default [DF__SystemLog__Recor__300424B4]    Script Date: 03/28/2016 09:50:42 ******/
ALTER TABLE [dbo].[SystemLogs] ADD  CONSTRAINT [DF__SystemLog__Recor__300424B4]  DEFAULT (getdate()) FOR [Position]
GO
/****** Object:  Default [DF__SystemPar__Creat__619B8048]    Script Date: 03/28/2016 09:50:42 ******/
ALTER TABLE [dbo].[SystemParameters] ADD  DEFAULT (getdate()) FOR [CreateOn]
GO
