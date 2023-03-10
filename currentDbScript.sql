Build started...
Build succeeded.
IF OBJECT_ID(N'[__EFMigrationsHistory]') IS NULL
BEGIN
    CREATE TABLE [__EFMigrationsHistory] (
        [MigrationId] nvarchar(150) NOT NULL,
        [ProductVersion] nvarchar(32) NOT NULL,
        CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY ([MigrationId])
    );
END;

GO

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20210206042416_Initial', N'3.1.11');

GO

EXEC sp_rename N'[TaskListOperations].[OffSite]', N'Offsite', N'COLUMN';

GO

DECLARE @var0 sysname;
SELECT @var0 = [d].[name]
FROM [sys].[default_constraints] [d]
INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
WHERE ([d].[parent_object_id] = OBJECT_ID(N'[TaskListOperations]') AND [c].[name] = N'TI');
IF @var0 IS NOT NULL EXEC(N'ALTER TABLE [TaskListOperations] DROP CONSTRAINT [' + @var0 + '];');
ALTER TABLE [TaskListOperations] ALTER COLUMN [TI] bit NOT NULL;
ALTER TABLE [TaskListOperations] ADD DEFAULT CAST(0 AS bit) FOR [TI];

GO

DECLARE @var1 sysname;
SELECT @var1 = [d].[name]
FROM [sys].[default_constraints] [d]
INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
WHERE ([d].[parent_object_id] = OBJECT_ID(N'[TaskListOperations]') AND [c].[name] = N'SubOperationNum');
IF @var1 IS NOT NULL EXEC(N'ALTER TABLE [TaskListOperations] DROP CONSTRAINT [' + @var1 + '];');
ALTER TABLE [TaskListOperations] ALTER COLUMN [SubOperationNum] int NOT NULL;
ALTER TABLE [TaskListOperations] ADD DEFAULT 0 FOR [SubOperationNum];

GO

DECLARE @var2 sysname;
SELECT @var2 = [d].[name]
FROM [sys].[default_constraints] [d]
INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
WHERE ([d].[parent_object_id] = OBJECT_ID(N'[TaskListOperations]') AND [c].[name] = N'Offsite');
IF @var2 IS NOT NULL EXEC(N'ALTER TABLE [TaskListOperations] DROP CONSTRAINT [' + @var2 + '];');
ALTER TABLE [TaskListOperations] ALTER COLUMN [Offsite] bit NOT NULL;
ALTER TABLE [TaskListOperations] ADD DEFAULT CAST(0 AS bit) FOR [Offsite];

GO

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20210206050923_TaskListOperations Tweaks', N'3.1.11');

GO

ALTER TABLE [Tag] ADD [ModelDescription] nvarchar(max) NULL;

GO

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20210218071704_tag.ModelDescription added to Tag table', N'3.1.11');

GO

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20210219012429_tag.MaintPlan set pk', N'3.1.11');

GO

