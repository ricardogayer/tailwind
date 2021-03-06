CREATE TABLE [dbo].[TB_ACCESS]
( 
	[ID_DATABASE]        int  NOT NULL ,
	[ID_USER]            int  NOT NULL ,
	[DS_ROLE]            varchar(100)  NULL 
)
go

ALTER TABLE [dbo].[TB_ACCESS]
	ADD CONSTRAINT [PK_TB_ACCESS] PRIMARY KEY  CLUSTERED ([ID_DATABASE] ASC)
go

CREATE TABLE [dbo].[TB_BUSINESS_CONTEXT]
( 
	[ID_BUSINESS_CONTEXT] int  NOT NULL ,
	[DS_BUSINESS_CONTEXT] varchar(100)  NULL 
)
go

ALTER TABLE [dbo].[TB_BUSINESS_CONTEXT]
	ADD CONSTRAINT [PK_TB_BUSINESS_CONTEXT] PRIMARY KEY  CLUSTERED ([ID_BUSINESS_CONTEXT] ASC)
go

CREATE TABLE [dbo].[TB_CLASSIFICATION_INF]
( 
	[CD_CLASSIFICATION_INF] char(1)  NOT NULL ,
	[DS_CLASSIFICATION_INF] varchar(20)  NULL 
)
go

ALTER TABLE [dbo].[TB_CLASSIFICATION_INF]
	ADD CONSTRAINT [PK_TB_CLASSIFICATION_INF] PRIMARY KEY  CLUSTERED ([CD_CLASSIFICATION_INF] ASC)
go

CREATE TABLE [dbo].[TB_COLUMN]
( 
	[NM_COLUMN]          VARCHAR(100)  NOT NULL ,
	[NM_TABLE]           VARCHAR(100)  NOT NULL ,
	[DS_TYPE]            VARCHAR(100)  NULL ,
	[FG_ISNULL]          char(1)  NULL ,
	[CD_CLASSIFICATION_INF] char(1)  NULL ,
	[DS_COLUMN]          VARCHAR(100)  NULL ,
	[DS_MASKING_RULE]    TEXT  NULL ,
	[DS_ANONYMIZATION_RULE] TEXT  NULL ,
	[FG_EXCLUSION]       char(1)  NULL ,
	[ID_DATA_HOLDER]     int  NULL ,
	[ID_DATABASE]        int  NOT NULL ,
	[NM_SCHEMA]          varchar(50)  NOT NULL ,
	[DS_DOMAIN]          text  NULL 
)
go

ALTER TABLE [dbo].[TB_COLUMN]
	ADD CONSTRAINT [PK_TB_COLUMN] PRIMARY KEY  CLUSTERED ([ID_DATABASE] ASC,[NM_SCHEMA] ASC,[NM_TABLE] ASC,[NM_COLUMN] ASC)
go

CREATE TABLE [dbo].[TB_COLUMN_SOURCE]
( 
	[NM_COLUMN]          VARCHAR(100)  NOT NULL ,
	[NM_COLUMN_SOURCE]   VARCHAR(100)  NOT NULL ,
	[NM_TABLE]           VARCHAR(100)  NOT NULL ,
	[NM_TABLE_SOURCE]    VARCHAR(100)  NOT NULL ,
	[ID_DATABASE]        int  NOT NULL ,
	[ID_DATABASE_SOURCE] int  NOT NULL ,
	[NM_SCHEMA]          varchar(50)  NOT NULL ,
	[NM_SCHEMA_SOURCE]   varchar(50)  NOT NULL ,
	[DS_NOTE]            char(18)  NULL 
)
go

ALTER TABLE [dbo].[TB_COLUMN_SOURCE]
	ADD CONSTRAINT [PK_TB_COLUMN_SOURCE] PRIMARY KEY  CLUSTERED ([ID_DATABASE] ASC,[NM_SCHEMA] ASC,[NM_TABLE] ASC,[NM_COLUMN] ASC,[ID_DATABASE_SOURCE] ASC,[NM_SCHEMA_SOURCE] ASC,[NM_TABLE_SOURCE] ASC,[NM_COLUMN_SOURCE] ASC)
go

