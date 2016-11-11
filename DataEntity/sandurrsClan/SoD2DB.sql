SET ANSI_NULLS ONGOSET QUOTED_IDENTIFIER ONGOIF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Sod2Config]') AND type in (N'U'))BEGINCREATE TABLE [dbo].[Sod2Config](	[MIDX] [int] NULL,	[ClanName] [varchar](50) NULL,	[UserID] [varchar](50) NULL,	[CharName] [varchar](50) NULL,	[SelServer] [int] NOT NULL,	[ServerName] [varchar](50) NULL,	[TaxRates] [int] NOT NULL,	[OperFrom] [datetime] NOT NULL,	[OperTo] [datetime] NOT NULL,	[TotalEnterMoney] [bigint] NULL,	[BeforeMoney] [bigint] NULL,	[TodayMoney] [bigint] NULL,	[TotalMoney] [bigint] NULL,	[TotalEnterNum] [int] NULL,	[UpdateDate] [datetime] NULL,	[Note] [text] NULL,	[MIDX1] [int] NULL,	[MIDX2] [int] NULL,	[M0money] [bigint] NULL,	[M1money] [bigint] NULL,	[M2money] [bigint] NULL,	[VInfo] [text] NULL) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]ENDGOSET ANSI_NULLS ONGOSET QUOTED_IDENTIFIER ONGOIF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Sod2ConfigLog]') AND type in (N'U'))BEGINCREATE TABLE [dbo].[Sod2ConfigLog](	[IDX] [int] NOT NULL,	[MIDX] [int] NULL,	[ClanName] [varchar](50) NULL,	[UserID] [varchar](50) NULL,	[CharName] [varchar](50) NULL,	[SelServer] [int] NOT NULL,	[ServerName] [varchar](50) NULL,	[TaxRates] [int] NOT NULL,	[OperFrom] [datetime] NOT NULL,	[OperTo] [datetime] NOT NULL,	[TotalEnterMoney] [bigint] NULL,	[BeforeMoney] [bigint] NULL,	[TodayMoney] [bigint] NULL,	[TotalMoney] [bigint] NULL,	[TotalEnterNum] [int] NULL,	[UpdateDate] [datetime] NULL,	[Note] [text] NULL,	[MIDX1] [int] NULL,	[MIDX2] [int] NULL,	[M0money] [bigint] NULL,	[M1money] [bigint] NULL,	[M2money] [bigint] NULL) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]ENDGOSET ANSI_NULLS ONGOSET QUOTED_IDENTIFIER ONGOIF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Sod2TaxLog]') AND type in (N'U'))BEGINCREATE TABLE [dbo].[Sod2TaxLog](	[IDX] [int] NOT NULL,	[MIDX] [int] NULL,	[ClanName] [varchar](50) NULL,	[MCount] [int] NULL,	[UserID] [varchar](50) NULL,	[CharName] [varchar](50) NULL,	[SelServer] [int] NULL,	[TaxRates] [int] NULL,	[OperFrom] [datetime] NULL,	[OperTo] [datetime] NULL,	[RegiDate] [datetime] NULL) ON [PRIMARY]ENDGOSET ANSI_NULLS ONGOSET QUOTED_IDENTIFIER ONGOIF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserBlackList]') AND type in (N'U'))BEGINCREATE TABLE [dbo].[UserBlackList](	[SOD2No] [int] NOT NULL,	[UserID] [varchar](32) NOT NULL,	[CharName] [varchar](50) NOT NULL,	[ServerCode] [int] NOT NULL,	[Memo] [varchar](250) NULL,	[RegistDay] [datetime] NULL) ON [PRIMARY]ENDGOSET ANSI_NULLS ONGOSET QUOTED_IDENTIFIER ONGOIF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[temp]') AND type in (N'U'))BEGINCREATE TABLE [dbo].[temp](	[IDX] [int] NOT NULL,	[CIDX] [int] NOT NULL,	[CServerTime] [bigint] NOT NULL,	[Server] [int] NOT NULL,	[ClanName] [varchar](20) NOT NULL,	[ServerName] [varchar](50) NOT NULL,	[CPoint] [int] NOT NULL,	[CRegistDay] [datetime] NOT NULL,	[ServerTime_Temp] [bigint] NULL,	[Point_Temp] [int] NULL) ON [PRIMARY]ENDGOSET ANSI_NULLS ONGOSET QUOTED_IDENTIFIER ONGOIF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[test]') AND type in (N'U'))BEGINCREATE TABLE [dbo].[test](	[IDX] [int] NOT NULL,	[CIDX] [int] NOT NULL,	[CServerTime] [bigint] NOT NULL,	[Server] [int] NOT NULL,	[ClanName] [nvarchar](50) NOT NULL,	[ServerName] [varchar](50) NOT NULL,	[CPoint] [int] NOT NULL,	[CRegistDay] [datetime] NOT NULL,	[ServerTime_Temp] [bigint] NULL,	[Point_Temp] [int] NULL) ON [PRIMARY]ENDGOSET ANSI_NULLS ONGOSET QUOTED_IDENTIFIER ONGOIF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SOD2RecBySandurr]') AND type in (N'U'))BEGINCREATE TABLE [dbo].[SOD2RecBySandurr](	[SNo] [int] IDENTITY(1,1) NOT NULL,	[UserID] [varchar](50) NULL,	[CharName] [varchar](50) NULL,	[CharType] [int] NULL,	[Point] [int] NULL,	[KillCount] [int] NULL,	[GLevel] [int] NULL,	[TotalPoint] [int] NULL,	[TotalUser] [int] NULL,	[SuccessUser] [int] NULL,	[ServerName] [varchar](50) NULL,	[PCRNo] [int] NULL,	[GPCode] [varchar](50) NULL,	[BusinessName] [varchar](100) NULL,	[BAddress1] [varchar](100) NULL,	[PMNo] [int] NULL,	[Contribute] [int] NULL,	[RegistDay] [datetime] NULL,	[ServerTime] [bigint] NULL,	[Flag] [int] NULL,	[ClanIDX] [int] NULL,	[ClanName] [varchar](50) NULL) ON [PRIMARY]ENDGOSET ANSI_NULLS ONGOSET QUOTED_IDENTIFIER ONGOIF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SoD2BBSMain]') AND type in (N'U'))BEGINCREATE TABLE [dbo].[SoD2BBSMain](	[IDX] [int] NOT NULL,	[Userid] [varchar](25) NOT NULL,	[WriteName] [varchar](100) NOT NULL,	[Title] [varchar](600) NULL,	[Job] [int] NULL,	[Content] [text] NOT NULL,	[SelServer] [int] NOT NULL,	[RegiDate] [datetime] NOT NULL,	[RegiIP] [char](15) NOT NULL,	[Hit] [int] NOT NULL,	[CountCom] [int] NOT NULL,	[OwnerID] [varchar](50) NULL) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]ENDGOSET ANSI_NULLS ONGOSET QUOTED_IDENTIFIER ONGOIF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SoD2BBSSub]') AND type in (N'U'))BEGINCREATE TABLE [dbo].[SoD2BBSSub](	[SIDX] [int] NOT NULL,	[MINDEX] [int] NOT NULL,	[Userid] [varchar](25) NOT NULL,	[WriteName] [varchar](100) NOT NULL,	[Content] [text] NOT NULL,	[RegiDate] [datetime] NOT NULL,	[RegiIP] [char](15) NOT NULL) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]ENDGOSET ANSI_NULLS ONGOSET QUOTED_IDENTIFIER ONGOIF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SoD2Notice]') AND type in (N'U'))BEGINCREATE TABLE [dbo].[SoD2Notice](	[IDX] [int] NOT NULL,	[MIDX] [int] NOT NULL,	[SelServer] [int] NOT NULL,	[UserID] [varchar](50) NOT NULL,	[Notice] [text] NOT NULL,	[RegiDate] [datetime] NOT NULL) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]END