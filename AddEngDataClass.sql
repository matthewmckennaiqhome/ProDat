IF OBJECT_ID(N'[__EFMigrationsHistory]') IS NULL
BEGIN
    CREATE TABLE [__EFMigrationsHistory] (
        [MigrationId] nvarchar(150) NOT NULL,
        [ProductVersion] nvarchar(32) NOT NULL,
        CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY ([MigrationId])
    );
END;

GO

CREATE TABLE [ClassCharacteristics] (
    [ID] int NOT NULL IDENTITY,
    [Class] nvarchar(255) NOT NULL,
    [ClassDesc] nvarchar(255) NULL,
    [Characteristic] nvarchar(255) NULL,
    [CharDesc] nvarchar(255) NULL,
    [DropdownText Value] nvarchar(255) NULL,
    [DropdownValDesc] nvarchar(255) NULL,
    [DropdownText] nvarchar(255) NULL,
    CONSTRAINT [PK_ClassCharacteristics] PRIMARY KEY ([ID])
);

GO

CREATE TABLE [ClassCharsTaskListHeader] (
    [ClassCharsTaskListHeaderID] int NOT NULL IDENTITY,
    [GroupAssociation] nvarchar(255) NULL,
    [CntrAssociation] nvarchar(255) NULL,
    [Class] nvarchar(255) NULL,
    [ClassDesc] nvarchar(255) NULL,
    [Characteristic] nvarchar(255) NULL,
    [CharValue] nvarchar(255) NULL,
    [CharDesc] nvarchar(255) NULL,
    CONSTRAINT [PK_ClassCharsTaskListHeader] PRIMARY KEY ([ClassCharsTaskListHeaderID])
);

GO

CREATE TABLE [ColumnSets] (
    [ColumnSetsId] int NOT NULL IDENTITY,
    [ColumnSetsEntity] nvarchar(max) NULL,
    [ColumnSetsOrder] int NOT NULL,
    [ColumnSetsName] nvarchar(max) NULL,
    [ColumnName] nvarchar(max) NULL,
    [ColumnOrder] int NOT NULL,
    [ColumnWidth] int NOT NULL,
    [ColumnVisible] bit NOT NULL,
    CONSTRAINT [PK_ColumnSets] PRIMARY KEY ([ColumnSetsId])
);

GO

CREATE TABLE [CommClass] (
    [CommClassID] int NOT NULL IDENTITY,
    [CommClassName] nvarchar(255) NOT NULL,
    [CommClassDesc] nvarchar(255) NULL,
    CONSTRAINT [PK_CommClass] PRIMARY KEY ([CommClassID])
);

GO

CREATE TABLE [CompanyCode] (
    [CompanyCodeId] int NOT NULL IDENTITY,
    [CompanyCodeName] nvarchar(max) NULL,
    [CompanyCodeDesc] nvarchar(max) NULL,
    CONSTRAINT [PK_CompanyCode] PRIMARY KEY ([CompanyCodeId])
);

GO

CREATE TABLE [ControlKey] (
    [ControlKeyID] int NOT NULL,
    [ControlKeyName] nvarchar(255) NULL,
    [ControlKeyDesc] nvarchar(255) NULL,
    CONSTRAINT [PK_ControlKey] PRIMARY KEY ([ControlKeyID])
);

GO

CREATE TABLE [DocType] (
    [DocTypeID] int NOT NULL IDENTITY,
    [DocTypeName] nvarchar(255) NOT NULL,
    [DocTypeDesc] nvarchar(255) NULL,
    CONSTRAINT [PK_DocType] PRIMARY KEY ([DocTypeID])
);

GO

CREATE TABLE [EngClass] (
    [EngClassID] int NOT NULL IDENTITY,
    [EngClassName] nvarchar(255) NOT NULL,
    [EngClassDesc] nvarchar(255) NULL,
    CONSTRAINT [PK_EngClass] PRIMARY KEY ([EngClassID])
);

GO

CREATE TABLE [EngDataCode] (
    [EngDataCodeID] int NOT NULL IDENTITY,
    [EngDataCodeName] nvarchar(255) NOT NULL,
    [EngDataCodeDesc] nvarchar(255) NULL,
    [EngDataCodeNotes] nvarchar(50) NULL,
    [HideFromUI] bit NOT NULL,
    [EngDataCodeSAPDesc] nvarchar(255) NULL,
    [EngDataCodeDDLType] nvarchar(255) NULL,
    CONSTRAINT [PK_EngDataCode] PRIMARY KEY ([EngDataCodeID])
);

GO

CREATE TABLE [EngDisc] (
    [EngDiscID] int NOT NULL IDENTITY,
    [EngDiscName] nvarchar(255) NOT NULL,
    [EngDiscDesc] nvarchar(255) NULL,
    CONSTRAINT [PK_EngDisc] PRIMARY KEY ([EngDiscID])
);

GO

CREATE TABLE [EngStatus] (
    [EngStatusID] int NOT NULL IDENTITY,
    [EngStatusName] nvarchar(255) NOT NULL,
    CONSTRAINT [PK_EngStatus] PRIMARY KEY ([EngStatusID])
);

GO

CREATE TABLE [EntityAttribute] (
    [EntityAttributeId] int NOT NULL IDENTITY,
    [EntityName] nvarchar(max) NULL,
    [EntityAttributeName] nvarchar(max) NULL,
    CONSTRAINT [PK_EntityAttribute] PRIMARY KEY ([EntityAttributeId])
);

GO

CREATE TABLE [EnvZone] (
    [EnvZoneID] int NOT NULL IDENTITY,
    [EnvZoneName] nvarchar(50) NOT NULL,
    [EnvZoneDesc] nvarchar(50) NULL,
    CONSTRAINT [PK_EnvZone] PRIMARY KEY ([EnvZoneID])
);

GO

CREATE TABLE [ExMethod] (
    [ExMethodID] int NOT NULL IDENTITY,
    [ExMethodName] nvarchar(255) NOT NULL,
    [ExMethodDesc] nvarchar(255) NOT NULL,
    CONSTRAINT [PK_ExMethod] PRIMARY KEY ([ExMethodID])
);

GO

CREATE TABLE [FlocType] (
    [FlocTypeId] int NOT NULL IDENTITY,
    [FlocTypeName] nvarchar(max) NULL,
    [FlocTypeDesc] nvarchar(max) NULL,
    CONSTRAINT [PK_FlocType] PRIMARY KEY ([FlocTypeId])
);

GO

CREATE TABLE [ImportType] (
    [ImportTypeId] int NOT NULL IDENTITY,
    [ImportTypeName] nvarchar(max) NULL,
    CONSTRAINT [PK_ImportType] PRIMARY KEY ([ImportTypeId])
);

GO

CREATE TABLE [Ipf] (
    [IpfID] int NOT NULL IDENTITY,
    [IpfName] nvarchar(255) NOT NULL,
    [IpfDesc] nvarchar(255) NOT NULL,
    CONSTRAINT [PK_Ipf] PRIMARY KEY ([IpfID])
);

GO

CREATE TABLE [LoadTemplate] (
    [LoadTemplateID] int NOT NULL IDENTITY,
    [LoadTemplateName] nvarchar(255) NOT NULL,
    [LoadTemplateDesc] nvarchar(255) NULL,
    CONSTRAINT [PK_LoadTemplate] PRIMARY KEY ([LoadTemplateID])
);

GO

CREATE TABLE [MaintClass] (
    [MaintClassId] int NOT NULL IDENTITY,
    [MaintClassName] nvarchar(255) NOT NULL,
    [MaintClassDesc] nvarchar(255) NOT NULL,
    CONSTRAINT [PK_MaintClass] PRIMARY KEY ([MaintClassId])
);

GO

CREATE TABLE [MaintCriticality] (
    [MaintCriticalityID] int NOT NULL IDENTITY,
    [MaintCriticalityName] nvarchar(255) NOT NULL,
    [MaintCriticalityDesc] nvarchar(255) NOT NULL,
    CONSTRAINT [PK_MaintCriticality] PRIMARY KEY ([MaintCriticalityID])
);

GO

CREATE TABLE [MaintEdcCode] (
    [MaintEdcCodeID] int NOT NULL IDENTITY,
    [MaintEdcCodeName] nvarchar(8) NOT NULL,
    [MaintEdcCodeDesc] nvarchar(255) NULL,
    CONSTRAINT [PK_MaintEdcCode] PRIMARY KEY ([MaintEdcCodeID])
);

GO

CREATE TABLE [MaintenancePlant] (
    [MaintenancePlantID] int NOT NULL IDENTITY,
    [MaintenancePlantNumber] nvarchar(255) NOT NULL,
    [MaintenancePlantDesc] nvarchar(255) NULL,
    CONSTRAINT [PK_MaintenancePlant] PRIMARY KEY ([MaintenancePlantID])
);

GO

CREATE TABLE [MaintObjectType] (
    [MaintObjectTypeID] int NOT NULL IDENTITY,
    [MaintObjectTypeName] nvarchar(255) NOT NULL,
    [MaintObjectTypeDesc] nvarchar(255) NOT NULL,
    [MaintObjectTypeDescExt] nvarchar(255) NULL,
    [StdNounModifier] nvarchar(255) NULL,
    CONSTRAINT [PK_MaintObjectType] PRIMARY KEY ([MaintObjectTypeID])
);

GO

CREATE TABLE [MaintPackage] (
    [MaintPackageID] int NOT NULL IDENTITY,
    [MaintPackageName] nvarchar(255) NOT NULL,
    [MaintPackageCycleLength] int NULL,
    [MaintPackageCycleUnit] nvarchar(255) NULL,
    [MaintPackageCycleText] nvarchar(255) NULL,
    CONSTRAINT [PK_MaintPackage] PRIMARY KEY ([MaintPackageID])
);

GO

CREATE TABLE [MaintPlannerGroup] (
    [MaintPlannerGroupID] int NOT NULL IDENTITY,
    [MaintPlannerGroupName] nvarchar(255) NOT NULL,
    [MaintPlannerGroupDesc] nvarchar(255) NULL,
    CONSTRAINT [PK_MaintPlannerGroup] PRIMARY KEY ([MaintPlannerGroupID])
);

GO

CREATE TABLE [MaintQueryNote] (
    [MaintQueryNoteID] int NOT NULL IDENTITY,
    [MaintQueryID] int NULL,
    [MaintQueryNoteBy] nvarchar(255) NULL,
    [MaintQueryNoteDate] datetime NULL,
    [MaintQueryNoteText] nvarchar(max) NULL,
    [MaintQueryNoteAttachments] nvarchar(255) NULL,
    CONSTRAINT [PK_MaintQueryNote] PRIMARY KEY ([MaintQueryNoteID])
);

GO

CREATE TABLE [MaintScePsReviewTeam] (
    [MaintScePsReviewTeamID] int NOT NULL IDENTITY,
    [MaintScePsReviewTeamName] nvarchar(255) NOT NULL,
    [MaintScePsReviewTeamDesc] nvarchar(255) NOT NULL,
    CONSTRAINT [PK_MaintScePsReviewTeam] PRIMARY KEY ([MaintScePsReviewTeamID])
);

GO

CREATE TABLE [MaintSortProcess] (
    [MaintSortProcessID] int NOT NULL IDENTITY,
    [MaintSortProcessName] nvarchar(255) NOT NULL,
    [MaintSortProcessDesc] nvarchar(255) NOT NULL,
    CONSTRAINT [PK_MaintSortProcess] PRIMARY KEY ([MaintSortProcessID])
);

GO

CREATE TABLE [MaintStatus] (
    [MaintStatusId] int NOT NULL IDENTITY,
    [MaintStatusName] nvarchar(max) NULL,
    [MaintStatusDesc] nvarchar(max) NULL,
    CONSTRAINT [PK_MaintStatus] PRIMARY KEY ([MaintStatusId])
);

