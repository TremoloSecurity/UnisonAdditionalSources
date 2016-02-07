CREATE TABLE [dbo].[allowedApprovers](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[approval] [int] NOT NULL,
	[approver] [int] NOT NULL
) ON [PRIMARY];


CREATE TABLE [dbo].[approvals](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[label] [varchar](255) NULL,
	[workflow] [int] NOT NULL,
	[workflowObj] [text] NULL,
	[createTS] [datetime] NULL,
	[approvedTS] [datetime] NULL,
	[approver] [int] NULL,
	[approved] [int] NULL,
	[reason] [text] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY];


CREATE TABLE [dbo].[approvers](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userKey] [varchar](255) NULL,
	[sn] [varchar](255) NULL,
	[cn] [varchar](255) NULL
) ON [PRIMARY];


CREATE TABLE [dbo].[auditLogs](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[isEntry] [int] NOT NULL,
	[actionType] [int] NOT NULL,
	[userid] [int] NOT NULL,
	[approval] [int] NULL,
	[attribute] [varchar](255) NULL,
	[val] [varchar](255) NULL,
	[workflow] [int] NOT NULL,
	[target] [int] NOT NULL
) ON [PRIMARY];

CREATE TABLE [dbo].[targets](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NOT NULL
) ON [PRIMARY];

CREATE TABLE [dbo].[auditLogType](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NOT NULL
) ON [PRIMARY];

insert into auditLogType (name) values ('Add');
insert into auditLogType (name) values ('Delete');
insert into auditLogType (name) values ('Replace');



CREATE TABLE [dbo].[ResetRequests](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[resetKey] [varchar](255) NOT NULL,
	[email] [varchar](255) NOT NULL,
	[ts] [datetime] NOT NULL
) ON [PRIMARY];


CREATE TABLE [dbo].[users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userKey] [varchar](255) NOT NULL,
	[sn] [varchar](255) NULL,
	[cn] [varchar](255) NULL
) ON [PRIMARY];


CREATE TABLE [dbo].[workflows](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NOT NULL,
	[startTS] [datetime] NULL,
	[completeTS] [datetime] NULL,
	[userid] [int] NULL,
	[requestReason] [text] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY];