CREATE TABLE [dbo].[TB_CONNECTION_STRING]
( 
	[ID_CONNECTION_STRING] int  NOT NULL ,
	[DS_CONNECTION_STRING] varchar(100)  NULL ,
	[NM_SERVER]          varchar(100)  NULL ,
	[NM_INSTANCE]        varchar(100)  NULL ,
	[NM_DATABASE]        varchar(100)  NULL ,
	[NM_USER]            varchar(100)  NULL ,
	[NM_PASSWORD]        varchar(255)  NULL ,
	[NR_PORT]            INT  NULL ,
	[NM_DRIVER]          varchar(100)  NULL 
)
go

ALTER TABLE [dbo].[TB_CONNECTION_STRING]
	ADD CONSTRAINT [PK_TB_CONNECTION_STRING] PRIMARY KEY  CLUSTERED ([ID_CONNECTION_STRING] ASC)
go

CREATE TABLE [dbo].[TB_DATA_HOLDER]
( 
	[ID_DATA_HOLDER]     int  NOT NULL ,
	[DS_DATA_HOLDER]     VARCHAR(100)  NULL 
)
go

ALTER TABLE [dbo].[TB_DATA_HOLDER]
	ADD CONSTRAINT [PK_TB_DATA_HOLDER] PRIMARY KEY  CLUSTERED ([ID_DATA_HOLDER] ASC)
go

CREATE TABLE [dbo].[TB_DATABASE]
( 
	[ID_DATABASE]        int  NOT NULL ,
	[NM_DATABASE]        varchar(100)  NULL ,
	[ID_SERVER]          int  NULL ,
	[CD_TECNOLOGY]       int  NULL ,
	[CD_ENVIRONMENT]     VARCHAR(5)  NULL ,
	[NM_INSTANCE]        varchar(100)  NULL ,
	[ID_CONNECTION_STRING] int  NULL ,
	[FG_DATABASE_DEFAULT] char(1)  NULL 
)
go

ALTER TABLE [dbo].[TB_DATABASE]
	ADD CONSTRAINT [PK_TB_DATABASE] PRIMARY KEY  CLUSTERED ([ID_DATABASE] ASC)
go

CREATE TABLE [dbo].[TB_DEPARTAMENT]
( 
	[ID_DEPARTAMENT]     int  NOT NULL ,
	[DS_DEPARTAMENT]     varchar(100)  NULL ,
	[CD_CONTACT]         int  NULL 
)
go

ALTER TABLE [dbo].[TB_DEPARTAMENT]
	ADD CONSTRAINT [PK_TB_DEPARTAMENT] PRIMARY KEY  CLUSTERED ([ID_DEPARTAMENT] ASC)
go

CREATE TABLE [dbo].[TB_ENVIRONMENT]
( 
	[CD_ENVIRONMENT]     VARCHAR(5)  NOT NULL ,
	[DS_ENVIRONMENT]     varchar(100)  NULL ,
	[NR_ORDER]           INT  NULL 
)
go

ALTER TABLE [dbo].[TB_ENVIRONMENT]
	ADD CONSTRAINT [PK_TB_ENVIRONMENT] PRIMARY KEY  CLUSTERED ([CD_ENVIRONMENT] ASC)
go

CREATE TABLE [dbo].[TB_LIFE_CYCLE]
( 
	[ID_LIFE_CYCLE]      INT  NOT NULL ,
	[DS_LIFE_CYCLE]      varchar(100)  NULL 
)
go

ALTER TABLE [dbo].[TB_LIFE_CYCLE]
	ADD CONSTRAINT [PK_TB_LIFE_CYCLE] PRIMARY KEY  CLUSTERED ([ID_LIFE_CYCLE] ASC)
go

CREATE TABLE [dbo].[TB_PERSON]
( 
	[ID_PERSON]          int  NOT NULL ,
	[DS_PERSON]          varchar(100)  NULL ,
	[DS_EMAIL]           varchar(100)  NULL ,
	[DS_ROLE]            varchar(100)  NULL ,
	[ID_DEPARTAMENT]     int  NULL 
)
go

ALTER TABLE [dbo].[TB_PERSON]
	ADD CONSTRAINT [PK_TB_PERSON] PRIMARY KEY  CLUSTERED ([ID_PERSON] ASC)