GO

CREATE TABLE [MaintStructureIndicator] (
    [MaintStructureIndicatorID] int NOT NULL IDENTITY,
    [MaintStructureIndicatorName] nvarchar(5) NOT NULL,
    [MaintStructureIndicatorDesc] nvarchar(255) NULL,
    CONSTRAINT [PK_MaintStructureIndicator] PRIMARY KEY ([MaintStructureIndicatorID])
);

GO

CREATE TABLE [MaintType] (
    [MaintTypeID] int NOT NULL IDENTITY,
    [MaintTypeName] nvarchar(255) NOT NULL,
    [MaintTypeDesc] nvarchar(255) NOT NULL,
    CONSTRAINT [PK_MaintType] PRIMARY KEY ([MaintTypeID])
);

GO

CREATE TABLE [MaintWorkCentre] (
    [MaintWorkCentreID] int NOT NULL IDENTITY,
    [MaintWorkCentreName] nvarchar(8) NOT NULL,
    [MaintWorkCentreDesc] nvarchar(255) NULL,
    CONSTRAINT [PK_MaintWorkCentre] PRIMARY KEY ([MaintWorkCentreID])
);

GO

CREATE TABLE [Manufacturer] (
    [ManufacturerID] int NOT NULL IDENTITY,
    [ManufacturerName] nvarchar(255) NOT NULL,
    [ManufacturerDesc] nvarchar(255) NULL,
    CONSTRAINT [PK_Manufacturer] PRIMARY KEY ([ManufacturerID])
);

GO

CREATE TABLE [MeasPoint] (
    [MeasPointID] int NOT NULL IDENTITY,
    [MeasPointData] nvarchar(2056) NOT NULL,
    [MeasPointName] nvarchar(255) NOT NULL,
    CONSTRAINT [PK_MeasPoint] PRIMARY KEY ([MeasPointID])
);

GO

CREATE TABLE [Operation] (
    [OperationID] int NOT NULL,
    [OperationNAme] nvarchar(255) NULL,
    [OperationNotes] nvarchar(255) NULL,
    CONSTRAINT [PK_Operation] PRIMARY KEY ([OperationID])
);

GO

CREATE TABLE [Pbs] (
    [PbsID] int NOT NULL IDENTITY,
    [PbsName] nvarchar(50) NOT NULL,
    [PbsDesc] nvarchar(150) NULL,
    CONSTRAINT [PK_Pbs] PRIMARY KEY ([PbsID])
);

GO

CREATE TABLE [PerformanceStandard] (
    [PerformanceStandardID] int NOT NULL IDENTITY,
    [PerformanceStandardName] nvarchar(255) NOT NULL,
    [PerformanceStandardDesc] nvarchar(255) NOT NULL,
    CONSTRAINT [PK_PerformanceStandard] PRIMARY KEY ([PerformanceStandardID])
);

GO

CREATE TABLE [PlannerPlant] (
    [PlannerPlantId] int NOT NULL IDENTITY,
    [PlannerPlantName] nvarchar(max) NULL,
    [PlannerPlantDesc] nvarchar(max) NULL,
    CONSTRAINT [PK_PlannerPlant] PRIMARY KEY ([PlannerPlantId])
);

GO

CREATE TABLE [PlantSection] (
    [PlantSectionID] int NOT NULL IDENTITY,
    [PlantSectionName] nvarchar(255) NOT NULL,
    [PlantSectionDesc] nvarchar(255) NULL,
    CONSTRAINT [PK_PlantSection] PRIMARY KEY ([PlantSectionID])
);

GO

CREATE TABLE [PMAssembly] (
    [PMAssemblyID] int NOT NULL,
    [PMAssemblyName] nvarchar(255) NOT NULL,
    [ShortText] nvarchar(255) NULL,
    [Make] nvarchar(255) NULL,
    [Model] nvarchar(255) NULL,
    [Rev] nvarchar(255) NULL,
    CONSTRAINT [PK_PMAssembly] PRIMARY KEY ([PMAssemblyID])
);

GO

CREATE TABLE [PO] (
    [POID] int NOT NULL IDENTITY,
    [POName] nvarchar(255) NOT NULL,
    [POCompany] nvarchar(255) NULL,
    [PODesc] nvarchar(255) NULL,
    CONSTRAINT [PK_PO] PRIMARY KEY ([POID])
);

GO

CREATE TABLE [Priority] (
    [PriorityId] int NOT NULL IDENTITY,
    [PriorityName] nvarchar(max) NULL,
    [PriorityDesc] nvarchar(max) NULL,
    CONSTRAINT [PK_Priority] PRIMARY KEY ([PriorityId])
);

GO

CREATE TABLE [RbiSil] (
    [RbiSilID] int NOT NULL IDENTITY,
    [RbiSilName] nvarchar(255) NOT NULL,
    [RbiSilDesc] nvarchar(255) NOT NULL,
    [RbiSilDate] datetime NULL,
    CONSTRAINT [PK_RbiSil] PRIMARY KEY ([RbiSilID])
);

GO

CREATE TABLE [Rbm] (
    [RbmID] int NOT NULL IDENTITY,
    [RbmName] nvarchar(255) NOT NULL,
    [RbmDesc] nvarchar(255) NOT NULL,
    CONSTRAINT [PK_Rbm] PRIMARY KEY ([RbmID])
);

GO

CREATE TABLE [Rcm] (
    [RcmID] int NOT NULL IDENTITY,
    [RcmName] nvarchar(255) NOT NULL,
    [RcmDesc] nvarchar(255) NOT NULL,
    [RcmDate] datetime NULL,
    CONSTRAINT [PK_Rcm] PRIMARY KEY ([RcmID])
);

GO

CREATE TABLE [RegulatoryBody] (
    [RegulatoryBodyID] int NOT NULL,
    [RegulatoryBodyName] nvarchar(255) NOT NULL,
    [RegulatoryBodyDesc] nvarchar(255) NULL,
    CONSTRAINT [PK_RegulatoryBody] PRIMARY KEY ([RegulatoryBodyID])
);

GO

CREATE TABLE [RelationshipType] (
    [RelationshipTypeID] int NOT NULL,
    [RelationshipTypeName] nvarchar(255) NULL,
    [RelationshipTypeDesc] nvarchar(255) NULL,
    CONSTRAINT [PK_RelationshipType] PRIMARY KEY ([RelationshipTypeID])
);

GO

CREATE TABLE [SAPExportDetail] (
    [SAPExportDetailId] int NOT NULL IDENTITY,
    [OutputName] nvarchar(max) NOT NULL,
    [FileName] nvarchar(max) NOT NULL,
    [SheetName] nvarchar(max) NULL,
    [ColumnOrder] int NOT NULL,
    [ColumnHeader_Legible] nvarchar(max) NULL,
    [ColumnHeader_SAP] nvarchar(max) NULL,
    [PathName] nvarchar(max) NULL,
    [DataType] nvarchar(max) NULL,
    [limit] int NOT NULL,
    [Mandatory] nvarchar(max) NULL,
    CONSTRAINT [PK_SAPExportDetail] PRIMARY KEY ([SAPExportDetailId])
);

GO

CREATE TABLE [SAPStatus] (
    [SAPStatusId] int NOT NULL IDENTITY,
    [StatusCode] int NOT NULL,
    [Description] nvarchar(max) NULL,
    [ColourCode] nvarchar(max) NULL,
    [FontColourCode] nvarchar(max) NULL,
    [ForSAPExport] bit NOT NULL,
    CONSTRAINT [PK_SAPStatus] PRIMARY KEY ([SAPStatusId])
);

GO

CREATE TABLE [ScePSReview] (
    [ScePSReviewID] int NOT NULL,
    [ScePSReviewName] nvarchar(255) NOT NULL,
    [ScePSReviewDesc] nvarchar(255) NULL,
    CONSTRAINT [PK_ScePSReview] PRIMARY KEY ([ScePSReviewID])
);

GO

CREATE TABLE [SchedulingPeriodUOM] (
    [SchedulingPeriodUOMId] int NOT NULL IDENTITY,
    [SchedulingPeriodUOMName] nvarchar(max) NULL,
    [SchedulingPeriodUOMDesc] nvarchar(max) NULL,
    CONSTRAINT [PK_SchedulingPeriodUOM] PRIMARY KEY ([SchedulingPeriodUOMId])
);

GO

CREATE TABLE [SortField] (
    [SortFieldId] int NOT NULL IDENTITY,
    [SortFieldName] nvarchar(max) NULL,
    [SortFieldDesc] nvarchar(max) NULL,
    CONSTRAINT [PK_SortField] PRIMARY KEY ([SortFieldId])
);

GO

CREATE TABLE [SysCond] (
    [SysCondID] int NOT NULL,
    [SySCondName] nvarchar(255) NOT NULL,
    [SysCondDesc] nvarchar(255) NULL,
    CONSTRAINT [PK_SysCond] PRIMARY KEY ([SysCondID])
);

GO

CREATE TABLE [System] (
    [SystemID] int NOT NULL IDENTITY,
    [SystemNum] nvarchar(255) NOT NULL,
    [SystemName] nvarchar(255) NULL,
    CONSTRAINT [PK_System] PRIMARY KEY ([SystemID])
);

GO

CREATE TABLE [TagView] (
    [TagViewId] int NOT NULL IDENTITY,
    [TagViewName] nvarchar(max) NULL,
    [Active] bit NOT NULL,
    CONSTRAINT [PK_TagView] PRIMARY KEY ([TagViewId])
);

GO

CREATE TABLE [TaskListCat] (
    [TaskListCatID] int NOT NULL,
    [TaskListCatName] nvarchar(255) NOT NULL,
    [TaskListCatDesc] nvarchar(255) NULL,
    CONSTRAINT [PK_TaskListCat] PRIMARY KEY ([TaskListCatID])
);

GO

CREATE TABLE [TaskListGroup] (
    [TaskListGroupID] int NOT NULL IDENTITY,
    [TaskListGroupName] nvarchar(255) NOT NULL,
    [TaskListGroupDesc] nvarchar(255) NULL,
    CONSTRAINT [PK_TaskListGroup] PRIMARY KEY ([TaskListGroupID])
);

GO

CREATE TABLE [UC2ViewColumns] (
    [UC2ViewColumnsId] int NOT NULL IDENTITY,
    [sectionOrder] int NOT NULL,
    [sectionName] nvarchar(max) NULL,
    [height] int NOT NULL,
    [width] int NOT NULL,
    CONSTRAINT [PK_UC2ViewColumns] PRIMARY KEY ([UC2ViewColumnsId])
);

GO

CREATE TABLE [Vib] (
    [VibID] int NOT NULL IDENTITY,
    [VibName] nvarchar(255) NOT NULL,
    [VibDesc] nvarchar(255) NOT NULL,
    CONSTRAINT [PK_Vib] PRIMARY KEY ([VibID])
);

GO

CREATE TABLE [WBSElement] (
    [WBSElementId] int NOT NULL IDENTITY,
    [WBSElementName] nvarchar(max) NULL,
    [WBSElementDesc] nvarchar(max) NULL,
    CONSTRAINT [PK_WBSElement] PRIMARY KEY ([WBSElementId])
);

GO

CREATE TABLE [Doc] (
    [DocID] int NOT NULL IDENTITY,
    [DocNum] nvarchar(25) NOT NULL,
    [DocAlias] nvarchar(25) NULL,
    [DocTitle] nvarchar(255) NULL,
    [DocTypeID] int NULL,
    [DocLink] nvarchar(255) NULL,
    [DocComments] nvarchar(255) NULL,
    [DocSource] nvarchar(255) NULL,
    CONSTRAINT [PK_Doc] PRIMARY KEY ([DocID]),
    CONSTRAINT [FK_Doc_DocType] FOREIGN KEY ([DocTypeID]) REFERENCES [DocType] ([DocTypeID]) ON DELETE NO ACTION
);

