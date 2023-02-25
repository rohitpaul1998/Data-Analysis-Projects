USE [damg7370_output]
GO

INSERT INTO [dbo].[NewYorkFoodInspection]
           ([RecordID]
           ,[CAMIS]
           ,[DBA]
           ,[BORO]
           ,[BUILDING]
           ,[STREET]
           ,[ZIPCODE]
           ,[PHONE]
           ,[CUISINE DESCRIPTION]
           ,[ACTION]
           ,[VIOLATION CODE]
           ,[VIOLATION DESCRIPTION]
           ,[CRITICAL FLAG]
           ,[SCORE]
           ,[GRADE]
           ,[Latitude]
           ,[Longitude]
           ,[Community Board]
           ,[Council District]
           ,[Census Tract]
           ,[BIN]
           ,[BBL]
           ,[NTA]
           ,[GRADE DATE]
           ,[RECORD DATE]
           ,[INSPECTION DATE]
           ,[INSPECTION TYPE]
           ,[DI_CreateDate]
           ,[DI_WorkflowFileName]
           ,[DI_InspectionDate]
           ,[DI_GradeDate]
           ,[DI_RecordDate]
           ,[DI_WorkflowDirectory]
           ,[DateSK]
           ,[FoodPlacesSK]
           ,[BoroSK]
           ,[AddressSK]
           ,[CuisineDescriptionSK]
           ,[InspectionSK]
           ,[InspectionTypeSK]
           ,[ActionSK]
           ,[CriticalFlagSK]
           ,[GradeSK]
           ,[ViolationCodeSK])
     VALUES
           (<RecordID, int,>
           ,<CAMIS, nvarchar(1000),>
           ,<DBA, nvarchar(1000),>
           ,<BORO, nvarchar(1000),>
           ,<BUILDING, nvarchar(1000),>
           ,<STREET, nvarchar(1000),>
           ,<ZIPCODE, nvarchar(1000),>
           ,<PHONE, nvarchar(1000),>
           ,<CUISINE DESCRIPTION, nvarchar(1000),>
           ,<ACTION, nvarchar(1000),>
           ,<VIOLATION CODE, nvarchar(1000),>
           ,<VIOLATION DESCRIPTION, nvarchar(1000),>
           ,<CRITICAL FLAG, nvarchar(1000),>
           ,<SCORE, nvarchar(1000),>
           ,<GRADE, nvarchar(1000),>
           ,<Latitude, nvarchar(1000),>
           ,<Longitude, nvarchar(1000),>
           ,<Community Board, nvarchar(1000),>
           ,<Council District, nvarchar(1000),>
           ,<Census Tract, nvarchar(1000),>
           ,<BIN, nvarchar(1000),>
           ,<BBL, nvarchar(1000),>
           ,<NTA, nvarchar(1000),>
           ,<GRADE DATE, nvarchar(1000),>
           ,<RECORD DATE, nvarchar(1000),>
           ,<INSPECTION DATE, nvarchar(1000),>
           ,<INSPECTION TYPE, nvarchar(1000),>
           ,<DI_CreateDate, datetime,>
           ,<DI_WorkflowFileName, char(64),>
           ,<DI_InspectionDate, date,>
           ,<DI_GradeDate, date,>
           ,<DI_RecordDate, date,>
           ,<DI_WorkflowDirectory, nvarchar(max),>
           ,<DateSK, int,>
           ,<FoodPlacesSK, int,>
           ,<BoroSK, int,>
           ,<AddressSK, int,>
           ,<CuisineDescriptionSK, int,>
           ,<InspectionSK, int,>
           ,<InspectionTypeSK, int,>
           ,<ActionSK, int,>
           ,<CriticalFlagSK, int,>
           ,<GradeSK, int,>
           ,<ViolationCodeSK, int,>)
GO

