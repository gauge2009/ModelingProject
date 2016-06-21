
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 09/23/2015 17:43:54
-- Generated from EDMX file: G:\VS.TFS.win-station\UserCenter\main\UserCenter\SZ.Aisino.UC.DbContext\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [UC];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_BASE_MODULE_BASE_APPLICATIONS]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[BASE_MODULE] DROP CONSTRAINT [FK_BASE_MODULE_BASE_APPLICATIONS];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Area]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Area];
GO
IF OBJECT_ID(N'[dbo].[BASE_APPLICATION_ROLE_RIGHT]', 'U') IS NOT NULL
    DROP TABLE [dbo].[BASE_APPLICATION_ROLE_RIGHT];
GO
IF OBJECT_ID(N'[dbo].[BASE_APPLICATION_ROLES]', 'U') IS NOT NULL
    DROP TABLE [dbo].[BASE_APPLICATION_ROLES];
GO
IF OBJECT_ID(N'[dbo].[BASE_APPLICATIONS]', 'U') IS NOT NULL
    DROP TABLE [dbo].[BASE_APPLICATIONS];
GO
IF OBJECT_ID(N'[dbo].[BASE_BUTTON]', 'U') IS NOT NULL
    DROP TABLE [dbo].[BASE_BUTTON];
GO
IF OBJECT_ID(N'[dbo].[BASE_MODULE]', 'U') IS NOT NULL
    DROP TABLE [dbo].[BASE_MODULE];
GO
IF OBJECT_ID(N'[dbo].[BASE_MODULE_BUTTON]', 'U') IS NOT NULL
    DROP TABLE [dbo].[BASE_MODULE_BUTTON];
GO
IF OBJECT_ID(N'[dbo].[BASE_USERINFO]', 'U') IS NOT NULL
    DROP TABLE [dbo].[BASE_USERINFO];
GO
IF OBJECT_ID(N'[dbo].[BASE_USERROLE]', 'U') IS NOT NULL
    DROP TABLE [dbo].[BASE_USERROLE];