GO

CREATE TABLE [EngDataCodeDropDown] (
    [EngDataCodeDropDownId] int NOT NULL IDENTITY,
    [EngDataCodeId] int NOT NULL,
    [EngDataCodeDropDownValue] nvarchar(255) NULL,
    [EngDataCodeDropDownDesc] nvarchar(255) NULL,
    CONSTRAINT [PK_EngDataCodeDropDown] PRIMARY KEY ([EngDataCodeDropDownId]),
    CONSTRAINT [FK_EngDataCodeDropDown_EngDataCode_EngDataCodeId] FOREIGN KEY ([EngDataCodeId]) REFERENCES [EngDataCode] ([EngDataCodeID]) ON DELETE CASCADE
);

GO

CREATE TABLE [EntityAttributeRequirement] (
    [EntityAttributeRequirementId] int NOT NULL IDENTITY,
    [EntityAttributeId] int NOT NULL,
    [EntityAttributeRequirementType] nvarchar(max) NULL,
    [EntityAttributeRequirementCondition] nvarchar(max) NULL,
    [EntityAttributeRequirementValue] nvarchar(max) NULL,
    [EntityAttributeRequirementValueType] nvarchar(max) NULL,
    CONSTRAINT [PK_EntityAttributeRequirement] PRIMARY KEY ([EntityAttributeRequirementId]),
    CONSTRAINT [FK_EntityAttributeRequirement_EntityAttribute_EntityAttributeId] FOREIGN KEY ([EntityAttributeId]) REFERENCES [EntityAttribute] ([EntityAttributeId]) ON DELETE CASCADE
);

GO

CREATE TABLE [Import] (
    [ImportId] int NOT NULL IDENTITY,
    [ImportStatus] nvarchar(max) NULL,
    [ImportTypeId] int NOT NULL,
    [Created] datetime2 NOT NULL,
    [CreatedBy] nvarchar(max) NULL,
    [CreatedComment] nvarchar(max) NOT NULL,
    [Approved] datetime2 NOT NULL,
    [ApprovedBy] nvarchar(max) NULL,
    [ApprovedComment] nvarchar(max) NULL,
    CONSTRAINT [PK_Import] PRIMARY KEY ([ImportId]),
    CONSTRAINT [FK_Import_ImportType_ImportTypeId] FOREIGN KEY ([ImportTypeId]) REFERENCES [ImportType] ([ImportTypeId]) ON DELETE CASCADE
);

GO

CREATE TABLE [MaintLoad] (
    [MaintLoadID] int NOT NULL IDENTITY,
    [MaintLoadNum] nvarchar(255) NOT NULL,
    [LoadTemplateID] int NOT NULL,
    [MaintLoadComment] nvarchar(255) NULL,
    CONSTRAINT [PK_MaintLoad] PRIMARY KEY ([MaintLoadID]),
    CONSTRAINT [FK_MaintLoad_LoadTemplate] FOREIGN KEY ([LoadTemplateID]) REFERENCES [LoadTemplate] ([LoadTemplateID]) ON DELETE NO ACTION
);

GO

CREATE TABLE [MaintClassXEngDataCode] (
    [MaintClassId] int NOT NULL,
    [EngDataCodeId] int NOT NULL,
    CONSTRAINT [PK_MaintClassXEngDataCode] PRIMARY KEY ([MaintClassId], [EngDataCodeId]),
    CONSTRAINT [FK_MaintClassXEngDataCode_EngDataCode_EngDataCodeId] FOREIGN KEY ([EngDataCodeId]) REFERENCES [EngDataCode] ([EngDataCodeID]) ON DELETE CASCADE,
    CONSTRAINT [FK_MaintClassXEngDataCode_MaintClass_MaintClassId] FOREIGN KEY ([MaintClassId]) REFERENCES [MaintClass] ([MaintClassId]) ON DELETE CASCADE
);

GO

CREATE TABLE [Area] (
    [AreaID] int NOT NULL IDENTITY,
    [MaintenancePlantID] int NOT NULL,
    [AreaName] nvarchar(50) NOT NULL,
    [AreaDisc] nvarchar(50) NOT NULL,
    CONSTRAINT [PK_Area] PRIMARY KEY ([AreaID]),
    CONSTRAINT [FK_Area_MaintenancePlant] FOREIGN KEY ([MaintenancePlantID]) REFERENCES [MaintenancePlant] ([MaintenancePlantID]) ON DELETE NO ACTION
);

GO

CREATE TABLE [Project] (
    [ProjectID] int NOT NULL IDENTITY,
    [ProjectCode] nvarchar(25) NOT NULL,
    [ProjectName] nvarchar(255) NULL,
    [MaintenancePlantID] int NOT NULL,
    [MaintenanceRootTagId] int NOT NULL,
    [MaintHierarchy_LoadDepth] int NOT NULL,
    CONSTRAINT [PK_Project] PRIMARY KEY ([ProjectID]),
    CONSTRAINT [FK_Project_MaintenancePlant] FOREIGN KEY ([MaintenancePlantID]) REFERENCES [MaintenancePlant] ([MaintenancePlantID]) ON DELETE NO ACTION
);

GO

CREATE TABLE [MaintObjectTypeXMaintClass] (
    [MaintObjectTypeId] int NOT NULL,
    [MaintClassId] int NOT NULL,
    CONSTRAINT [PK_MaintObjectTypeXMaintClass] PRIMARY KEY ([MaintObjectTypeId], [MaintClassId]),
    CONSTRAINT [FK_MaintObjectTypeXMaintClass_MaintClass_MaintClassId] FOREIGN KEY ([MaintClassId]) REFERENCES [MaintClass] ([MaintClassId]) ON DELETE CASCADE,
    CONSTRAINT [FK_MaintObjectTypeXMaintClass_MaintObjectType_MaintObjectTypeId] FOREIGN KEY ([MaintObjectTypeId]) REFERENCES [MaintObjectType] ([MaintObjectTypeID]) ON DELETE CASCADE
);

GO

CREATE TABLE [MaintQuery] (
    [MaintQueryID] int NOT NULL IDENTITY,
    [MaintQueryNoteID] int NULL,
    [MaintQueryNum] nvarchar(255) NOT NULL,
    [MaintQueryTitle] nvarchar(255) NULL,
    [MaintQueryRaisedDate] datetime NULL,
    [MaintQueryRaisedBy] nvarchar(255) NULL,
    [MaintQueryLongDesc] nvarchar(max) NULL,
    [MaintQueryClosedBy] nvarchar(255) NULL,
    [MaintQueryClosedDate] datetime NULL,
    [MaintQueryClosingNotes] nvarchar(max) NULL,
    CONSTRAINT [PK_MaintQuery] PRIMARY KEY ([MaintQueryID]),
    CONSTRAINT [FK_MaintQuery_MaintQueryNote] FOREIGN KEY ([MaintQueryNoteID]) REFERENCES [MaintQueryNote] ([MaintQueryNoteID]) ON DELETE NO ACTION
);

GO

CREATE TABLE [Models] (
    [ModelID] int NOT NULL IDENTITY,
    [ModelName] nvarchar(255) NOT NULL,
    [ModelDesc] nvarchar(255) NULL,
    [ManufacturerId] int NULL,
    CONSTRAINT [PK_Models] PRIMARY KEY ([ModelID]),
    CONSTRAINT [FK_Models_Manufacturer_ManufacturerId] FOREIGN KEY ([ManufacturerId]) REFERENCES [Manufacturer] ([ManufacturerID]) ON DELETE NO ACTION
);

GO

CREATE TABLE [MaintArea] (
    [MaintAreaId] int NOT NULL IDENTITY,
    [PlantSectionID] int NULL,
    [MaintAreaName] nvarchar(4) NOT NULL,
    [MaintAreaDesc] nvarchar(255) NULL,
    CONSTRAINT [PK_MaintArea] PRIMARY KEY ([MaintAreaId]),
    CONSTRAINT [FK_MaintArea_PlantSection] FOREIGN KEY ([PlantSectionID]) REFERENCES [PlantSection] ([PlantSectionID]) ON DELETE NO ACTION
);

GO

CREATE TABLE [RelationshipToOperation] (
    [RelationshipToOperationID] int NOT NULL,
    [RelationshipToOperationName] nvarchar(255) NULL,
    [RelationshipTypeID] int NULL,
    [RelationshipToOperationNotes] nvarchar(255) NULL,
    CONSTRAINT [PK_RelationshipToOperation] PRIMARY KEY ([RelationshipToOperationID]),
    CONSTRAINT [FK_RelationshipToOperation_RelationshipType] FOREIGN KEY ([RelationshipTypeID]) REFERENCES [RelationshipType] ([RelationshipTypeID]) ON DELETE NO ACTION
);

GO

CREATE TABLE [SubSystem] (
    [SubSystemID] int NOT NULL IDENTITY,
    [SubSystemNum] nvarchar(255) NOT NULL,
    [SubSystemName] nvarchar(255) NULL,
    [SystemID] int NULL,
    CONSTRAINT [PK_SubSystem] PRIMARY KEY ([SubSystemID]),
    CONSTRAINT [FK_SubSystem_System] FOREIGN KEY ([SystemID]) REFERENCES [System] ([SystemID]) ON DELETE NO ACTION
);

GO

CREATE TABLE [TagViewColumns] (
    [TagViewColumnsId] int NOT NULL IDENTITY,
    [TagViewId] int NOT NULL,
    [TagViewOrder] int NOT NULL,
    [ColumnName] nvarchar(max) NULL,
    [ColumnWidth] int NOT NULL,
    [starField] nvarchar(max) NULL,
    CONSTRAINT [PK_TagViewColumns] PRIMARY KEY ([TagViewColumnsId]),
    CONSTRAINT [FK_TagViewColumns_TagView_TagViewId] FOREIGN KEY ([TagViewId]) REFERENCES [TagView] ([TagViewId]) ON DELETE CASCADE
);

GO

CREATE TABLE [UC2ViewColumnsUser] (
    [UC2ViewColumnsUserId] int NOT NULL IDENTITY,
    [UC2ViewColumnsId] int NOT NULL,
    [UserName] nvarchar(max) NULL,
    [height] int NOT NULL,
    [width] int NOT NULL,
    CONSTRAINT [PK_UC2ViewColumnsUser] PRIMARY KEY ([UC2ViewColumnsUserId]),
    CONSTRAINT [FK_UC2ViewColumnsUser_UC2ViewColumns_UC2ViewColumnsId] FOREIGN KEY ([UC2ViewColumnsId]) REFERENCES [UC2ViewColumns] ([UC2ViewColumnsId]) ON DELETE CASCADE
);

GO

CREATE TABLE [MaintStrategy] (
    [MaintStrategyID] int NOT NULL IDENTITY,
    [DocID] int NULL,
    [MaintStrategyName] nvarchar(255) NOT NULL,
    [MaintStrategyDesc] nvarchar(255) NULL,
    CONSTRAINT [PK_MaintStrategy] PRIMARY KEY ([MaintStrategyID]),
    CONSTRAINT [FK_MaintStrategy_Doc] FOREIGN KEY ([DocID]) REFERENCES [Doc] ([DocID]) ON DELETE NO ACTION
);

GO

