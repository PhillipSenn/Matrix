set nocount on
set statistics time off
set statistics io off
SET ANSI_NULL_DFLT_OFF ON -- All columns default to NOT NULL
GO
if exists (select * from sysobjects where id = object_id(N'matrix.Vote') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE matrix.Vote
if exists (select * from sysobjects where id = object_id(N'matrix.Grid') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE matrix.Grid
if exists (select * from sysobjects where id = object_id(N'matrix.GridObj') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE matrix.GridObj
if exists (select * from sysobjects where id = object_id(N'matrix.GridReserved') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE matrix.GridReserved
if exists (select * from sysobjects where id = object_id(N'matrix.GridType') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE matrix.GridType
if exists (select * from sysobjects where id = object_id(N'matrix.Usage') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE matrix.Usage
if exists (select * from sysobjects where id = object_id(N'matrix.Usr') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE matrix.Usr
GO
CREATE table matrix.Usr(
UsrID Int Identity(10,1) Primary key nonclustered
,UsrEmail Varchar(128)
,UsrPass Varchar(128)
,UsrSuper Int default 0
)
GO
INSERT INTO matrix.Usr(UsrEmail,UsrPass,UsrSuper) VALUES('PhillipSenn@gmail.com','peggy',1)
GO
CREATE TABLE matrix.Usage(
UsageID Int Identity Primary Key
,UsageName Varchar(128)
,UsageDesc Varchar(128)
,UsageSort Int default 0
)
GO
INSERT INTO matrix.Usage(UsageName,UsageDesc,UsageSort) VALUES('1-Intro','Introduction',1)
INSERT INTO matrix.Usage(UsageName,UsageDesc,UsageSort) VALUES('2-Begin','Beginner',2)
INSERT INTO matrix.Usage(UsageName,UsageDesc,UsageSort) VALUES('3-Inter','Intermediate',3)
INSERT INTO matrix.Usage(UsageName,UsageDesc,UsageSort) VALUES('4-Adv','Advanced',4)
INSERT INTO matrix.Usage(UsageName,UsageDesc,UsageSort) VALUES('5-Int''l','International',5)
GO
CREATE TABLE matrix.GridType(
GridTypeID Int Identity(100,1) Primary Key
,GridTypeName Varchar(128) default ''
)
GO
INSERT INTO matrix.GridType(GridTypeName) VALUES('ASCII Matrix');
INSERT INTO matrix.GridType(GridTypeName) VALUES('JavaScript Matrix');
INSERT INTO matrix.GridType(GridTypeName) VALUES('HTML Matrix');
INSERT INTO matrix.GridType(GridTypeName) VALUES('Color Matrix');
INSERT INTO matrix.GridType(GridTypeName) VALUES('jQuery Matrix');
INSERT INTO matrix.GridType(GridTypeName) VALUES('jQuery UI Matrix');
INSERT INTO matrix.GridType(GridTypeName) VALUES('jQuery Mobile Matrix');
INSERT INTO matrix.GridType(GridTypeName) VALUES('SQL Server Matrix');
GO
CREATE TABLE matrix.GridReserved(
GridReservedID Int Identity(200,1) Primary Key
,GridReservedName Varchar(128) default ''
,GridReservedDesc Varchar(128) default ''
)
GO
SET Identity_Insert matrix.GridReserved ON
INSERT INTO matrix.GridReserved(GridReservedID,GridReservedName) VALUES(0,'');
SET Identity_Insert matrix.GridReserved OFF
INSERT INTO matrix.GridReserved(GridReservedName,GridReservedDesc) VALUES('Keyword','Keyword');
INSERT INTO matrix.GridReserved(GridReservedName,GridReservedDesc) VALUES('Future','Global Variable');
INSERT INTO matrix.GridReserved(GridReservedName,GridReservedDesc) VALUES('Strict','Strict mode Reserved word');
INSERT INTO matrix.GridReserved(GridReservedName,GridReservedDesc) VALUES('Identifier','Global Variable');
INSERT INTO matrix.GridReserved(GridReservedName,GridReservedDesc) VALUES('Java','Global Variable');
INSERT INTO matrix.GridReserved(GridReservedName,GridReservedDesc) VALUES('Global','Global Variable or Function');
INSERT INTO matrix.GridReserved(GridReservedName,GridReservedDesc) VALUES('Value','Special Value');
INSERT INTO matrix.GridReserved(GridReservedName,GridReservedDesc) VALUES('Object','Object');
INSERT INTO matrix.GridReserved(GridReservedName,GridReservedDesc) VALUES('Character','Character');
INSERT INTO matrix.GridReserved(GridReservedName,GridReservedDesc) VALUES('Property','Property');
INSERT INTO matrix.GridReserved(GridReservedName,GridReservedDesc) VALUES('Operator','Operators');
INSERT INTO matrix.GridReserved(GridReservedName,GridReservedDesc) VALUES('lexical','In the lexicon of words we use');
INSERT INTO matrix.GridReserved(GridReservedName,GridReservedDesc) VALUES('Constructors','Constructors (Page 43)');
GO
CREATE TABLE matrix.GridObj(
GridObjID Int Identity(300,1) Primary Key
,GridObjName Varchar(128) default ''
,GridObjDesc Varchar(128) default ''
)
GO
SET Identity_Insert matrix.GridObj ON
INSERT INTO matrix.GridObj(GridObjID,GridObjName) VALUES(0,'');
SET Identity_Insert matrix.GridObj OFF
INSERT INTO matrix.GridObj(GridObjName,GridObjDesc) VALUES('Math','The Math object');
INSERT INTO matrix.GridObj(GridObjName,GridObjDesc) VALUES('Date','The Date object');
INSERT INTO matrix.GridObj(GridObjName,GridObjDesc) VALUES('Number','The Number object');
INSERT INTO matrix.GridObj(GridObjName,GridObjDesc) VALUES('String','The String object');
INSERT INTO matrix.GridObj(GridObjName,GridObjDesc) VALUES('Object','Any Object');


GO
CREATE TABLE matrix.Grid(
GridID Int Identity(1000,1) Primary Key
,Grid_TypeID Int
,GridName nVarchar(128) default ''
,GridDesc Varchar(128) default ''
,GridSort Int default 0
,GridInfo Varchar(128) default '' -- More Info
,Grid_ReservedID Int default 0 -- Reserved word, keyword, global variable
,Grid_ObjID Int default 0 -- Math
,Example Varchar(128) default ''
)
GO
CREATE TABLE matrix.Vote(
VoteID Int Identity(100,1) Primary Key
,Vote_UsrID Int
,Vote_GridID Int
,Vote_UsageID Int
)
DECLARE @GridTypeID Int
SELECT @GridTypeID = GridTypeID FROM matrix.GridType
WHERE GridTypeName='ASCII Matrix'
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'NUL','&nbsp;','Null char')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'SOH','&nbsp;','Start of Heading')

INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'STX','&nbsp;','Start of Text')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'ETX','&nbsp;','End of Text')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'EOT','&nbsp;','End of Transmission')

INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'ENQ','&nbsp;','Enquiry')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'ACK','&nbsp;','Acknowledgment')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'BEL','&nbsp;','Bell')

INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,' BS','&nbsp;','Back Space')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,' HT','&nbsp;','Horizontal Tab')

INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,' LF','&nbsp;','Line Feed')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,' VT','&nbsp;','Vertical Tab')

INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,' FF','&nbsp;','Form Feed')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,' CR','&nbsp;','Carriage Return')

INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,' SO','&nbsp;','Shift Out / X-On')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,' SI','&nbsp;','Shift In / X-Off')

INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'DLE','&nbsp;','Data Line Escape')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'DC1','&nbsp;','Device Control 1 (oft. XON)')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'DC2','&nbsp;','Device Control 2')

INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'DC3','&nbsp;','Device Control 3 (oft. XOFF)')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'DC4','&nbsp;','Device Control 4')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'NAK','&nbsp;','Negative Acknowledgement')

INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'SYN','&nbsp;','Synchronous Idle')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'ETB','&nbsp;','End of Transmit Block')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'CAN','&nbsp;','Cancel')

INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,' EM','&nbsp;','End of Medium')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'SUB','&nbsp;','Substitute')

INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'ESC','&nbsp;','Escape')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,' FS','&nbsp;','File Separator')

INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,' GS','&nbsp;','Group Separator')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,' RS','&nbsp;','Record Separator')

INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,' US','&nbsp;','Unit Separator')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'&nbsp;','&nbsp;','Space')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'!','&nbsp;','Exclamation mark')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'"','&amp;quot;','Double quotes (or speech marks)')

INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'#','&nbsp;','Number')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'$','&nbsp;','Dollar')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'%','&nbsp;','Procenttecken')

INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'&amp;','&amp;amp;','Ampersand')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'''','&nbsp;','Single quote')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'(','&nbsp;','Open parenthesis (or open bracket)')

INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,')','&nbsp;','Close parenthesis (or close bracket)')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'*','&nbsp;','Asterisk')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'+','&nbsp;','Plus')

INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,',','&nbsp;','Comma')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'-','&nbsp;','Hyphen')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'.','&nbsp;','Period, dot or full stop')

INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'/','&nbsp;','Slash or divide')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'0','&nbsp;','Zero')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'1','&nbsp;','One')

INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'2','&nbsp;','Two')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'3','&nbsp;','Three')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'4','&nbsp;','Four')

INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'5','&nbsp;','Five')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'6','&nbsp;','Six')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'7','&nbsp;','Seven')

INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'8','&nbsp;','Eight')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'9','&nbsp;','Nine')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,':','&nbsp;','Colon')

INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,';','&nbsp;','Semicolon')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'<','&amp;lt;','Less than (or open angled bracket)')

INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'=','&nbsp;','Equals')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'>','&amp;gt;','Greater than (or close angled bracket)')

INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'?','&nbsp;','Question mark')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'@','&nbsp;','At symbol')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'A','&nbsp;','Uppercase A')

INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'B','&nbsp;','Uppercase B')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'C','&nbsp;','Uppercase C')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'D','&nbsp;','Uppercase D')

INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'E','&nbsp;','Uppercase E')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'F','&nbsp;','Uppercase F')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'G','&nbsp;','Uppercase G')

INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'H','&nbsp;','Uppercase H')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'I','&nbsp;','Uppercase I')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'J','&nbsp;','Uppercase J')

INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'K','&nbsp;','Uppercase K')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'L','&nbsp;','Uppercase L')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'M','&nbsp;','Uppercase M')

INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'N','&nbsp;','Uppercase N')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'O','&nbsp;','Uppercase O')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'P','&nbsp;','Uppercase P')

INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'Q','&nbsp;','Uppercase Q')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'R','&nbsp;','Uppercase R')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'S','&nbsp;','Uppercase S')

INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'T','&nbsp;','Uppercase T')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'U','&nbsp;','Uppercase U')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'V','&nbsp;','Uppercase V')

INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'W','&nbsp;','Uppercase W')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'X','&nbsp;','Uppercase X')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'Y','&nbsp;','Uppercase Y')

INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'Z','&nbsp;','Uppercase Z')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'[','&nbsp;','Opening bracket')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'\','&nbsp;','Backslash')

INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,']','&nbsp;','Closing bracket')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'^','&nbsp;','Caret - circumflex')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'_','&nbsp;','Underscore')

INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'`','&nbsp;','Grave accent')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'a','&nbsp;','Lowercase a')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'b','&nbsp;','Lowercase b')

INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'c','&nbsp;','Lowercase c')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'d','&nbsp;','Lowercase d')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'e','&nbsp;','Lowercase e')

INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'f','&nbsp;','Lowercase f')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'g','&nbsp;','Lowercase g')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'h','&nbsp;','Lowercase h')

INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'i','&nbsp;','Lowercase i')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'j','&nbsp;','Lowercase j')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'k','&nbsp;','Lowercase k')

INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'l','&nbsp;','Lowercase l')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'m','&nbsp;','Lowercase m')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'n','&nbsp;','Lowercase n')

INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'o','&nbsp;','Lowercase o')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'p','&nbsp;','Lowercase p')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'q','&nbsp;','Lowercase q')

INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'r','&nbsp;','Lowercase r')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'s','&nbsp;','Lowercase s')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'t','&nbsp;','Lowercase t')

INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'u','&nbsp;','Lowercase u')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'v','&nbsp;','Lowercase v')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'w','&nbsp;','Lowercase w')

INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'x','&nbsp;','Lowercase x')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'y','&nbsp;','Lowercase y')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'z','&nbsp;','Lowercase z')

INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'{','&nbsp;','Opening brace')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'|','&nbsp;','Vertical bar')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'}','&nbsp;','Closing brace')

INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'~','&nbsp;','Equivalency sign - tilde')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'','&nbsp;','Delete')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'&#128;','&amp;euro;','Euro sign')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'&nbsp;','&nbsp;','&nbsp;')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'&#130;','&amp;sbquo;','Single low-9 quotation mark')

INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'&#131;','&amp;fnof;','Latin small letter f with hook')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'&#132;','&amp;bdquo;','Double low-9 quotation mark')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'&#133;','&amp;hellip;','Horizontal ellipsis')

INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'&#134;','&amp;dagger;','Dagger')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'&#135;','&amp;Dagger;','Double dagger')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'&#136;','&amp;circ;','Modifier letter circumflex accent')

INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'&#137;','&amp;permil;','Per mille sign')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'&#138;','&amp;Scaron;','Latin capital letter S with caron')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'&#139;','&amp;lsaquo;','Single left-pointing angle quotation')

INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'&#140;','&amp;OElig;','Latin capital ligature OE')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'&nbsp;','&nbsp;','&nbsp;')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'&#142;','&nbsp;','Latin captial letter Z with caron')

INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'&nbsp;','&nbsp;','&nbsp;')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'&nbsp;','&nbsp;','&nbsp;')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'&#145;','&amp;lsquo;','Left single quotation mark')

INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'&#146;','&amp;rsquo;','Right single quotation mark')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'&#147;','&amp;ldquo;','Left double quotation mark')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'&#148;','&amp;rdquo;','Right double quotation mark')

INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'&#149;','&amp;bull;','Bullet')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'&#150;','&amp;ndash;','En dash')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'&#151;','&amp;mdash;','Em dash')

INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'&#152;','&amp;tilde;','Small tilde')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'&#153;','&amp;trade;','Trade mark sign')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'&#154;','&amp;scaron;','Latin small letter S with caron')

INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'&#155;','&amp;rsaquo; ','Single right-pointing angle quotation mark')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'&#156;','&amp;oelig;','Latin small ligature oe')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'&nbsp;','&nbsp;','&nbsp;')

INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'&#158;','&nbsp;','Latin small letter z with caron')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'&#159;','&amp;yuml;','Latin capital letter Y with diaeresis')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'&nbsp;','&amp;nbsp;','Non-breaking space')

INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'¡','&amp;iexcl;','Inverted exclamation mark')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'¢','&amp;cent;','Cent sign')

INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'£','&amp;pound;','Pound sign')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'¤','&amp;curren;','Currency sign')

INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'¥','&amp;yen;','Yen sign')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'¦','&amp;brvbar;','Pipe, Broken vertical bar')

INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'§','&amp;sect;','Section sign')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'¨','&amp;uml;','Spacing diaeresis - umlaut')

INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'©','&amp;copy;','Copyright sign')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'ª','&amp;ordf;','Feminine ordinal indicator')

INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'«','&amp;laquo;','Left double angle quotes')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'¬','&amp;not;','Not sign')

INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'­','&amp;shy;','Soft hyphen')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'®','&amp;reg;','Registered trade mark sign')

INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'¯','&amp;macr;','Spacing macron - overline')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'°','&amp;deg;','Degree sign')

INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'±','&amp;plusmn;','Plus-or-minus sign')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'²','&amp;sup2;','Superscript two - squared')

INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'³','&amp;sup3;','Superscript three - cubed')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'´','&amp;acute;','Acute accent - spacing acute')

INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'µ','&amp;micro;','Micro sign')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'¶','&amp;para;','Pilcrow sign - paragraph sign')

INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'·','&amp;middot;','Middle dot - Georgian comma')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'¸','&amp;cedil;','Spacing cedilla')

INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'¹','&amp;sup1;','Superscript one')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'º','&amp;ordm;','Masculine ordinal indicator')

INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'»','&amp;raquo;','Right double angle quotes')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'¼','&amp;frac14;','Fraction one quarter')

INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'½','&amp;frac12;','Fraction one half')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'¾','&amp;frac34;','Fraction three quarters')

INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'¿','&amp;iquest;','Inverted question mark')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'À','&amp;Agrave;','Latin capital letter A with grave')

INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'Á','&amp;Aacute;','Latin capital letter A with acute')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'Â','&amp;Acirc;','Latin capital letter A with circumflex')

INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'Ã','&amp;Atilde;','Latin capital letter A with tilde')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'Ä','&amp;Auml;','Latin capital letter A with diaeresis')

INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'Å','&amp;Aring;','Latin capital letter A with ring above')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'Æ','&amp;AElig;','Latin capital letter AE')

INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'Ç','&amp;Ccedil;','Latin capital letter C with cedilla')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'È','&amp;Egrave;','Latin capital letter E with grave')

INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'É','&amp;Eacute;','Latin capital letter E with acute')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'Ê','&amp;Ecirc;','Latin capital letter E with circumflex')

INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'Ë','&amp;Euml;','Latin capital letter E with diaeresis')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'Ì','&amp;Igrave;','Latin capital letter I with grave')

INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'Í','&amp;Iacute;','Latin capital letter I with acute')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'Î','&amp;Icirc;','Latin capital letter I with circumflex')

INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'Ï','&amp;Iuml;','Latin capital letter I with diaeresis')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'Ð','&amp;ETH;','Latin capital letter ETH')

INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'Ñ','&amp;Ntilde;','Latin capital letter N with tilde')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'Ò','&amp;Ograve;','Latin capital letter O with grave')

INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'Ó','&amp;Oacute;','Latin capital letter O with acute')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'Ô','&amp;Ocirc;','Latin capital letter O with circumflex')

INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'Õ','&amp;Otilde;','Latin capital letter O with tilde')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'Ö','&amp;Ouml;','Latin capital letter O with diaeresis')

INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'×','&amp;times;','Multiplication sign')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'Ø','&amp;Oslash;','Latin capital letter O with slash')

INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'Ù','&amp;Ugrave;','Latin capital letter U with grave')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'Ú','&amp;Uacute;','Latin capital letter U with acute')

INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'Û','&amp;Ucirc;','Latin capital letter U with circumflex')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'Ü','&amp;Uuml;','Latin capital letter U with diaeresis')

INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'Ý','&amp;Yacute;','Latin capital letter Y with acute')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'Þ','&amp;THORN;','Latin capital letter THORN')

INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'ß','&amp;szlig;','Latin small letter sharp s - ess-zed')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'à','&amp;agrave;','Latin small letter a with grave')

INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'á','&amp;aacute;','Latin small letter a with acute')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'â','&amp;acirc;','Latin small letter a with circumflex')

INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'ã','&amp;atilde;','Latin small letter a with tilde')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'ä','&amp;auml;','Latin small letter a with diaeresis')

INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'å','&amp;aring;','Latin small letter a with ring above')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'æ','&amp;aelig;','Latin small letter ae')

INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'ç','&amp;ccedil;','Latin small letter c with cedilla')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'è','&amp;egrave;','Latin small letter e with grave')

INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'é','&amp;eacute;','Latin small letter e with acute')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'ê','&amp;ecirc;','Latin small letter e with circumflex')

INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'ë','&amp;euml;','Latin small letter e with diaeresis')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'ì','&amp;igrave;','Latin small letter i with grave')

INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'í','&amp;iacute;','Latin small letter i with acute')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'î','&amp;icirc;','Latin small letter i with circumflex')

INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'ï','&amp;iuml;','Latin small letter i with diaeresis')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'ð','&amp;eth;','Latin small letter eth')

INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'ñ','&amp;ntilde;','Latin small letter n with tilde')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'ò','&amp;ograve;','Latin small letter o with grave')

INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'ó','&amp;oacute;','Latin small letter o with acute')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'ô','&amp;ocirc;','Latin small letter o with circumflex')

INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'õ','&amp;otilde;','Latin small letter o with tilde')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'ö','&amp;ouml;','Latin small letter o with diaeresis')

INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'÷','&amp;divide;','Division sign')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'ø','&amp;oslash;','Latin small letter o with slash')

INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'ù','&amp;ugrave;','Latin small letter u with grave')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'ú','&amp;uacute;','Latin small letter u with acute')

INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'û','&amp;ucirc;','Latin small letter u with circumflex')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'ü','&amp;uuml;','Latin small letter u with diaeresis')

INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'ý','&amp;yacute;','Latin small letter y with acute')
INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'þ','&amp;thorn;','Latin small letter thorn')

INSERT INTO matrix.Grid(Grid_TypeID,GridName,GridInfo,GridDesc) VALUES(@GridTypeID,'ÿ','&amp;yuml;','Latin small letter y with diaeresis')
UPDATE matrix.Grid
SET GridSort=GridID-1000

--
-- Views
--
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'matrix.GridView'))
DROP View matrix.GridView
GO
CREATE View matrix.GridView AS
SELECT
Grid.*
,GridType.*
,GridReserved.*
,GridObj.*
FROM matrix.Grid
JOIN matrix.GridType
ON Grid_TypeID = GridTypeID
JOIN matrix.GridReserved
ON Grid_ReservedID=GridReservedID
JOIN matrix.GridObj
ON Grid_ObjID = GridObjID
GO

IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'matrix.UsageView'))
DROP View matrix.UsageView
GO
CREATE View matrix.UsageView AS
SELECT *
FROM matrix.Usage
GO

IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'matrix.VoteView'))
DROP View matrix.VoteView
GO
CREATE View matrix.VoteView AS
SELECT
Vote.*
,Usr.*
,GridView.*
,Usage.*
FROM matrix.Vote
JOIN matrix.Usr
ON Vote_UsrID = UsrID
JOIN matrix.GridView
ON Vote_GridID = GridID
JOIN matrix.Usage
ON Vote_UsageID = UsageID
GO

DECLARE @UsrID Int
DECLARE @UsageID Int
SELECT @UsrID = UsrID FROM matrix.Usr WHERE UsrEmail='PhillipSenn@gmail.com'
SELECT @UsageID = UsageID FROM matrix.Usage WHERE UsageDesc='Introduction'
INSERT INTO matrix.Vote(Vote_UsrID,Vote_GridID,Vote_UsageID)
SELECT @UsrID,GridID,@UsageID FROM matrix.GridView
WHERE GridSort BETWEEN 65 AND 90
AND GridTypeName='ASCII Matrix'

SELECT @UsageID = UsageID FROM matrix.Usage WHERE UsageDesc='Beginner'
INSERT INTO matrix.Vote(Vote_UsrID,Vote_GridID,Vote_UsageID)
SELECT @UsrID,GridID,@UsageID FROM matrix.GridView 
WHERE (GridSort BETWEEN 32 AND 64)
	OR (GridSort BETWEEN 91 AND 126)
AND GridTypeName='ASCII Matrix'

SELECT @UsageID = UsageID FROM matrix.Usage WHERE UsageDesc='Intermediate'
INSERT INTO matrix.Vote(Vote_UsrID,Vote_GridID,Vote_UsageID)
SELECT @UsrID,GridID,@UsageID FROM matrix.GridView 
WHERE GridSort BETWEEN 0 AND 31
AND GridTypeName='ASCII Matrix'

SELECT @UsageID = UsageID FROM matrix.Usage WHERE UsageDesc='Advanced'
INSERT INTO matrix.Vote(Vote_UsrID,Vote_GridID,Vote_UsageID)
SELECT @UsrID,GridID,@UsageID FROM matrix.GridView
WHERE GridSort BETWEEN 127 AND 190
AND GridTypeName='ASCII Matrix'

SELECT @UsageID = UsageID FROM matrix.Usage WHERE UsageDesc='International'
INSERT INTO matrix.Vote(Vote_UsrID,Vote_GridID,Vote_UsageID)
SELECT @UsrID,GridID,@UsageID FROM matrix.GridView 
WHERE GridSort > 190
AND GridTypeName='ASCII Matrix'
GO
/*
DECLARE @ChapterID Int
INSERT INTO matrix.Chapter(ChapterName) VALUES('jQuery Questions');
SELECT @ChapterID = Scope_Identity()
INSERT INTO matrix.Question(Question_ChapterID,QuestionName,QuestionDesc) VALUES(@ChapterID
	,'The JavaScript Console'
	,'How do you print Hello World! to the console?')
SELECT @QuestionID=Scope_Identity()
INSERT INTO matrix.Answer(Answer_QuestionID,AnswerName,Correct) VALUES(@QuestionID,'console.log("Hello World!");',1)
INSERT INTO matrix.Answer(Answer_QuestionID,AnswerName) VALUES(@QuestionID,'log("Hello World!");')
INSERT INTO matrix.Answer(Answer_QuestionID,AnswerName) VALUES(@QuestionID,'PRINT("Hello World!");')
INSERT INTO matrix.Answer(Answer_QuestionID,AnswerName) VALUES(@QuestionID,'Console.Log("Hello World!");')
*/
GO
DECLARE @GridTypeID Int
DECLARE @GridReservedID Int
DECLARE @GridObjID Int
SELECT @GridTypeID = GridTypeID FROM matrix.GridType
WHERE GridTypeName='JavaScript Matrix'
SELECT @GridReservedID = GridReservedID FROM matrix.GridReserved
WHERE GridReservedName='Keyword'
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'break')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'case')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'catch')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'continue')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'debugger')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'default')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'delete')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'do')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'else')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'false')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'finally')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'for')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'function')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'if')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'in')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'instanceof')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'new')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'null')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'return')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'switch')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'this')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'throw')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'true')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'try')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'typeof')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'var')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'void')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'while')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'with')
SELECT @GridReservedID = GridReservedID FROM matrix.GridReserved
WHERE GridReservedName='Future'
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'class')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'const')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'enum')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'export')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'extends')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'import')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'super')
SELECT @GridReservedID = GridReservedID FROM matrix.GridReserved
WHERE GridReservedName='Strict'
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'implements')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'interface')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'let')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'package')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'private')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'protected')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'public')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'static')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'yield')
SELECT @GridReservedID = GridReservedID FROM matrix.GridReserved
WHERE GridReservedName='Identifier'
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'arguments')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'eval')
SELECT @GridReservedID = GridReservedID FROM matrix.GridReserved
WHERE GridReservedName='Java'
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'abstract')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'boolean')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'byte')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'char')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'class')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'const')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'double')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'enum')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'export')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'extends')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'final')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'float')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'goto')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'implements')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'import')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'int')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'interface')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'long')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'native')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'package')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'private')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'protected')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'public')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'short')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'static')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'super')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'synchronized')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'throws')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'transient')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'volatile')
SELECT @GridReservedID = GridReservedID FROM matrix.GridReserved
WHERE GridReservedName='Global'
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'arguments')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'Array')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'Boolean')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'Date')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'decodeURI')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'decodeURIComponent')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'encodeURI')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'encodeURIComponent')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'Error')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'eval')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'EvalError')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'Function')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'Infinity')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'isFinite')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'isNaN')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'JSON')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'Math')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'NaN')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'Number')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'Object')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'parseFloat')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'parseInt')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'RangeError')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'ReferenceError')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'RegExp')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'String')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'SyntaxError')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'TypeError')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'undefined')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'URIError')
SELECT @GridReservedID = GridReservedID FROM matrix.GridReserved
WHERE GridReservedName='Value'
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'null')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'undefined')
SELECT @GridReservedID = GridReservedID FROM matrix.GridReserved
WHERE GridReservedName=''
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName,GridDesc) VALUES(@GridTypeID,@GridReservedID,'9007199254740992'
,'64 bit floating point maximum')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName,GridDesc) VALUES(@GridTypeID,@GridReservedID,'-9007199254740992'
,'64 bit floating point maximum')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName,GridDesc) VALUES(@GridTypeID,@GridReservedID,'-2147483648'
,'32 bit integer maximum')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName,GridDesc) VALUES(@GridTypeID,@GridReservedID,'2147483647'
,'32 bit integer maximum')


SELECT @GridReservedID = GridReservedID FROM matrix.GridReserved
WHERE GridReservedName='Object'
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'Math')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'Number')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'Date')
SELECT @GridObjID = GridObjID FROM matrix.GridObj
WHERE GridObjName='Math'
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ObjID,GridName) VALUES(@GridTypeID,@GridObjID,'pow')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ObjID,GridName) VALUES(@GridTypeID,@GridObjID,'round')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ObjID,GridName) VALUES(@GridTypeID,@GridObjID,'ceil')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ObjID,GridName) VALUES(@GridTypeID,@GridObjID,'floor')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ObjID,GridName) VALUES(@GridTypeID,@GridObjID,'abs')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ObjID,GridName) VALUES(@GridTypeID,@GridObjID,'max')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ObjID,GridName) VALUES(@GridTypeID,@GridObjID,'min')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ObjID,GridName) VALUES(@GridTypeID,@GridObjID,'random')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ObjID,GridName) VALUES(@GridTypeID,@GridObjID,'PI')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ObjID,GridName) VALUES(@GridTypeID,@GridObjID,'E')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ObjID,GridName) VALUES(@GridTypeID,@GridObjID,'sqrt')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ObjID,GridName) VALUES(@GridTypeID,@GridObjID,'pow')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ObjID,GridName) VALUES(@GridTypeID,@GridObjID,'sin')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ObjID,GridName) VALUES(@GridTypeID,@GridObjID,'log')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ObjID,GridName) VALUES(@GridTypeID,@GridObjID,'exp')

SELECT @GridObjID = GridObjID FROM matrix.GridObj
WHERE GridObjName='Date'
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ObjID,GridName) VALUES(@GridTypeID,@GridObjID,'getFullYear')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ObjID,GridName) VALUES(@GridTypeID,@GridObjID,'getMonth')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ObjID,GridName) VALUES(@GridTypeID,@GridObjID,'getDate')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ObjID,GridName) VALUES(@GridTypeID,@GridObjID,'getDay')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ObjID,GridName) VALUES(@GridTypeID,@GridObjID,'getHours')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ObjID,GridName) VALUES(@GridTypeID,@GridObjID,'getUTCHours')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ObjID,GridName) VALUES(@GridTypeID,@GridObjID,'toString')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ObjID,GridName) VALUES(@GridTypeID,@GridObjID,'toUTCString')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ObjID,GridName) VALUES(@GridTypeID,@GridObjID,'toLocaleDateString')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ObjID,GridName) VALUES(@GridTypeID,@GridObjID,'toLocaleTimeString')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ObjID,GridName) VALUES(@GridTypeID,@GridObjID,'toISOString')

SELECT @GridObjID = GridObjID FROM matrix.GridObj
WHERE GridObjName='Number'
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ObjID,GridName) VALUES(@GridTypeID,@GridObjID,'toString')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ObjID,GridName) VALUES(@GridTypeID,@GridObjID,'toFixed')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ObjID,GridName) VALUES(@GridTypeID,@GridObjID,'toExponential')

SELECT @GridReservedID = GridReservedID FROM matrix.GridReserved
WHERE GridReservedName='Character'
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName,GridDesc) VALUES(@GridTypeID,@GridReservedID,'\0','The nul character')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName,GridDesc) VALUES(@GridTypeID,@GridReservedID,'\b','Backspace')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName,GridDesc) VALUES(@GridTypeID,@GridReservedID,'\t','Horizontal tab')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName,GridDesc) VALUES(@GridTypeID,@GridReservedID,'\n','Newline')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName,GridDesc) VALUES(@GridTypeID,@GridReservedID,'\v','Vertical tab')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName,GridDesc) VALUES(@GridTypeID,@GridReservedID,'\f','Form feed')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName,GridDesc) VALUES(@GridTypeID,@GridReservedID,'\r','Carriage Return')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName,GridDesc) VALUES(@GridTypeID,@GridReservedID,'\"','Double quote')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName,GridDesc) VALUES(@GridTypeID,@GridReservedID,'\''','Apostrophe')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName,GridDesc) VALUES(@GridTypeID,@GridReservedID,'\\','Backslash')


SELECT @GridReservedID = GridReservedID FROM matrix.GridReserved
WHERE GridReservedName='Property'
SELECT @GridObjID = GridObjID FROM matrix.GridObj
WHERE GridObjName='String'
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ObjID,Grid_ReservedID,GridName,GridDesc) VALUES(@GridTypeID,@GridObjID,@GridReservedID,'length','')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ObjID,Grid_ReservedID,GridName,GridDesc) VALUES(@GridTypeID,@GridObjID,@GridReservedID,'charAT','')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ObjID,Grid_ReservedID,GridName,GridDesc) VALUES(@GridTypeID,@GridObjID,@GridReservedID,'substring','')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ObjID,Grid_ReservedID,GridName,GridDesc) VALUES(@GridTypeID,@GridObjID,@GridReservedID,'slice','')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ObjID,Grid_ReservedID,GridName,GridDesc) VALUES(@GridTypeID,@GridObjID,@GridReservedID,'indexOf','')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ObjID,Grid_ReservedID,GridName,GridDesc) VALUES(@GridTypeID,@GridObjID,@GridReservedID,'lastIndexOf','')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ObjID,Grid_ReservedID,GridName,GridDesc) VALUES(@GridTypeID,@GridObjID,@GridReservedID,'split','')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ObjID,Grid_ReservedID,GridName,GridDesc) VALUES(@GridTypeID,@GridObjID,@GridReservedID,'replace','')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ObjID,Grid_ReservedID,GridName,GridDesc) VALUES(@GridTypeID,@GridObjID,@GridReservedID,'toUpperCase','')


SELECT @GridReservedID = GridReservedID FROM matrix.GridReserved
WHERE GridReservedName='Object'
SELECT @GridObjID = GridObjID FROM matrix.GridObj
WHERE GridObjName='Object'
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ObjID,Grid_ReservedID,GridName,GridDesc) VALUES(@GridTypeID,@GridObjID,@GridReservedID,'toString','"[object Object]"')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ObjID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridObjID,@GridReservedID,'valueOf')

SELECT @GridReservedID = GridReservedID FROM matrix.GridReserved
WHERE GridReservedName='Operator'
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName,GridDesc) VALUES(@GridTypeID,@GridReservedID,'&&','Boolean AND operation')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName,GridDesc) VALUES(@GridTypeID,@GridReservedID,'+','')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName,GridDesc) VALUES(@GridTypeID,@GridReservedID,'-','')

INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName,GridDesc) VALUES(@GridTypeID,@GridReservedID,'*','')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName,GridDesc) VALUES(@GridTypeID,@GridReservedID,'/','')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName,GridDesc) VALUES(@GridTypeID,@GridReservedID,'%','')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName,GridDesc) VALUES(@GridTypeID,@GridReservedID,'<<','Shift left')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName,GridDesc) VALUES(@GridTypeID,@GridReservedID,'>>','Shift right')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName,GridDesc) VALUES(@GridTypeID,@GridReservedID,'>>>','Shift right with zero extension')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName,GridDesc) VALUES(@GridTypeID,@GridReservedID,'instanceof','')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName,GridDesc) VALUES(@GridTypeID,@GridReservedID,'in','')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName,GridDesc) VALUES(@GridTypeID,@GridReservedID,'!==','')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName,GridDesc) VALUES(@GridTypeID,@GridReservedID,'&','')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName,GridDesc) VALUES(@GridTypeID,@GridReservedID,'^','Exclusive OR')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName,GridDesc) VALUES(@GridTypeID,@GridReservedID,'|','OR')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName,GridDesc) VALUES(@GridTypeID,@GridReservedID,'||','')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName,GridDesc) VALUES(@GridTypeID,@GridReservedID,'?:','ternary')

INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName,GridDesc) VALUES(@GridTypeID,@GridReservedID,'*=','a*=b === a = a * b')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName,GridDesc) VALUES(@GridTypeID,@GridReservedID,'/=','a/=b === a = a / b')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName,GridDesc) VALUES(@GridTypeID,@GridReservedID,'%=','')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName,GridDesc) VALUES(@GridTypeID,@GridReservedID,'+=','')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName,GridDesc) VALUES(@GridTypeID,@GridReservedID,'-=','')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName,GridDesc) VALUES(@GridTypeID,@GridReservedID,'&=','')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName,GridDesc) VALUES(@GridTypeID,@GridReservedID,'^=','')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName,GridDesc) VALUES(@GridTypeID,@GridReservedID,'|=','')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName,GridDesc) VALUES(@GridTypeID,@GridReservedID,'<<=','')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName,GridDesc) VALUES(@GridTypeID,@GridReservedID,'>>=','')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName,GridDesc) VALUES(@GridTypeID,@GridReservedID,'>>>=','')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName,GridDesc) VALUES(@GridTypeID,@GridReservedID,'==','')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName,GridDesc) VALUES(@GridTypeID,@GridReservedID,'===','')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName,GridDesc) VALUES(@GridTypeID,@GridReservedID,'!','NOT')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName,GridDesc) VALUES(@GridTypeID,@GridReservedID,'!=','')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName,GridDesc) VALUES(@GridTypeID,@GridReservedID,'<','')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName,GridDesc) VALUES(@GridTypeID,@GridReservedID,'<=','')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName,GridDesc) VALUES(@GridTypeID,@GridReservedID,'>','')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName,GridDesc) VALUES(@GridTypeID,@GridReservedID,'>=','')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName,GridDesc) VALUES(@GridTypeID,@GridReservedID,'++','')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName,GridDesc) VALUES(@GridTypeID,@GridReservedID,'--','')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName,GridDesc) VALUES(@GridTypeID,@GridReservedID,',','Evaluates both sides and returns the right')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName,GridDesc) VALUES(@GridTypeID,@GridReservedID,'{}','Declare an object')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName,GridDesc) VALUES(@GridTypeID,@GridReservedID,'[]','Declare an array')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName,GridDesc) VALUES(@GridTypeID,@GridReservedID,'~','Invert bits')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName,GridDesc) VALUES(@GridTypeID,@GridReservedID,'typeof','typeof undefined returns "undefined"')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName,GridDesc) VALUES(@GridTypeID,@GridReservedID,'delete','')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName,GridDesc) VALUES(@GridTypeID,@GridReservedID,'void','')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName,GridDesc) VALUES(@GridTypeID,@GridReservedID,'self','Naming convention to cache the "this" variable.')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName,GridDesc) VALUES(@GridTypeID,@GridReservedID,'!!','Convention to cast a value as a Boolean.')

SELECT @GridReservedID = GridReservedID FROM matrix.GridReserved
WHERE GridReservedName='lexical'
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName,GridDesc) VALUES(@GridTypeID,@GridReservedID,'falsey','null,undefined,false,0,-0,NaN,""')


SELECT @GridReservedID = GridReservedID FROM matrix.GridReserved
WHERE GridReservedName='Constructors'
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'String')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'Number')
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'Boolean')

SELECT @GridReservedID = GridReservedID FROM matrix.GridReserved
WHERE GridReservedName='Global'
INSERT INTO matrix.Grid(Grid_TypeID,Grid_ReservedID,GridName) VALUES(@GridTypeID,@GridReservedID,'eval')
















select * 
from matrix.GridView
order by GridID DESC