go

CREATE TABLE [dbo].[TB_PROGRESS]
( 
	[ID_SYSTEM]          int  NOT NULL ,
	[ID_TASK_GOV]        int  NOT NULL ,
	[VL_PROGRESS]        INT  NULL ,
	[DS_NOTE]            varchar(100)  NULL 
)
go

ALTER TABLE [dbo].[TB_PROGRESS]
	ADD CONSTRAINT [PK_TB_PROGRESS] PRIMARY KEY  CLUSTERED ([ID_TASK_GOV] ASC,[ID_SYSTEM] ASC)
go

CREATE TABLE [dbo].[TB_RACI_TASK]
( 
	[ID_RACI_TASK]       int  NOT NULL ,
	[NM_RACI_TASK]       VARCHAR(100)  NULL ,
	[DS_RACI_STEP]       TEXT  NULL ,
	[NR_ORDER]           int  NULL ,
	[ID_TASK_GOV]        int  NOT NULL 
)
go

ALTER TABLE [dbo].[TB_RACI_TASK]
	ADD CONSTRAINT [PK_TB_RACI_TASK] PRIMARY KEY  CLUSTERED ([ID_TASK_GOV] ASC,[ID_RACI_TASK] ASC)
go

CREATE TABLE [dbo].[TB_RACI_TASK_SYSTEM]
( 
	[ID_RACI_TASK]       int  NOT NULL ,
	[ID_TASK_GOV]        int  NOT NULL ,
	[ID_SYSTEM]          int  NOT NULL ,
	[ID_PERSON]          int  NULL ,
	[TP_RACI]            char(1)  NULL 
)
go

ALTER TABLE [dbo].[TB_RACI_TASK_SYSTEM]
	ADD CONSTRAINT [PK_TB_RACI_TASK_SYSTEM] PRIMARY KEY  CLUSTERED ([ID_TASK_GOV] ASC,[ID_RACI_TASK] ASC,[ID_SYSTEM] ASC)
go

CREATE TABLE [dbo].[TB_SCHEMA]
( 
	[NM_SCHEMA]          varchar(50)  NOT NULL ,
	[DS_SCHEMA]          varchar(100)  NULL ,
	[ID_DATABASE]        int  NOT NULL 
)
go

ALTER TABLE [dbo].[TB_SCHEMA]
	ADD CONSTRAINT [PK_TB_SCHEMA] PRIMARY KEY  CLUSTERED ([ID_DATABASE] ASC,[NM_SCHEMA] ASC)
go

CREATE TABLE [dbo].[TB_SERVER]
( 
	[ID_SERVER]          int  NOT NULL ,
	[DS_SERVER]          varchar(100)  NULL ,
	[ID_SYSTEM]          int  NULL ,
	[FG_CLOUD]           char(1)  NULL 
)
go

ALTER TABLE [dbo].[TB_SERVER]
	ADD CONSTRAINT [PK_TB_SERVER] PRIMARY KEY  CLUSTERED ([ID_SERVER] ASC)
go

CREATE TABLE [dbo].[TB_SYSTEM]
( 
	[ID_SYSTEM]          int  NOT NULL ,
	[NM_SYSTEM]          varchar(100)  NULL ,
	[DS_GROUP_SYSTEM]    varchar(100)  NULL ,
	[CD_INFORMATION_OWNER] int  NULL ,
	[CD_APPLICATION_OWNER] int  NULL ,
	[CD_MANAGED_BY]      int  NULL ,
	[DS_PROVIDER]        varchar(100)  NULL ,
	[DS_CONTACT_PROVIDER] varchar(100)  NULL ,
	[DS_SYSTEM]          varchar(100)  NULL ,
	[DS_BUSINESS_CRITICALITY] varchar(100)  NULL ,
	[CD_BUSINESS_OWNER]  int  NULL ,
	[CD_SUPPORTED_BY]    int  NULL ,
	[CD_SUPPORTED_ALTERNATIVE] int  NULL ,
	[CD_SOURCE_SYSTEM]   varchar(100)  NULL 
)
go

ALTER TABLE [dbo].[TB_SYSTEM]
	ADD CONSTRAINT [PK_TB_SYSTEM] PRIMARY KEY  CLUSTERED ([ID_SYSTEM] ASC)