CREATE TABLE [ImportExtract] (
    [ImportExtractId] int NOT NULL IDENTITY,
    [ImportId] int NOT NULL,
    [EntityName] nvarchar(max) NULL,
    [EntityPseudoPK] nvarchar(max) NULL,
    [EntityPseudoPK2] nvarchar(max) NULL,
    [EntityPseudoFKName] nvarchar(max) NULL,
    [EntityPseudoFKValue] nvarchar(max) NULL,
    [EntityPseudoFK2Name] nvarchar(max) NULL,
    [EntityPseudoFK2Value] nvarchar(max) NULL,
    [AttributeName] nvarchar(max) NULL,
    [AttributeValue] nvarchar(max) NULL,
    CONSTRAINT [PK_ImportExtract] PRIMARY KEY ([ImportExtractId]),
    CONSTRAINT [FK_ImportExtract_Import_ImportId] FOREIGN KEY ([ImportId]) REFERENCES [Import] ([ImportId]) ON DELETE CASCADE
);

GO

CREATE TABLE [ImportTransform] (
    [ImportTransformId] int NOT NULL IDENTITY,
    [ImportId] int NOT NULL,
    [LoadType] nvarchar(max) NULL,
    [EntityName] nvarchar(max) NULL,
    [EntityPK] int NOT NULL,
    [EntityPseudoPK] nvarchar(max) NULL,
    [EntityPK2] int NOT NULL,
    [AttributeName] nvarchar(max) NULL,
    [AttributeValue] nvarchar(max) NULL,
    [AttributeValueTxt] nvarchar(max) NULL,
    [AttributeValueOld] nvarchar(max) NULL,
    [AttributeValueType] nvarchar(max) NULL,
    CONSTRAINT [PK_ImportTransform] PRIMARY KEY ([ImportTransformId]),
    CONSTRAINT [FK_ImportTransform_Import_ImportId] FOREIGN KEY ([ImportId]) REFERENCES [Import] ([ImportId]) ON DELETE CASCADE
);

GO

CREATE TABLE [Location] (
    [LocationID] int NOT NULL IDENTITY,
    [AreaID] int NOT NULL,
    [LocationName] nvarchar(50) NOT NULL,
    [LocationDesc] nvarchar(255) NOT NULL,
    CONSTRAINT [PK_Location] PRIMARY KEY ([LocationID]),
    CONSTRAINT [FK_Location_Area] FOREIGN KEY ([AreaID]) REFERENCES [Area] ([AreaID]) ON DELETE NO ACTION
);

GO

CREATE TABLE [CommZone] (
    [CommZoneID] int NOT NULL IDENTITY,
    [ProjectID] int NOT NULL,
    [CommZoneName] nvarchar(255) NOT NULL,
    [CommZoneDesc] nvarchar(255) NULL,
    CONSTRAINT [PK_CommZone] PRIMARY KEY ([CommZoneID]),
    CONSTRAINT [FK_CommZone_Project] FOREIGN KEY ([ProjectID]) REFERENCES [Project] ([ProjectID]) ON DELETE NO ACTION
);

GO

CREATE TABLE [SP] (
    [SPID] int NOT NULL IDENTITY,
    [ProjectID] int NOT NULL,
    [SPnum] nvarchar(50) NOT NULL,
    [SPdesc] nvarchar(50) NULL,
    CONSTRAINT [PK_SP] PRIMARY KEY ([SPID]),
    CONSTRAINT [FK_SP_Project] FOREIGN KEY ([ProjectID]) REFERENCES [Project] ([ProjectID]) ON DELETE NO ACTION
);

GO

CREATE TABLE [MaintLocation] (
    [MaintLocationID] int NOT NULL IDENTITY,
    [MaintAreaId] int NULL,
    [MaintLocationName] nvarchar(255) NOT NULL,
    [MaintLocationDesc] nvarchar(255) NULL,
    CONSTRAINT [PK_MaintLocation] PRIMARY KEY ([MaintLocationID]),
    CONSTRAINT [FK_MaintLocation_MaintArea] FOREIGN KEY ([MaintAreaId]) REFERENCES [MaintArea] ([MaintAreaId]) ON DELETE NO ACTION
);

GO

CREATE TABLE [TagViewColumnsUser] (
    [TagViewColumnsUserId] int NOT NULL IDENTITY,
    [TagViewColumnsId] int NOT NULL,
    [UserName] nvarchar(max) NULL,
    [ColumnWidth] int NOT NULL,
    CONSTRAINT [PK_TagViewColumnsUser] PRIMARY KEY ([TagViewColumnsUserId]),
    CONSTRAINT [FK_TagViewColumnsUser_TagViewColumns_TagViewColumnsId] FOREIGN KEY ([TagViewColumnsId]) REFERENCES [TagViewColumns] ([TagViewColumnsId]) ON DELETE CASCADE
);

GO

CREATE TABLE [MaintPlan] (
    [MaintPlanID] int NOT NULL IDENTITY,
    [MaintPlanName] nvarchar(255) NOT NULL,
    [ShortText] nvarchar(255) NOT NULL,
    [MaintStrategyID] int NULL,
    [MaintSortProcessID] int NOT NULL,
    [Sort] nvarchar(255) NULL,
    [CycleModFactor] float NULL,
    [StartDate] nvarchar(255) NULL,
    [MeasPointID] int NULL,
    [ChangeStatus] nvarchar(255) NULL,
    [StartingInstructions] nvarchar(255) NULL,
    [CallHorizon] nvarchar(255) NULL,
    [SchedulingPeriodValue] int NULL,
    [SchedulingPeriodUomId] int NULL,
    CONSTRAINT [PK_MaintPlan] PRIMARY KEY ([MaintPlanID]),
    CONSTRAINT [FK_MaintPlan_MaintSortProcess] FOREIGN KEY ([MaintSortProcessID]) REFERENCES [MaintSortProcess] ([MaintSortProcessID]) ON DELETE NO ACTION,
    CONSTRAINT [FK_MaintPlan_MaintStrategy] FOREIGN KEY ([MaintStrategyID]) REFERENCES [MaintStrategy] ([MaintStrategyID]) ON DELETE NO ACTION,
    CONSTRAINT [FK_MaintPlan_MeasPoint] FOREIGN KEY ([MeasPointID]) REFERENCES [MeasPoint] ([MeasPointID]) ON DELETE NO ACTION
);

GO

CREATE TABLE [TaskListHeader] (
    [TaskListHeaderId] int NOT NULL IDENTITY,
    [TaskListGroupID] int NOT NULL,
    [Counter] int NOT NULL,
    [TaskListShortText] nvarchar(255) NOT NULL,
    [MaintWorkCentreID] int NULL,
    [MaintenancePlantID] int NULL,
    [SysCondID] int NULL,
    [MaintStrategyID] int NULL,
    [MaintPackageID] int NULL,
    [PMAssemblyID] int NULL,
    [TasklistCatID] int NULL,
    [PerformanceStandardID] int NULL,
    [PerfStdAppDel] nvarchar(255) NULL,
    [ScePsReviewID] int NULL,
    [RegulatoryBodyID] int NULL,
    [RegBodyAppDel] nvarchar(255) NULL,
    [ChangeRequired] nvarchar(255) NULL,
    [TaskListClassID] int NULL,
    [MaintPlannerGroupId] int NULL,
    [StatusId] int NULL,
    CONSTRAINT [PK_TaskListHeader] PRIMARY KEY ([TaskListHeaderId]),
    CONSTRAINT [FK_TaskListHeader_MaintPackage] FOREIGN KEY ([MaintPackageID]) REFERENCES [MaintPackage] ([MaintPackageID]) ON DELETE NO ACTION,
    CONSTRAINT [FK_TaskListHeader_MaintPlannerGroup_MaintPlannerGroupId] FOREIGN KEY ([MaintPlannerGroupId]) REFERENCES [MaintPlannerGroup] ([MaintPlannerGroupID]) ON DELETE NO ACTION,
    CONSTRAINT [FK_TaskListHeader_MaintStrategy] FOREIGN KEY ([MaintStrategyID]) REFERENCES [MaintStrategy] ([MaintStrategyID]) ON DELETE NO ACTION,
    CONSTRAINT [FK_TaskListHeader_MaintWorkCentre] FOREIGN KEY ([MaintWorkCentreID]) REFERENCES [MaintWorkCentre] ([MaintWorkCentreID]) ON DELETE NO ACTION,
    CONSTRAINT [FK_TaskListHeader_MaintenancePlant] FOREIGN KEY ([MaintenancePlantID]) REFERENCES [MaintenancePlant] ([MaintenancePlantID]) ON DELETE NO ACTION,
    CONSTRAINT [FK_TaskListHeader_PerformanceStandard] FOREIGN KEY ([PerformanceStandardID]) REFERENCES [PerformanceStandard] ([PerformanceStandardID]) ON DELETE NO ACTION,
    CONSTRAINT [FK_TaskListHeader_PMAssembly] FOREIGN KEY ([PMAssemblyID]) REFERENCES [PMAssembly] ([PMAssemblyID]) ON DELETE NO ACTION,
    CONSTRAINT [FK_TaskListHeader_RegulatoryBody] FOREIGN KEY ([RegulatoryBodyID]) REFERENCES [RegulatoryBody] ([RegulatoryBodyID]) ON DELETE NO ACTION,
    CONSTRAINT [FK_TaskListHeader_SAPStatus_StatusId] FOREIGN KEY ([StatusId]) REFERENCES [SAPStatus] ([SAPStatusId]) ON DELETE NO ACTION,
    CONSTRAINT [FK_TaskListHeader_SysCond_SysCondID] FOREIGN KEY ([SysCondID]) REFERENCES [SysCond] ([SysCondID]) ON DELETE NO ACTION,
    CONSTRAINT [FK_TaskListHeader_TaskListGroup_TaskListGroupID] FOREIGN KEY ([TaskListGroupID]) REFERENCES [TaskListGroup] ([TaskListGroupID]) ON DELETE CASCADE,
    CONSTRAINT [FK_TaskListHeader_TaskListCat] FOREIGN KEY ([TasklistCatID]) REFERENCES [TaskListCat] ([TaskListCatID]) ON DELETE NO ACTION
);

GO

CREATE TABLE [ImportError] (
    [ImportErrorId] int NOT NULL IDENTITY,
    [ImportId] int NOT NULL,
    [ImportExtractId] int NULL,
    [ImportTransformId] int NULL,
    [ErrorVector] nvarchar(max) NULL,
    [ErrorDescription] nvarchar(max) NULL,
    CONSTRAINT [PK_ImportError] PRIMARY KEY ([ImportErrorId]),
    CONSTRAINT [FK_ImportError_ImportExtract_ImportExtractId] FOREIGN KEY ([ImportExtractId]) REFERENCES [ImportExtract] ([ImportExtractId]) ON DELETE NO ACTION,
    CONSTRAINT [FK_ImportError_Import_ImportId] FOREIGN KEY ([ImportId]) REFERENCES [Import] ([ImportId]) ON DELETE CASCADE,
    CONSTRAINT [FK_ImportError_ImportTransform_ImportTransformId] FOREIGN KEY ([ImportTransformId]) REFERENCES [ImportTransform] ([ImportTransformId]) ON DELETE NO ACTION
);

GO

CREATE TABLE [CommSubSystem] (
    [CommSubSystemID] int NOT NULL IDENTITY,
    [SystemID] int NOT NULL,
    [CommSubSystemNo] nvarchar(255) NOT NULL,
    [CommSubSystemName] nvarchar(255) NULL,
    [SPID] int NULL,
    CONSTRAINT [PK_CommSubSystem] PRIMARY KEY ([CommSubSystemID]),
    CONSTRAINT [FK_CommSubSystem_SP] FOREIGN KEY ([SPID]) REFERENCES [SP] ([SPID]) ON DELETE NO ACTION,
    CONSTRAINT [FK_CommSubSystem_System] FOREIGN KEY ([SystemID]) REFERENCES [System] ([SystemID]) ON DELETE NO ACTION
);

GO

