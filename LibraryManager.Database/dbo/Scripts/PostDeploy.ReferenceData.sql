DECLARE @mergeError int;
DECLARE @mergeCount int;

SET NOCOUNT ON
SET IDENTITY_INSERT [Book] ON

MERGE INTO [book] AS Target
USING (VALUES
	(1, 'Sapiens: A Brief History of Humankind', 'Yuval Noah Harari', 'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1595674533i/23692271.jpg')
    )AS Source([Id], [Name], [Author], [Image])

	ON (Target.[Id] = Source.[Id])
	WHEN NOT MATCHED BY TARGET THEN
	INSERT ([Id], [Name], [Author], [Image])
	VALUES(Source.[Id], Source.[Name], Source.[Author], Source.[Image]);

MERGE INTO [Book] AS Target
USING (VALUES
	(2, 'Easy Way To Stop Smoking', 'Allen Carr', 'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1328833462i/11965321.jpg')
    )AS Source([Id], [Name], [Author], [Image])

	ON (Target.[Id] = Source.[Id])
	WHEN NOT MATCHED BY TARGET THEN
	INSERT ([Id], [Name], [Author], [Image])
	VALUES(Source.[Id], Source.[Name], Source.[Author], Source.[Image]);

MERGE INTO [Book] AS Target
USING (VALUES
	(3, 'Thinking, Fast and Slow', 'Daniel Kahneman', 'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1317793965i/11468377.jpg')
    )AS Source([Id], [Name], [Author], [Image])

	ON (Target.[Id] = Source.[Id])
	WHEN NOT MATCHED BY TARGET THEN
	INSERT ([Id], [Name], [Author], [Image])
	VALUES(Source.[Id], Source.[Name], Source.[Author], Source.[Image]);

MERGE INTO [Book] AS Target
USING (VALUES
	(4, 'A lógica do consumo', ' Martin Lindstrom', 'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1556403291i/45317660.jpg')
    )AS Source([Id], [Name], [Author], [Image])

	ON (Target.[Id] = Source.[Id])
	WHEN NOT MATCHED BY TARGET THEN
	INSERT ([Id], [Name], [Author], [Image])
	VALUES(Source.[Id], Source.[Name], Source.[Author], Source.[Image]);

MERGE INTO [Book] AS Target
USING (VALUES
	(5, 'Linchpin: Are You Indispensable?', 'Seth Godin', 'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1442610563i/7155145.jpg')
    )AS Source([Id], [Name], [Author], [Image])

	ON (Target.[Id] = Source.[Id])
	WHEN NOT MATCHED BY TARGET THEN
	INSERT ([Id], [Name], [Author], [Image])
	VALUES(Source.[Id], Source.[Name], Source.[Author], Source.[Image]);

	MERGE INTO [Book] AS Target
USING (VALUES
	(6, 'What the Dog Saw and Other Adventures', 'Malcolm Gladwell', 'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1344263875i/6516450.jpg')
    )AS Source([Id], [Name], [Author], [Image])

	ON (Target.[Id] = Source.[Id])
	WHEN NOT MATCHED BY TARGET THEN
	INSERT ([Id], [Name], [Author], [Image])
	VALUES(Source.[Id], Source.[Name], Source.[Author], Source.[Image]);

MERGE INTO [Book] AS Target
USING (VALUES
	(7, 'Ego Is the Enemy', 'Ryan Holiday', 'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1459114043i/27036528.jpg')
    )AS Source([Id], [Name], [Author], [Image])

	ON (Target.[Id] = Source.[Id])
	WHEN NOT MATCHED BY TARGET THEN
	INSERT ([Id], [Name], [Author], [Image])
	VALUES(Source.[Id], Source.[Name], Source.[Author], Source.[Image]);

MERGE INTO [Book] AS Target
USING (VALUES
	(8, 'Foucault''s Pendulum', 'Umberto Eco', 'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1396645125i/17841.jpg')
    )AS Source([Id], [Name], [Author], [Image])

	ON (Target.[Id] = Source.[Id])
	WHEN NOT MATCHED BY TARGET THEN
	INSERT ([Id], [Name], [Author], [Image])
	VALUES(Source.[Id], Source.[Name], Source.[Author], Source.[Image]);

MERGE INTO [Book] AS Target
USING (VALUES
	(9, 'Duness', 'Fransk Herbert', 'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1555447414i/44767458.jpg')
    )AS Source([Id], [Name], [Author], [Image])

	ON (Target.[Id] = Source.[Id])
	WHEN NOT MATCHED BY TARGET THEN
	INSERT ([Id], [Name], [Author], [Image])
	VALUES(Source.[Id], Source.[Name], Source.[Author], Source.[Image]);

	MERGE INTO [Book] AS Target
USING (VALUES
	(10, 'Dune', 'Frank Herbert', 'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1555447414i/44767458.jpg')
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
	 