go

CREATE TABLE [dbo].[TB_TABLE]
( 
	[NM_TABLE]           VARCHAR(100)  NOT NULL ,
	[CD_CLASSIFICATION_INF] char(1)  NULL ,
	[DS_TABLE]           varchar(100)  NULL ,
	[DS_MASKING_RULE]    TEXT  NULL ,
	[DS_ANONYMIZATION_RULE] TEXT  NULL ,
	[FG_EXCLUSION]       char(1)  NULL ,
	[ID_DATABASE]        int  NOT NULL ,
	[NM_SCHEMA]          varchar(50)  NOT NULL ,
	[DS_DOMAIN]          text  NULL ,
	[FG_TYPE]            varchar(30)  NULL 
)
go

ALTER TABLE [dbo].[TB_TABLE]
	ADD CONSTRAINT [PK_TB_TABLE] PRIMARY KEY  CLUSTERED ([ID_DATABASE] ASC,[NM_SCHEMA] ASC,[NM_TABLE] ASC)
go

CREATE TABLE [dbo].[TB_TASK_GOV]
( 
	[ID_TASK_GOV]        int  NOT NULL ,
	[DS_TASK_GOV]        varchar(100)  NULL ,
	[VL_TASK_GOV]        INT  NULL 
)
go

ALTER TABLE [dbo].[TB_TASK_GOV]
	ADD CONSTRAINT [PK_TB_TASK_GOV] PRIMARY KEY  CLUSTERED ([ID_TASK_GOV] ASC)
go

CREATE TABLE [dbo].[TB_TECNOLOGY]
( 
	[ID_TECNOLOGY]       int  NOT NULL ,
	[NM_TECNOLOGY]       varchar(100)  NULL ,
	[DS_TECNOLOGY]       varchar(100)  NULL 
)
go

ALTER TABLE [dbo].[TB_TECNOLOGY]
	ADD CONSTRAINT [PK_TB_TECNOLOGY] PRIMARY KEY  CLUSTERED ([ID_TECNOLOGY] ASC)
go

CREATE TABLE [dbo].[TB_USE]
( 
	[ID_DEPARTAMENT]     int  NOT NULL ,
	[ID_BUSINESS_CONTEXT] int  NOT NULL ,
	[ID_SYSTEM]          int  NOT NULL ,
	[DS_NOTE]            varchar(100)  NULL ,
	[DS_PROCESS]         varchar(100)  NULL ,
	[ID_USE]             int  NOT NULL ,
	[DS_PROFILE]         varchar(100)  NULL ,
	[NM_PROFILE]         varchar(100)  NULL ,
	[ID_LIFE_CYCLE]      INT  NULL 
)
go

ALTER TABLE [dbo].[TB_USE]
	ADD CONSTRAINT [PK_TB_USE] PRIMARY KEY  CLUSTERED ([ID_USE] ASC)
go

CREATE TABLE [dbo].[TB_USER]
( 
	[ID_USER]            int  NOT NULL ,
	[NM_USER]            varchar(100)  NULL ,
	[FG_AD]              char(1)  NULL 
)
go

ALTER TABLE [dbo].[TB_USER]
	ADD CONSTRAINT [PK_TB_USER] PRIMARY KEY  CLUSTERED ([ID_USER] ASC)
go


ALTER TABLE [dbo].[TB_ACCESS]
	ADD CONSTRAINT [R_26] FOREIGN KEY ([ID_DATABASE]) REFERENCES [dbo].[TB_DATABASE]([ID_DATABASE])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE [dbo].[TB_ACCESS]
	ADD CONSTRAINT [R_27] FOREIGN KEY ([ID_USER]) REFERENCES [dbo].[TB_USER]([ID_USER])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