CREATE TABLE [TaskListOperations] (
    [TaskListOPerationID] int NOT NULL IDENTITY,
    [TaskListHeaderID] int NULL,
    [OperationNum] int NOT NULL,
    [SubOperationNum] int NOT NULL DEFAULT 0,
    [OperationID] int NULL,
    [OperationDescription] nvarchar(max) NULL,
    [MaintWorkCentreID] int NULL,
    [MaintenancePlantID] int NULL,
    [ControlKeyID] int NULL,
    [SysCondID] int NULL,
    [RelationshiptoOperationID] int NULL,
    [OperationShortText] nvarchar(255) NULL,
    [OperationLongText] nvarchar(255) NULL,
    [WorkHrs] nvarchar(255) NULL,
    [CapNo] int NULL,
    [MaintPackageID] int NULL,
    [DocID] int NULL,
    [TI] bit NOT NULL DEFAULT CAST(0 AS bit),
    [Offsite] bit NOT NULL DEFAULT CAST(0 AS bit),
    [FixedOperQty] int NULL,
    [ChangeRequired] nvarchar(255) NULL,
    CONSTRAINT [PK_TaskListOperations] PRIMARY KEY ([TaskListOPerationID]),
    CONSTRAINT [FK_TaskListOperations_ControlKey] FOREIGN KEY ([ControlKeyID]) REFERENCES [ControlKey] ([ControlKeyID]) ON DELETE NO ACTION,
    CONSTRAINT [FK_TaskListOperations_Doc] FOREIGN KEY ([DocID]) REFERENCES [Doc] ([DocID]) ON DELETE NO ACTION,
    CONSTRAINT [FK_TaskListOperations_MaintPackage] FOREIGN KEY ([MaintPackageID]) REFERENCES [MaintPackage] ([MaintPackageID]) ON DELETE NO ACTION,
    CONSTRAINT [FK_TaskListOperations_MaintWorkCentre] FOREIGN KEY ([MaintWorkCentreID]) REFERENCES [MaintWorkCentre] ([MaintWorkCentreID]) ON DELETE NO ACTION,
    CONSTRAINT [FK_TaskListOperations_MaintenancePlant] FOREIGN KEY ([MaintenancePlantID]) REFERENCES [MaintenancePlant] ([MaintenancePlantID]) ON DELETE NO ACTION,
    CONSTRAINT [FK_TaskListOperations_Operation] FOREIGN KEY ([OperationID]) REFERENCES [Operation] ([OperationID]) ON DELETE NO ACTION,
    CONSTRAINT [FK_TaskListOperations_RelationshipToOperation] FOREIGN KEY ([RelationshiptoOperationID]) REFERENCES [RelationshipToOperation] ([RelationshipToOperationID]) ON DELETE NO ACTION,
    CONSTRAINT [FK_TaskListOperations_SysCond] FOREIGN KEY ([SysCondID]) REFERENCES [SysCond] ([SysCondID]) ON DELETE NO ACTION,
    CONSTRAINT [FK_TaskListOperations_TaskListHeader_TaskListHeaderID] FOREIGN KEY ([TaskListHeaderID]) REFERENCES [TaskListHeader] ([TaskListHeaderId]) ON DELETE NO ACTION
);

GO

CREATE TABLE [TaskListXScePSReview] (
    [ScePSReviewID] int NOT NULL,
    [TaskListHeaderID] int NOT NULL,
    CONSTRAINT [PK_TaskListXScePSReview] PRIMARY KEY ([ScePSReviewID], [TaskListHeaderID]),
    CONSTRAINT [FK_TaskListXScePSReview_ScePSReview] FOREIGN KEY ([ScePSReviewID]) REFERENCES [ScePSReview] ([ScePSReviewID]) ON DELETE NO ACTION,
    CONSTRAINT [FK_TaskListXScePSReview_TaskListHeader] FOREIGN KEY ([TaskListHeaderID]) REFERENCES [TaskListHeader] ([TaskListHeaderId]) ON DELETE NO ACTION
);

GO

CREATE TABLE [Tag] (
    [TagID] int NOT NULL IDENTITY,
    [TagNumber] nvarchar(50) NOT NULL,
    [TagService] nvarchar(255) NULL,
    [TagFLOC] nvarchar(50) NULL,
    [SubSystemID] int NULL,
    [EngClassID] int NULL,
    [EngParentID] int NULL,
    [MaintParentID] int NULL,
    [EngDiscId] int NULL,
    [MaintLocationID] int NULL,
    [LocationID] int NULL,
    [MaintTypeID] int NULL,
    [MaintStatusID] int NULL,
    [EngStatusID] int NULL,
    [MaintWorkCentreID] int NULL,
    [MaintEdcCodeId] int NULL,
    [MaintStructureIndicatorID] int NULL,
    [CommissioningSubsystemID] int NULL,
    [CommClassID] int NULL,
    [CommZoneID] int NULL,
    [MaintPlannerGroupID] int NULL,
    [MaintenanceplanID] int NULL,
    [MaintCriticalityID] int NULL,
    [PerformanceStandardID] int NULL,
    [KeyDocID] int NULL,
    [PoID] int NULL,
    [TagSource] nvarchar(255) NULL,
    [TagDeleted] bit NOT NULL DEFAULT CAST(0 AS bit),
    [RTF] bit NOT NULL,
    [TagFlocDesc] nvarchar(100) NULL,
    [FlocTypeId] int NULL,
    [TagMaintQuery] bit NOT NULL DEFAULT CAST(0 AS bit),
    [TagComment] nvarchar(max) NULL,
    [MaintenancePlantId] int NULL,
    [ModelID] int NULL,
    [ModelDescription] nvarchar(max) NULL,
    [VibID] int NULL,
    [Tagnoneng] bit NOT NULL DEFAULT CAST(0 AS bit),
    [TagVendorTag] nvarchar(50) NULL,
    [MaintObjectTypeID] int NULL,
    [RbiSilID] int NULL,
    [IpfID] int NULL,
    [RcmID] int NULL,
    [TagRawNumber] nvarchar(128) NULL,
    [TagRawDesc] nvarchar(255) NULL,
    [MaintScePsReviewTeamID] int NULL,
    [MaintScePsJustification] nvarchar(50) NULL,
    [TagMaintCritComments] nvarchar(50) NULL,
    [RbmID] int NULL,
    [ManufacturerID] int NULL,
    [ExMethodID] int NULL,
    [TagRbmMethod] nvarchar(50) NULL,
    [TagVib] nvarchar(5) NULL,
    [TagSrcKeyList] nvarchar(40) NULL,
    [TagBomReq] nvarchar(4) NULL,
    [TagSpNo] nvarchar(10) NULL,
    [MaintSortProcessID] int NULL,
    [TagCharacteristic] nvarchar(255) NULL,
    [TagCharValue] nvarchar(255) NULL,
    [TagCharDesc] nvarchar(255) NULL,
    [SAPStatusId] int NULL,
    [SerialNumber] nvarchar(max) NULL,
    [MEXEquipList] nvarchar(max) NULL,
    [MEXParentEquip] nvarchar(max) NULL,
    [SupFunctLoc] nvarchar(max) NULL,
    [SortFieldId] int NULL,
    [PlannerPlantdId] int NULL,
    [ComnpanyCodeId] int NULL,
    [WBSElementId] int NULL,
    [PbsId] int NULL,
    [EnvZoneId] int NULL,
    [PlannerPlantId] int NULL,
    [CompanyCodeId] int NULL,
    [EngParentID1] int NULL,
    CONSTRAINT [PK_Tag] PRIMARY KEY ([TagID]),
    CONSTRAINT [FK_Tag_CommClass] FOREIGN KEY ([CommClassID]) REFERENCES [CommClass] ([CommClassID]) ON DELETE NO ACTION,
    CONSTRAINT [FK_Tag_CommZone] FOREIGN KEY ([CommZoneID]) REFERENCES [CommZone] ([CommZoneID]) ON DELETE NO ACTION,
    CONSTRAINT [FK_Tag_CommSubSystem] FOREIGN KEY ([CommissioningSubsystemID]) REFERENCES [CommSubSystem] ([CommSubSystemID]) ON DELETE NO ACTION,
    CONSTRAINT [FK_Tag_CompanyCode_CompanyCodeId] FOREIGN KEY ([CompanyCodeId]) REFERENCES [CompanyCode] ([CompanyCodeId]) ON DELETE NO ACTION,
    CONSTRAINT [FK_Tag_EngClass] FOREIGN KEY ([EngClassID]) REFERENCES [EngClass] ([EngClassID]) ON DELETE NO ACTION,
    CONSTRAINT [FK_Tag_EngDisc] FOREIGN KEY ([EngDiscId]) REFERENCES [EngDisc] ([EngDiscID]) ON DELETE NO ACTION,
    CONSTRAINT [FK_Tag_EngParent] FOREIGN KEY ([EngParentID]) REFERENCES [Tag] ([TagID]) ON DELETE NO ACTION,
    CONSTRAINT [FK_Tag_EngStatus] FOREIGN KEY ([EngStatusID]) REFERENCES [EngStatus] ([EngStatusID]) ON DELETE NO ACTION,
    CONSTRAINT [FK_Tag_EnvZone_EnvZoneId] FOREIGN KEY ([EnvZoneId]) REFERENCES [EnvZone] ([EnvZoneID]) ON DELETE NO ACTION,
    CONSTRAINT [FK_Tag_ExMethod] FOREIGN KEY ([ExMethodID]) REFERENCES [ExMethod] ([ExMethodID]) ON DELETE NO ACTION,
    CONSTRAINT [FK_Tag_FlocType_FlocTypeId] FOREIGN KEY ([FlocTypeId]) REFERENCES [FlocType] ([FlocTypeId]) ON DELETE NO ACTION,
    CONSTRAINT [FK_Tag_Ipf] FOREIGN KEY ([IpfID]) REFERENCES [Ipf] ([IpfID]) ON DELETE NO ACTION,
    CONSTRAINT [FK_Tag_Doc] FOREIGN KEY ([KeyDocID]) REFERENCES [Doc] ([DocID]) ON DELETE NO ACTION,
    CONSTRAINT [FK_Tag_Location_LocationID] FOREIGN KEY ([LocationID]) REFERENCES [Location] ([LocationID]) ON DELETE NO ACTION,
    CONSTRAINT [FK_Tag_MaintCriticality] FOREIGN KEY ([MaintCriticalityID]) REFERENCES [MaintCriticality] ([MaintCriticalityID]) ON DELETE NO ACTION,
    CONSTRAINT [FK_Tag_MaintEdcCode] FOREIGN KEY ([MaintEdcCodeId]) REFERENCES [MaintEdcCode] ([MaintEdcCodeID]) ON DELETE NO ACTION,
    CONSTRAINT [FK_Tag_MaintLocation] FOREIGN KEY ([MaintLocationID]) REFERENCES [MaintLocation] ([MaintLocationID]) ON DELETE NO ACTION,
    CONSTRAINT [FK_Tag_MaintObjectType] FOREIGN KEY ([MaintObjectTypeID]) REFERENCES [MaintObjectType] ([MaintObjectTypeID]) ON DELETE NO ACTION,
    CONSTRAINT [FK_Tag_MaintParent] FOREIGN KEY ([MaintParentID]) REFERENCES [Tag] ([TagID]) ON DELETE NO ACTION,
    CONSTRAINT [FK_Tag_MaintPlannerGroup] FOREIGN KEY ([MaintPlannerGroupID]) REFERENCES [MaintPlannerGroup] ([MaintPlannerGroupID]) ON DELETE NO ACTION,
    CONSTRAINT [FK_Tag_MaintScePsReviewTeam] FOREIGN KEY ([MaintScePsReviewTeamID]) REFERENCES [MaintScePsReviewTeam] ([MaintScePsReviewTeamID]) ON DELETE NO ACTION,
    CONSTRAINT [FK_Tag_MaintSortProcess] FOREIGN KEY ([MaintSortProcessID]) REFERENCES [MaintSortProcess] ([MaintSortProcessID]) ON DELETE NO ACTION,
    CONSTRAINT [FK_Tag_MaintStatus_MaintStatusID] FOREIGN KEY ([MaintStatusID]) REFERENCES [MaintStatus] ([MaintStatusId]) ON DELETE NO ACTION,
    CONSTRAINT [FK_Tag_MaintStructIndicator] FOREIGN KEY ([MaintStructureIndicatorID]) REFERENCES [MaintStructureIndicator] ([MaintStructureIndicatorID]) ON DELETE NO ACTION,
    CONSTRAINT [FK_Tag_MaintType] FOREIGN KEY ([MaintTypeID]) REFERENCES [MaintType] ([MaintTypeID]) ON DELETE NO ACTION,
    CONSTRAINT [FK_Tag_MaintWorkCentre] FOREIGN KEY ([MaintWorkCentreID]) REFERENCES [MaintWorkCentre] ([MaintWorkCentreID]) ON DELETE NO ACTION,
    CONSTRAINT [FK_Tag_MaintenancePlant_MaintenancePlantId] FOREIGN KEY ([MaintenancePlantId]) REFERENCES [MaintenancePlant] ([MaintenancePlantID]) ON DELETE NO ACTION,
    CONSTRAINT [FK_Tag_MaintPlan] FOREIGN KEY ([MaintenanceplanID]) REFERENCES [MaintPlan] ([MaintPlanID]) ON DELETE NO ACTION,
    CONSTRAINT [FK_Tag_Manufacturer] FOREIGN KEY ([ManufacturerID]) REFERENCES [Manufacturer] ([ManufacturerID]) ON DELETE NO ACTION,
    CONSTRAINT [FK_Tag_Model] FOREIGN KEY ([ModelID]) REFERENCES [Models] ([ModelID]) ON DELETE NO ACTION,
    CONSTRAINT [FK_Tag_Pbs_PbsId] FOREIGN KEY ([PbsId]) REFERENCES [Pbs] ([PbsID]) ON DELETE NO ACTION,
    CONSTRAINT [FK_Tag_PerformanceStandard] FOREIGN KEY ([PerformanceStandardID]) REFERENCES [PerformanceStandard] ([PerformanceStandardID]) ON DELETE NO ACTION,
    CONSTRAINT [FK_Tag_PlannerPlant_PlannerPlantId] FOREIGN KEY ([PlannerPlantId]) REFERENCES [PlannerPlant] ([PlannerPlantId]) ON DELETE NO ACTION,
    CONSTRAINT [FK_Tag_RbiSil] FOREIGN KEY ([RbiSilID]) REFERENCES [RbiSil] ([RbiSilID]) ON DELETE NO ACTION,
    CONSTRAINT [FK_Tag_Rbm] FOREIGN KEY ([RbmID]) REFERENCES [Rbm] ([RbmID]) ON DELETE NO ACTION,
    CONSTRAINT [FK_Tag_Rcm] FOREIGN KEY ([RcmID]) REFERENCES [Rcm] ([RcmID]) ON DELETE NO ACTION,
    CONSTRAINT [FK_Tag_SAPStatus_SAPStatusId] FOREIGN KEY ([SAPStatusId]) REFERENCES [SAPStatus] ([SAPStatusId]) ON DELETE NO ACTION,
    CONSTRAINT [FK_Tag_SortField_SortFieldId] FOREIGN KEY ([SortFieldId]) REFERENCES [SortField] ([SortFieldId]) ON DELETE NO ACTION,
    CONSTRAINT [FK_Tag_SubSystem] FOREIGN KEY ([SubSystemID]) REFERENCES [SubSystem] ([SubSystemID]) ON DELETE NO ACTION,
    CONSTRAINT [FK_Tag_Vib] FOREIGN KEY ([VibID]) REFERENCES [Vib] ([VibID]) ON DELETE NO ACTION,
    CONSTRAINT [FK_Tag_WBSElement_WBSElementId] FOREIGN KEY ([WBSElementId]) REFERENCES [WBSElement] ([WBSElementId]) ON DELETE NO ACTION
);

