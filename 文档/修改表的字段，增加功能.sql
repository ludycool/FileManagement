 
 ALTER TABLE lsdaclqsb  ADD EntryRecordFormID [nvarchar](100) NULL 
      go
          ALTER TABLE sggbxxxg  ADD EntryRecordFormID [nvarchar](100) NULL   
      go
      ALTER TABLE sgbxxgxxg2  ADD EntryRecordFormID [nvarchar](100) NULL 
        go
         ALTER TABLE lsdaclzdj  ADD EntryRecordFormID [nvarchar](100) NULL 
             go   
                  ALTER TABLE sggbdaclsrjxx  ADD EntryRecordFormID [nvarchar](100) NULL 
				  
				  
				  go
			 
GO

/****** Object:  Table [dbo].[EntryRecordForm]    Script Date: 04/13/2016 21:35:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[EntryRecordForm](
	[ID] [nvarchar](50) NOT NULL,
	[unit] [nvarchar](300) NULL,
	[name] [nvarchar](100) NULL,
	[MaterialName] [nvarchar](300) NULL,
	[CreateDate] [datetime] NULL,
	[Remark] [nvarchar](600) NULL,
	[Column_7] [nvarchar](300) NULL,
	[Column_8] [nvarchar](300) NULL,
	[Column_9] [nvarchar](300) NULL,
	[Column_10] [nvarchar](300) NULL,
	[CategoryTableID] [nvarchar](50) NULL,
 CONSTRAINT [PK_ENTRYRECORDFORM] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'材料名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EntryRecordForm', @level2type=N'COLUMN',@level2name=N'MaterialName'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'录入时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EntryRecordForm', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'录入记录表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EntryRecordForm'
GO


