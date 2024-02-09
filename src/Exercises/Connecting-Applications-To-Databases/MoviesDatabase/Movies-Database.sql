-------------------------------------------------------------------
-- This script will create a sample database "Movies" in        --
-- MS SQL Server and will populate sample data in its tables.    --
-------------------------------------------------------------------

USE master
GO

CREATE DATABASE Movies
GO

USE Movies
GO

CREATE TABLE Movies(
MovieID int IDENTITY NOT NULL,
MovieTitle VARCHAR(60) NOT NULL,
MovieYear int NULL,
MovieTime int NOT NULL,
MovieLanguage VARCHAR(50) NOT NULL,
MovieReleaseDate date NOT NULL,
MovieReleaseCountry VARCHAR(5) NOT NULL,
MovieBoxOffice money NOT NULL,
CONSTRAINT UC_Movies UNIQUE(MovieBoxOffice),
CONSTRAINT PK_Movies PRIMARY KEY CLUSTERED(MovieID ASC)
)

GO

SET IDENTITY_INSERT Movies ON

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(1, 'Inception', 2010, 148, 'English', '2010-07-23', 'USA', 829895144)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(2, 'The Bourne Supremacy', 2004, 108, 'English', '2004-12-03', 'USA', 288702062)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(3, 'Batman Begins', 2005, 140, 'English', '2005-06-17', 'USA', 373413297)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(4, 'V for Vendetta', 2005, 132, 'English', '2006-04-21', 'USA', 132511035)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(5, 'Interstellar', 2014, 169, 'English', '2014-11-07', 'USA', 677471339)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(6, 'Shutter Island', 2010, 138, 'English', '2010-02-21', 'USA', 294804195)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(7, 'Redline', 2009, 102, 'Japanese', '2010-10-09', 'JP', 170952)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(8, 'The Godfather', 1972, 175, 'English', '1972-03-19', 'USA', 246120974)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(9, 'The Godfather: Part II', 1974, 202, 'English', '1974-12-20', 'USA', 48020957)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(10, 'Fight Club', 1999, 139, 'English', '1999-10-17', 'USA', 101187503)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(11, 'The Silence of the Lambs', 1991, 118, 'English', '1991-02-18', 'USA', 272753884)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(12, 'American History X', 1998, 119, 'English', '1998-11-20', 'USA', 23875127)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(13, 'Saving Private Ryan', 1998, 169, 'English', '1998-07-26', 'USA', 482349603)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(14, 'Gladiator', 2000, 155, 'English', '2000-05-07', 'USA', 460583960)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(15, 'The Departed', 2006, 151, 'English', '2006-10-08', 'USA', 291465034)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(16, 'Inglorious Bastards', 2009, 153, 'English', '2009-08-23', 'USA', 321455689)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(17, 'The Prestige', 2006, 130, 'English', '2006-10-22', 'USA', 109676311)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(18, 'Memento', 2000, 113, 'English', '2001-03-18', 'USA', 39723096)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(19, 'The Dark Knight Rises', 2012, 164, 'English', '2012-07-22', 'USA', 1081041287)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(20, 'A Beautiful Mind', 2001, 135, 'English', '2001-12-23', 'USA', 316791257)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(21, 'The Wolf of Wall Street', 2013, 180, 'English', '2013-12-29', 'USA', 392000694)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(22, 'Warrior', 2011, 140, 'English', '2011-09-11', 'USA', 23057115)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(23, 'Gone Girl', 2014, 149, 'English', '2014-10-05', 'USA', 369330363)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(24, 'Dunkirk', 2017, 106, 'English', '2017-07-23', 'USA', 526940665)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(25, 'Prisoners', 2013, 153, 'English', '2013-09-22', 'USA', 122126687)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(26, 'Donnie Darko', 2001, 113, 'English', '2001-10-28', 'USA', 4269636)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(27, 'The Bourne Ultimatum', 2007, 115, 'English', '2007-08-05', 'USA', 442824138)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(28, 'The Bourne Identity', 2002, 119, 'English', '2002-06-16', 'USA', 214034224)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(29, 'Blood Diamond', 2006, 143, 'English', '2006-12-10', 'USA', 171720398)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(30, 'I Am Legend', 2007, 101, 'English', '2007-12-16', 'USA', 585349010)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(31, 'Taken', 2008, 90, 'English', '2009-02-01', 'FR', 226830568)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(32, 'The Dark Knight', 2008, 152, 'English', '2008-07-20', 'USA', 1004934033)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(33, 'The Pursuit of Happyness', 2006, 117, 'English', '2006-12-17', 'USA', 307077295)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(34, 'Scarface',NULL, 170, 'English', '1983-12-09', 'USA', 66023329)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(35, 'Drive', 2011, 100, 'English', '2011-09-18', 'USA', 76176032)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(36, 'Source Code', 2011, 93, 'English', '2011-04-08', 'USA', 147332697)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(37, 'American Sniper', 2014, 133, 'English', '2014-12-28', 'USA', 547426372)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(38, 'The Martian', 2015, 144, 'English', '2015-10-04', 'USA', 630161890)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(39, 'Three Billboards Outside Ebbing, Missouri', 2017, 115, 'English', '2017-11-12', 'USA', 159210164)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(40, 'No Country for Old Men', 2007, 122, 'English', '2007-11-11', 'USA', 171627166)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(41, 'The Fifth Element', 1997, 126, 'English', '1997-05-11', 'FR', 264029966)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(42, 'The Butterfly Effect', 2004, 113, 'English', '2004-01-25', 'USA', 95707652)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(43, 'Primal Fear', 1996, 129, 'English', '1996-04-07', 'USA', 102616183)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(44, 'Identity', 2003, 90, 'English', '2003-04-23', 'USA', 90259536)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(45, 'The Shawshank Redemption', 1994, 142, 'English', '1994-09-25', 'USA', 28785842)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(46, 'Good Will Hunting', 1997, 126, 'English', '1997-12-07', 'USA', 225933435)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(47, 'Rain Man', 1988, 133, 'English', '1988-12-18', 'USA', 354825435)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(48, 'Mystic River', 2003, 138, 'English', '2003-10-12', 'USA', 156595191)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(49, 'Se7en', 1995, 127, 'English', '1995-09-24', 'USA', 327311859)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(50, 'Into the Wild', 2007, 148, 'English', '2007-09-23', 'USA', 56255142)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(51, 'A Bronx Tale', 1993, 121, 'English', '1993-10-03', 'USA', 17287898)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(52, 'The Fugitive', 1993, 130, 'English', '1993-08-08', 'USA', 368875760)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(53, 'Rush', 2013, 123, 'English', '2013-09-22', 'USA', 92006038)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(54, 'Skyfall', 2012, 143, 'English', '2012-11-11', 'UK', 1108561013)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(55, 'The Game', 1997, 129, 'English', '1997-09-14', 'USA', 109423648)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(56, 'Arrival', 2016, 116, 'English', '2016-11-13', 'USA', 203388186)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(57, 'The Secret Life of Walter Mitty', 2013, 114, 'English', '2013-12-27', 'USA', 188133322)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(58, 'Eternal Sunshine of the Spotless Mind', 2004, 108, 'English', '2004-03-21', 'USA', 72258126)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(59, 'The Machinist', 2004, 101, 'English', '2004-10-24', 'USA', 8203235)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(60, 'Casino Royale', 2006, 144, 'Serbian', '2006-11-19', 'UK', 609447995)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(61, 'Pi', 1998, 84, 'English', '1998-07-12', 'USA', 3221152)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(62, 'Forrest Gump', 1994, 142, 'English', '1994-07-10', 'USA', 678151134)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(63, 'Pulp Fiction', 1994, 154, 'English', '1994-10-16', 'USA', 214179088)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(64, 'Kimi no na wa', 2016, 106, 'Japanese', '2017-04-09', 'JP', 357986087)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(65, 'Requem for a Dream', 2000, 102, 'English', '2000-10-08', 'USA', 7390108)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(66, 'The Green Mile', 1999, 189, 'English', '1999-12-12', 'USA', 286801374)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(67, 'Trainspotting', 1996, 93, 'English', '1996-02-23', 'UK', 286801174)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(68, 'American Psycho', 2000, 101, 'English', '2000-04-16', 'USA', 34266564)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(69, 'A Clockwork Orange', 1971, 136, 'English', '1972-01-13', 'UK', 26903440)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(70, 'The Pianist', 2002, 150, 'English', '2002-12-29', 'UK', 120072577)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(71, 'The Boy in the Striped Pyjamas', 2008, 94, 'English', '2008-09-12', 'UK', 40416563)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(72, 'Twelve Monkeys', 1995, 129, 'English', '1996-01-01', 'USA', 168839459)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(73, 'Edward Scissorhands', 1990, 105, 'English', '1990-12-09', 'USA', 86024005)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(74, 'Mr. Nobody', 2009, 141, 'English', '2010-01-13', 'BE', 3549016)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(75, 'The Fall', 2006, 117, 'English', '2008-05-30', 'USA', 3669465)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(76, 'Burning', 2018, 148, 'Korean', '2018-10-28', 'KR', 7566962)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(77, 'Frequency', 2000, 118, 'English', '2000-04-28', 'USA', 68106245)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(78, 'The Matrix', 1999, 136, 'English', '1999-04-04', 'USA', 465343787)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(79, 'Django Unchained', 2012, 165, 'English', '2012-12-30', 'USA', 425368238)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(80, 'American Beauty', 1999, 122, 'English', '1999-09-19', 'USA', 356296601)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(81, 'Braveheart', 1995, 178, 'English', '1995-05-24', 'USA', 213216216)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(82, '12 Years a Slave', 2013, 134, 'English', '2013-10-20', 'USA', 187733202)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(83, 'The Imitation Game', 2014, 114, 'English', '2014-11-30', 'USA', 233555708)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(84, 'The Elephant Man', 1980, 124, 'English', '1980-10-10', 'USA', 26010864)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(85, 'Back to the Future', 1985, 116, 'English', '1985-07-07', 'USA', 388355305)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(86, 'Prometheus',NULL, 124, 'English', '2012-06-10', 'USA', 403354469)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(87, 'The Breakfast Club', 1985, 97, 'English', '1985-02-18', 'USA', 51525171)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(88, 'The Lives of Others', 2006, 137, 'German', '2007-02-11', 'DE', 77356942)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(89, 'La pianiste', 2001, 131, 'French', '2002-03-31', 'AU', 6765335)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(90, 'Birdman or (The Unexpected Virtue of Ignorance)', 2014, 119, 'English', '2002-03-31', 'USA', 103215094)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(91, 'The Shining', 1980, 144, 'English', '1980-05-26', 'UK', 45655744)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(92, 'Amelie', 2001, 122, 'French', '2001-11-04', 'FR', 173924742)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(93, 'Once', 2007, 86, 'English', '2007-03-23', 'IE', 20710513)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(94, 'Good Bye Lenin!', 2003, 121, 'German', '2003-02-13', 'DE', 79316957)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(95, 'Solaris', 1972, 167, 'Russian', '1972-09-26', 'RU', 56594)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(96, 'Whiplash', 2014, 106, 'English', '2014-10-12', 'USA', 48982041)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(97, 'Sing Street', 2016, 106, 'English', '2016-03-17', 'IE', 13624522)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(98, 'Kill Bill: Vol.1', 2003, 111, 'English', '2003-10-12', 'USA', 180899045)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(99, 'Kill Bill: Vol.2', 2004, 137, 'English', '2004-04-18', 'USA', 152159461)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(100, 'Jagten', 2012, 115, 'Danish', '2013-01-10', 'DK', 16742257)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(101, 'Citizen Kane', 1941, 119, 'English', '1941-09-05', 'USA', 1594107)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(102, 'Det sjunde inseglet', 1957, 96, 'Swedish', '1957-02-16', 'SE', 230571)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(103, 'The Thing', 1982, 109, 'English', '1982-06-27', 'USA', 19629760)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(104, 'Being John Malkovich', 1999, 113, 'English', '1999-10-31', 'USA', 23106667)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(105, 'Eyes Wide Shut', 1999, 159, 'English', '1999-07-18', 'UK', 162126069)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(106, 'Fargo', 1996, 98, 'English', '1996-03-10', 'USA', 60611975)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(107, 'Taxi Driver', 1976, 114, 'English', '1976-02-09', 'USA', 28441292)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(108, 'Psycho', 1960, 109, 'English', '1960-09-08', 'USA', 32000000)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(109, 'Scott Pilgrim vs. the World', 2010, 112, 'English', '2010-08-13', 'USA', 47664559)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(110, 'Little Miss Sunshine', 2006, 101, 'English', '2006-07-30', 'USA', 100523181)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(111, 'Vertigo', 1958, 128, 'English', '1958-05-22', 'USA', 7796389)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(112, 'Mulholland Dr.', 2001, 147, 'English', '2001-10-14', 'FR', 20129557)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(113, 'Blade Runner', 1982, 117, 'English', '1982-06-25', 'USA', 41706896)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(114, 'The Sixth Sense', 1999, 107, 'English', '1999-08-06', 'USA', 672806292)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(115, 'Call Me by Your Name', 2017, 132, 'English', '2017-11-26', 'IT', 41887595)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(116, 'Nocturnal Animals', 2016, 116, 'English', '2016-11-20', 'USA', 30311857)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(117, 'Midnight in Paris', 2011, 154, 'English', '2011-05-22', 'ES', 151119219)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(118, 'Misery', 1990, 107, 'English', '1990-11-30', 'USA', 61276872)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(119, 'Unbreakable', 2000, 106, 'English', '2000-11-26', 'USA', 248118121)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(120, 'Jaws', 1975, 124, 'English', '1975-06-22', 'USA', 471203004)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(121, 'Akira', 1988, 124, 'Japanese', '1988-07-16', 'JP', 577594)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(122, 'The Squid and the Whale', 2005, 81, 'English', '2005-10-09', 'USA', 11098131)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(123, 'The Big Lebowski', 1998, 117, 'English', '1998-03-08', 'USA', 46735469)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(124, 'A Room with a View', 1985, 117, 'English', '1986-03-09', 'UK', 20966644)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(125, 'Elephant', 2003, 81, 'English', '2003-10-26', 'USA', 10012022)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(126, 'Hauru no ugoku shiro', 2004, 119, 'Japanese', '2004-11-20', 'JP', 236049757)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(127, 'Sen to Chihiro no kamikakushi', 2001, 125, 'Japanese', '2002-09-22', 'JP', 347742810)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(128, 'Hotaru no haka', 1988, 89, 'Japanese', '1988-04-16', 'JP', 516962)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(129, 'Paprika', 2006, 90, 'Japanese', '2006-11-25', 'JP', 944915)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(130, 'Tenku no shiro Rapyuta', 1986, 125, 'Japanese', '1986-08-02', 'JP', 6037660)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(131, 'The Way Way Back', 2013, 103, 'English', '2013-07-07', 'USA', 23198652)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(132, 'Joker', 2019, 122, 'English', '2019-10-04', 'USA', 1060574861)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(133, 'Star Wars', 1977, 121, 'English', '1977-05-30', 'USA', 775512064)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(134, 'Star Wars: Episode V - The Empire Strikes Back', 1980, 124, 'English', '1980-05-25', 'USA', 547879454)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(135, 'Star Wars: Episode VI - Return of the Jedi', 1983, 131, 'English', '1983-05-29', 'USA', 475347111)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(136, 'The Lord of the Rings: The Fellowship of the Ring', 2001, 178, 'English', '2001-12-23', 'NZ', 872491916)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(137, 'The Lord of the Rings: The Two Towers', 2002, 179, 'English', '2002-12-22', 'NZ', 927600630)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(138, 'The Lord of the Rings: The Return of the King', 2003, 201, 'English', '2003-12-21', 'NZ', 1120424614)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(139, 'Mononoke-hime', 1997, 134, 'Japanese', '1997-07-12', 'JP', 162112497)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(140, 'Gisaengchung', 2019, 132, 'Korean', '2019-05-30', 'KR', 121771712)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(141, 'Aliens', 1986, 137, 'English', '1986-07-18', 'USA', 131335326)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(142, 'Das Boot', 1981, 149, 'German', '1982-09-17', 'DE', 11487676)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(143, 'M - Eine Stadt sucht einen Mörder', 1931, 117, 'German', '1931-08-31', 'DE', 35566)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(144, 'E.T. the Extra-Terrestrial', 1982, 115, 'English', '1982-06-11', 'USA', 792910554)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(145, 'Ghostbusters', 1984, 105, 'English', '1984-06-08', 'USA', 295743767)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(146, 'Home Alone', 1990, 103, 'English', '1990-11-18', 'USA', 477063114)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(147, 'Rushmore', 1998, 93, 'English', '1999-12-13', 'USA', 17195500)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(148, 'Zodiac', 2007, 157, 'English', '2007-03-04', 'USA', 84785914)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(149, 'Nightcrawler', 2014, 117, 'English', '2014-10-31', 'USA', 38697217)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(150, 'The Social Network', 2010, 120, 'English', '2010-10-03', 'USA', 224920315)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(151, 'The Girl with the Dragon Tattoo', 2011, 158, 'English', '2011-12-25', 'USA', 232617430)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(152, 'The Crow', 1994, 102, 'English', '1994-05-13', 'USA', 50693129)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(153, 'Dark City', 1998, 100, 'English', '1998-03-01', 'AU', 27200316)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(154, 'Cube', 1997, 90, 'English', '1998-07-11', 'CA', 565727)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(155, 'The Revenant', 2015, 156, 'English', '2015-12-27', 'USA', 532950503)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(156, 'Catch Me If You Can', 2002, 141, 'English', '2002-12-29', 'USA', 352114312)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(157, 'Her', 2013, 126, 'English', '2013-12-22', 'USA', 47351251)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(158, 'The Grand Budapest Hotel', 2014, 99, 'English', '2014-03-06', 'DE', 172936941)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(159, 'Manchester by the Sea', 2016, 137, 'English', '2016-11-20', 'USA', 78988148)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(160, 'The Hobbit: An Unexpected Journey', 2012, 169, 'English', '2012-12-16', 'NZ', 1017003568)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(161, 'The Hobbit: The Desolation of Smaug', 2013, 161, 'English', '2013-12-15', 'USA', 958366855)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(162, 'The Hobbit: The Battle of the Five Armies', 2014, 144, 'English', '2014-12-21', 'NZ', 956019788)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(163, 'Brazil', 1985, 132, 'English', '1985-12-22', 'UK', 9947816)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(164, 'Gattaca', 1997, 106, 'English', '1997-10-26', 'USA', 12532777)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(165, 'Detachment', 2011, 98, 'English', '2012-03-18', 'USA', 1688710)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(166, 'Ghost World', 2001, 111, 'English', '2001-07-22', 'USA', 8764007)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(167, 'Contact', 1997, 150, 'English', '1997-07-11', 'USA', 171120329)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(168, 'Life of Pi', 2012, 127, 'Arabic', '2012-11-25', 'USA', 609016565)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(169, 'Avatar', 2009, 162, 'English', '2009-12-20', 'USA', 2789958507)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(170, 'Slumdog Millionaire', 2008, 120, 'English', '2008-11-16', 'UK', 377910544)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(171, 'The Talented Mr. Ripley', 1999, 139, 'English', '1999-12-25', 'USA', 128798265)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(172, 'Silver Linings Playbook', 2012, 122, 'English', '2012-11-18', 'USA', 236412453)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(173, 'The Perks of Being a Wallflower', 2012, 103, 'English', '2012-09-23', 'USA', 33384127)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(174, '(500) Days of Summer', 2009, 95, 'English', '2009-07-19', 'USA', 60722734)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(175, '10 Things I Hate About You', 1999, 97, 'English', '1999-03-31', 'USA', 53478166)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(176, 'Easy A', 2010, 92, 'English', '2010-09-19', 'USA', 74952305)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(177, 'Dallas Buyers Club', 2013, 117, 'English', '2013-11-22', 'USA', 55198285)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(178, 'The Theory of Everything', 2014, 123, 'English', '2014-11-09', 'UK', 123726688)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(179, 'Gravity', 2013, 91, 'English', '2013-10-04', 'UK', 723192705)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(180, 'Byôsoku 5 senchimêtoru', 2007, 63, 'Japanese', '2007-03-03', 'JP', 256851)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(181, 'Mad Max: Fury Road', 2015, 120, 'English', '2015-05-15', 'AU', 375209362)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(182, 'Moonrise Kingdom', 2012, 94, 'English', '2012-05-27', 'USA', 68263166)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(183, 'The Maze Runner', 2014, 113, 'English', '2014-09-21', 'USA', 348319861)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(184, 'Now You See Me', 2013, 115, 'English', '2013-06-02', 'USA', 351723989)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(185, 'Sherlock Holmes', 2009, 128, 'English', '2009-12-27', 'USA', 524028679)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(186, 'Sherlock Holmes: A Game of Shadows', 2011, 129, 'English', '2011-12-18', 'USA', 543848418)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(187, 'Kingsman: The Secret Service', 2014, 129, 'English', '2015-02-15', 'UK', 414351546)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(188, 'Kick-Ass', 2010, 117, 'English', '2010-04-18', 'UK', 96188903)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(189, 'Die Hard', 1988, 132, 'English', '1988-07-17', 'USA', 141482154)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(190, 'Jurassic Park', 1993, 127, 'English', '1993-06-13', 'USA', 1030314141)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(191, 'Raiders of the Lost Ark', 1981, 115, 'English', '1981-06-12', 'USA', 390133212)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(192, 'Indiana Jones and the Temple of Doom', 1984, 118, 'English', '1984-05-23', 'USA', 333107271)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(193, 'Indiana Jones and the Last Crusade', 1989, 127, 'English', '1989-05-28', 'USA', 474310887)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(194, 'Back to the Future Part II', 1989, 108, 'English', '1989-11-22', 'USA', 335881828)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(195, 'The Adventures of Tintin', 2011, 107, 'English', '2011-12-25', 'USA', 373993951)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(196, 'Green Book', 2018, 130, 'English', '2018-11-18', 'USA', 321752656)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(197, 'Bohemian Rhapsody', 2018, 134, 'English', '2018-11-02', 'UK', 903655259)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(198, 'Inside Llewyn Davis', 2013, 104, 'English', '2018-11-02', 'USA', 32960249)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(199, 'The Irishman', 2019, 209, 'English', '2019-11-29', 'USA', 934861)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(200, 'Cast Away', 2000, 143, 'English', '2000-12-22', 'USA', 429632142)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(201, 'Eraserhead', 1977, 89, 'English', '1978-02-03', 'USA', 22179)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(202, 'Pirates of the Caribbean: The Curse of the Black Pearl', 2003, 143, 'English', '2003-07-13', 'USA', 654264015)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(203, 'Ford v Ferrari', 2019, 152, 'English', '2019-11-17', 'USA', 186672189)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(204, 'Before Sunrise', 1995, 101, 'English', '1995-01-27', 'USA', 5986708)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(205, 'Before Sunset', 2004, 80, 'English', '2004-07-04', 'USA', 15622722)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(206, 'Before Midnight', 2013, 109, 'English', '2013-05-26', 'USA', 11176469)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(207, 'Boyhood', 2014, 165, 'English', '2014-07-13', 'USA', 44495281)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(208, 'Blade Runner 2049', 2017, 164, 'English', '2017-10-08', 'USA', 260512487)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(209, 'Looper', 2012, 113, 'English', '2012-09-30', 'USA', 176506819)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(210, 'Limitless', 2011, 105, 'English', '2011-03-20', 'USA', 161849455)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(211, 'Elysium', 2013, 109, 'English', '2013-08-09', 'USA', 286140700)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(212, 'Oblivion', 2013, 124, 'English', '2013-04-12', 'USA', 286168572)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(213, 'Predestination', 2014, 97, 'English', '2014-08-28', 'AU', 4824499)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(214, 'Locke', 2013, 85, 'English', '2014-04-18', 'UK', 5090608)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(215, 'John Wick', 2014, 101, 'English', '2014-10-26', 'UK', 86013056)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(216, 'John Wick: Chapter 2', 2017, 122, 'English', '2017-02-12', 'HK', 171539887)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(217, 'John Wick: Chapter 3 - Parabellum', 2019, 131, 'English', '2019-05-17', 'USA', 326709727)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(218, 'Star Trek', 2009, 127, 'English', '2009-05-10', 'USA', 385680446)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(219, 'Star Trek Into Darkness', 2013, 132, 'English', '2013-05-10', 'USA', 467365246)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(220, 'Star Trek Beyond', 2016, 122, 'English', '2016-07-22', 'USA', 343471816)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(221, 'The Hunger Games', 2012, 142, 'English', '2012-03-23', 'USA', 694394724)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(222, 'Super 8', 2011, 112, 'English', '2011-06-12', 'USA', 260095986)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(223, 'Hugo', 2011, 112, 'English', '2011-11-23', 'UK', 185770160)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(224, 'Rango', 2011, 107, 'English', '2011-03-11', 'USA', 245724603)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(225, 'Silence', 2016, 161, 'English', '2016-12-25', 'USA', 23737523)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(226, 'The Shape of Water', 2017, 123, 'English', '2017-12-03', 'USA', 195243464)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(227, 'Rise of the Planet of the Apes', 2011, 105, 'English', '2011-08-07', 'USA', 481800873)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(228, 'Dawn of the Planet of the Apes', 2014, 130, 'English', '2014-07-13', 'USA', 710644566)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(229, 'War for the Planet of the Apes', 2014, 140, 'English', '2017-07-14', 'USA', 490719763)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(230, 'Nebraska', 2013, 115, 'English', '2013-11-17', 'USA', 27682872)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(231, 'Die Welle', 2008, 107, 'German', '2008-03-13', 'DE', 32350637)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(232, 'Die fetten Jahre sind vorbei', 2004, 127, 'German', '2004-11-25', 'DE', 8152859)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(233, 'Das weisse Rauschen', 2001, 109, 'German', '2002-01-31', 'DE', 640175)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(234, '303', 2018, 145, 'German', '2018-07-19', 'DE', 396659)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(235, 'Pain and Glory', 2019, 113, 'Spanish', '2018-07-19', 'ES', 35839487)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(236, 'Black Cat, White Cat', 1998, 127, 'Romany', '1998-06-01', 'RO', 351447)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(237, 'Sleepy Hollow', 1999, 105, 'English', '1999-11-19', 'DE', 206071502)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(238, 'Mr. Turner', 2014, 150, 'English', '2014-10-31', 'UK', 22179785)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(239, 'Alien', 1979, 117, 'English', '1979-05-28', 'UK', 106497869)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(240, 'Tonari no Totoro', 1988, 86, 'Japanese', '1988-04-16', 'JP', 30476708)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(241, 'Kokuriko-zaka kara', 2011, 91, 'Japanese', '2011-07-16', 'JP', 61037844)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(242, 'WALL-E', 2008, 98, 'English', '2008-06-29', 'USA', 521311860)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(243, 'Up', 2009, 96, 'English', '2009-05-31', 'USA', 735099082)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(244, 'Inside Out', 2015, 95, 'English', '2015-06-21', 'USA', 857611174)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(245, 'Rocketman', 2019, 121, 'English', '2019-05-31', 'UK', 195179299)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(246, 'Garden State', 2004, 102, 'English', '2004-08-01', 'USA', 35825316)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(247, 'The Thirteenth Floor', 1999, 100, 'English', '1999-05-28', 'USA', 18564088)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(248, 'K-PAX', 2001, 120, 'English', '2001-10-28', 'USA', 65001485)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(249, 'Equilibrium', 2002, 107, 'English', '2002-12-08', 'USA', 5368217)