GO

CREATE TABLE [FlocXMaintLoad] (
    [TagID] int NOT NULL,
    [MaintLoadID] int NOT NULL,
    CONSTRAINT [PK_FlocXMaintLoad] PRIMARY KEY ([TagID], [MaintLoadID]),
    CONSTRAINT [FK_FlocXMaintLoad_MaintLoad] FOREIGN KEY ([MaintLoadID]) REFERENCES [MaintLoad] ([MaintLoadID]) ON DELETE NO ACTION,
    CONSTRAINT [FK_FlocXMaintLoad_Floc] FOREIGN KEY ([TagID]) REFERENCES [Tag] ([TagID]) ON DELETE NO ACTION
);

GO

CREATE TABLE [FlocXMaintQuery] (
    [FlocID] int NOT NULL,
    [MaintQueryID] int NOT NULL,
    CONSTRAINT [PK_FlocXMaintQuery] PRIMARY KEY ([FlocID], [MaintQueryID]),
    CONSTRAINT [FK_FlocXMaintQuery_Floc] FOREIGN KEY ([FlocID]) REFERENCES [Tag] ([TagID]) ON DELETE NO ACTION,
    CONSTRAINT [FK_FlocXMaintQuery_MaintQuery] FOREIGN KEY ([MaintQueryID]) REFERENCES [MaintQuery] ([MaintQueryID]) ON DELETE NO ACTION
);

GO

CREATE TABLE [FlocXPMAssembly] (
    [TagID] int NOT NULL,
    [PMAssemblyID] int NOT NULL,
    CONSTRAINT [PK_FlocXPMAssembly] PRIMARY KEY ([TagID], [PMAssemblyID]),
    CONSTRAINT [FK_FlocXPMAssembly_PMAssembly] FOREIGN KEY ([PMAssemblyID]) REFERENCES [PMAssembly] ([PMAssemblyID]) ON DELETE NO ACTION,
    CONSTRAINT [FK_FlocXPMAssembly_Tag] FOREIGN KEY ([TagID]) REFERENCES [Tag] ([TagID]) ON DELETE NO ACTION
);

GO

CREATE TABLE [MaintItem] (
    [MaintItemID] int NOT NULL IDENTITY,
    [MaintPlanID] int NOT NULL,
    [MaintItemNum] nvarchar(255) NOT NULL,
    [MaintItemShortText] nvarchar(255) NULL,
    [fMaintItemHeaderFloc] nvarchar(255) NULL,
    [HeaderFlocId] int NULL,
    [MaintItemHeaderEquipID] nvarchar(255) NULL,
    [MaintItemObjectListFloc] nvarchar(255) NULL,
    [MaintItemObjectListEquip] nvarchar(255) NULL,
    [MaintWorkCentreId] int NULL,
    [MaintItemMainWorkCentre] nvarchar(255) NULL,
    [MaintItemMainWorkCentrePlant] nvarchar(255) NULL,
    [MaintenancePlantId] int NULL,
    [MaintItemOrderType] nvarchar(255) NULL,
    [MaintPlannerGroupID] int NULL,
    [MaintItemActivityTypeID] nvarchar(255) NULL,
    [MaintItemRevNo] nvarchar(255) NULL,
    [MaintItemUserStatus] nvarchar(255) NULL,
    [MaintItemSystemCondition_Old] nvarchar(max) NULL,
    [SysCondId] int NULL,
    [MaintItemConsequenceCategory] nvarchar(255) NULL,
    [MaintItemConsequence] nvarchar(255) NULL,
    [MaintItemLikelihood] nvarchar(255) NULL,
    [MaintItemProposedPriority] nvarchar(255) NULL,
    [PriorityId] int NULL,
    [MaintItemProposedTi] nvarchar(255) NULL,
    [MaintItemLongText] nvarchar(255) NULL,
    [MaintItemTasklistExecutionFactor] nvarchar(255) NULL,
    [TaskListExecutionFactor] float NULL,
    [MaintItemDoNotRelImmed] nvarchar(255) NULL,
    [bDoNotRelImmed] bit NOT NULL,
    CONSTRAINT [PK_MaintItem] PRIMARY KEY ([MaintItemID]),
    CONSTRAINT [FK_MaintItem_Tag_HeaderFlocId] FOREIGN KEY ([HeaderFlocId]) REFERENCES [Tag] ([TagID]) ON DELETE NO ACTION,
    CONSTRAINT [FK_MaintItem_MaintPlan_MaintPlanID] FOREIGN KEY ([MaintPlanID]) REFERENCES [MaintPlan] ([MaintPlanID]) ON DELETE CASCADE,
    CONSTRAINT [FK_MaintItem_MaintPlannerGroup_MaintPlannerGroupID] FOREIGN KEY ([MaintPlannerGroupID]) REFERENCES [MaintPlannerGroup] ([MaintPlannerGroupID]) ON DELETE NO ACTION,
    CONSTRAINT [FK_MaintItem_MaintWorkCentre_MaintWorkCentreId] FOREIGN KEY ([MaintWorkCentreId]) REFERENCES [MaintWorkCentre] ([MaintWorkCentreID]) ON DELETE NO ACTION,
    CONSTRAINT [FK_MaintItem_MaintenancePlant_MaintenancePlantId] FOREIGN KEY ([MaintenancePlantId]) REFERENCES [MaintenancePlant] ([MaintenancePlantID]) ON DELETE NO ACTION,
    CONSTRAINT [FK_MaintItem_Priority_PriorityId] FOREIGN KEY ([PriorityId]) REFERENCES [Priority] ([PriorityId]) ON DELETE NO ACTION,
    CONSTRAINT [FK_MaintItem_SysCond_SysCondId] FOREIGN KEY ([SysCondId]) REFERENCES [SysCond] ([SysCondID]) ON DELETE NO ACTION
);

GO

CREATE TABLE [TagEngData] (
    [TagID] int NOT NULL,
    [EngDataCodeID] int NOT NULL,
    [EngDatavalue] nvarchar(255) NOT NULL,
    [EngDatasource] nvarchar(50) NULL,
    [EngDataComment] nvarchar(50) NULL,
    CONSTRAINT [PK_TagEngData] PRIMARY KEY ([TagID], [EngDataCodeID]),
    CONSTRAINT [FK_tagengdata_engdatacode] FOREIGN KEY ([EngDataCodeID]) REFERENCES [EngDataCode] ([EngDataCodeID]) ON DELETE NO ACTION,
    CONSTRAINT [FK_tagengdata_Tag] FOREIGN KEY ([TagID]) REFERENCES [Tag] ([TagID]) ON DELETE NO ACTION
);

GO

CREATE TABLE [TagPO] (
    [TagID] int NOT NULL,
    [POID] int NOT NULL,
    CONSTRAINT [PK_TagPO] PRIMARY KEY ([TagID], [POID]),
    CONSTRAINT [FK_TagPO_PO] FOREIGN KEY ([POID]) REFERENCES [PO] ([POID]) ON DELETE NO ACTION,
    CONSTRAINT [FK_TagPO_Tag] FOREIGN KEY ([TagID]) REFERENCES [Tag] ([TagID]) ON DELETE NO ACTION
);

GO

CREATE TABLE [TagXDoc] (
    [TagID] int NOT NULL,
    [DocID] int NOT NULL,
    [DateCreated] datetime NULL,
    [xComment] nvarchar(255) NULL,
    CONSTRAINT [PK_TagXDoc] PRIMARY KEY ([TagID], [DocID]),
    CONSTRAINT [FK_TagXDoc_Doc] FOREIGN KEY ([DocID]) REFERENCES [Doc] ([DocID]) ON DELETE NO ACTION,
    CONSTRAINT [FK_TagXDoc_Tag] FOREIGN KEY ([TagID]) REFERENCES [Tag] ([TagID]) ON DELETE NO ACTION
);

