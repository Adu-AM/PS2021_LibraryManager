﻿CREATE TABLE [dbo].[Book]
(
	[Id] INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    [Name] NCHAR(100) NOT NULL,
    [Author] NCHAR(100) NOT NULL,
    [Image] NCHAR(200) NOT NULL,
)