INSERT INTO Movies(MovieID, MovieTitle, MovieYear, MovieTime, MovieLanguage, 
MovieReleaseDate, MovieReleaseCountry, MovieBoxOffice)
VALUES(250, 'Eiga Koe no katachi', 2016, 130, 'Japanese', '2016-09-17', 'JP', 30490447)

SET IDENTITY_INSERT Movies OFF

GO

CREATE TABLE Actors(
ActorID int IDENTITY NOT NULL,
ActorFirstName VARCHAR(20) NOT NULL,
ActorLastName VARCHAR(20) NOT NULL,
ActorGender VARCHAR(1) NULL ,
CONSTRAINT PK_Actors PRIMARY KEY CLUSTERED(ActorID ASC)
)

GO


SET IDENTITY_INSERT Actors ON

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(1, 'Leonardo', 'DiCaprio', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(2, 'Joseph', 'Gordon-Levitt', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(3, 'Ellen', 'Page', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(4, 'Matt', 'Damon', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(5, 'Franka', 'Potente', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(6, 'Brian', 'Cox', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(7, 'Christian', 'Bale', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(8, 'Michael', 'Cane', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(9, 'Liam', 'Neeson', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(10, 'Natalie', 'Portman', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(11, 'Hugo', 'Weaving', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(12, 'Stephen', 'Rea', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(13, 'Ellen', 'Burstyn', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(14, 'Matthew', 'McConaughey', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(15, 'Mackenzie', 'Foy', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(16, 'Mark', 'Ruffalo', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(17, 'Ben', 'Kingsley', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(18, 'Takuya', 'Kimura', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(19, 'Yû', 'Aoi', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(20, 'Tadanobu', 'Asano', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(21, 'Marlon', 'Brando', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(22, 'Al', 'Pacino', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(23, 'James', 'Caan', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(24, 'Robert', 'Duvall', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(25, 'Diane', 'Keaton', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(26, 'Robert', 'De Niro', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(27, 'Edward', 'Norton', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(28, 'Brad', 'Pitt', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(29, 'Meat', 'Loaf', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(30, 'Jodie', 'Foster', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(31, 'Scott', 'Glenn', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(32, 'Anthony', 'Hopkins', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(33, 'Edward', 'Furlong', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(34, 'Jennifer', 'Lien', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(35, 'Tom', 'Hanks', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(36, 'Tom', 'Sizemore', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(37, 'Edward', 'Burns', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(38, 'Russell', 'Crowe', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(39, 'Joaquin', 'Phoenix', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(40, 'Connie', 'Nielsen', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(41, 'Jack', 'Nicholson', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(42, 'Mélanie', 'Laurent', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(43, 'Christoph', 'Waltz', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(44, 'Hugh', 'Jackman', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(45, 'Piper', 'Perabo', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(46, 'Guy', 'Pearce', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(47, 'Carrie-Anne', 'Moss', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(48, 'Joe', 'Pantoliano', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(49, 'Gary', 'Oldman', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(50, 'Ed', 'Harris', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(51, 'Jennifer', 'Connely', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(52, 'Jonah', 'Hill', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(53, 'Joel', 'Edgerton', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(54, 'Tom', 'Hardy', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(55, 'Nick', 'Nolte', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(56, 'Ben', 'Affleck', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(57, 'Rosamund', 'Pike', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(58, 'Neil Patrick', 'Harris', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(59, 'Fionn', 'Whitehead', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(60, 'Barry', 'Keoghan', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(61, 'Mark', 'Rylance', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(62, 'Jake', 'Gyllenhaal', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(63, 'Paul', 'Dano', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(64, 'Jena', 'Malone', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(65, 'Mary', 'McDonnell', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(66, 'Julia', 'Stiles', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(67, 'Djimon', 'Hounsou', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(68, 'Will', 'Smith', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(69, 'Alice', 'Braga', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(70, 'Charlie', 'Tahan', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(71, 'Maggie', 'Grace', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(72, 'Leland', 'Orser', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(73, 'Jaden', 'Smith', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(74, 'Thandie', 'Newton', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(75, 'Steven', 'Bauer', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(76, 'Michelle', 'Pfeiffer', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(77, 'Ryan', 'Gosling', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(78, 'Carey', 'Mulligan', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(79, 'Bryan', 'Cranston', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(80, 'Michelle', 'Monaghan', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(81, 'Vera', 'Farmiga', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(82, 'Bradley', 'Cooper', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(83, 'Sienna', 'Miller', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(84, 'Kyle', 'Gallner', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(85, 'Jessica', 'Chastain', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(86, 'Kristen', 'Wiig', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(87, 'Frances', 'McDormand', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(88, 'Woody', 'Harrelson', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(89, 'Sam', 'Rockwell', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(90, 'Tommy Lee', 'Jones', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(91, 'Javier', 'Bardem', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(92, 'Bruce', 'Willis', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(93, 'Milla', 'Jovovich', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(94, 'Ashton', 'Kutcher', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(95, 'Melora', 'Walters', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(96, 'Amy', 'Smart', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(97, 'Richard', 'Gere', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(98, 'Laura', 'Linney', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(99, 'John', 'Cusack', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(100, 'Ray', 'Liotta', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(101, 'Amanda', 'Peet', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(102, 'Tim', 'Robbins', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(103, 'Morgan', 'Freeman', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(104, 'Bob', 'Gunton', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(105, 'Casey', 'Affleck', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(106, 'Dustin', 'Hoffman', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(107, 'Tom', 'Cruise', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(108, 'Valeria', 'Golino', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(109, 'Sean', 'Penn', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(110, 'Kevin', 'Bacon', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(111, 'Gwyneth', 'Paltrow', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(112, 'Emile', 'Hirsch', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(113, 'Marcia Gay', 'Harden', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(114, 'Chazz', 'Palminteri', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(115, 'Lilo', 'Brancato', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(116, 'Harrison', 'Ford', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(117, 'Julianne', 'Moore', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(118, 'Chris', 'Hemsworth', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(119, 'Daniel', 'Brühl', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(120, 'Olivia', 'Wilde', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(121, 'Daniel', 'Craig', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(122, 'Judi', 'Dench', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(123, 'Michael', 'Douglas', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(124, 'Deborah Kara', 'Unger', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(125, 'Amy', 'Adams', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(126, 'Jeremy', 'Renner', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(127, 'Forest', 'Whitaker', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(128, 'Ben', 'Stiller', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(129, 'Jon', 'Daly', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(130, 'Jim', 'Carrey', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(131, 'Kate', 'Winslet', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(132, 'Elijah', 'Wood', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(133, 'Jennifer Jason', 'Leigh', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(134, 'Aitana', 'Sánchez-Gijón', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(135, 'Mads', 'Mikkelsen', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(136, 'Sean', 'Gullette', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(137, 'Mark', 'Margolis', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(138, 'Ben', 'Shenkman', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(139, 'Robin', 'Wright', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(140, 'Gary', 'Sinise', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(141, 'Tim', 'Roth', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(142, 'John', 'Travolta', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(143, 'Uma', 'Thurman', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(144, 'Ryûnosuke', 'Kamiki', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(145, 'Mone', 'Kamishiraishi', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(146, 'Ryô', 'Narita', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(147, 'Ellen', 'Burstyn', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(148, 'Jared', 'Leto', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(149, 'David', 'Morse', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(150, 'Michael Clarke', 'Duncan', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(151, 'Ewan', 'McGregor', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(152, 'Ewen', 'Bremner', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(153, 'Jonny Lee', 'Miller', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(154, 'Justin', 'Theroux', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(155, 'Josh', 'Lucas', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(156, 'Malcolm', 'McDowell', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(157, 'Patrick', 'Magee', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(158, 'Michael', 'Bates', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(159, 'Adrien', 'Brody', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(160, 'Emilia', 'Fox', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(161, 'Michal', 'Zebrowski', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(162, 'Asa', 'Butterfield', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(163, 'David', 'Thewlis', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(164, 'Rupert', 'Friend', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(165, 'Madeleine', 'Stowe', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(166, 'Johnny', 'Depp', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(167, 'Winona', 'Ryder', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(168, 'Dianne', 'Wiest', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(169, 'Sarah', 'Polley', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(170, 'Diane', 'Kruger', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(171, 'Catinca', 'Untaru', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(172, 'Justine', 'Waddell', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(173, 'Lee', 'Pace', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(174, 'Ah-in', 'Yoo', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(175, 'Steven', 'Yeun', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(176, 'Jong-seo', 'Jun', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(177, 'Dennis', 'Quaid', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(178, 'Jim', 'Caviezel', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(179, 'Shawn', 'Doyle', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(180, 'Keanu', 'Reeves', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(181, 'Laurence', 'Fishburne', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(182, 'Jamie', 'Foxx', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(183, 'Kevin', 'Spacey', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(184, 'Annette', 'Bening', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(185, 'Thora', 'Birch', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(186, 'Mel', 'Gibson', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(187, 'Sophie', 'Marceau', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(188, 'Patrick', 'McGoohan', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(189, 'Chiwetel', 'Ejiofor', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(190, 'Michael', 'Fassbender', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(191, 'Michael Kenneth', 'Williams', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(192, 'Benedict', 'Cumberbatch', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(193, 'Keira', 'Knightley', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(194, 'Matthew', 'Goode', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(195, 'John', 'Hurt', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(196, 'Anne', 'Bancroft', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(197, 'Michael J.', 'Fox', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(198, 'Christopher', 'Lloyd', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(199, 'Lea', 'Thompson', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(200, 'Noomi', 'Rapace', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(201, 'Anthony Michael', 'Hall', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(202, 'Judd', 'Nelson', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(203, 'Ally', 'Sheedy', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(204, 'Martina', 'Gedeck', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(205, 'Ulrich', 'Mühe', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(206, 'Sebastian', 'Koch', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(207, 'Isabelle', 'Huppert', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(208, 'Annie', 'Girardot', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(209, 'Benoît', 'Magimel', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(210, 'Michael', 'Keaton', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(211, 'Emma', 'Stone', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(212, 'Shelley', 'Duvall', NULL)

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(213, 'Danny', 'Lloyd', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(214, 'Audrey', 'Tautou', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(215, 'Mathieu', 'Kassovitz', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(216, 'Lorella', 'Cravotta', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(217, 'Glen', 'Hansard', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(218, 'Markéta', 'Irglová', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(219, 'Hugh', 'Walsh', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(220, 'Katrin', 'Sass', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(221, 'Chulpan', 'Khamatova', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(222, 'Natalya', 'Bondarchuk', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(223, 'Donastas', 'Banionis', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(224, 'Jüri', 'Järvet', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(225, 'Miles', 'Teller', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(226, 'J.K.', 'Simmons', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(227, 'Paul', 'Reiser', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(228, 'Ferdia', 'Walsh-Peelo', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(229, 'Kelly', 'Thornton', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(230, 'Jack', 'Reynor', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(231, 'David', 'Carradine', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(232, 'Daryl', 'Hannah', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(233, 'Thomas Bo', 'Larsen', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(234, 'Annika', 'Wedderkopp', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(235, 'Joseph', 'Cotten', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(236, 'Dorothy', 'Comingore', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(237, 'Agnes', 'Moorehead', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(238, 'Gunnar', 'Björnstrand', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(239, 'Bengt', 'Ekerot', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(240, 'Nils', 'Poppe', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(241, 'Kurt', 'Russell', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(242, 'Wilford', 'Brimley', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(243, 'T.K.', 'Carter', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(244, 'Cameron', 'Diaz', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(245, 'Catherine', 'Keener', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(246, 'Nicole', 'Kidman', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(247, 'Todd', 'Field', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(248, 'Steve', 'Buscemi', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(249, 'William H.', 'Macy', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(250, 'Peter', 'Stormare', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(251, 'Cybill', 'Shepard', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(252, 'Anthony', 'Perkins', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(253, 'Vera', 'Miles', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(254, 'Janet', 'Leigh', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(255, 'Michael', 'Cera', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(256, 'Kieran', 'Culkin', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(257, 'Mary Elizabeth', 'Winstead', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(258, 'Steve', 'Carell', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(259, 'Toni', 'Collette', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(260, 'James', 'Stewart', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(261, 'Kim', 'Novak', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(262, 'Barbara Bel', 'Geddes', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(263, 'Naomi', 'Watts', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(264, 'Laura', 'Harring', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(265, 'Rutger', 'Hauer', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(266, 'Sean', 'Young', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(267, 'Harley Joel', 'Osment', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(268, 'Armie', 'Hammer', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(269, 'Timothée', 'Chalamet', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(270, 'Michael', 'Stuhlbarg', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(271, 'Michael', 'Shannon', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(272, 'Owen', 'Wilson', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(273, 'Rachel', 'McAdams', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(274, 'Kathy', 'Bates', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(275, 'Richard', 'Farnsworth', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(276, 'Samuel L.', 'Jackson', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(277, 'Roy', 'Scheider', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(278, 'Robert', 'Shaw', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(279, 'Richard', 'Dreyfuss', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(280, 'Mitsuo', 'Iwata', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(281, 'Nozomu', 'Sasaki', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(282, 'Mami', 'Koyama', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(283, 'Owen', 'Kline', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(284, 'Jesse', 'Eisenberg', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(285, 'Jeff', 'Bridges', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(286, 'Maggie', 'Smith', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(287, 'Helena', 'Bonham Carter', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(288, 'Denholm', 'Eliott', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(289, 'Elias', 'McConnell', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(290, 'Alex', 'Frost', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(291, 'Eric', 'Deulen', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(292, 'Chieko', 'Baishô', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(293, 'Takuya', 'Kimura', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(294, 'Akihiro', 'Miwa', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(295, 'Rumi', 'Hiiragi', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(296, 'Miyu', 'Irino', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(297, 'Mari', 'Natsuki', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(298, 'Tsutomu', 'Tatsumi', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(299, 'Ayano', 'Shiraishi', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(300, 'Yoshiko', 'Shinohara', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(301, 'Megumi', 'Hayashibara', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(302, 'Tôru', 'Furuya', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(303, 'Kôichi', 'Yamadera', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(304, 'Anna', 'Paquin', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(305, 'James', 'Van Der Beek', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(306, 'Cloris', 'Leachman', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(307, 'Zazie', 'Beetz', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(308, 'Mark', 'Hamill', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(309, 'Carrie', 'Fisher', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(310, 'Orlando', 'Bloom', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(311, 'Viggo', 'Mortensen', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(312, 'Billy', 'Crudup', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(313, 'Billy Bob', 'Thornton', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(314, 'Minnie', 'Driver', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(315, 'Kang-ho', 'Song', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(316, 'Sun-kyun', 'Lee', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(317, 'Yeo-jeong', 'Jo', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(318, 'Sigourney', 'Weaver', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(319, 'Carrie', 'Henn', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(320, 'Jurgen', 'Prochnow', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(321, 'Herbert', 'Gronemeyer', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(322, 'Klaus', 'Wennemann', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(323, 'Peter', 'Lorre', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(324, 'Ellen', 'Widmann', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(325, 'Inge', 'Landgut', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(326, 'Henry', 'Thomas', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(327, 'Drew', 'Barrymore', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(328, 'Peter', 'Coyote', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(329, 'Bill', 'Murray', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(330, 'Dan', 'Aykroyd', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(331, 'Macaulay', 'Culkin', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(332, 'Joe', 'Pesci', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(333, 'Daniel', 'Stern', NULL)

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(334, 'Jason', 'Schwartzman', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(335, 'Rene', 'Russo', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(336, 'Bill', 'Paxton', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(337, 'Rooney', 'Mara', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(338, 'Andrew', 'Garfield', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(339, 'Brandon', 'Lee', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(340, 'Rochelle', 'Davis', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(341, 'Michael', 'Wincott', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(342, 'Rufus', 'Sewell', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(343, 'Kiefer', 'Sutherland', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(344, 'Nicole', 'de Boer', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(345, 'Maurice Dean', 'Wint', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(346, 'David', 'Hewlett', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(347, 'Will', 'Poulter', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(348, 'Scarlett', 'Johansson', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(349, 'Ralph', 'Fiennes', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(350, 'Michelle', 'Williams', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(351, 'Kyle', 'Chandler', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(352, 'Ian', 'McKellen', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(353, 'Martin', 'Freeman', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(354, 'Richard', 'Armitage', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(355, 'Jonathan', 'Pryce', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(356, 'Kim', 'Greist', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(357, 'Ethan', 'Hawke', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(358, 'Jude', 'Law', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(359, 'Suraj', 'Sharma', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(360, 'Irrfan', 'Khan', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(361, 'Adil', 'Hussain', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(362, 'Sam', 'Worthington', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(363, 'Zoe', 'Saldana', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(364, 'Dev', 'Patel', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(365, 'Freida', 'Pinto', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(366, 'Saurabh', 'Shukla', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(367, 'Jennifer', 'Lawrence', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(368, 'Logan', 'Lerman', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(369, 'Emma', 'Watson', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(370, 'Ezra', 'Miller', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(371, 'Zooey', 'Deschanel', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(372, 'Geoffrey', 'Arend', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(373, 'Heath', 'Ledger', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(374, 'Amanda', 'Bynes', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(375, 'Penn', 'Badgley', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(376, 'Jennifer', 'Garner', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(377, 'Eddie', 'Redmayne', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(378, 'Felicity', 'Jones', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(379, 'Tom', 'Prior', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(380, 'Sandra', 'Bullock', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(381, 'George', 'Clooney', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(382, 'Kenji', 'Mizuhashi', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(383, 'Yoshimi', 'Kondou', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(384, 'Satomi', 'Hanamura', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(385, 'Charlize', 'Theron', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(386, 'Nicholas', 'Hoult', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(387, 'Dylan', 'O Brien', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(388, 'Kaya', 'Scodelario', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(389, 'Robert', 'Downey Jr.', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(390, 'Colin', 'Firth', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(391, 'Taron', 'Egerton', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(392, 'Aaron', 'Taylor-Johnson', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(393, 'Nicholas', 'Cage', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(394, 'Chloë Grace', 'Moretz', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(395, 'Alan', 'Rickman', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(396, 'Bonnie', 'Bedelia', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(397, 'Sam', 'Neill', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(398, 'Laura', 'Dern', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(399, 'Jeff', 'Goldblum', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(400, 'Karen', 'Allen', NULL)

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(401, 'Paul', 'Freeman', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(402, 'Kate', 'Chapshaw', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(403, 'Ke Huy', 'Quan', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(404, 'Sean', 'Connery', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(405, 'Jamie', 'Bell', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(406, 'Andy', 'Serkis', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(407, 'Maharshala', 'Ali', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(408, 'Linda', 'Cardellini', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(409, 'Rami', 'Malek', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(410, 'Lucy', 'Boynton', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(411, 'Gwilym', 'Lee', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(412, 'Oscar', 'Isaac', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(413, 'John', 'Goodman', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(414, 'Helen', 'Hunt', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(415, 'Paul', 'Sanchez', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(416, 'Jack', 'Nance', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(417, 'Charlotte', 'Stewart', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(418, 'Allen', 'Joseph', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(419, 'Julie', 'Delpy', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(420, 'Ellar', 'Coltrane', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(421, 'Abbie', 'Cornish', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(422, 'Sharlto', 'Copley', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(423, 'Andrea', 'Riseborough', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(424, 'Sarah', 'Shook', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(425, 'Noah', 'Taylor', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(426, 'Olivia', 'Colman', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(427, 'Ruth', 'Wilson', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(428, 'Alfie', 'Allen', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(429, 'Willem', 'Dafoe', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(430, 'Riccardo', 'Scamarcio', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(431, 'Ian', 'McShane', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(432, 'Chris', 'Pine', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(433, 'Zachary', 'Quinto', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(434, 'Liam', 'Hemsworth', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(435, 'Josh', 'Hutcherson', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(436, 'Joel', 'Courtney', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(437, 'Elle', 'Fanning', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(438, 'Sacha', 'Baron Cohen', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(439, 'Isla', 'Fisher', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(440, 'Alfred', 'Molina', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(441, 'Adam', 'Driver', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(442, 'Sally', 'Hawkins', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(443, 'Octavia', 'Spencer', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(444, 'Karin', 'Konoval', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(445, 'Bruce', 'Dern', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(446, 'Will', 'Forte', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(447, 'June', 'Squibb', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(448, 'Jürgen', ' Vogel', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(449, 'Frederick', 'Lau', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(450, 'Max', 'Riemelt', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(451, 'Julia', 'Jentsch', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(452, 'Stripe', 'Erceg', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(453, 'Anabelle', 'Lachatte', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(454, 'Patrick', 'Joswig', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(455, 'Mala', 'Emde', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(456, 'Anton', 'Spieker', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(457, 'Antonio', 'Banderas', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(458, 'Asier', 'Etxeandia', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(459, 'Leonardo', 'Sbaraglia', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(460, 'Bajram', 'Severdzan', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(461, 'Florijan', 'Ajdini', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(462, 'Branka', 'Katic', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(463, 'Christina', 'Ricci', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(464, 'Miranda', 'Richardson', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(465, 'Timothy', 'Spall', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(466, 'Paul', 'Jesson', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(467, 'Dorothy', 'Atkinson', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(468, 'Tom', 'Skerritt', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(469, 'Hitoshi', 'Takagi', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(470, 'Noriko', 'Hidaka', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(471, 'Chika', 'Sakamoto', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(472, 'Sarah', 'Bolger', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(473, 'Chris', 'Noth', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(474, 'Anton', 'Yelchin', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(475, 'Ben', 'Burtt', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(476, 'Elissa', 'Knight', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(477, 'Jeff', 'Garlin', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(478, 'Edward', 'Asner', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(479, 'Christopher', 'Plummer', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(480, 'Jordan', 'Nagai', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(481, 'Amy', 'Poehler', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(482, 'Bill', 'Hader', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(483, 'Lewis', 'Black', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(484, 'Richard', 'Madden', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(485, 'Zach', 'Braff', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(486, 'Peter', 'Sarsgaard', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(487, 'Craig', 'Bierko', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(488, 'Gretchen', 'Mol', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(489, 'Armin', 'Mueller-Stahl', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(490, 'Mary', 'McCormack', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(491, 'Dominic', 'Purcell', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(492, 'Sean', 'Bean', 'M')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(493, 'Saori', 'Hayami', 'F')

INSERT INTO Actors(ActorID, ActorFirstName, ActorLastName, ActorGender)
VALUES(494, 'Aoi', 'Yûki', 'F')

GO

SET IDENTITY_INSERT Actors OFF

CREATE TABLE MoviesCast(
MovieID int NOT NULL,
ActorID int NOT NULL,
MovieRole VARCHAR(50) NULL,
CONSTRAINT PK_MoviesCast PRIMARY KEY CLUSTERED(MovieID ASC, ActorID ASC)
)
GO

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(1, 1, 'Cobb')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(1, 2, 'Arthur')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(1, 3, 'Ariadne')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(1, 54, 'Eames')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(1, 8, 'Miles')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(2, 4, 'Jason Bourne')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(2, 5, 'Marie')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(2, 6, 'Ward Abbott')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(2, 66, 'Nicky')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(2, 80, 'Kim')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(3, 7, 'Bruce Wayne / Batman')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(3, 8, 'Alfred')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(3, 9, 'Ducard')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(3, 49, 'Jim Gordon')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(3, 103, 'Lucius Fox')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(4, 10, 'Evey')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(4, 11, 'V')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(4, 12, 'Finch')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(4, 195, 'Adam Sutler')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(5, 13, 'Murph (Older)')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(5, 14, 'Cooper')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(5, 15, 'Murph (10 Yrs.)')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(5, 8, 'Professor Brand')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(6, 1, 'Teddy Daniels')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(6, 16, 'Chuck Aule')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(6, 17, 'Dr. Cawley')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(6, 350, 'Dolores')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(7, 18, 'JP (voice)')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(7, 19, 'Sonoshee (voice)')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(7, 20, 'Frisbee (voice)')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(8, 21, 'Don Vito Corleone')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(8, 22, 'Michael Corleone')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(8, 23, 'Sonny Corleone')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(8, 24, 'Tom Hagen')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(9, 22, 'Michael')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(9, 24, 'Tom Hagen')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(9, 25, 'Kay')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(9, 26, 'Vito Corleone')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(10, 27, 'The Narrator')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(10, 28, 'Tyler Durden')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(10, 29, 'Robert Paulsen')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(10, 287, 'Marla Singer')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(11, 30, 'Clarice Starling')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(11, 31, 'Jack Crawford')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(11, 32, 'Dr. Hannibal Lecter')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(12, 27, 'Derek Vinyard')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(12, 33, 'Danny Vinyard')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(12, 34, 'Davina Vinyard')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(13, 35, 'Captain Miller')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(13, 36, 'Sergeant Horvath')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(13, 37, 'Private Reiben')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(13, 4, 'Private Ryan')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(14, 38, 'Maximus')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(14, 39, 'Commodus')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(14, 40, 'Lucilla')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(15, 1, 'Billy')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(15, 4, 'Colin Sullivan')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(15, 41, 'Frank Costello')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(16, 28, 'Lt. Aldo Raine')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(16, 42, 'Shosanna')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(16, 43, 'Col. Hans Landa')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(16, 190, 'Lt. Archie Hicox')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(16, 119, 'Fredrick Zoller')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(16, 170, 'Bridget von Hammersmark')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(17, 44, 'Robert Angier')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(17, 7, 'Alfred Borden')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(17, 8, 'Cutter')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(17, 45, 'Julia McCullough')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(17, 348, 'Olivia Wenscombe')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(18, 46, 'Leonard')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(18, 47, 'Natalie')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(18, 48, 'Joe')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(19, 7, 'Bruce Wayne')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(19, 49, 'Commissioner Gordon')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(19, 54, 'Bane')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(19, 2, 'Blake')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(19, 103, 'Fox')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(19, 8, 'Alfred')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(20, 38, 'John Nash')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(20, 50, 'Parcher')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(20, 51, 'Alicia Nash')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(20, 479, 'Dr. Rosen')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(21, 1, 'Jordan Belfort')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(21, 52, 'Donnie Azoff')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(21, 14, 'Mark Hanna')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(21, 351, 'Agent Patrick Denham')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(22, 53, 'Brendan Conlon')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(22, 54, 'Tommy Conlon')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(22, 55, 'Paddy Conlon')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(23, 56, 'Nick Dunne')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(23, 57, 'Amy Dunne')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(23, 58, 'Desi Collings')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(24, 59, 'Tommy')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(24, 60, 'George')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(24, 61, 'Mr. Dawson')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(24, 54, 'Farrier')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(25, 44, 'Keller Dover')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(25, 62, 'Detective Loki')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(25, 63, 'Alex Jones')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(26, 62, 'Donnie Darko')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(26, 64, 'Gretchen Ross')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(26, 65, 'Rose Darko')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(27, 4, 'Jason Bourne')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(27, 66, 'Nicky Parsons')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(27, 31, 'Ezra Kramer')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(28, 4, 'Bourne')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(28, 5, 'Marie')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(28, 6, 'Ward Abbott')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(29, 1, 'Danny Archer')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(29, 67, 'Solomon Vandy')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(29, 51, 'Maddy Bowen')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(30, 68, 'Robert Neville')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(30, 69, 'Anna')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(30, 70, 'Ethan')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(31, 9, 'Bryan Mills')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(31, 71, 'Kim')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(31, 72, 'Sam')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(32, 7, 'Bruce Wayne')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(32, 373, 'Joker')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(32, 8, 'Alfred')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(32, 49, 'Gordon')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(32, 103, 'Lucius Fox')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(33, 68, 'Chris Gardner')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(33, 73, 'Christopher')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(33, 74, 'Linda')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(34, 22, 'Tony Montana')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(34, 75, 'Manny Ribera')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(34, 76, 'Elvira')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(35, 77, 'Driver')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(35, 78, 'Irene')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(35, 79, 'Shannon')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(35, 412, 'Standard')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(36, 62, 'Colter Stevens')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(36, 80, 'Christina Warren')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(36, 81, 'Colleen Goodwin')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(37, 82, 'Chris Kyle')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(37, 83, 'Taya')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(37, 84, 'Goat-Winston')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(38, 4, 'Mark Watney')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(38, 85, 'Melissa Lewis')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(38, 86, 'Annie Montrose')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(38, 492, 'Mitch Henderson')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(38, 189, 'Vincent Kapoor')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(39, 87, 'Mildred')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(39, 88, 'Willoughby')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(39, 89, 'Dixon')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(40, 90, 'Ed Tom Bell')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(40, 91, 'Anton Chigurh')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(40, 88, 'Carson Wells')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(41, 92, 'Korben Dallas')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(41, 49, 'Zorg')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(41, 93, 'Leeloo')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(42, 94, 'Evan')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(42, 95, 'Andrea')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(42, 96, 'Kayleigh')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(42, 368, 'Evan at 7')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(43, 97, 'Martin Vail')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(43, 98, 'Janet Venable')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(43, 27, 'Aaron / Roy')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(44, 99, 'Ed')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(44, 100, 'Rhodes')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(44, 101, 'Paris')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(45, 102, 'Andy Dufresne')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(45, 103, 'Ellis Boyd Redding')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(45, 104, 'Warden Norton')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(46, 4, 'Will')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(46, 56, 'Chuckie')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(46, 105, 'Morgan')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(47, 106, 'Raymond Babbitt')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(47, 107, 'Charlie Babbitt')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(47, 108, 'Susanna')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(48, 109, 'Jimmy Markum')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(48, 102, 'Dave Boyle')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(48, 110, 'Sean Devine')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(48, 181, 'Whitey Powers')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(48, 113, 'Celeste Boyle')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(48, 98, 'Annabeth Markum')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(49, 103, 'Somerset')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(49, 28, 'Mills')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(49, 111, 'Tracy')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(50, 112, 'Chris McCandless')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(50, 113, 'Billie McCandless')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(50, 64, 'Carine McCandless / Additional Narrator')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(51, 26, 'Lorenzo')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(51, 114, 'Sonny')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(51, 115, 'Calogero (Age 17)')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(52, 116, 'Dr. Richard Kimble')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(52, 90, 'Samuel Gerard')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(52, 117, 'Dr. Anne Eastman')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(52, 48, 'Cosmo Renfro')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(53, 118, 'James Hunt')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(53, 119, 'Niki Lauda')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(53, 120, 'Suzy Miller')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(54, 121, 'James Bond')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(54, 122, 'M')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(54, 91, 'Silva')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(54, 349, 'Gareth Mallory')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(55, 123, 'Nicholas Van Orton')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(55, 109, 'Conrad')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(55, 124, 'Christine')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(56, 125, 'Louise Banks')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(56, 126, 'Ian Donnelly')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(56, 127, 'Colonel Weber')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(57, 128, 'Walter Mitty')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(57, 86, 'Cheryl Melhoff')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(57, 129, 'Tim Naughton')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(58, 130, 'Joel Barish')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(58, 131, 'Clementine Kruczynski')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(58, 132, 'Patrick')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(58, 16, 'Stan')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(59, 7, 'Trevor Reznik')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(59, 133, 'Stevie')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(59, 134, 'Marie')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(60, 119, 'James Bond')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(60, 135, 'Le Chiffre')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(60, 122, 'M')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(61, 136, 'Maximillian Cohen')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(61, 137, 'Sol Robeson')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(61, 138, 'Lenny Meyer')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(62, 35, 'Forrest Gump')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(62, 139, 'Jenny Curran')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(62, 140, 'Lieutenant Dan Taylor')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(63, 141, 'Pumpkin')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(63, 142, 'Vincent Vega')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(63, 276, 'Jules Winnfield')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(63, 92, 'Butch Coolidge')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(63, 143, 'Mia Wallace')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(64, 144, 'Taki Tachibana')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(64, 145, 'Mitsuha Miyamizu')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(64, 146, 'Katsuhiko Teshigawara')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(65, 147, 'Sara Goldfarb')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(65, 148, 'Harry Goldfarb')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(65, 51, 'Marion Silver')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(66, 35, 'Paul Edgecomb')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(66, 149, 'Brutus Howell')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(66, 150, 'John Coffey')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(67, 151, 'Renton')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(67, 152, 'Spud')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(67, 153, 'Sick Boy')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(68, 7, 'Patrick Bateman')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(68, 154, 'Timothy Bryce')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(68, 155, 'Craig McDermott')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(68, 148, 'Paul Allen')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(68, 429, 'Donald Kimball')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(69, 156, 'Alex')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(69, 157, 'Mr. Alexander')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(69, 158, 'Chief Guard')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(70, 159, 'Wladyslaw Szpilman')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(70, 160, 'Dorota')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(70, 161, 'Jurek')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(71, 162, 'Bruno')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(71, 163, 'Father')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(71, 164, 'Lieutenant Kotler')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(72, 92, 'James Cole')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(72, 165, 'Kathryn Railly')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(72, 28, 'Jeffrey Goines')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(73, 166, 'Edward Scissorhands')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(73, 167, 'Kim')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(73, 168, 'Peg')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(74, 148, 'Nemo Adult / Old Nemo')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(74, 169, 'Adult Elise')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(74, 170, 'Anna Adult')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(75, 171, 'Alexandria')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(75, 172, 'Nurse Evelyn / Sister Evelyn')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(75, 173, 'Roy Walker / Masked Bandit')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(76, 174, 'Lee Jong-su')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(76, 175, 'Ben')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(76, 176, 'Shin Hae-mi')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(77, 177, 'Frank Sullivan')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(77, 178, 'John Sullivan')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(77, 179, 'Jack Shepard')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(78, 180, 'Neo')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(78, 181, 'Morpheus')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(78, 47, 'Trinity')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(78, 11, 'Agent Smith')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(78, 48, 'Cypher')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(79, 182, 'Django')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(79, 43, 'Dr. King Schultz')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(79, 1, 'Calvin Candie')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(79, 276, 'Stephen')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(80, 183, 'Lester Burnham')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(80, 184, 'Carolyn Burnham')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(80, 185, 'Jane Burnham')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(81, 186, 'William Wallace')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(81, 187, 'Princess Isabelle')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(81, 188, 'Longshanks - King Edward I')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(81, 6, 'Argyle Wallace')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(82, 189, 'Solomon Northup')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(82, 190, 'Edwin Epps')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(82, 191, 'Robert')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(83, 192, 'Alan Turing')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(83, 193, 'Joan Clarke')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(83, 194, 'Hugh Alexander')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(84, 195, 'John Merrick')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(84, 32, 'Frederick Treves')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(84, 196, 'Mrs. Kendal')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(85, 197, 'Marty McFly')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(85, 198, 'Dr. Emmett Brown')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(86, 200, 'Elizabeth Shaw')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(86, 190, 'David')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(86, 385, 'Meredith Vickers')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(86, 46, 'Peter Weyland')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(87, 201, 'Brian Johnson')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(87, 202, 'John Bender')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(87, 203, 'Allison Reynolds')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(88, 204, 'Christa-Maria Sieland')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(88, 205, 'Hauptmann Gerd Wiesler')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(88, 206, 'Georg Dreyman')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(89, 207, 'Erika Kohut')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(89, 208, 'The Mother')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(89, 209, 'Walter Klemmer')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(90, 210, 'Riggan')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(90, 211, 'Sam')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(90, 263, 'Lesley')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(90, 27, 'Mike')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(91, 41, 'Jack Torrance')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(91, 212, 'Wendy Torrance')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(91, 213, 'Danny')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(92, 214, 'Amelie Poulain')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(92, 215, 'Nino Quincampoix')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(92, 216, 'Amandine Poulain')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(93, 217, 'Guy')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(93, 218, 'Girl')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(93, 219, 'Timmy Drummer')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(94, 119, 'Alex')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(94, 220, 'Mutter')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(94, 221, 'Lara')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(95, 222, 'Khari')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(95, 223, 'Kris Kelvin')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(95, 224, 'Doktor Snaut')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(96, 225, 'Andrew')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(96, 226, 'Fletcher')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(96, 227, 'Jim Neimann')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(97, 228, 'Conor')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(97, 229, 'Ann')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(97, 230, 'Brendan')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(98, 143, 'The Bride')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(98, 231, 'Bill')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(98, 232, 'Elle Driver')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(99, 143, 'Beatrix Kiddo')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(99, 231, 'Bill')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(99, 232, 'Elle Driver')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(100, 135, 'Lucas')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(100, 233, 'Theo')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(100, 234, 'Klara')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(101, 235, 'Jedediah Leland ')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(101, 236, 'Susan Alexander Kane')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(101, 237, 'Mary Kane')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(102, 238, 'Jons')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(102, 239, 'Death')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(102, 240, 'Jof / Joseph')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(103, 241, 'MacReady')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(103, 242, 'Dr. Blair')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(103, 243, 'Nauls')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(104, 99, 'Craig Schwartz')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(104, 244, 'Lotte Schwartz')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(104, 245, 'Maxine Lund')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(105, 107, 'Dr. William Harford')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(105, 246, 'Alice Harford')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(105, 247, 'Nick Nightingale')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(106, 248, 'Carl Showalter')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(106, 249, 'Jerry Lundegaard')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(106, 250, 'Gaear Grimsrud')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(107, 26, 'Travis Bickle')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(107, 30, 'Iris')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(107, 251, 'Betsy')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(108, 252, 'Norman Bates')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(108, 253, 'Lila Crane')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(108, 254, 'Marion Crane')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(109, 255, 'Scott Pilgrim')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(109, 256, 'Wallace Wells')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(109, 257, 'Ramona Flowers')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(109, 334, 'Gideon Graves')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(110, 63, 'Dwayne')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(110, 258, 'Frank Ginsberg')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(110, 259, 'Sheryl Hoover')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(110, 79, 'Stan Grossman')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(111, 260, 'John Ferguson')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(111, 261, 'Madeleine Elster / Judy Barton')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(111, 262, 'Midge Wood')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(112, 263, 'Betty / Diane Selwyn')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(112, 264, 'Rita / Camilla Rhodes')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(112, 154, 'Adam')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(113, 116, 'Rick Deckard')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(113, 265, 'Roy Batty')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(113, 266, 'Rachael')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(114, 92, 'Malcolm Crowe')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(114, 267, 'Cole Sear')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(114, 259, 'Lynn Sear')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(115, 268, 'Oliver')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(115, 269, 'Elio')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(115, 270, 'Mr. Perlman')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(116, 62, 'Tony Hastings / Edward Sheffield')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(116, 125, 'Susan Morrow')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(116, 271, 'Bobby Andes')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(116, 392, 'Ray Marcus')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(116, 268, 'Hutton Morrow')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(116, 98, 'Anne Sutton')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(116, 439, 'Laura Hastings')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(117, 272, 'Gil')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(117, 273, 'Inez')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(117, 274, 'Gertrude Stein')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(118, 23, 'Paul Sheldon')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(118, 274, 'Annie Wilkes')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(118, 275, 'Buster')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(119, 92, 'David Dunn')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(119, 276, 'Elijah Price')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(119, 139, 'Audrey Dunn')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(120, 277, 'Brody')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(120, 278, 'Quint')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(120, 279, 'Hooper')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(121, 280, 'Kaneda')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(121, 281, 'Tetsuo')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(121, 282, 'Kei')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(122, 283, 'Frank Berkman')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(122, 284, 'Walt Berkman')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(122, 98, 'Joan Berkman')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(123, 285, 'The Dude')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(123, 413, 'Walter Sobchak')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(123, 248, 'Theodore Donald Kerabatsos')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(124, 286, 'Charlotte Bartlett')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(124, 287, 'Lucy Honeychurch')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(124, 288, 'Mr Emerson')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(124, 122, 'Eleanor Lavish')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(125, 289, 'Elias')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(125, 290, 'Alex')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(125, 291, 'Eric')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(126, 292, 'Sofi')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(126, 293, 'Hauru')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(126, 294, 'Arechi no Majo')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(127, 295, 'Chihiro Ogino / Sen')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(127, 296, 'Haku')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(127, 297, 'Yubaba / Zeniba')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(128, 298, 'Seita')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(128, 299, 'Setsuko')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(128, 300, 'Mother')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(129, 301, 'Paprika / Chiba Atsuko')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(129, 302, 'Tokita Kohsaku')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(129, 303, 'Osanai Morio')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(130, 304, 'Sheeta')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(130, 305, 'Pazu')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(130, 306, 'Dola')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(130, 308, 'Muska')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(131, 258, 'Trent')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(131, 259, 'Pam')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(131, 89, 'Owen')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(132, 39, 'Arthur Fleck')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(132, 26, 'Murray Franklin')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(132, 307, 'Sophie Dumond')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(133, 308, 'Luke Skywalker')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(133, 309, 'Princess Leia Organa')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(133, 116, 'Han Solo')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(134, 308, 'Luke Skywalker')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(134, 309, 'Princess Leia Organa')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(134, 116, 'Han Solo')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(135, 308, 'Luke Skywalker')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(135, 309, 'Princess Leia Organa')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(135, 116, 'Han Solo')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(136, 310, 'Legolas')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(136, 492, 'Boromir')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(136, 132, 'Frodo')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(136, 311, 'Aragorn')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(136, 352, 'Gandalf')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(137, 310, 'Legolas')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(137, 132, 'Frodo')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(137, 311, 'Aragorn')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(137, 352, 'Gandalf')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(138, 310, 'Legolas')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(138, 132, 'Frodo')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(138, 311, 'Aragorn')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(138, 352, 'Gandalf')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(139, 312, 'Ashitaka')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(139, 313, 'Jigo')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(139, 314, 'Lady Eboshi')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(140, 315, 'Kim Ki-taek')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(140, 316, NULL)

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(140, 317, 'Park Yeon-kyo')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(141, 318, 'Ripley')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(141, 319, 'Newt')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(141, 227, 'Burke')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(142, 320, 'Capt.-Lt. Henrich Lehmann-Willenbrock - Der Alte')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(142, 321, 'Lt. Werner')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(142, 322, 'Chief Engineer Fritz Grade')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(143, 323, 'Hans Beckert')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(143, 324, 'Frau Beckmann')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(143, 325, 'Elsie Beckmann')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(144, 326, 'Elliott')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(144, 327, 'Gertie')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(144, 328, 'Keys')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(145, 329, 'Dr. Peter Venkman')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(145, 318, 'Dana Barrett')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(145, 330, 'Dr. Raymond Stantz')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(146, 331, 'Kevin')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(146, 332, 'Harry')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(146, 333, 'Marv')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(147, 334, 'Max Fischer')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(147, 329, 'Herman Blume')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(147, 6, 'Dr. Nelson Guggenheim')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(147, 40, 'Mrs. Calloway')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(148, 62, 'Robert Graysmith')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(148, 16, 'Inspector David Toschi')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(148, 389, 'Paul Avery')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(148, 6, 'Melvin Belli')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(149, 62, 'Louis Bloom')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(149, 335, 'Nina Romina')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(149, 336, 'Joe Loder')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(150, 284, 'Mark Zuckerberg')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(150, 337, 'Erica Albright')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(150, 338, 'Eduardo Saverin')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(150, 268, 'Cameron Winklevoss / Tyler Winklevoss')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(151, 121, 'Mikael Blomkvist')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(151, 337, 'Lisbeth Salander')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(151, 479, 'Henrik Vanger')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(151, 139, 'Erika Berger')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(152, 339, 'Eric')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(152, 340, 'Sarah')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(152, 341, 'Top Dollar')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(153, 342, 'John Murdoch')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(153, 343, 'Dr. Daniel Schrebe')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(153, 51, 'Emma Murdoch')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(154, 344, 'Leaven')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(154, 345, 'Quentin')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(154, 346, 'Worth')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(155, 1, 'Hugh Glass')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(155, 54, 'John Fitzgerald')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(155, 347, 'Bridger')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(156, 1, 'Frank Abagnale Jr.')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(156, 35, 'Carl Hanratty')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(156, 125, 'Brenda Strong')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(156, 376, 'Cheryl Ann')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(157, 39, 'Theodore')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(157, 337, 'Catherine')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(157, 86, 'SexyKitten')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(157, 348, 'Samantha')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(157, 125, 'Amy')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(158, 349, 'M. Gustave')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(158, 159, 'Dmitri')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(158, 429, 'Jopling')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(158, 358, 'Young Writer')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(158, 329, 'M. Ivan')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(158, 27, 'Henckels')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(158, 334, 'M. Jean')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(159, 105, 'Lee Chandler')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(159, 350, 'Randi Chandler')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(159, 351, 'Joe Chandler')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(160, 352, 'Gandalf')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(160, 353, 'Bilbo')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(160, 354, 'Thorin')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(161, 352, 'Gandalf')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(161, 353, 'Bilbo')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(161, 354, 'Thorin')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(162, 352, 'Gandalf')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(162, 353, 'Bilbo')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(162, 354, 'Thorin')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(163, 355, 'Sam Lowry')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(163, 26, 'Harry Tuttle')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(163, 356, 'Jill Layton')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(164, 357, 'Vincent / Jerome')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(164, 143, 'Irene')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(164, 358, 'Jerome / Eugene')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(165, 159, 'Henry Barthes')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(165, 113, 'Principal Carol Dearden')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(165, 23, 'Mr. Charles Seaboldt')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(165, 79, 'Mr. Dearden')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(166, 185, 'Enid')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(166, 348, 'Rebecca')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(166, 248, 'Seymour')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(167, 64, 'Young Ellie')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(167, 149, 'Ted Arroway')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(167, 30, 'Eleanor Arroway')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(167, 14, 'Palmer Joss')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(168, 359, 'Pi Patel')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(168, 360, 'Adult Pi Patel')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(168, 361, 'Santosh Patel')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(169, 362, 'Jake Sully')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(169, 318, 'Dr. Grace Augustine')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(170, 364, 'Older Jamal')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(170, 365, 'Older Latika')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(170, 366, 'Sergeant Srinivas')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(171, 4, 'Tom Ripley')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(171, 111, 'Marge Sherwood')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(171, 358, 'Dickie Greenleaf')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(172, 82, 'Pat')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(172, 367, 'Tiffany')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(172, 26, 'Pat Sr.')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(173, 368, 'Charlie')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(173, 370, 'Patrick')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(174, 2, 'Tom')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(174, 371, 'Summer')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(174, 372, 'McKenzie')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(175, 373, 'Patrick Verona')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(175, 66, 'Kat Stratford')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(175, 2, 'Cameron James')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(176, 211, 'Olive')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(176, 374, 'Marianne')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(176, 375, 'Woodchuck Todd')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(177, 14, 'Ron Woodroof')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(177, 376, 'Eve')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(177, 148, 'Rayon')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(178, 377, 'Stephen Hawking')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(178, 378, 'Jane Hawking')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(178, 379, 'Robert Hawking - Age 17')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(179, 380, 'Ryan Stone')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(179, 381, 'Matt Kowalski')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(179, 50, 'Mission Control')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(180, 382, 'Takaki Tohno')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(180, 383, 'Akari Shinohara')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(180, 384, 'Kanae Sumida')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(181, 35, 'Max Rockatansky')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(181, 385, 'Imperator Furiosa')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(181, 386, 'Nux')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(182, 92, 'Captain Sharp')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(182, 27, 'Scout Master Ward')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(182, 329, 'Mr. Bishop')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(182, 87, 'Mrs. Bishop')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(182, 334, 'Cousin Ben')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(183, 387, 'Thomas')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(183, 388, 'Teresa')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(183, 347, 'Gally')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(184, 284, 'J. Daniel Atlas')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(184, 16, 'Dylan Rhodes')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(184, 88, 'Merritt McKinney')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(184, 103, 'Thaddeus Bradley')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(184, 8, 'Arthur Tressler')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(184, 439, 'Henley Reeves')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(185, 389, 'Sherlock Holmes')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(185, 358, 'Dr. John Watson')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(185, 273, 'Irene Adler')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(186, 389, 'Sherlock Holmes')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(186, 358, 'Dr. John Watson')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(186, 273, 'Irene Adler')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(186, 200, 'Madam Simza Heron')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(187, 390, 'Harry Hart / Galahad')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(187, 391, 'Gary Unwin')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(187, 308, 'Professor Arnold')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(187, 276, 'Valentine')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(187, 8, 'Arthur')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(188, 392, 'Dave Lizewski / Kick-Ass')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(188, 393, 'Damon Macready / Big Daddy')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(188, 394, 'Mindy Macready / Hit-Girl')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(189, 92, 'John McClane')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(189, 395, 'Hans Gruber')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(189, 396, 'Holly Gennaro McClane')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(190, 397, 'Grant')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(190, 398, 'Ellie')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(190, 399, 'Malcolm')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(190, 276, 'Arnold')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(191, 116, 'Indy')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(191, 400, 'Marion')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(191, 401, 'Belloq')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(192, 116, 'Indiana Jones')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(192, 402, 'Willie Scott')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(192, 403, 'Short Round')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(193, 116, 'Indiana Jones')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(193, 404, 'Professor Henry Jones')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(193, 288, 'Marcus Brody')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(194, 197, 'Marty McFly')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(194, 198, 'Doctor Emmett Brown')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(194, 199, 'Lorraine')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(195, 405, 'Tintin')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(195, 406, 'Captain Haddock / Sir Francis Haddock')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(195, 121, 'Sakharine / Red Reckham')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(196, 311, 'Tony Lip')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(196, 407, 'Dr. Donald Shirley')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(196, 408, 'Dolores')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(197, 409, 'Freddie Mercury')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(197, 410, 'Mary Austin')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(197, 411, 'Brian May')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(198, 412, 'Llewyn Davis')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(198, 78, 'Jean')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(198, 413, 'Roland Turner')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(198, 441, 'Al Cody')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(199, 26, 'Frank Sheeran')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(199, 22, 'Jimmy Hoffa')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(199, 332, 'Russell Bufalino')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(200, 35, 'Chuck Noland')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(200, 414, 'Kelly Frears')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(200, 415, 'Ramon')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(201, 416, 'Henry Spencer')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(201, 417, 'Mary X')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(201, 418, 'Mr. X')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(202, 166, 'Jack Sparrow')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(202, 310, 'Will Turner')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(202, 193, 'Elizabeth Swann')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(202, 355, 'Governor Weatherby Swann')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(203, 4, 'Carroll Shelby')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(203, 7, 'Ken Miles')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(203, 155, 'Leo Beebe')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(204, 357, 'Jesse')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(204, 419, 'Celine')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(205, 357, 'Jesse')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(205, 419, 'Celine')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(206, 357, 'Jesse')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(206, 419, 'Celine')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(207, 420, 'Mason')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(207, 357, 'Dad')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(208, 77, 'K')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(208, 139, 'Lieutenant Joshi')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(208, 116, 'Rick Deckard')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(208, 148, 'Luv')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(209, 2, 'Joe')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(209, 92, 'Old Joe')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(209, 63, 'Seth')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(209, 45, 'Suzie')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(210, 82, 'Eddie Morra')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(210, 26, 'Carl Van Loon')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(210, 421, 'Lindy')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(211, 4, 'Max')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(211, 30, 'Delacourt')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(211, 422, 'Kruger')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(212, 107, 'Jack')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(212, 103, 'Beech')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(212, 423, 'Victoria')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(213, 357, 'The Barkeep')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(213, 424, 'The Unmarried Mother')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(213, 425, 'Mr. Robertson')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(214, 54, 'Ivan Locke')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(214, 426, 'Bethan')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(214, 427, 'Katrina')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(215, 180, 'John Wick')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(215, 428, 'Iosef Tarasov')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(215, 429, 'Marcus')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(216, 180, 'John Wick')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(216, 180, 'John Wick')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(216, 430, 'Santino D Antonio')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(216, 431, 'Winston')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(216, 181, 'Bowery King')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(217, 180, 'John Wick')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(217, 431, 'Winston')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(217, 181, 'Bowery King')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(218, 432, 'Kirk')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(218, 433, 'Spock')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(218, 167, 'Amanda Grayson')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(218, 363, 'Uhura')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(218, 474, 'Chekov')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(218, 118, 'George Kirk')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(219, 432, 'Kirk')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(219, 433, 'Spock')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(219, 363, 'Uhura')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(219, 474, 'Chekov')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(220, 432, NULL)

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(220, 433, 'Spock')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(220, 363, 'Uhura')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(220, 474, 'Chekov')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(221, 376, 'Katniss Everdeen')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(221, 434, 'Gale Hawthorne')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(221, 435, 'Peeta Mellark')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(222, 436, NULL)

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(222, 437, 'Alice Dainard')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(222, 351, 'Deputy Jackson Lamb')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(223, 17, 'George Melies')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(223, 438, 'Station Inspector')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(223, 162, 'Hugo Cabret')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(223, 394, 'Isabelle')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(224, 166, 'Rango / Lars')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(224, 439, 'Beans')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(224, 440, 'Roadkill')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(225, 338, 'Rodrigues')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(225, 441, 'Garupe')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(225, 9, 'Ferreira')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(226, 442, 'Elisa Esposito')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(226, 443, 'Zelda Fuller')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(226, 271, 'Richard Strickland')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(227, 406, 'Caesar')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(227, 444, 'Maurice / Court Clerk')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(227, 6, 'John Landon')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(228, 406, 'Caesar')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(228, 49, 'Dreyfus')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(229, 406, 'Caesar')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(229, 88, 'The Colonel')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(229, 444, 'Maurice')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(230, 445, 'Woody Grant')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(230, 446, 'David Grant')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(230, 447, 'Kate Grant')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(231, 448, 'Rainer Wenger')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(231, 449, 'Tim Stoltefuss')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(231, 450, 'Marco')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(232, 119, 'Jan')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(232, 451, 'Jule')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(232, 451, 'Peter')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(233, 119, 'Lukas')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(233, 453, 'Kati')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(233, 454, 'Jochen')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(234, 455, 'Jule')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(234, 456, 'Jan')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(235, 457, 'Salvador Mallo')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(235, 458, 'Alberto Crespo')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(235, 459, 'Federico Delgado')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(236, 460, 'Matko Destanov')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(236, 461, 'Zare Destanov')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(236, 462, 'Ida')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(237, 166, 'Ichabod Crane')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(237, 463, 'Katrina Van Tassel')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(237, 464, 'Lady Van Tassel')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(238, 465, 'JMW Turner')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(238, 466, 'William Turner Snr')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(238, 467, 'Hannah Danby')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(239, 318, 'Ripley')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(239, 468, 'Dallas')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(239, 195, 'Kane')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(240, 469, 'Totoro')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(240, 470, 'Satsuki')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(240, 471, 'Mei')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(241, 472, 'Umi Matsuzaki')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(241, 473, 'Akio Kazama')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(241, 474, 'Shun Kazama')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(242, 475, 'WALL-E / M - 0 / Robots')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(242, 476, 'EVE')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(242, 477, 'Captain')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(243, 478, 'Carl Fredricksen')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(243, 479, 'Charles Muntz')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(243, 480, 'Russell')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(244, 481, 'Joy')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(244, 482, 'Fear')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(244, 483, 'Anger')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(245, 391, 'Elton John')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(245, 405, 'Bernie Taupin')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(245, 484, 'John Reid')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(246, 485, 'Andrew Largeman')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(246, 486, 'Mark')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(246, 10, 'Sam')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(247, 487, 'Douglas Hall / John Ferguson / David')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(247, 488, 'Jane Fuller / Natasha Molinaro')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(247, 489, 'Hannon Fuller / Grierson')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(248, 183, 'Prot')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(248, 285, 'Dr. Mark Powell')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(248, 490, 'Rachel Powell')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(249, 7, 'John Preston')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(249, 491, 'Seamus')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(249, 492, 'Partridge')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(250, 296, 'Shoya Ishida')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(250, 493, 'Shoko Nishimiya')

INSERT INTO MoviesCast(MovieID, ActorID, MovieRole)
VALUES(250, 494, 'Yuzuru Nishimiya')

GO

CREATE TABLE Directors(
DirectorID int IDENTITY NOT NULL,
DirectorFirstName VARCHAR(30) NULL DEFAULT 'Unknown FirstName',
DirectorLastName VARCHAR(30) NOT NULL,
CONSTRAINT PK_Directors PRIMARY KEY CLUSTERED (DirectorID ASC)
)

GO

SET IDENTITY_INSERT Directors ON

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(1, 'Christopher', 'Nolan')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(2, 'Paul', 'Greengrass')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(3, 'James', 'McTeigue')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(4, 'Martin', 'Scorsese')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(5, 'Takeshi', 'Koike')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(6, 'Francis Ford', 'Coppola')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(7, 'David', 'Fincher')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(8, 'Jonathan', 'Demme')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(9, 'Tony', 'Kaye')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(10, 'Steven', 'Spielberg')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(11, 'Ridley', 'Scott')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(12, 'Quentin', 'Tarantino')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(13, 'Ron', 'Howard')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(14, 'Gavin', 'O Connor')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(15, 'Denis', 'Villeneuve')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(16, 'Richard', 'Kelly')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(17, 'Doug', 'Liman')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(18, 'Edward', 'Zwick')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(19, 'Francis', 'Lawrence')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(20, 'Pierre', 'Morel')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(21, 'Gabriele', 'Muccino')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(22, 'Brian', 'De Palma')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(23, 'Nicolas', 'Winding Refn')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(24, 'Duncan', 'Jones')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(25, 'Clint', 'Eastwood')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(26, 'Martin', 'McDonagh')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(27, 'Ethan', 'Coen')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(28, 'Joel', 'Coen')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(29, 'Luc', 'Besson')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(30, 'Eric', 'Bress')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(31, 'J. Mackye', 'Gruber')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(32, 'Gregory', 'Hoblit')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(33, DEFAULT, 'Mangold')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(34, 'Frank', 'Darabont')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(35, 'Gus', 'Van Sant')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(36, 'Barry', 'Levinson')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(37, 'Sean', 'Penn')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(38, 'Robert', 'De Niro')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(39, 'Andrew', 'Davis')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(40, 'Sam', 'Mendes')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(41, 'Ben', 'Stiller')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(42, 'Michel', 'Gondry')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(43, 'Brad', 'Anderson')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(44, 'Martin', 'Campbell')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(45, 'Darren', 'Aronofsky')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(46, 'Robert', 'Zemeckis')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(47, 'Makoto', 'Shinkai')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(48, 'Danny', 'Boyle')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(49, 'Marry', 'Harron')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(50, 'Stanley', 'Kubrick')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(51, 'Roman', 'Polanski')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(52, 'Mark', 'Herman')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(53, 'Terry', 'Gilliam')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(54, 'Tim', 'Burton')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(55, 'Jaco', 'Van Dormael')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(56, 'Tarsem', 'Singh')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(57, 'Chang-dong', 'Lee')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(58, 'Laurence', 'Wachowski')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(59, 'Andrew', 'Wachowski')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(60, 'Mel', 'Gibson')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(61, 'Steve', 'McQueen')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(62, 'Morten', 'Tyldum')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(63, 'David', 'Lynch')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(64, 'John', 'Hughes')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(65, 'Florian', 'Henkel von Donnersmarck')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(66, 'Michael', 'Haneke')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(67, 'Alejandro G.', 'Inarritu')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(68, 'Jean-Pierre', 'Jeunet')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(69, 'John', 'Carney')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(70, NULL, 'Becker')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(71, 'Andrei', 'Tarkovsky')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(72, 'Damien', 'Chazelle')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(73, 'Thomas', 'Vinterberg')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(74, 'Orson', 'Welles')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(75, 'Ingmar', 'Bergman')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(76, 'John', 'Carpenter')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(77, 'Spike', 'Jonze')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(78, 'Noah', 'Hawley')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(79, 'Alfred', 'Hitchcock')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(80, 'Edgar', 'Wright')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(81, 'Jonathan', 'Dayton')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(82, 'Valerie', 'Faris')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(83, 'M. Night', 'Shyamalan')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(84, 'Luca', 'Guadagnino')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(85, 'Tom', 'Ford')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(86, 'Woody', 'Allen')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(87, 'Rob', 'Reiner')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(88, 'Katsuhiro', 'Otomo')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(89, DEFAULT, 'Baumbach')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(90, 'James', 'Ivory')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(91, 'Hayao', 'Miyazaki')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(92, 'Isao', 'Takahata')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(93, 'Satoshi', 'Kon')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(94, 'Nat', 'Faxon')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(95, 'Jim', 'Rash')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(96, 'Todd', 'Phillips')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(97, 'George', 'Lucas')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(98, 'Irvin', 'Kershner')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(99, 'Richard', 'Marquand')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(100, 'Peter', 'Jackson')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(101, 'Boong Joon', 'Ho')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(102, 'James', 'Cameron')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(103, 'Wolfgang', 'Petersen')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(104, 'Fritz', 'Lang')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(105, 'Ivan', 'Reitman')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(106, 'Chris', 'Columbus')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(107, 'Wes', 'Anderson')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(108, 'Dan', 'Gilroy')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(109, 'Alex', 'Proyas')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(110, 'Vincenzo', 'Natali')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(111, 'Kenneth', 'Lonergan')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(112, 'Andrew', 'Niccol')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(113, 'Terry', 'Zwigoff')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(114, 'Ang', 'Lee')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(115, 'Loveleen', 'Tandan')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(116, 'Anthony', 'Minghella')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(117, 'David O.', 'Russell')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(118, 'Stephen', 'Chbosky')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(119, 'Marc', 'Webb')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(120, 'Gil', 'Junger')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(121, 'Will', 'Gluck')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(122, 'Jean-Marc', 'Vallee')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(123, 'James', 'Marsh')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(124, 'Alfonso', 'Cuaron')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(125, 'George', 'Miller')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(126, 'Wes', 'Ball')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(127, 'Louis', 'Leterrier')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(128, 'Guy', 'Ritchie')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(129, 'Matthew', 'Vaughn')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(130, 'John', 'McTiernan')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(131, 'Peter', 'Farrelly')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(132, 'Bryan', 'Singer')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(133, 'Gore', 'Verbinski')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(134, 'Richard', 'Linklater')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(135, 'Rian', 'Johnson')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(136, 'Neil', 'Burger')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(137, 'Neill', 'Blomkamp')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(138, 'Joseph', 'Kosinski')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(139, 'Michael', 'Spierig')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(140, 'Peter', 'Spierig')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(141, 'Steven', 'Knight')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(142, 'Chad', 'Stahelski')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(143, 'J.J.', 'Abrams')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(144, 'Justin', 'Lin')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(145, 'Gary', 'Ross')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(146, 'Guillermo', 'del Toro')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(147, NULL, 'Wyatt')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(148, 'Matt', 'Reeves')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(149, 'Alexander', 'Payne')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(150, 'Dennis', 'Gansel')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(151, 'Hans', 'Weingartner')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(152, 'Tobias', 'Amann')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(153, 'Pedro', 'Almodovar')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(154, 'Emir', 'Kusturica')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(155, 'Mike', 'Leigh')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(156, 'Goro', 'Miyazaki')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(157, 'Andrew', 'Stanton')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(158, 'Pete', 'Dochter')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(159, 'Bob', 'Peterson')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(160, 'Ronnie', 'Del Carmen')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(161, 'Dexter', 'Fletcher')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(162, 'Zach', 'Braff')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(163, DEFAULT, 'Rusnak')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(164, 'Iain', 'Softley')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(165, 'Kurt', 'Wimmer')

INSERT INTO Directors(DirectorID, DirectorFirstName, DirectorLastName)
VALUES(166, 'Naoko', 'Yamada')

SET IDENTITY_INSERT Directors OFF

GO

CREATE TABLE MoviesDirection(
MovieID int NOT NULL,
DirectorID int NOT NULL,
CONSTRAINT PK_MoviesDirection PRIMARY KEY CLUSTERED(MovieID ASC, DirectorID ASC)
)
GO

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(1,1)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(2,2)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(3,1)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(4,3)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(5,1)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(6,4)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(7,5)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(8,6)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(9,6)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(10,7)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(11,8)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(12,9)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(13,10)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(14,11)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(15,4)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(16,12)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(17,1)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(18,1)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(19,1)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(20,13)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(21,4)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(22,14)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(23,7)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(24,1)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(25,15)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(26,16)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(27,2)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(28,17)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(29,18)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(30,19)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(31,20)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(32,1)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(33,21)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(34,22)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(35,23)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(36,24)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(37,25)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(38,11)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(39,26)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(40,27)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(40,28)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(41,29)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(42,30)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(42,31)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(43,32)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(44,33)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(45,34)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(46,35)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(47,36)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(48,25)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(49,7)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(50,37)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(51,38)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(52,39)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(53,13)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(54,40)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(55,7)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(56,15)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(57,41)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(58,42)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(59,43)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(60,44)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(61,45)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(62,46)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(63,12)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(64,47)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(65,45)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(66,34)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(67,48)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(68,49)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(69,50)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(70,51)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(71,52)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(72,53)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(73,54)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(74,55)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(75,56)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(76,57)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(77,32)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(78,58)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(78,59)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(79,12)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(80,40)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(81,60)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(82,61)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(83,62)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(84,63)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(85,46)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(86,11)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(87,64)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(88,65)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(89,66)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(90,67)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(91,50)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(92,68)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(93,69)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(94,70)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(95,71)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(96,72)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(97,69)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(98,12)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(99,12)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(100,73)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(101,74)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(102,75)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(103,76)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(104,77)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(105,50)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(106,78)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(107,4)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(108,79)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(109,80)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(110,81)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(110,82)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(111,79)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(112,63)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(113,11)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(114,83)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(115,84)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(116,85)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(117,86)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(118,87)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(119,83)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(120,10)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(121,88)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(122,89)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(123,28)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(123,27)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(124,90)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(125,35)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(126,91)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(127,91)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(128,92)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(129,93)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(130,91)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(131,94)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(131,95)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(132,96)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(133,97)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(134,98)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(135,99)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(136,100)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(137,100)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(138,100)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(139,91)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(140,101)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(141,102)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(142,103)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(143,104)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(144,10)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(145,105)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(146,106)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(147,107)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(148,7)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(149,108)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(150,7)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(151,7)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(152,109)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(153,109)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(154,110)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(155,67)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(156,10)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(157,77)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(158,107)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(159,111)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(160,100)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(161,100)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(162,100)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(163,53)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(164,112)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(165,9)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(166,113)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(167,46)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(168,114)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(169,102)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(170,48)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(170,115)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(171,116)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(172,117)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(173,118)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(174,119)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(175,120)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(176,121)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(177,122)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(178,123)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(179,124)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(180,47)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(181,125)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(182,107)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(183,126)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(184,127)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(185,128)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(186,128)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(187,129)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(188,129)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(189,130)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(190,10)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(191,10)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(192,10)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(193,10)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(194,46)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(195,10)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(196,131)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(197,132)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(198,27)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(198,28)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(199,4)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(200,46)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(201,63)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(202,133)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(203,33)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(204,134)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(205,134)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(206,134)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(207,134)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(208,15)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(209,135)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(210,136)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(211,137)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(212,138)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(213,139)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(213,140)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(214,141)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(215,142)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(216,142)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(217,142)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(218,143)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(219,143)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(220,144)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(221,145)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(222,143)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(223,4)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(224,133)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(225,4)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(226,146)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(227,147)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(228,148)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(229,148)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(230,149)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(231,150)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(232,151)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(233,151)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(233,152)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(234,151)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(235,153)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(236,154)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(237,54)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(238,155)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(239,11)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(240,91)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(241,156)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(242,157)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(243,158)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(243,159)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(244,158)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(244,160)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(245,161)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(246,162)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(247,163)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(248,164)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(249,165)

INSERT INTO MoviesDirection(MovieID, DirectorID)
VALUES(250,166)

GO

CREATE TABLE Genres(
GenreID int IDENTITY NOT NULL,
GenreTitle VARCHAR(20) NOT NULL,
CONSTRAINT UC_Genres UNIQUE (GenreTitle),
CONSTRAINT PK_Genres PRIMARY KEY CLUSTERED(GenreID ASC)
)
GO


SET IDENTITY_INSERT Genres ON

INSERT INTO	Genres(GenreID, GenreTitle)
VALUES(1,'Action')

INSERT INTO	Genres(GenreID, GenreTitle)
VALUES(2,'Adventure')

INSERT INTO	Genres(GenreID, GenreTitle)
VALUES(3,'Animation')

INSERT INTO	Genres(GenreID, GenreTitle)
VALUES(4,'Biography')

INSERT INTO	Genres(GenreID, GenreTitle)
VALUES(5,'Comedy')

INSERT INTO	Genres(GenreID, GenreTitle)
VALUES(6,'Crime')

INSERT INTO	Genres(GenreID, GenreTitle)
VALUES(7,'Drama')

INSERT INTO	Genres(GenreID, GenreTitle)
VALUES(8,'Fantasy')

INSERT INTO	Genres(GenreID, GenreTitle)
VALUES(9,'Horror')

INSERT INTO	Genres(GenreID, GenreTitle)
VALUES(10,'Music')

INSERT INTO	Genres(GenreID, GenreTitle)
VALUES(11,'Mystery')

INSERT INTO	Genres(GenreID, GenreTitle)
VALUES(12,'Romance')

INSERT INTO	Genres(GenreID, GenreTitle)
VALUES(13,'Sci-Fi')

INSERT INTO	Genres(GenreID, GenreTitle)
VALUES(14,'Thriller')

INSERT INTO	Genres(GenreID, GenreTitle)
VALUES(15,'War')

INSERT INTO	Genres(GenreID, GenreTitle)
VALUES(16,'Western')

SET IDENTITY_INSERT Genres OFF

GO

CREATE TABLE MoviesGenres(
MovieID int NOT NULL,
GenreID int NOT NULL,
CONSTRAINT PK_MoviesGenres PRIMARY KEY CLUSTERED(MovieID ASC, GenreID ASC)
)

GO

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(1,1)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(2,1)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(3,1)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(4,1)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(5,2)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(6,11)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(7,3)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(8,6)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(9,6)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(10,7)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(11,6)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(12,7)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(13,15)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(14,1)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(15,6)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(16,2)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(17,7)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(18,11)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(19,1)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(20,4)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(21,4)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(22,7)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(23,7)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(24,1)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(25,6)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(26,7)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(27,1)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(28,1)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(29,2)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(30,2)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(31,14)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(32,1)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(33,4)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(34,6)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(35,6)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(36,1)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(37,4)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(38,13)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(39,5)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(40,7)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(41,13)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(42,13)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(43,6)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(44,11)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(45,7)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(46,7)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(47,7)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(48,11)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(49,11)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(50,4)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(51,6)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(52,1)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(53,4)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(54,1)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(55,14)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(56,13)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(57,5)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(58,12)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(59,7)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(60,1)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(61,9)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(62,7)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(63,6)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(64,3)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(65,7)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(66,6)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(67,7)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(68,6)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(69,13)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(70,7)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(71,15)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(72,13)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(73,12)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(74,7)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(75,2)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(76,11)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(77,11)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(78,13)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(79,16)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(80,7)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(81,7)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(82,7)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(83,4)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(84,7)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(85,13)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(86,13)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(87,5)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(88,14)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(89,7)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(90,7)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(91,9)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(92,5)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(93,10)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(94,5)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(95,11)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(96,10)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(97,10)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(98,1)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(99,1)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(100,7)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(101,11)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(102,7)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(103,9)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(104,5)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(105,14)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(106,14)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(107,7)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(108,9)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(109,5)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(110,5)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(111,12)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(112,11)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(113,13)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(114,14)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(115,12)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(116,14)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(117,12)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(118,14)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(119,13)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(120,14)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(121,3)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(122,7)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(123,5)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(124,12)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(125,6)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(126,3)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(127,3)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(128,3)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(129,3)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(130,3)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(131,5)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(132,7)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(133,13)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(134,13)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(135,13)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(136,8)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(137,8)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(138,8)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(139,3)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(140,14)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(141,9)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(142,7)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(143,11)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(144,13)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(145,8)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(146,5)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(147,5)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(148,6)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(149,14)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(150,4)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(151,11)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(152,7)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(153,13)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(154,13)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(155,1)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(156,4)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(157,12)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(158,2)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(159,7)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(160,8)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(161,8)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(162,8)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(163,13)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(164,13)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(165,7)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(166,5)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(167,13)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(168,8)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(169,8)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(170,12)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(171,6)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(172,12)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(173,12)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(174,12)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(175,12)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(176,5)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(177,4)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(178,4)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(179,13)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(180,3)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(181,13)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(182,12)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(183,13)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(184,11)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(185,6)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(186,6)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(187,1)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(188,1)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(189,1)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(190,13)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(191,2)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(192,2)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(193,2)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(194,13)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(195,3)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(196,4)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(197,10)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(198,10)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(199,4)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(200,2)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(201,9)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(202,2)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(203,4)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(204,12)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(205,12)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(206,12)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(207,7)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(208,13)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(209,13)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(210,14)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(211,13)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(212,13)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(213,1)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(214,7)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(215,1)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(216,1)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(217,1)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(218,13)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(219,13)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(220,13)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(221,13)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(222,11)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(223,8)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(224,3)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(225,7)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(226,8)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(227,13)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(228,13)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(229,13)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(230,7)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(231,14)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(232,7)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(233,7)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(234,12)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(235,7)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(236,5)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(237,8)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(238,4)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(239,9)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(240,3)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(241,3)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(242,3)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(243,3)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(244,3)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(245,4)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(246,12)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(247,13)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(248,13)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(249,13)

INSERT INTO MoviesGenres(MovieID, GenreID)
VALUES(250,3)

GO

CREATE TABLE Reviewers(
ReviewerID int IDENTITY NOT NULL,
ReviewerFirstName VARCHAR(20) NOT NULL,
ReviewerLastName VARCHAR(20) NULL DEFAULT 'Unknown LastName',
CONSTRAINT PK_Reviewers PRIMARY KEY CLUSTERED (ReviewerID ASC)
)

GO


SET IDENTITY_INSERT Reviewers ON

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (1, 'Guy', 'Gilbert')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (2, 'Kevin', DEFAULT)

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (3, 'Roberto', 'Tamburello')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (4, 'Rob', 'Walters')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (5, 'Thierry', 'Harrison')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (6, 'David', 'Bradley')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (7, 'JoLynn', NULL)

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (8, 'Ruth', 'Ellerbrock')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (9, 'Gail', 'Erickson')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (10, 'Barry', 'Johnson')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (11, 'Jossef', 'Goldberg')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (12, 'Terri', 'Duffy')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (13, 'Sidney', 'Higa')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (14, 'Taylor', 'Maxwell')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (15, 'Jeffrey', 'Ford')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (16, 'Jo', 'Brown')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (17, 'Doris', 'Hartwig')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (18, 'John', 'Campbell')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (19, 'Diane', 'Glimp')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (20, 'Steven', 'Selikoff')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (21, 'Peter', 'Cane')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (22, 'Stuart', 'Munson')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (23, 'Greg', 'Alderson')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (24, 'David', 'Johnson')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (25, 'Zheng', 'Mu')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (26, 'Ivan', 'Salmre')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (27, 'Paul', 'Komosinski')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (28, 'Ashvini', 'Sharma')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (29, 'Kendall', 'Keil')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (30, 'Paula', 'Barreto de Mattos')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (31, 'Alejandro', 'McGuel')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (32, 'Garrett', DEFAULT)

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (33, 'Jian Shuo', 'Wang')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (34, 'Susan', 'Eaton')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (35, 'Vamsi', 'Kuppa')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (36, 'Alice', 'Ciccu')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (37, 'Simon', 'Rapier')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (38, 'Jinghao', 'Liu')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (39, 'Michael', 'Hines')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (40, 'Yvonne', 'McKay')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (41, 'Peng', 'Wu')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (42, 'Jean', 'Trenary')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (43, 'Russell', NULL)

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (44, 'A. Scott', 'Wright')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (45, 'Fred', 'Northup')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (46, 'Sariya', 'Harnpadoungsataya')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (47, 'Willis', 'Johnson')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (48, 'Jun', 'Cao')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (49, 'Christian', 'Kleinerman')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (50, 'Susan', 'Metters')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (51, 'Reuben', 'Davidson')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (52, 'Kirk', 'Koenigsbauer')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (53, 'David', 'Ortiz')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (54, 'Tengiz', 'Kharatishvili')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (55, 'Hanying', 'Feng')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (56, 'Kevin', 'Liu')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (57, 'Annik', 'Stahl')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (58, 'Suroor', 'Fatima')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (59, 'Deborah', 'Poe')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (60, 'Jim', 'Scardelis')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (61, 'Carole', 'Poland')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (62, 'George', 'Lee')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (63, 'Gary', 'Yukish')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (64, 'Cristian', 'Petculescu')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (65, 'Raymond', 'Sam')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (66, 'Janaina', 'Bueno')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (67, 'Bob', 'Hohman')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (68, 'Shammi', 'Mohamed')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (69, 'Linda', DEFAULT)

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (70, 'Mindy', 'Martin')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (71, 'Wendy', 'Kahn')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (72, 'Kim', 'Ralls')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (73, 'Sandra', 'Reategui Alayo')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (74, 'Kok-Ho', 'Loh')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (75, 'Douglas', 'Hite')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (76, 'James', 'Kramer')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (77, 'Sean', 'Alexander')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (78, 'Nitin', 'Mirchandani')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (79, 'Diane', 'Margheim')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (80, 'Rebecca', 'Laszlo')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (81, 'Rajesh', 'Patel')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (82, 'Vidur', 'Luthra')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (83, 'John', 'Evans')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (84, 'Nancy', 'Anderson')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (85, 'Pilar', 'Ackerman')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (86, 'David', 'Yalovsky')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (87, 'David', 'Hamilton')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (88, 'Laura', 'Steele')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (89, 'Margie', 'Shoop')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (90, 'Zainal', 'Arifin')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (91, 'Lorraine', 'Nay')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (92, 'Fadi', 'Fakhouri')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (93, 'Ryan', 'Cornelsen')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (94, 'Candy', 'Spoon')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (95, 'Nuan', 'Yu')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (96, 'William', 'Vong')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (97, 'Bjorn', 'Rettig')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (98, 'Scott', 'Gode')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (99, 'Michael', 'Rothkugel')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (100, 'Lane', 'Sacksteder')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (101, 'Pete', 'Male')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (102, 'Dan', 'Bacon')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (103, 'David', 'Barber')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (104, 'Lolan', 'Song')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (105, 'Paula', 'Nartker')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (106, 'Mary', 'Gibson')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (107, 'Mindaugas', 'Krapauskas')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (108, 'Eric', 'Gubbels')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (109, 'Ken', 'Sanchez')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (110, 'Jason', 'Watters')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (111, 'Mark', 'Harrington')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (112, 'Janeth', 'Esteves')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (113, 'Marc', 'Ingle')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (114, 'Gigi', 'Matthew')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (115, 'Paul', 'Singh')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (116, 'Frank', 'Liam')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (117, 'Francois', 'Ajenstat')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (118, 'Diane', 'Tibbott')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (119, 'Jill', 'Williams')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (120, 'Angela', 'Barbariol')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (121, 'Matthias', 'Berndt')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (122, 'Bryan', 'Baker')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (123, 'Jeff', 'Hay')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (124, 'Eugene', 'Zabokritski')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (125, 'Barbara', 'Decker')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (126, 'Chris', 'Preston')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (127, 'Sean', 'Chai')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (128, 'Dan', 'Wilson')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (129, 'Mark', 'McArthur')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (130, 'Bryan', 'Walton')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (131, 'Houman', 'Pournasseh')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (132, 'Sairaj', 'Uddin')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (133, 'Michiko', 'Osada')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (134, 'Benjamin', 'Martin')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (135, 'Cynthia', 'Randall')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (136, 'Kathie', 'Flood')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (137, 'Britta', 'Simon')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (138, 'Brian', 'Lloyd')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (139, 'David', 'Liu')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (140, 'Laura', 'Norman')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (141, 'Michael', 'Patten')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (142, 'Andy', 'Ruth')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (143, 'Yuhong', 'Li')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (144, 'Robert', NULL)

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (145, 'Andreas', 'Berglund')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (146, 'Reed', 'Koch')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (147, 'Linda', 'Randall')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (148, 'James', 'Hamilton')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (149, 'Ramesh', 'Meyyappan')

INSERT INTO Reviewers (ReviewerID, ReviewerFirstName, ReviewerLastName)
VALUES (150, 'Stephanie', 'Conroy')

SET IDENTITY_INSERT Reviewers OFF

GO

CREATE TABLE Rating(
MovieID int NOT NULL,
ReviewerID int NOT NULL,
ReviewStars float NULL ,
NumberOfRatings int NULL,
Metascore int NOT NULL,
CONSTRAINT CHK_Rating CHECK (ReviewStars BETWEEN 1 AND 10 AND Metascore BETWEEN 0 AND 100),
CONSTRAINT PK_Rating PRIMARY KEY CLUSTERED (MovieID ASC, ReviewerID ASC)
)

GO


INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (1,1, 8.8, 1904938, 74)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (2,2, 7.7, 414924, 73)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (3,3, 8.2, 1231839, 70)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (4,4, 8.2, 975495, 62)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (5,5, 8.6, 1359593, 74)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (6,6, 8.1, 1043146, 63)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (7,7, 7.5, 9990, 24)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (8,8, 9.2, 1496928, 100)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (9,9, 9.0, 1048018, 90)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (10,10, 8.8, 1735957, 66)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (11,1, 8.6, 1177740, 85)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (12,2, 8.5, 979180, 62)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (13,3, 8.6, 1151347, 91)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (14,4, NULL, 1254403, 67)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (15,5, 8.5, 1111034, 85)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (16,11, 8.3, 1170318, 69)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (17,12, 8.5, 1102025, 66)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (18,13, 8.4, 1058135, 80)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (19,14, 8.4, 1429254, 78)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (20,15, 8.2, 794584, 72)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (21,16, 8.2, 1077962, 75)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (22,17, 8.2, 412920, 71)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (23,18, 8.1, 790025, 79)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (24,19, 8.1, 790025, 94)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (25,20, 8.1, 547561, 74)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (26,6, 8.0, 711170, 88)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (27,7, 8.0, 586500, 85)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (28,8, 7.9, 484186, 68)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (29,9, 8.0, 472983, 64)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (30,10, 7.2, 649375, 65)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (31,21, 7.8, 546564, 51)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (32,22, 9.0, 2157033, 84)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (33,23, 8.0, 417449, 64)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (34,24, 8.3, 687349, 65)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (35,25, 7.8, 536791, 78)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (36,11, 7.5, 462224, 74)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (37,12, 7.3, 412841, 72)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (38,13, 8.0, 706749, 80)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (39,14, 8.2, 373292, 88)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (40,15, 8.1, 791315, 91)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (41,26, 7.7, 412900, 52)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (42,27, 7.6, 430878, 30)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (43,28, 7.7, 169986, 47)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (44,29, 7.3, 214434, 64)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (45,30, 9.3, 2172893, 80)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (46,31, 8.3, 795850, 70)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (47,32, 8.0, 450847, 65)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (48,33, 7.9, 397391, 84)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (49,34, 8.6, 1336437, 65)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (50,35, 8.1, 537945, 73)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (51,16, 7.8, 120135, 80)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (52,17, 7.8, 251734, 87)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (53,18, 8.1, 405066, 75)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (54,19, 7.7, 603213, 81)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (55,20, 7.8, 323744, 61)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (56,36, 7.9, 541584, 81)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (57,37, 7.3, 281076, 54)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (58,38, NULL, 849414, 89)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (59,39, 7.7, 338056, 61)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (60,40, 8.0, 550741, 80)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (61,21, 7.4, 163107, 72)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (62,22, 8.8, 1674158, 82)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (63,23, 8.9, 1706442, 94)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (64,24, 8.4, 152115, 79)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (65,25, 8.3, 720586, 68)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (66,26, 8.6, 1057957, 61)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (67,27, 8.1, 604295, 83)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (68,28, 7.6, 448341, 64)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (69,29, 8.3, 711659, 80)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (70,30, 8.5, 670341, 85)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (71,41, 7.8, 176776, 55)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (72,42, 8.0, 550018, 74)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (73,43, 7.9, 424705, 74)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (74,44, 7.8, 203146, 63)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (75,45, 7.9, 103276, 64)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (76,46, 7.6, 31967, 90)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (77,47, 7.3, 96508, 67)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (78,48, 8.7, 1564554, 73)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (79,49, 8.4, 1257581, 81)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (80,50, 8.3, 1014149, 84)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (81,31, 8.3, 913242, 68)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (82,32, NULL, 595908, 96)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (83,33, 8.0, 683697, 73)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (84,34, 8.1, 205714, 77)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (85,35, 8.5, 972051, 87)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (86,36, 7.0, 548087, 64)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (87,37, 7.9, 327296, 62)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (88,38, 8.4, 334011, 89)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (89,39, 7.5, 51367, 79)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (90,40, 7.7, 538531, 87)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (91,51, 8.4, 824601, 66)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (92,52, 8.3, 668593, 69)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (93,53, 7.8, 106628, 88)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (94,54, 7.7, 131649, 68)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (95,55, 8.1, 73074, 90)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (96,56, 8.5, 648134, 88)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (97,57, 8.0, 78005, 79)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (98,58, 8.1, 937922, 69)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (99,59, 8.0, 640262, 83)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (100,60, 8.3, 253123, 77)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (101,61, 8.3, NULL, 100)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (102,62, 8.2, 148878, 71)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (103,63, 8.1, 344166, 57)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (104,64, 7.7, 294302, 90)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (105,65, 7.4, 280940, 68)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (106,66, 8.1, 577652, 85)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (107,67, 8.3, 667475, 94)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (108,68, 8.5, 558820, 97)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (109,69, 7.5, 350019, 69)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (110,70, 7.8, 418443, 80)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (111,41, 8.3, 333280, 100)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (112,42, 7.9, 298684, 83)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (113,43, 8.1, 649209, 89)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (114,44, 8.1, 865756, 64)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (115,45, 7.9, 170942, 93)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (116,46, 7.5, 215728, 67)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (117,47, 7.7, 365053, 81)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (118,48, 7.8, 170752, 75)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (119,49, 7.3, 367065, 62)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (120,50, 8.0, 520979, 87)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (121,51, 8.1, NULL, 89)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (122,52, 7.3, 71711, 82)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (123,53, 8.1, 683194, 71)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (124,54, 7.3, 36927, 80)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (125,55, 7.2, 82026, 70)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (126,56, 8.2, 293750, 80)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (127,57, 8.6, 581476, 96)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (128,58, 8.5, 208196, 98)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (129,59, 7.7, 63901, 81)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (130,60, 8.0, 132619, 78)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (131,71, 7.4, 134795, 68)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (132,72, 8.7, 562561, 59)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (133,73, 8.6, 1159981, 90)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (134,74, 8.7, 1090018, 82)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (135,75, 8.3, 893110, 58)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (136,76, 8.8, 1558285, 92)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (137,77, 8.7, 1395935, 87)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (138,78, 8.9, 1546462, 94)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (139,79, 8.4, 306394, 76)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (140,80, 8.6, 114588, 96)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (141,81, 8.3, 617641, 84)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (142,82, 8.3, 217235, 86)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (143,83, 8.3, 132889, 100)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (144,84, 7.8, 348243, 91)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (145,85, 7.8, 334904, 71)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (146,86, 7.6, 432695, 63)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (147,87, 7.7, 160531, 86)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (148,88, 7.7, 410800, 78)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (149,89, 7.9, 422518, 76)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (150,90, 7.7, 583155, 95)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (151,91, 7.8, 397370, 71)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (152,92, 7.6, 158894, 76)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (153,93, 7.6, 180347, 66)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (154,94, 7.2, 198119, 61)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (155,95, 8.0, 648996, 76)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (156,96, 8.1, 751664, 75)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (157,97, NULL, 491930, 90)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (158,98, 8.1, 655033, 88)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (159,99, 7.8, 223859, 96)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (160,100, 7.8, 730822, 58)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (161,61, 7.8, 576512, 66)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (162,62, 7.4, 449715, 59)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (163,63, 7.9, 178947, 88)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (164,64, 7.8, 267159, 64)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (165,65, 7.7, 71534, 52)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (166,66, 7.3, 108649, 88)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (167,67, 7.4, 240927, 62)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (168,68, 7.9, 550273, 79)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (169,69, 7.8, 1071760, 83)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (170,70, 8.0, 762739, 86)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (171,101, 7.4, 167242, 76)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (172,102, 7.7, 632814, 81)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (173,103, 8.0, 432065, 67)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (174,104, 7.7, 450727, 76)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (175,105, 7.3, 277750, 70)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (176,106, 7.1, 338685, 72)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (177,107, 8.0, 412972, 84)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (178,108, 7.7, 372588, 72)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (179,109, 7.7, 729808, 96)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (180,110, 7.6, 46257, 79)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (181,71, 8.1, 811479, 90)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (182,72, 7.8, 299228, 84)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (183,73, 6.8, 396248, 57)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (184,74, 7.3, 566060, 50)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (185,75, 7.6, 559029, 59)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (186,76, 7.5, 402223, 48)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (187,77, 7.7, 559944, 60)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (188,78, 7.6, 507241, 66)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (189,79, 8.2, 741544, 72)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (190,80, 8.1, 807411, 68)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (191,111, 8.4, 835251, 85)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (192,112, 7.6, 419111, 57)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (193,113, 8.2, 652639, 65)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (194,114, 7.8, 443402, 57)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (195,115, 7.3, 206714, 68)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (196,116, 8.2, 272007, 69)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (197,117, 8.0, 399247, 49)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (198,118, 7.5, 128140, 93)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (199,119, 8.1, 164550, 94)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (200,120, 7.8, 486727, 73)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (201,121, 7.4, 93978, 87)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (202,122, 8.0, 980263, 63)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (203,123, 8.3, 67429, 81)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (204,124, 8.1, 247016, 77)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (205,125, 8.0, 216008, 90)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (206,126, 7.9, 127945, 94)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (207,127, 7.9, 321789, 100)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (208,128, 8.0, 405822, 81)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (209,129, 7.4, 511407, 84)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (210,130, 7.4, 503946, 59)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (211,81, 6.6, 403664, 61)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (212,82, 7.0, 464266, 54)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (213,83, 7.5, 233141, 69)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (214,84, 7.1, 125034, 81)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (215,85, 7.4, 489076, 68)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (216,86, 7.5, 325554, 75)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (217,87, 7.5, 204617, 73)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (218,88, 7.9, 562993, 82)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (219,89, 7.7, 451169, 72)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (220,90, 7.1, 215613, 68)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (221,131, 7.2, 808951, 68)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (222,132, 7.0, 325123, 72)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (223,133, 7.5, 290617, 83)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (224,134, 7.2, 222035, 75)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (225,135, 7.2, 90328, 79)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (225,135, 7.2, 90328, 79)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (226,136, 7.3, 331371, 87)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (227,137, 7.6, 480621, 68)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (228,138, 7.6, 397444, 79)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (229,139, 7.4, 211120, 82)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (230,140, 7.7, 107372, 86)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (231,141, 7.6, 97249, 68)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (232,142, 7.5, 29844, 68)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (233,143, 7.1, 3055, 59)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (234,144, 7.6, NULL, 80)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (235,145, 7.7, 22070, 88)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (236,146, 8.1, 48142, 73)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (237,147, 7.3, 313335, 65)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (238,148, 6.8, 23218, 94)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (239,149, 8.4, 738031, 89)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (240,150, 8.2, 249169, 86)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (241,91, 7.4, 27807, 71)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (242,92, 8.4, 937311, 95)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (243,93, 8.2, 875282, 88)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (244,94, 8.2, 561078, 94)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (245,95, 7.4, 84507, 69)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (246,96, 7.4, 202843, 67)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (247,97, 7.1, 63260, 36)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (248,98, 7.4, NULL, 49)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (249,99, 7.4, 301014, 33)

INSERT INTO Rating(MovieID, ReviewerID, ReviewStars, NumberOfRatings, Metascore)
VALUES (250,100, 8.2, 31755, 78)

GO

ALTER TABLE MoviesCast
WITH CHECK ADD CONSTRAINT FK_MoviesCast_Movies FOREIGN KEY(MovieID)
REFERENCES Movies(MovieID)
GO

ALTER TABLE MoviesCast
CHECK CONSTRAINT FK_MoviesCast_Movies
GO

ALTER TABLE MoviesCast
WITH CHECK ADD CONSTRAINT FK_MoviesCast_Actors FOREIGN KEY(ActorID)
REFERENCES Actors(ActorID)
GO

ALTER TABLE MoviesCast
CHECK CONSTRAINT FK_MoviesCast_Actors
GO

ALTER TABLE MoviesDirection
WITH CHECK ADD CONSTRAINT FK_MoviesDirection_Movies FOREIGN KEY(MovieID)
REFERENCES Movies(MovieID)
GO

ALTER TABLE MoviesDirection
CHECK CONSTRAINT FK_MoviesDirection_Movies
GO

ALTER TABLE MoviesDirection
WITH CHECK ADD CONSTRAINT FK_MoviesDirection_Directors FOREIGN KEY(DirectorID)
REFERENCES Directors(DirectorID)
GO

ALTER TABLE MoviesDirection
CHECK CONSTRAINT FK_MoviesDirection_Directors
GO

ALTER TABLE MoviesGenres
WITH CHECK ADD CONSTRAINT FK_MoviesGenres_Movies FOREIGN KEY(MovieID)
REFERENCES Movies(MovieID)
GO

ALTER TABLE MoviesGenres
CHECK CONSTRAINT FK_MoviesGenres_Movies
GO

ALTER TABLE MoviesGenres
WITH CHECK ADD CONSTRAINT FK_MoviesGenres_Genres FOREIGN KEY(GenreID)
REFERENCES Genres(GenreID)
GO

ALTER TABLE MoviesGenres
CHECK CONSTRAINT FK_MoviesGenres_Genres
GO

ALTER TABLE Rating
WITH CHECK ADD CONSTRAINT FK_Rating_Movies FOREIGN KEY(MovieID)
REFERENCES Movies(MovieID)
GO

ALTER TABLE Rating
CHECK CONSTRAINT FK_Rating_Movies
GO

ALTER TABLE Rating
WITH CHECK ADD CONSTRAINT FK_Rating_Reviewers FOREIGN KEY(ReviewerID)
REFERENCES Reviewers(ReviewerID)
GO

ALTER TABLE Rating
CHECK CONSTRAINT FK_Rating_Reviewers
GO

/*ALTER TABLE MoviesCast
DROP CONSTRAINT FK_MoviesCast_Actors

ALTER TABLE MoviesCast
DROP CONSTRAINT FK_MoviesCast_Movies

ALTER TABLE MoviesDirection
DROP CONSTRAINT FK_MoviesDirection_Directors

ALTER TABLE MoviesDirection
DROP CONSTRAINT FK_MoviesDirection_Movies

ALTER TABLE MoviesGenres
DROP CONSTRAINT FK_MoviesGenres_Genres

ALTER TABLE MoviesGenres
DROP CONSTRAINT FK_MoviesGenres_Movies

ALTER TABLE Rating
DROP CONSTRAINT FK_Rating_Reviewers

ALTER TABLE Rating
DROP CONSTRAINT FK_Rating_Movies

ALTER TABLE Reviewers
ALTER COLUMN ReviewerLastName VARCHAR(20) NULL */

UPDATE Reviewers
SET ReviewerFirstName = 'Robert'
WHERE ReviewerID = 67

UPDATE Directors
SET DirectorFirstName = 'Douglas'
WHERE DirectorID = 17

UPDATE Actors
SET ActorFirstName = 'Timothy'
WHERE ActorID = 141

UPDATE Actors
SET ActorFirstName = 'Taku'
WHERE ActorID = 293

UPDATE Genres
SET GenreTitle = 'Science fiction'
WHERE GenreID = 13

UPDATE MoviesCast
SET MovieRole = 'Dominick Cobb'
WHERE MovieID = 1 AND ActorID = 1

UPDATE Rating
SET Metascore = 40
WHERE MovieID = 7

UPDATE MoviesGenres
SET GenreID = 12
WHERE MovieID = 46

UPDATE Movies
SET MovieTime = 190
WHERE MovieID = 66