GO

CREATE TABLE [FlocXMaintItem] (
    [FlocID] int NOT NULL,
    [MaintItemID] int NOT NULL,
    CONSTRAINT [PK_FlocXMaintItem] PRIMARY KEY ([FlocID], [MaintItemID]),
    CONSTRAINT [fk_FlocXMaintItem_Tag] FOREIGN KEY ([FlocID]) REFERENCES [Tag] ([TagID]) ON DELETE NO ACTION,
    CONSTRAINT [fk_FlocXMaintItem_MaintItem] FOREIGN KEY ([MaintItemID]) REFERENCES [MaintItem] ([MaintItemID]) ON DELETE NO ACTION
);

GO

CREATE TABLE [MaintItemXMaintTaskList] (
    [MaintItemID] int NOT NULL,
    [TaskListHeaderId] int NOT NULL,
    CONSTRAINT [PK_MaintItemXMaintTaskList] PRIMARY KEY ([MaintItemID], [TaskListHeaderId]),
    CONSTRAINT [FK_MaintItemXMaintTaskList_MaintItem_MaintItemID] FOREIGN KEY ([MaintItemID]) REFERENCES [MaintItem] ([MaintItemID]) ON DELETE CASCADE,
    CONSTRAINT [FK_MaintItemXMaintTaskList_TaskListHeader_TaskListHeaderId] FOREIGN KEY ([TaskListHeaderId]) REFERENCES [TaskListHeader] ([TaskListHeaderId]) ON DELETE CASCADE
);

GO

CREATE UNIQUE INDEX [U_Area] ON [Area] ([AreaName]);

GO

CREATE INDEX [IX_Area_MaintenancePlantID] ON [Area] ([MaintenancePlantID]);

GO

CREATE UNIQUE INDEX [U_Class] ON [ClassCharacteristics] ([Class]);

GO

CREATE UNIQUE INDEX [U_CommClass] ON [CommClass] ([CommClassName]);

GO

CREATE UNIQUE INDEX [U_CommSubSystem] ON [CommSubSystem] ([CommSubSystemNo]);

GO

CREATE INDEX [IX_CommSubSystem_SPID] ON [CommSubSystem] ([SPID]);

GO

CREATE INDEX [IX_CommSubSystem_SystemID] ON [CommSubSystem] ([SystemID]);

GO

CREATE UNIQUE INDEX [U_CommZone] ON [CommZone] ([CommZoneName]);

GO

CREATE INDEX [IX_CommZone_ProjectID] ON [CommZone] ([ProjectID]);

GO

CREATE UNIQUE INDEX [U_DocNum] ON [Doc] ([DocNum]);

GO

CREATE INDEX [IX_Doc_DocTypeID] ON [Doc] ([DocTypeID]);

GO

CREATE UNIQUE INDEX [U_DocType] ON [DocType] ([DocTypeName]);

GO

CREATE UNIQUE INDEX [U_EngClass] ON [EngClass] ([EngClassName]);

GO

CREATE UNIQUE INDEX [U_EngDataCodeName] ON [EngDataCode] ([EngDataCodeName]);

GO

CREATE INDEX [IX_EngDataCodeDropDown_EngDataCodeId] ON [EngDataCodeDropDown] ([EngDataCodeId]);

GO

CREATE UNIQUE INDEX [U_EngDisc] ON [EngDisc] ([EngDiscName]);

GO

CREATE UNIQUE INDEX [U_EngStatus] ON [EngStatus] ([EngStatusName]);

GO

CREATE INDEX [IX_EntityAttributeRequirement_EntityAttributeId] ON [EntityAttributeRequirement] ([EntityAttributeId]);

GO

CREATE UNIQUE INDEX [U_EnvZone] ON [EnvZone] ([EnvZoneName]);

GO

CREATE UNIQUE INDEX [U_ExMethod] ON [ExMethod] ([ExMethodName]);

GO

CREATE INDEX [IX_FlocXMaintItem_MaintItemID] ON [FlocXMaintItem] ([MaintItemID]);

GO

CREATE INDEX [IX_FlocXMaintLoad_MaintLoadID] ON [FlocXMaintLoad] ([MaintLoadID]);

GO

CREATE INDEX [IX_FlocXMaintQuery_MaintQueryID] ON [FlocXMaintQuery] ([MaintQueryID]);

GO

CREATE INDEX [IX_FlocXPMAssembly_PMAssemblyID] ON [FlocXPMAssembly] ([PMAssemblyID]);

GO

CREATE INDEX [IX_Import_ImportTypeId] ON [Import] ([ImportTypeId]);

GO

CREATE UNIQUE INDEX [IX_ImportError_ImportExtractId] ON [ImportError] ([ImportExtractId]) WHERE [ImportExtractId] IS NOT NULL;

GO

CREATE INDEX [IX_ImportError_ImportId] ON [ImportError] ([ImportId]);

GO

CREATE INDEX [IX_ImportError_ImportTransformId] ON [ImportError] ([ImportTransformId]);

GO

CREATE INDEX [IX_ImportExtract_ImportId] ON [ImportExtract] ([ImportId]);

GO

CREATE INDEX [IX_ImportTransform_ImportId] ON [ImportTransform] ([ImportId]);

GO

CREATE UNIQUE INDEX [U_Ipf] ON [Ipf] ([IpfName]);

GO

CREATE UNIQUE INDEX [U_LoadTemplate] ON [LoadTemplate] ([LoadTemplateName]);

GO

CREATE UNIQUE INDEX [U_Location] ON [Location] ([AreaID], [LocationName]);

GO

CREATE UNIQUE INDEX [U_MaintArea] ON [MaintArea] ([MaintAreaName]);

GO

CREATE INDEX [IX_MaintArea_PlantSectionID] ON [MaintArea] ([PlantSectionID]);

GO

CREATE INDEX [IX_MaintClassXEngDataCode_EngDataCodeId] ON [MaintClassXEngDataCode] ([EngDataCodeId]);

GO

CREATE UNIQUE INDEX [U_MaintCriticality] ON [MaintCriticality] ([MaintCriticalityName]);

GO

CREATE UNIQUE INDEX [U_MaintEdcCode] ON [MaintEdcCode] ([MaintEdcCodeName]);

GO

CREATE INDEX [IX_MaintItem_HeaderFlocId] ON [MaintItem] ([HeaderFlocId]);

GO

CREATE UNIQUE INDEX [U_MaintItemNum] ON [MaintItem] ([MaintItemNum]);

GO

CREATE INDEX [IX_MaintItem_MaintPlanID] ON [MaintItem] ([MaintPlanID]);

GO

CREATE INDEX [IX_MaintItem_MaintPlannerGroupID] ON [MaintItem] ([MaintPlannerGroupID]);

GO

CREATE INDEX [IX_MaintItem_MaintWorkCentreId] ON [MaintItem] ([MaintWorkCentreId]);

GO

CREATE INDEX [IX_MaintItem_MaintenancePlantId] ON [MaintItem] ([MaintenancePlantId]);

GO

CREATE INDEX [IX_MaintItem_PriorityId] ON [MaintItem] ([PriorityId]);

GO

CREATE INDEX [IX_MaintItem_SysCondId] ON [MaintItem] ([SysCondId]);

GO

CREATE INDEX [IX_MaintItemXMaintTaskList_TaskListHeaderId] ON [MaintItemXMaintTaskList] ([TaskListHeaderId]);

GO

CREATE INDEX [IX_MaintLoad_LoadTemplateID] ON [MaintLoad] ([LoadTemplateID]);

GO

CREATE UNIQUE INDEX [U_MaintLoadNum] ON [MaintLoad] ([MaintLoadNum]);

GO

CREATE INDEX [IX_MaintLocation_MaintAreaId] ON [MaintLocation] ([MaintAreaId]);

GO

CREATE UNIQUE INDEX [U_MaintLocation] ON [MaintLocation] ([MaintLocationName]);

GO

CREATE UNIQUE INDEX [U_maintobjecttype] ON [MaintObjectType] ([MaintObjectTypeName]);

GO

CREATE INDEX [IX_MaintObjectTypeXMaintClass_MaintClassId] ON [MaintObjectTypeXMaintClass] ([MaintClassId]);

GO

CREATE UNIQUE INDEX [U_MaintPackageName] ON [MaintPackage] ([MaintPackageName]);

GO

CREATE UNIQUE INDEX [U_MaintPlan] ON [MaintPlan] ([MaintPlanName]);

GO

CREATE INDEX [IX_MaintPlan_MaintSortProcessID] ON [MaintPlan] ([MaintSortProcessID]);

GO

CREATE INDEX [IX_MaintPlan_MaintStrategyID] ON [MaintPlan] ([MaintStrategyID]);

GO

CREATE INDEX [IX_MaintPlan_MeasPointID] ON [MaintPlan] ([MeasPointID]);

GO

CREATE UNIQUE INDEX [U_MaintPlannerGroup] ON [MaintPlannerGroup] ([MaintPlannerGroupName]);

GO

CREATE INDEX [IX_MaintQuery_MaintQueryNoteID] ON [MaintQuery] ([MaintQueryNoteID]);

GO

CREATE UNIQUE INDEX [U_MaintQueryNum] ON [MaintQuery] ([MaintQueryNum]);

GO

CREATE UNIQUE INDEX [U_MaintScePsReviewTeam] ON [MaintScePsReviewTeam] ([MaintScePsReviewTeamName]);

GO

CREATE UNIQUE INDEX [U_MaintSortProcess] ON [MaintSortProcess] ([MaintSortProcessName]);

GO

CREATE INDEX [IX_MaintStrategy_DocID] ON [MaintStrategy] ([DocID]);

GO

CREATE UNIQUE INDEX [U_MaintStrategy] ON [MaintStrategy] ([MaintStrategyName]);

GO

CREATE UNIQUE INDEX [U_MaintStructureIndicator] ON [MaintStructureIndicator] ([MaintStructureIndicatorName]);

GO

CREATE UNIQUE INDEX [U_MaintType] ON [MaintType] ([MaintTypeName]);

GO

CREATE UNIQUE INDEX [U_MaintWorkCentre] ON [MaintWorkCentre] ([MaintWorkCentreName]);

GO

CREATE UNIQUE INDEX [U_Manufacturer] ON [Manufacturer] ([ManufacturerName]);

GO

CREATE INDEX [IX_Models_ManufacturerId] ON [Models] ([ManufacturerId]);

GO

CREATE UNIQUE INDEX [U_Model] ON [Models] ([ModelName]);

GO

CREATE UNIQUE INDEX [U_PBS] ON [Pbs] ([PbsName]);

GO

CREATE UNIQUE INDEX [U_PerformanceStandard] ON [PerformanceStandard] ([PerformanceStandardName]);

GO

CREATE UNIQUE INDEX [U_PlantSection] ON [PlantSection] ([PlantSectionName]);

GO

CREATE UNIQUE INDEX [U_PMAssembly] ON [PMAssembly] ([PMAssemblyName]);

GO

CREATE UNIQUE INDEX [U_PO] ON [PO] ([POName]);

GO

CREATE INDEX [IX_Project_MaintenancePlantID] ON [Project] ([MaintenancePlantID]);

GO

CREATE UNIQUE INDEX [U_ProjectCode] ON [Project] ([ProjectCode]);

GO

CREATE UNIQUE INDEX [U_RbiSil] ON [RbiSil] ([RbiSilName]);

GO

CREATE UNIQUE INDEX [U_Rbm] ON [Rbm] ([RbmName]);

GO

CREATE UNIQUE INDEX [U_Rcm] ON [Rcm] ([RcmName]);

GO

CREATE UNIQUE INDEX [U_RegulatoryBody] ON [RegulatoryBody] ([RegulatoryBodyName]);