GO
IF OBJECT_ID(N'[dbo].[Poster]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Poster];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'BASE_APPLICATION_ROLE_RIGHT'
CREATE TABLE [dbo].[BASE_APPLICATION_ROLE_RIGHT] (
    [APPLICATION_ROLE_RIGHT_ID] decimal(18,0) IDENTITY(1,1) NOT NULL,
    [APPLICATION_ROLE_ID] decimal(18,0)  NULL,
    [PERMISSION_TYPE] decimal(38,0)  NOT NULL,
    [MODULE_ID] decimal(18,0)  NOT NULL,
    [BUTTON_ID] decimal(18,0)  NULL,
    [AUTHORIZE] decimal(38,0)  NOT NULL,
    [CREATE_USERNAME] nvarchar(100)  NULL,
    [CREATE_FULLNAME] nvarchar(100)  NULL,
    [CREATE_DATE] datetime  NULL
);
GO

-- Creating table 'BASE_APPLICATION_ROLES'
CREATE TABLE [dbo].[BASE_APPLICATION_ROLES] (
    [APPLICATION_ROLE_ID] decimal(18,0) IDENTITY(1,1) NOT NULL,
    [APPLICATION_ID] decimal(18,0)  NOT NULL,
    [APPLICATION_KEY] nvarchar(100)  NOT NULL,
    [APPLICATION_CODE] nvarchar(100)  NOT NULL,
    [APPLICATION_NAME] nvarchar(100)  NOT NULL,
    [PLATFORM] decimal(38,0)  NOT NULL,
    [PARENT_ID] decimal(18,0)  NOT NULL,
    [ROLE_NAME] nvarchar(100)  NOT NULL,
    [ROLE_RESTRICTION] nvarchar(400)  NULL,
    [ROLE_REMARK] nvarchar(400)  NULL,
    [APPLAY_TO] decimal(38,0)  NULL,
    [SEQUENCE] decimal(38,0)  NOT NULL,
    [SEQUENCE_STRING] nvarchar(200)  NULL,
    [DELETE_MARK] decimal(38,0)  NOT NULL,
    [MODIFY_USERNAME] nvarchar(100)  NOT NULL,
    [MODIFY_FULLNAME] nvarchar(100)  NOT NULL,
    [MODIFY_DATE] datetime  NOT NULL,
    [CREATE_USERNAME] nvarchar(100)  NOT NULL,
    [CREATE_FULLNAME] nvarchar(100)  NOT NULL,
    [CREATE_DATE] datetime  NOT NULL
);
GO

-- Creating table 'BASE_APPLICATIONS'
CREATE TABLE [dbo].[BASE_APPLICATIONS] (
    [APPLICATION_ID] decimal(18,0) IDENTITY(1,1) NOT NULL,
    [APPLICATION_KEY] nvarchar(100)  NOT NULL,
    [APPLICATION_CODE] nvarchar(100)  NOT NULL,
    [APPLICATION_NAME] nvarchar(100)  NOT NULL,
    [ICON] nvarchar(508)  NULL,
    [DESCRIPTION] nvarchar(1000)  NULL,
    [URL] nvarchar(100)  NULL,
    [IP] nvarchar(80)  NULL,
    [BINDING] decimal(38,0)  NULL,
    [SEQUENCE] decimal(38,0)  NULL
);
GO

-- Creating table 'BASE_BUTTON'
CREATE TABLE [dbo].[BASE_BUTTON] (
    [BUTTON_ID] decimal(18,0) IDENTITY(1,1) NOT NULL,
    [BUTTON_CODE] nvarchar(100)  NOT NULL,
    [BUTTON_NAME] nvarchar(100)  NOT NULL,
    [BUTTON_TITLE] nvarchar(100)  NOT NULL,
    [BUTTON_TYPE] decimal(38,0)  NOT NULL,
    [BUTTON_ICON] nvarchar(508)  NOT NULL,
    [BUTTON_IMG] nvarchar(508)  NOT NULL,
    [BUTTON_EVENT] nvarchar(100)  NOT NULL,
    [BUTTON_METHOD] nvarchar(100)  NOT NULL,
    [BUTTON_REMARK] nvarchar(400)  NULL,
    [SEQUENCE] decimal(38,0)  NOT NULL,
    [DELETE_MARK] decimal(38,0)  NOT NULL,
    [MODIFY_USERNAME] nvarchar(100)  NOT NULL,
    [MODIFY_FULLNAME] nvarchar(100)  NOT NULL,
    [MODIFY_DATE] datetime  NOT NULL,
    [CREATE_USERNAME] nvarchar(100)  NOT NULL,
    [CREATE_FULLNAME] nvarchar(100)  NOT NULL,
    [CREATE_DATE] datetime  NOT NULL
);
GO

-- Creating table 'BASE_MODULE'
CREATE TABLE [dbo].[BASE_MODULE] (
    [MODULE_ID] decimal(18,0)  NOT NULL,
    [APPLICATION_ID] decimal(18,0)  NOT NULL,
    [APPLICATION_CODE] nvarchar(100)  NOT NULL,
    [APPLICATION_NAME] nvarchar(100)  NOT NULL,
    [PLATFORM] decimal(38,0)  NULL,
    [PARENT_ID] decimal(18,0)  NOT NULL,
    [MODULE_CODE] nvarchar(600)  NOT NULL,
    [MODULE_NAME] nvarchar(100)  NOT NULL,
    [MODULE_TYPE] decimal(38,0)  NOT NULL,
    [MODULE_RIGHT_CODE] nvarchar(400)  NULL,
    [NAVIGATE_URL] nvarchar(600)  NULL,
    [QUERY_STRING] nvarchar(600)  NULL,
    [DIRECTORY] nvarchar(600)  NULL,
    [FILENAME] nvarchar(600)  NULL,
    [ICON] nvarchar(508)  NULL,
    [IMG] nvarchar(508)  NULL,
    [MODULE_LAYER] decimal(38,0)  NULL,
    [VERSION] nvarchar(100)  NULL,
    [INFORMATION] nvarchar(1000)  NULL,
    [REMARK] nvarchar(4000)  NULL,
    [SEQUENCE] decimal(38,0)  NOT NULL,
    [SEQUENCE_STRING] nvarchar(1000)  NULL,
    [DELETE_MARK] decimal(38,0)  NOT NULL,
    [MODIFY_USERNAME] nvarchar(100)  NOT NULL,
    [MODIFY_FULLNAME] nvarchar(100)  NOT NULL,
    [MODIFY_DATE] datetime  NOT NULL,
    [CREATE_USERNAME] nvarchar(100)  NOT NULL,
    [CREATE_FULLNAME] nvarchar(100)  NOT NULL,
    [CREATE_DATE] datetime  NOT NULL,
    [BUTTON_ID] decimal(18,0)  NULL
);
GO

-- Creating table 'BASE_MODULE_BUTTON'
CREATE TABLE [dbo].[BASE_MODULE_BUTTON] (
    [MODULE_BUTTON_ID] decimal(18,0) IDENTITY(1,1) NOT NULL,
    [BUTTON_ID] decimal(18,0)  NULL,
    [RESPONSE_ID] decimal(18,0)  NULL,
    [MODULE_ID] decimal(18,0)  NULL,
    [SEQUENCE] decimal(38,0)  NULL,
    [CREATE_USERNAME] nvarchar(100)  NULL,
    [CREATE_FULLNAME] nvarchar(100)  NULL,
    [CREATE_DATE] datetime  NULL
);
GO

-- Creating table 'BASE_USERINFO'
CREATE TABLE [dbo].[BASE_USERINFO] (
    [USER_ID] decimal(18,0) IDENTITY(1,1) NOT NULL,
    [COMPANY_ID] decimal(18,0)  NULL,
    [COMPANY_NAME_CN] nvarchar(400)  NULL,
    [USERNAME] nvarchar(100)  NOT NULL,
    [PASSWORD] nvarchar(100)  NOT NULL,
    [GENDER] char(1)  NULL,
    [EMAIL] nvarchar(400)  NULL,
    [QUESTION] nvarchar(100)  NULL,
    [ANSWER] nvarchar(100)  NULL,
    [SOURCE_URL] nvarchar(200)  NULL,
    [SOURCE_NAME] nvarchar(200)  NULL,
    [LANGUAGE] nvarchar(100)  NULL,
    [USER_TYPE] decimal(38,0)  NULL,
    [IS_ADMIN] bit  NOT NULL,
    [LOCK_DAY] datetime  NULL,
    [DELETE_MARK] decimal(38,0)  NOT NULL,
    [MODIFY_USERNAME] nvarchar(100)  NULL,
    [MODIFY_FULLNAME] nvarchar(100)  NULL,
    [MODIFY_DATE] datetime  NULL,
    [CREATE_USERNAME] nvarchar(100)  NULL,
    [CREATE_FULLNAME] nvarchar(100)  NULL,
    [CREATE_DATE] datetime  NULL,
    [LastActive] datetime  NULL
);
GO

-- Creating table 'BASE_USERROLE'
CREATE TABLE [dbo].[BASE_USERROLE] (
    [USERROLE_ID] decimal(18,0) IDENTITY(1,1) NOT NULL,
    [APPLICATION_ROLE_ID] decimal(18,0)  NULL,
    [USER_ID] decimal(18,0)  NULL,
    [DELETE_MARK] decimal(38,0)  NOT NULL,
    [MODIFY_USERNAME] nvarchar(100)  NULL,
    [MODIFY_FULLNAME] nvarchar(100)  NULL,
    [MODIFY_DATE] datetime  NULL,
    [CREATE_USERNAME] nvarchar(100)  NULL,
    [CREATE_FULLNAME] nvarchar(100)  NULL,
    [CREATE_DATE] datetime  NULL
);
GO

-- Creating table 'Areas'
CREATE TABLE [dbo].[Areas] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [ParentID] int  NOT NULL,
    [Name] nvarchar(50)  NOT NULL,
    [IsLock] bit  NOT NULL,
    [GroupName] nvarchar(50)  NULL
);
GO

