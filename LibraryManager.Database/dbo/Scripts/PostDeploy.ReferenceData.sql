DECLARE @mergeError int;
DECLARE @mergeCount int;

SET NOCOUNT ON
SET IDENTITY_INSERT [Book] ON

MERGE INTO [book] AS Target
USING (VALUES
	(1, 'titlu', 'autor', 'https://en.wikipedia.org/wiki/Book_cover#/media/File:Hanna_book_cover.jpg')
    )AS Source([Id], [Name], [Author], [Image])

	ON (Target.[Id] = Source.[Id])
	WHEN NOT MATCHED BY TARGET THEN
	INSERT ([Id], [Name], [Author], [Image])
	VALUES(Source.[Id], Source.[Name], Source.[Author], Source.[Image]);

SELECT @mergeError = @@ERROR, @mergeCount = @@ROWCOUNT
IF @mergeError != 0
	BEGIN
		PRINT 'An error occured in MERGE for Book. Rous affected: ' + CAST (@mergeCount AS VARCHAR(100));
	END
ELSE
	BEGIN
		PRINT 'Book rows affected by MERGE: ' + CAST(@mergeCount AS VARCHAR(100));
	END

SET IDENTITY_INSERT [Book] OFF
SET NOCOUNT OFF

GO
	 