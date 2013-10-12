-- create schema matrix
set nocount on
set statistics time off
set statistics io off
SET ANSI_NULL_DFLT_OFF ON -- All columns default to NOT NULL
GO
if exists (select * from sysobjects where id = object_id(N'matrix.Vote') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE matrix.Vote
if exists (select * from sysobjects where id = object_id(N'matrix.spark') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE matrix.spark
if exists (select * from sysobjects where id = object_id(N'matrix.Usr') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE matrix.Usr
GO
CREATE table matrix.Usr(
UsrID Int Identity Primary key nonclustered
,UsrName Varchar(128)
,UsrPass Varchar(128)
)
GO
CREATE table matrix.spark(
SparkID Int Identity(10,1) Primary key nonclustered
,SparkName Varchar(128)
)
GO
CREATE UNIQUE CLUSTERED INDEX SparkName on matrix.spark(SparkName)
GO
--INSERT INTO matrix.Spark(SparkName) VALUES('66')
--INSERT INTO matrix.Spark(SparkName) VALUES('67')
--INSERT INTO matrix.Spark(SparkName) VALUES('68')
--GO
CREATE table matrix.Vote(
VoteID Int Identity Primary key nonclustered
,Vote_UsrID Int default 0
,Vote_SparkID Int
,VoteLevel Int default 1
)
GO
CREATE UNIQUE CLUSTERED INDEX UsrSparkID on matrix.Vote(Vote_UsrID,Vote_SparkID)
GO
--INSERT INTO matrix.Vote(Vote_UsrID,Vote_SparkID,VoteLevel) VALUES(1,10,1)
--INSERT INTO matrix.Vote(Vote_UsrID,Vote_SparkID,VoteLevel) VALUES(1,11,2)
--INSERT INTO matrix.Vote(Vote_UsrID,Vote_SparkID,VoteLevel) VALUES(1,12,3)
--
-- Views
--
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'matrix.VoteView'))
DROP View matrix.VoteView
GO
CREATE View matrix.VoteView AS
SELECT
Vote.*
,Spark.*
,Usr.*
FROM matrix.Vote
JOIN matrix.Spark
ON Vote_SparkID = SparkID
JOIN matrix.Usr
ON Vote_UsrID = UsrID
GO
select * from matrix.VoteView
select * from matrix.Spark
select * from matrix.Usr