ALTER TABLE [dbo].[TB_COLUMN]
	ADD CONSTRAINT [R_22] FOREIGN KEY ([ID_DATABASE],[NM_SCHEMA],[NM_TABLE]) REFERENCES [dbo].[TB_TABLE]([ID_DATABASE],[NM_SCHEMA],[NM_TABLE])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE [dbo].[TB_COLUMN]
	ADD CONSTRAINT [R_24] FOREIGN KEY ([CD_CLASSIFICATION_INF]) REFERENCES [dbo].[TB_CLASSIFICATION_INF]([CD_CLASSIFICATION_INF])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE [dbo].[TB_COLUMN]
	ADD CONSTRAINT [R_47] FOREIGN KEY ([ID_DATA_HOLDER]) REFERENCES [dbo].[TB_DATA_HOLDER]([ID_DATA_HOLDER])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


ALTER TABLE [dbo].[TB_COLUMN_SOURCE]
	ADD CONSTRAINT [R_52] FOREIGN KEY ([ID_DATABASE],[NM_SCHEMA],[NM_TABLE],[NM_COLUMN]) REFERENCES [dbo].[TB_COLUMN]([ID_DATABASE],[NM_SCHEMA],[NM_TABLE],[NM_COLUMN])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE [dbo].[TB_COLUMN_SOURCE]
	ADD CONSTRAINT [R_53] FOREIGN KEY ([ID_DATABASE_SOURCE],[NM_SCHEMA_SOURCE],[NM_TABLE_SOURCE],[NM_COLUMN_SOURCE]) REFERENCES [dbo].[TB_COLUMN]([ID_DATABASE],[NM_SCHEMA],[NM_TABLE],[NM_COLUMN])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


ALTER TABLE [dbo].[TB_DATABASE]
	ADD CONSTRAINT [R_17] FOREIGN KEY ([ID_SERVER]) REFERENCES [dbo].[TB_SERVER]([ID_SERVER])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE [dbo].[TB_DATABASE]
	ADD CONSTRAINT [R_18] FOREIGN KEY ([CD_TECNOLOGY]) REFERENCES [dbo].[TB_TECNOLOGY]([ID_TECNOLOGY])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE [dbo].[TB_DATABASE]
	ADD CONSTRAINT [R_19] FOREIGN KEY ([CD_ENVIRONMENT]) REFERENCES [dbo].[TB_ENVIRONMENT]([CD_ENVIRONMENT])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE [dbo].[TB_DATABASE]
	ADD CONSTRAINT [R_41] FOREIGN KEY ([ID_CONNECTION_STRING]) REFERENCES [dbo].[TB_CONNECTION_STRING]([ID_CONNECTION_STRING])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


ALTER TABLE [dbo].[TB_DEPARTAMENT]
	ADD CONSTRAINT [R_11] FOREIGN KEY ([CD_CONTACT]) REFERENCES [dbo].[TB_PERSON]([ID_PERSON])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


ALTER TABLE [dbo].[TB_PERSON]
	ADD CONSTRAINT [R_42] FOREIGN KEY ([ID_DEPARTAMENT]) REFERENCES [dbo].[TB_DEPARTAMENT]([ID_DEPARTAMENT])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

EXEC sp_addextendedproperty
@name = 'MS_Description', @value = 'Tabela de pessoas',
@level0type = 'SCHEMA', @level0name = 'dbo',
@level1type = 'TABLE', @level1name = 'TB_PERSON'
go

EXEC sp_addextendedproperty
@name = 'MS_Description', @value = 'E-mail da pessoa.',
@level0type = 'SCHEMA', @level0name = 'dbo',
@level1type = 'TABLE', @level1name = 'TB_PERSON',
@level2type = 'COLUMN', @level2name = 'DS_EMAIL'
go


ALTER TABLE [dbo].[TB_PROGRESS]
	ADD CONSTRAINT [R_30] FOREIGN KEY ([ID_SYSTEM]) REFERENCES [dbo].[TB_SYSTEM]([ID_SYSTEM])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE [dbo].[TB_PROGRESS]
	ADD CONSTRAINT [R_31] FOREIGN KEY ([ID_TASK_GOV]) REFERENCES [dbo].[TB_TASK_GOV]([ID_TASK_GOV])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


ALTER TABLE [dbo].[TB_RACI_TASK]
	ADD CONSTRAINT [R_36] FOREIGN KEY ([ID_TASK_GOV]) REFERENCES [dbo].[TB_TASK_GOV]([ID_TASK_GOV])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