-- Creating table 'Posters'
CREATE TABLE [dbo].[Posters] (
    [PosterID] int IDENTITY(1,1) NOT NULL,
    [ExhibitionID] int  NULL,
    [InfoID] int  NULL,
    [HallID] int  NULL,
    [MuseumID] int  NULL,
    [Category] tinyint  NOT NULL,
    [OriginDir] nvarchar(1000)  NULL,
    [Filename] nvarchar(100)  NULL,
    [OriginPath] nvarchar(1000)  NULL,
    [RootPath] nvarchar(1000)  NULL,
    [Sequence] int  NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [APPLICATION_ROLE_RIGHT_ID] in table 'BASE_APPLICATION_ROLE_RIGHT'
ALTER TABLE [dbo].[BASE_APPLICATION_ROLE_RIGHT]
ADD CONSTRAINT [PK_BASE_APPLICATION_ROLE_RIGHT]
    PRIMARY KEY CLUSTERED ([APPLICATION_ROLE_RIGHT_ID] ASC);
GO

-- Creating primary key on [APPLICATION_ROLE_ID] in table 'BASE_APPLICATION_ROLES'
ALTER TABLE [dbo].[BASE_APPLICATION_ROLES]
ADD CONSTRAINT [PK_BASE_APPLICATION_ROLES]
    PRIMARY KEY CLUSTERED ([APPLICATION_ROLE_ID] ASC);
GO

-- Creating primary key on [APPLICATION_ID] in table 'BASE_APPLICATIONS'
ALTER TABLE [dbo].[BASE_APPLICATIONS]
ADD CONSTRAINT [PK_BASE_APPLICATIONS]
    PRIMARY KEY CLUSTERED ([APPLICATION_ID] ASC);
GO

-- Creating primary key on [BUTTON_ID] in table 'BASE_BUTTON'
ALTER TABLE [dbo].[BASE_BUTTON]
ADD CONSTRAINT [PK_BASE_BUTTON]
    PRIMARY KEY CLUSTERED ([BUTTON_ID] ASC);
GO

-- Creating primary key on [MODULE_ID] in table 'BASE_MODULE'
ALTER TABLE [dbo].[BASE_MODULE]
ADD CONSTRAINT [PK_BASE_MODULE]
    PRIMARY KEY CLUSTERED ([MODULE_ID] ASC);
GO

-- Creating primary key on [MODULE_BUTTON_ID] in table 'BASE_MODULE_BUTTON'
ALTER TABLE [dbo].[BASE_MODULE_BUTTON]
ADD CONSTRAINT [PK_BASE_MODULE_BUTTON]
    PRIMARY KEY CLUSTERED ([MODULE_BUTTON_ID] ASC);
GO

-- Creating primary key on [USER_ID] in table 'BASE_USERINFO'
ALTER TABLE [dbo].[BASE_USERINFO]
ADD CONSTRAINT [PK_BASE_USERINFO]
    PRIMARY KEY CLUSTERED ([USER_ID] ASC);
GO

-- Creating primary key on [USERROLE_ID] in table 'BASE_USERROLE'
ALTER TABLE [dbo].[BASE_USERROLE]
ADD CONSTRAINT [PK_BASE_USERROLE]
    PRIMARY KEY CLUSTERED ([USERROLE_ID] ASC);
GO

-- Creating primary key on [ID] in table 'Areas'
ALTER TABLE [dbo].[Areas]
ADD CONSTRAINT [PK_Areas]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [PosterID] in table 'Posters'
ALTER TABLE [dbo].[Posters]
ADD CONSTRAINT [PK_Posters]
    PRIMARY KEY CLUSTERED ([PosterID] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [APPLICATION_ID] in table 'BASE_MODULE'
ALTER TABLE [dbo].[BASE_MODULE]
ADD CONSTRAINT [FK_BASE_MODULE_APPLICATION]
    FOREIGN KEY ([APPLICATION_ID])
    REFERENCES [dbo].[BASE_APPLICATIONS]
        ([APPLICATION_ID])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_BASE_MODULE_APPLICATION'
CREATE INDEX [IX_FK_BASE_MODULE_APPLICATION]
ON [dbo].[BASE_MODULE]
    ([APPLICATION_ID]);
GO

-- Creating foreign key on [BUTTON_ID] in table 'BASE_MODULE_BUTTON'
ALTER TABLE [dbo].[BASE_MODULE_BUTTON]
ADD CONSTRAINT [FK_BASE_BUTTONBASE_MODULE_BUTTON]
    FOREIGN KEY ([BUTTON_ID])
    REFERENCES [dbo].[BASE_BUTTON]
        ([BUTTON_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_BASE_BUTTONBASE_MODULE_BUTTON'
CREATE INDEX [IX_FK_BASE_BUTTONBASE_MODULE_BUTTON]
ON [dbo].[BASE_MODULE_BUTTON]
    ([BUTTON_ID]);
GO

-- Creating foreign key on [MODULE_ID] in table 'BASE_MODULE_BUTTON'
ALTER TABLE [dbo].[BASE_MODULE_BUTTON]
ADD CONSTRAINT [FK_BASE_MODULEBASE_MODULE_BUTTON]
    FOREIGN KEY ([MODULE_ID])
    REFERENCES [dbo].[BASE_MODULE]
        ([MODULE_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_BASE_MODULEBASE_MODULE_BUTTON'
CREATE INDEX [IX_FK_BASE_MODULEBASE_MODULE_BUTTON]
ON [dbo].[BASE_MODULE_BUTTON]
    ([MODULE_ID]);
GO

-- Creating foreign key on [APPLICATION_ROLE_ID] in table 'BASE_APPLICATION_ROLE_RIGHT'
ALTER TABLE [dbo].[BASE_APPLICATION_ROLE_RIGHT]
ADD CONSTRAINT [FK_BASE_APPLICATION_ROLESBASE_APPLICATION_ROLE_RIGHT]
    FOREIGN KEY ([APPLICATION_ROLE_ID])
    REFERENCES [dbo].[BASE_APPLICATION_ROLES]
        ([APPLICATION_ROLE_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_BASE_APPLICATION_ROLESBASE_APPLICATION_ROLE_RIGHT'
CREATE INDEX [IX_FK_BASE_APPLICATION_ROLESBASE_APPLICATION_ROLE_RIGHT]
ON [dbo].[BASE_APPLICATION_ROLE_RIGHT]
    ([APPLICATION_ROLE_ID]);
GO

-- Creating foreign key on [APPLICATION_ROLE_ID] in table 'BASE_USERROLE'
ALTER TABLE [dbo].[BASE_USERROLE]
ADD CONSTRAINT [FK_BASE_APPLICATION_ROLESBASE_USERROLE]
    FOREIGN KEY ([APPLICATION_ROLE_ID])
    REFERENCES [dbo].[BASE_APPLICATION_ROLES]
        ([APPLICATION_ROLE_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_BASE_APPLICATION_ROLESBASE_USERROLE'
CREATE INDEX [IX_FK_BASE_APPLICATION_ROLESBASE_USERROLE]
ON [dbo].[BASE_USERROLE]
    ([APPLICATION_ROLE_ID]);
GO

-- Creating foreign key on [USER_ID] in table 'BASE_USERROLE'
ALTER TABLE [dbo].[BASE_USERROLE]
ADD CONSTRAINT [FK_BASE_USERINFOBASE_USERROLE]
    FOREIGN KEY ([USER_ID])
    REFERENCES [dbo].[BASE_USERINFO]
        ([USER_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_BASE_USERINFOBASE_USERROLE'
CREATE INDEX [IX_FK_BASE_USERINFOBASE_USERROLE]
ON [dbo].[BASE_USERROLE]
    ([USER_ID]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------