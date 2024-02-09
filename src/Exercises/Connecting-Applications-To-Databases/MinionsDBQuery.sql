
-- Problem 1

CREATE DATABASE MinionsDB

USE MinionsDB

CREATE TABLE Countries (
	Id INT PRIMARY KEY IDENTITY,
	[Name] NVARCHAR(50)
)

CREATE TABLE Towns (
	Id INT PRIMARY KEY IDENTITY,
	[Name] NVARCHAR(50),
	CountryCode INT FOREIGN KEY REFERENCES Countries(Id)
)

CREATE TABLE Minions (
	Id INT PRIMARY KEY IDENTITY,
	[Name] NVARCHAR(50),
	Age INT,
	TownId INT FOREIGN KEY REFERENCES Towns(Id)
)

CREATE TABLE EvilnessFactors (
	Id INT PRIMARY KEY IDENTITY,
	[Name] NVARCHAR(50)
)

CREATE TABLE Villains(
	Id INT PRIMARY KEY IDENTITY,
	[Name] NVARCHAR(50),
	EvilnessFactorId INT FOREIGN KEY REFERENCES EvilnessFactors(Id)
)

CREATE TABLE MinionsVillains (
	MinionId INT FOREIGN KEY REFERENCES Minions(Id),
	VillainId INT FOREIGN KEY REFERENCES Villains(Id),
	CONSTRAINT PK_MinionsVillains PRIMARY KEY (MinionId, VillainId)
)

INSERT INTO Countries ([Name])
VALUES 
('Bulgaria'), 
('England'), 
('Cyprus'), 
('Germany'), 
('Norway')

INSERT INTO Towns ([Name], CountryCode)
VALUES
('Plovdiv', 1),
('Varna', 1),
('Burgas', 1),
('Sofia', 1),
('London', 2),
('Southampton', 2),
('Bath', 2),
('Berlin', 4),
('Frankfurt', 4),
('Oslo', 5)

INSERT INTO Minions ([Name], Age, TownId)
VALUES
('Bob', 13, 3),
('Kevin', 14, 1),
('Steward', 19, 6),
('Simon', 22, 3),
('Cathleen', 11, 2),
('Carry', 50, 10),
('Becky', 125, 5),
('Mars', 21, 1),
('misho', 5, 10),
('Zoe', 125, 5),
('json', 21, 1)

INSERT INTO EvilnessFactors ([Name])
VALUES
('Super good'),
('Good'),
('Bad'),
('Evil'),
('Super evil')

INSERT INTO Villains ([Name], EvilnessFactorId)
VALUES
('Gru', 2),
('Victor', 1),
('Jilly', 3),
('Miro', 4),
('Rosen', 5),
('Dimityr', 1),
('Dobromir', 2)

INSERT INTO MinionsVillains (MinionId, VillainId)
VALUES
(4, 2),
(1, 1),
(5, 7),
(3, 5),
(2, 6),
(11, 5),
(9, 7),
(7, 1),
(1, 3),
(7, 3),
(5, 3),
(4, 3),
(1, 2),
(2, 1),
(2, 7),
(3, 1),
(4, 1),
(5, 1),
(6, 2),
(8, 2)

-- Problem 2

SELECT v.[Name] AS VillainName, COUNT(mv.MinionId) AS MinionsCount
FROM Villains AS v
JOIN MinionsVillains AS mv ON v.Id = mv.VillainId
GROUP BY v.[Name]
HAVING COUNT(mv.MinionId) > 3
ORDER BY MinionsCount DESC

-- Problem 3

DECLARE @MinionsAssociatedVillainId INT = 1

SELECT CONCAT('Villain: ', v.[Name]) AS VillainName
FROM Villains AS v
WHERE v.Id = @MinionsAssociatedVillainId
UNION ALL
SELECT
CONCAT (RowNumber, '. ', MinionName, ' ', MinionAge) AS MinionNameAndAgeWithRowNumber
FROM (
	SELECT TOP 100 PERCENT
		ROW_NUMBER() OVER (ORDER BY m.[Name]) AS RowNumber,
		m.[Name] AS MinionName,
		m.Age AS MinionAge
	FROM Minions AS m
	JOIN MinionsVillains AS mv ON m.Id = mv.MinionId
	JOIN Villains AS v ON mv.VillainId = v.Id
	WHERE v.Id = @MinionsAssociatedVillainId
	ORDER BY MinionName ASC
) AS MinionsNamesByVillainIdSubquery

-- Problem 4

DECLARE @MinionName NVARCHAR(50) = 'Bob';
DECLARE @Age INT = 14;
DECLARE @TownName NVARCHAR(50) = 'Berlin';
DECLARE @VillainName NVARCHAR(50) = 'Gru';

SELECT TOP (1) Id FROM Minions 
WHERE [Name] = @MinionName 
ORDER BY Id DESC