ALTER TABLE [dbo].[TB_RACI_TASK_SYSTEM]
	ADD CONSTRAINT [R_37] FOREIGN KEY ([ID_TASK_GOV],[ID_RACI_TASK]) REFERENCES [dbo].[TB_RACI_TASK]([ID_TASK_GOV],[ID_RACI_TASK])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE [dbo].[TB_RACI_TASK_SYSTEM]
	ADD CONSTRAINT [R_38] FOREIGN KEY ([ID_SYSTEM]) REFERENCES [dbo].[TB_SYSTEM]([ID_SYSTEM])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE [dbo].[TB_RACI_TASK_SYSTEM]
	ADD CONSTRAINT [R_40] FOREIGN KEY ([ID_PERSON]) REFERENCES [dbo].[TB_PERSON]([ID_PERSON])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


ALTER TABLE [dbo].[TB_SCHEMA]
	ADD CONSTRAINT [R_48] FOREIGN KEY ([ID_DATABASE]) REFERENCES [dbo].[TB_DATABASE]([ID_DATABASE])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


ALTER TABLE [dbo].[TB_SERVER]
	ADD CONSTRAINT [R_15] FOREIGN KEY ([ID_SYSTEM]) REFERENCES [dbo].[TB_SYSTEM]([ID_SYSTEM])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


ALTER TABLE [dbo].[TB_SYSTEM]
	ADD CONSTRAINT [R_8] FOREIGN KEY ([CD_INFORMATION_OWNER]) REFERENCES [dbo].[TB_PERSON]([ID_PERSON])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE [dbo].[TB_SYSTEM]
	ADD CONSTRAINT [R_9] FOREIGN KEY ([CD_APPLICATION_OWNER]) REFERENCES [dbo].[TB_PERSON]([ID_PERSON])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE [dbo].[TB_SYSTEM]
	ADD CONSTRAINT [R_10] FOREIGN KEY ([CD_MANAGED_BY]) REFERENCES [dbo].[TB_PERSON]([ID_PERSON])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE [dbo].[TB_SYSTEM]
	ADD CONSTRAINT [R_32] FOREIGN KEY ([CD_BUSINESS_OWNER]) REFERENCES [dbo].[TB_PERSON]([ID_PERSON])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE [dbo].[TB_SYSTEM]
	ADD CONSTRAINT [R_33] FOREIGN KEY ([CD_SUPPORTED_BY]) REFERENCES [dbo].[TB_PERSON]([ID_PERSON])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE [dbo].[TB_SYSTEM]
	ADD CONSTRAINT [R_34] FOREIGN KEY ([CD_SUPPORTED_ALTERNATIVE]) REFERENCES [dbo].[TB_PERSON]([ID_PERSON])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


ALTER TABLE [dbo].[TB_TABLE]
	ADD CONSTRAINT [R_25] FOREIGN KEY ([CD_CLASSIFICATION_INF]) REFERENCES [dbo].[TB_CLASSIFICATION_INF]([CD_CLASSIFICATION_INF])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE [dbo].[TB_TABLE]
	ADD CONSTRAINT [R_49] FOREIGN KEY ([ID_DATABASE],[NM_SCHEMA]) REFERENCES [dbo].[TB_SCHEMA]([ID_DATABASE],[NM_SCHEMA])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


ALTER TABLE [dbo].[TB_USE]
	ADD CONSTRAINT [R_1] FOREIGN KEY ([ID_DEPARTAMENT]) REFERENCES [dbo].[TB_DEPARTAMENT]([ID_DEPARTAMENT])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE [dbo].[TB_USE]
	ADD CONSTRAINT [R_3] FOREIGN KEY ([ID_BUSINESS_CONTEXT]) REFERENCES [dbo].[TB_BUSINESS_CONTEXT]([ID_BUSINESS_CONTEXT])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE [dbo].[TB_USE]
	ADD CONSTRAINT [R_7] FOREIGN KEY ([ID_SYSTEM]) REFERENCES [dbo].[TB_SYSTEM]([ID_SYSTEM])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE [dbo].[TB_USE]
	ADD CONSTRAINT [R_35] FOREIGN KEY ([ID_LIFE_CYCLE]) REFERENCES [dbo].[TB_LIFE_CYCLE]([ID_LIFE_CYCLE])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go