CREATE TABLE [SAPExportDetail] (
    [SAPExportDetailId] int NOT NULL IDENTITY,
    [OutputName] nvarchar(max) NOT NULL,
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

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20210304062445_Create SAPExportDetail', N'3.1.11');

GO

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20210305011741_removed relationship EngDataCodes', N'3.1.11');

GO

ALTER TABLE [Tag] ADD [MaintenancePlantId] int NULL;

GO

CREATE INDEX [IX_Tag_MaintenancePlantId] ON [Tag] ([MaintenancePlantId]);

GO

ALTER TABLE [Tag] ADD CONSTRAINT [FK_Tag_MaintenancePlant_MaintenancePlantId] FOREIGN KEY ([MaintenancePlantId]) REFERENCES [MaintenancePlant] ([MaintenancePlantID]) ON DELETE NO ACTION;

GO

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20210305051203_Added reference from Tag to MaintenancePlant', N'3.1.11');

GO

ALTER TABLE [MaintItem] ADD [MaintPlanId] int NULL;

GO

CREATE INDEX [IX_MaintItem_MaintPlanId] ON [MaintItem] ([MaintPlanId]);

GO

ALTER TABLE [MaintItem] ADD CONSTRAINT [FK_MaintItem_MaintPlan_MaintPlanId] FOREIGN KEY ([MaintPlanId]) REFERENCES [MaintPlan] ([MaintPlanID]) ON DELETE NO ACTION;

GO

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20210305064238_Added reference from MaintItem to MaintPlan', N'3.1.11');

GO

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20210305065854_Added field MaintPlanId to MaintItem model', N'3.1.11');

GO

ALTER TABLE [MaintItem] ADD [MaintPlannerGroupId] int NULL;

GO

CREATE INDEX [IX_MaintItem_MaintPlannerGroupId] ON [MaintItem] ([MaintPlannerGroupId]);

GO

ALTER TABLE [MaintItem] ADD CONSTRAINT [FK_MaintItem_MaintPlannerGroup_MaintPlannerGroupId] FOREIGN KEY ([MaintPlannerGroupId]) REFERENCES [MaintPlannerGroup] ([MaintPlannerGroupID]) ON DELETE NO ACTION;

GO

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20210305073920_Added field and fk MaintPlannerGroupId to MaintItem model', N'3.1.11');

GO

ALTER TABLE [MaintItem] DROP CONSTRAINT [FK_MaintItem_MaintPlan_MaintPlanId];

GO

ALTER TABLE [MaintItem] DROP CONSTRAINT [FK_MaintItem_MaintPlannerGroup_MaintPlannerGroupId];

GO

DECLARE @var3 sysname;
SELECT @var3 = [d].[name]
FROM [sys].[default_constraints] [d]
INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
WHERE ([d].[parent_object_id] = OBJECT_ID(N'[MaintItem]') AND [c].[name] = N'MaintItemMaintPlanID');
IF @var3 IS NOT NULL EXEC(N'ALTER TABLE [MaintItem] DROP CONSTRAINT [' + @var3 + '];');
ALTER TABLE [MaintItem] DROP COLUMN [MaintItemMaintPlanID];

GO

DECLARE @var4 sysname;
SELECT @var4 = [d].[name]
FROM [sys].[default_constraints] [d]
INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
WHERE ([d].[parent_object_id] = OBJECT_ID(N'[MaintItem]') AND [c].[name] = N'MaintItemPlannerGroupID');
IF @var4 IS NOT NULL EXEC(N'ALTER TABLE [MaintItem] DROP CONSTRAINT [' + @var4 + '];');
ALTER TABLE [MaintItem] DROP COLUMN [MaintItemPlannerGroupID];

GO

EXEC sp_rename N'[MaintItem].[MaintPlannerGroupId]', N'MaintPlannerGroupID', N'COLUMN';

GO

EXEC sp_rename N'[MaintItem].[MaintPlanId]', N'MaintPlanID', N'COLUMN';

GO

EXEC sp_rename N'[MaintItem].[IX_MaintItem_MaintPlannerGroupId]', N'IX_MaintItem_MaintPlannerGroupID', N'INDEX';

GO

EXEC sp_rename N'[MaintItem].[IX_MaintItem_MaintPlanId]', N'IX_MaintItem_MaintPlanID', N'INDEX';

GO

DECLARE @var5 sysname;
SELECT @var5 = [d].[name]
FROM [sys].[default_constraints] [d]
INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
WHERE ([d].[parent_object_id] = OBJECT_ID(N'[MaintItem]') AND [c].[name] = N'MaintPlanID');
IF @var5 IS NOT NULL EXEC(N'ALTER TABLE [MaintItem] DROP CONSTRAINT [' + @var5 + '];');
ALTER TABLE [MaintItem] ALTER COLUMN [MaintPlanID] int NULL;

GO

CREATE INDEX [IX_TaskListOperations_TaskListHeaderID] ON [TaskListOperations] ([TaskListHeaderID]);

GO

ALTER TABLE [MaintItem] ADD CONSTRAINT [FK_MaintItem_MaintPlan_MaintPlanID] FOREIGN KEY ([MaintPlanID]) REFERENCES [MaintPlan] ([MaintPlanID]) ON DELETE NO ACTION;

GO

ALTER TABLE [MaintItem] ADD CONSTRAINT [FK_MaintItem_MaintPlannerGroup_MaintPlannerGroupID] FOREIGN KEY ([MaintPlannerGroupID]) REFERENCES [MaintPlannerGroup] ([MaintPlannerGroupID]) ON DELETE NO ACTION;

GO

ALTER TABLE [TaskListOperations] ADD CONSTRAINT [FK_TaskListOperations_TaskListHeader_TaskListHeaderID] FOREIGN KEY ([TaskListHeaderID]) REFERENCES [TaskListHeader] ([TaskListHeaderId]) ON DELETE NO ACTION;

GO

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20210319024751_shortened MaintItemMaintPlanId and  MaintItemPlannerGroupId', N'3.1.11');

GO

ALTER TABLE [SAPStatus] ADD [ForSAPExport] bit NOT NULL DEFAULT CAST(0 AS bit);

GO

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20210319030447_Added Field ForSAPExport to SAPStatus', N'3.1.11');

GO

ALTER TABLE [Project] ADD [MaintHierarchy_LoadDepth] int NOT NULL DEFAULT 0;

GO

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20210408033230_added field Project.MaintHierarchy_LoadDepth', N'3.1.11');

GO

ALTER TABLE [SAPExportDetail] ADD [FileName] nvarchar(max) NOT NULL DEFAULT N'';

GO

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20210409071847_added reportname to sapexportDetail', N'3.1.11');

GO