GO

CREATE INDEX [IX_RelationshipToOperation_RelationshipTypeID] ON [RelationshipToOperation] ([RelationshipTypeID]);

GO

CREATE UNIQUE INDEX [U_ScePsReviewID] ON [ScePSReview] ([ScePSReviewName]);

GO

CREATE INDEX [IX_SP_ProjectID] ON [SP] ([ProjectID]);

GO

CREATE UNIQUE INDEX [U_SPnum] ON [SP] ([SPnum]);

GO

CREATE UNIQUE INDEX [U_SubSystem] ON [SubSystem] ([SubSystemNum]);

GO

CREATE INDEX [IX_SubSystem_SystemID] ON [SubSystem] ([SystemID]);

GO

CREATE UNIQUE INDEX [U_SysCond] ON [SysCond] ([SySCondName]);

GO

CREATE UNIQUE INDEX [U_System] ON [System] ([SystemNum]);

GO

CREATE INDEX [IX_Tag_CommClassID] ON [Tag] ([CommClassID]);

GO

CREATE INDEX [IX_Tag_CommZoneID] ON [Tag] ([CommZoneID]);

GO

CREATE INDEX [IX_Tag_CommissioningSubsystemID] ON [Tag] ([CommissioningSubsystemID]);

GO

CREATE INDEX [IX_Tag_CompanyCodeId] ON [Tag] ([CompanyCodeId]);

GO

CREATE INDEX [IX_Tag_EngClassID] ON [Tag] ([EngClassID]);

GO

CREATE INDEX [IX_Tag_EngDiscId] ON [Tag] ([EngDiscId]);

GO

CREATE INDEX [IX_Tag_EngParentID] ON [Tag] ([EngParentID]);

GO

CREATE INDEX [IX_Tag_EngStatusID] ON [Tag] ([EngStatusID]);

GO

CREATE INDEX [IX_Tag_EnvZoneId] ON [Tag] ([EnvZoneId]);

GO

CREATE INDEX [IX_Tag_ExMethodID] ON [Tag] ([ExMethodID]);

GO

CREATE INDEX [IX_Tag_FlocTypeId] ON [Tag] ([FlocTypeId]);

GO

CREATE INDEX [IX_Tag_IpfID] ON [Tag] ([IpfID]);

GO

CREATE INDEX [IX_Tag_KeyDocID] ON [Tag] ([KeyDocID]);

GO

CREATE INDEX [IX_Tag_LocationID] ON [Tag] ([LocationID]);

GO

CREATE INDEX [IX_Tag_MaintCriticalityID] ON [Tag] ([MaintCriticalityID]);

GO

CREATE INDEX [IX_Tag_MaintEdcCodeId] ON [Tag] ([MaintEdcCodeId]);

GO

CREATE INDEX [IX_Tag_MaintLocationID] ON [Tag] ([MaintLocationID]);

GO

CREATE INDEX [IX_Tag_MaintObjectTypeID] ON [Tag] ([MaintObjectTypeID]);

GO

CREATE INDEX [IX_Tag_MaintParentID] ON [Tag] ([MaintParentID]);

GO

CREATE INDEX [IX_Tag_MaintPlannerGroupID] ON [Tag] ([MaintPlannerGroupID]);

GO

CREATE INDEX [IX_Tag_MaintScePsReviewTeamID] ON [Tag] ([MaintScePsReviewTeamID]);

GO

CREATE INDEX [IX_Tag_MaintSortProcessID] ON [Tag] ([MaintSortProcessID]);

GO

CREATE INDEX [IX_Tag_MaintStatusID] ON [Tag] ([MaintStatusID]);

GO

CREATE INDEX [IX_Tag_MaintStructureIndicatorID] ON [Tag] ([MaintStructureIndicatorID]);

GO

CREATE INDEX [IX_Tag_MaintTypeID] ON [Tag] ([MaintTypeID]);

GO

CREATE INDEX [IX_Tag_MaintWorkCentreID] ON [Tag] ([MaintWorkCentreID]);

GO

CREATE INDEX [IX_Tag_MaintenancePlantId] ON [Tag] ([MaintenancePlantId]);

GO

CREATE INDEX [IX_Tag_MaintenanceplanID] ON [Tag] ([MaintenanceplanID]);

GO

CREATE INDEX [IX_Tag_ManufacturerID] ON [Tag] ([ManufacturerID]);

GO

CREATE INDEX [IX_Tag_ModelID] ON [Tag] ([ModelID]);

GO

CREATE INDEX [IX_Tag_PbsId] ON [Tag] ([PbsId]);

GO

CREATE INDEX [IX_Tag_PerformanceStandardID] ON [Tag] ([PerformanceStandardID]);

GO

CREATE INDEX [IX_Tag_PlannerPlantId] ON [Tag] ([PlannerPlantId]);

GO

CREATE INDEX [IX_Tag_RbiSilID] ON [Tag] ([RbiSilID]);

GO

CREATE INDEX [IX_Tag_RbmID] ON [Tag] ([RbmID]);

GO

CREATE INDEX [IX_Tag_RcmID] ON [Tag] ([RcmID]);

GO

CREATE INDEX [IX_Tag_SAPStatusId] ON [Tag] ([SAPStatusId]);

GO

CREATE INDEX [IX_Tag_SortFieldId] ON [Tag] ([SortFieldId]);

GO

CREATE INDEX [IX_Tag_SubSystemID] ON [Tag] ([SubSystemID]);

GO

CREATE UNIQUE INDEX [U_NoNull_TagFLOC] ON [Tag] ([TagFLOC]) WHERE ([TagFLOC] IS NOT NULL);

GO

CREATE UNIQUE INDEX [IX_Tag] ON [Tag] ([TagNumber]);

GO

CREATE INDEX [IX_Tag_VibID] ON [Tag] ([VibID]);

GO

CREATE INDEX [IX_Tag_WBSElementId] ON [Tag] ([WBSElementId]);

GO

CREATE INDEX [IX_TagEngData_EngDataCodeID] ON [TagEngData] ([EngDataCodeID]);

GO

CREATE INDEX [IX_TagPO_POID] ON [TagPO] ([POID]);

GO

CREATE INDEX [IX_TagViewColumns_TagViewId] ON [TagViewColumns] ([TagViewId]);

GO

CREATE INDEX [IX_TagViewColumnsUser_TagViewColumnsId] ON [TagViewColumnsUser] ([TagViewColumnsId]);

GO

CREATE INDEX [IX_TagXDoc_DocID] ON [TagXDoc] ([DocID]);

GO

CREATE UNIQUE INDEX [U_TaskListCat] ON [TaskListCat] ([TaskListCatName]);

GO

CREATE UNIQUE INDEX [U_TaskListGroup] ON [TaskListGroup] ([TaskListGroupName]);

GO

CREATE INDEX [IX_TaskListHeader_MaintPackageID] ON [TaskListHeader] ([MaintPackageID]);

GO

CREATE INDEX [IX_TaskListHeader_MaintPlannerGroupId] ON [TaskListHeader] ([MaintPlannerGroupId]);

GO

CREATE INDEX [IX_TaskListHeader_MaintStrategyID] ON [TaskListHeader] ([MaintStrategyID]);

GO

CREATE INDEX [IX_TaskListHeader_MaintWorkCentreID] ON [TaskListHeader] ([MaintWorkCentreID]);

GO

CREATE INDEX [IX_TaskListHeader_MaintenancePlantID] ON [TaskListHeader] ([MaintenancePlantID]);

GO

CREATE INDEX [IX_TaskListHeader_PerformanceStandardID] ON [TaskListHeader] ([PerformanceStandardID]);

GO

CREATE INDEX [IX_TaskListHeader_PMAssemblyID] ON [TaskListHeader] ([PMAssemblyID]);

GO

CREATE INDEX [IX_TaskListHeader_RegulatoryBodyID] ON [TaskListHeader] ([RegulatoryBodyID]);

GO

CREATE INDEX [IX_TaskListHeader_StatusId] ON [TaskListHeader] ([StatusId]);

GO

CREATE INDEX [IX_TaskListHeader_SysCondID] ON [TaskListHeader] ([SysCondID]);

GO

CREATE INDEX [IX_TaskListHeader_TaskListGroupID] ON [TaskListHeader] ([TaskListGroupID]);

GO

CREATE UNIQUE INDEX [U_TaskListHeader] ON [TaskListHeader] ([TaskListShortText]);

GO

CREATE INDEX [IX_TaskListHeader_TasklistCatID] ON [TaskListHeader] ([TasklistCatID]);

GO

CREATE INDEX [IX_TaskListOperations_ControlKeyID] ON [TaskListOperations] ([ControlKeyID]);

GO

CREATE INDEX [IX_TaskListOperations_DocID] ON [TaskListOperations] ([DocID]);

GO

CREATE INDEX [IX_TaskListOperations_MaintPackageID] ON [TaskListOperations] ([MaintPackageID]);

GO

CREATE INDEX [IX_TaskListOperations_MaintWorkCentreID] ON [TaskListOperations] ([MaintWorkCentreID]);

GO

CREATE INDEX [IX_TaskListOperations_MaintenancePlantID] ON [TaskListOperations] ([MaintenancePlantID]);

GO

CREATE INDEX [IX_TaskListOperations_OperationID] ON [TaskListOperations] ([OperationID]);

GO

CREATE INDEX [IX_TaskListOperations_RelationshiptoOperationID] ON [TaskListOperations] ([RelationshiptoOperationID]);

GO

CREATE INDEX [IX_TaskListOperations_SysCondID] ON [TaskListOperations] ([SysCondID]);

GO

CREATE INDEX [IX_TaskListOperations_TaskListHeaderID] ON [TaskListOperations] ([TaskListHeaderID]);

GO

CREATE INDEX [IX_TaskListXScePSReview_TaskListHeaderID] ON [TaskListXScePSReview] ([TaskListHeaderID]);

GO

CREATE INDEX [IX_UC2ViewColumnsUser_UC2ViewColumnsId] ON [UC2ViewColumnsUser] ([UC2ViewColumnsId]);

GO

CREATE UNIQUE INDEX [U_Vib] ON [Vib] ([VibName]);

GO

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20211010082508_Initial', N'3.1.30');

GO

CREATE TABLE [History] (
    [HistoryId] int NOT NULL IDENTITY,
    [ImportId] int NOT NULL,
    [EntityName] int NOT NULL,
    [Pk1] int NOT NULL,
    [Pk2] int NOT NULL,
    [AttributeName] nvarchar(max) NULL,
    [AttributeValue] nvarchar(max) NULL,
    [Created] datetime2 NOT NULL,
    [CreatedBy] nvarchar(max) NULL,
    CONSTRAINT [PK_History] PRIMARY KEY ([HistoryId])
);

GO

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20211206053401_Historian Table', N'3.1.30');

GO

ALTER TABLE [EngDataCode] ADD [EngDataClassId] int NOT NULL DEFAULT 0;

GO

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20221125011438_EngDataClassNew', N'3.1.30');

GO

CREATE TABLE [EngDataClass] (
    [EngDataClassId] int NOT NULL IDENTITY,
    [EngDataClassName] nvarchar(max) NOT NULL,
    CONSTRAINT [PK_EngDataClass] PRIMARY KEY ([EngDataClassId])
);

GO

CREATE INDEX [IX_EngDataCode_EngDataClassId] ON [EngDataCode] ([EngDataClassId]);

GO

ALTER TABLE [EngDataCode] ADD CONSTRAINT [FK_EngDataCode_EngDataClass_EngDataClassId] FOREIGN KEY ([EngDataClassId]) REFERENCES [EngDataClass] ([EngDataClassId]) ON DELETE CASCADE;

GO

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20221128004020_AddEngDataClass', N'3.1.30');

GO

