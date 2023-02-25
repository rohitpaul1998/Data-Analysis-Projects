USE [damg7370_output]
GO

/****** Object:  Table [dbo].[NewYorkFoodInspection]    Script Date: 25-02-2023 01:38:34 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[NewYorkFoodInspection](
	[RecordID] [int] NULL,
	[CAMIS] [nvarchar](1000) NULL,
	[DBA] [nvarchar](1000) NULL,
	[BORO] [nvarchar](1000) NULL,
	[BUILDING] [nvarchar](1000) NULL,
	[STREET] [nvarchar](1000) NULL,
	[ZIPCODE] [nvarchar](1000) NULL,
	[PHONE] [nvarchar](1000) NULL,
	[CUISINE DESCRIPTION] [nvarchar](1000) NULL,
	[ACTION] [nvarchar](1000) NULL,
	[VIOLATION CODE] [nvarchar](1000) NULL,
	[VIOLATION DESCRIPTION] [nvarchar](1000) NULL,
	[CRITICAL FLAG] [nvarchar](1000) NULL,
	[SCORE] [nvarchar](1000) NULL,
	[GRADE] [nvarchar](1000) NULL,
	[Latitude] [nvarchar](1000) NULL,
	[Longitude] [nvarchar](1000) NULL,
	[Community Board] [nvarchar](1000) NULL,
	[Council District] [nvarchar](1000) NULL,
	[Census Tract] [nvarchar](1000) NULL,
	[BIN] [nvarchar](1000) NULL,
	[BBL] [nvarchar](1000) NULL,
	[NTA] [nvarchar](1000) NULL,
	[GRADE DATE] [nvarchar](1000) NULL,
	[RECORD DATE] [nvarchar](1000) NULL,
	[INSPECTION DATE] [nvarchar](1000) NULL,
	[INSPECTION TYPE] [nvarchar](1000) NULL,
	[DI_CreateDate] [datetime] NULL,
	[DI_WorkflowFileName] [char](64) NULL,
	[DI_InspectionDate] [date] NULL,
	[DI_GradeDate] [date] NULL,
	[DI_RecordDate] [date] NULL,
	[DI_WorkflowDirectory] [nvarchar](max) NULL,
	[DateSK] [int] NULL,
	[FoodPlacesSK] [int] NULL,
	[BoroSK] [int] NULL,
	[AddressSK] [int] NULL,
	[CuisineDescriptionSK] [int] NULL,
	[InspectionSK] [int] NULL,
	[InspectionTypeSK] [int] NULL,
	[ActionSK] [int] NULL,
	[CriticalFlagSK] [int] NULL,
	[GradeSK] [int] NULL,
	[ViolationCodeSK] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