IF NOT EXISTS (SELECT 1 FROM Towns WHERE [Name] = @TownName)
BEGIN
    INSERT INTO Towns ([Name])
    VALUES (@TownName); 
    PRINT 'Town ' + @TownName + ' was added to the database.';
END

IF NOT EXISTS (SELECT 1 FROM Villains WHERE [Name] = @VillainName)
BEGIN
    DECLARE @EvilFactorId INT;

    IF NOT EXISTS (SELECT 1 FROM EvilnessFactors WHERE [Name] = 'Evil')
    BEGIN
        INSERT INTO EvilnessFactors ([Name]) VALUES ('Evil');
    END

    SELECT @EvilFactorId = Id FROM EvilnessFactors WHERE [Name] = 'Evil';

    INSERT INTO Villains ([Name], EvilnessFactorId)
    VALUES (@VillainName, @EvilFactorId);

    PRINT 'Villain ' + @VillainName + ' was added to the database.';
END

DECLARE @TownId INT;
DECLARE @VillainId INT;

SELECT @TownId = Id FROM Towns WHERE [Name] = @TownName;
SELECT @VillainId = Id FROM Villains WHERE [Name] = @VillainName;

INSERT INTO Minions ([Name], Age, TownId)
VALUES (@MinionName, @Age, @TownId);

INSERT INTO MinionsVillains (MinionId, VillainId)
VALUES (SCOPE_IDENTITY(), @VillainId);

PRINT 'Successfully added ' + @MinionName + ' to be minion of ' + @VillainName + ' .';

-- Problem 5

DECLARE @CountryName NVARCHAR(50) = 'Bulgaria';

DECLARE @ChangedTownsCount INT;
DECLARE @ChangedTownNames NVARCHAR(MAX);

SELECT
    @ChangedTownsCount = COUNT(*),
    @ChangedTownNames = CONCAT('[', STRING_AGG(UPPER([Name]), ', '), ']')
FROM
    Towns
WHERE
    CountryCode = (SELECT Id FROM Countries WHERE [Name] = @CountryName);

IF @ChangedTownsCount > 0
BEGIN
    PRINT CAST(@ChangedTownsCount AS NVARCHAR(10)) + ' town names were affected.';
    PRINT @ChangedTownNames;
END
ELSE
BEGIN
    PRINT 'No town names were affected.';
END

-- Problem 6

DECLARE @VillainToDeleteId INT = 101;

DECLARE @VillainToDeleteName NVARCHAR(50);
DECLARE @DeletedVillainMinionsCount INT;

IF NOT EXISTS (SELECT 1 FROM Villains WHERE Id = @VillainToDeleteId)
BEGIN
    PRINT 'No such villain was found.';
    RETURN;
END

SELECT @VillainToDeleteName = [Name] FROM Villains WHERE Id = @VillainToDeleteId;

SELECT @DeletedVillainMinionsCount = COUNT(*) FROM MinionsVillains WHERE VillainId = @VillainToDeleteId;

BEGIN TRANSACTION;

DELETE FROM MinionsVillains WHERE VillainId = @VillainToDeleteId;

DELETE FROM Villains WHERE Id = @VillainToDeleteId;

IF @@ERROR = 0
BEGIN
    COMMIT;
    PRINT @VillainToDeleteName + ' was deleted.';
    PRINT CAST(@DeletedVillainMinionsCount AS NVARCHAR(10)) + ' minions were released.';
END
ELSE
BEGIN
    ROLLBACK;
    PRINT 'An error occurred. No changes were made to the database.';
END

-- Problem 7

WITH OrderedMinions AS (
    SELECT 
        Id, 
        [Name],
        ROW_NUMBER() OVER (ORDER BY Id) AS RowNumber
    FROM Minions
)

SELECT TOP (SELECT COUNT(*) FROM Minions)
    om2.[Name] AS [Output]
FROM OrderedMinions AS om1
JOIN OrderedMinions AS om2 ON om1.RowNumber = om2.RowNumber OR om1.RowNumber + om2.RowNumber - 1 = (SELECT MAX(RowNumber) FROM OrderedMinions)
ORDER BY om1.RowNumber

-- Problem 8

DECLARE @MinionIds VARCHAR(MAX) = '1 3 5';

UPDATE Minions
SET
    Age = Age + 1,
    [Name] = UPPER(LEFT([Name], 1)) + LOWER(SUBSTRING([Name], 2, LEN([Name]) - 1))
WHERE
    Id IN (SELECT value FROM STRING_SPLIT(@MinionIds, ' '));

SELECT
    Name + ' ' + CAST(Age AS VARCHAR(10)) AS MinionInfo
FROM
    Minions;

-- Helper queries

SELECT *
FROM Countries

SELECT *
FROM Towns

SELECT *
FROM Minions

SELECT *
FROM EvilnessFactors

SELECT *
FROM Villains

SELECT *
FROM MinionsVillains