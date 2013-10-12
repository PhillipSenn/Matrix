-- create schema matrix authorization dbo
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'matrix' AND TABLE_NAME='Menu')
drop table matrix.Menu
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'matrix' AND TABLE_NAME='W')
drop table matrix.W -- Which matrix is this?
GO
CREATE TABLE matrix.W(
WID Int Identity(100,1) Constraint WID Primary Key NONCLUSTERED,
WName Varchar(128) Constraint WName default '',
WSort Int Constraint WSort default 0
)
GO
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.VIEWS WHERE TABLE_SCHEMA = 'matrix' AND TABLE_NAME='WView')
DROP View matrix.WView
GO
CREATE View matrix.WView AS
SELECT *
FROM matrix.W
GO

CREATE TABLE matrix.Menu(
MenuID Int Identity(1000,1) Constraint MenuID Primary Key NONCLUSTERED,
Menu_WID Int default 0,
MenuName Varchar(128) Constraint MenuName default '',
MenuDesc Varchar(128) Constraint MenuDesc default '',
MenuSort Int Constraint MenuSort default 0,
MenuInfo Varchar(128) Constraint MenuInfo default '' -- Usually the url to an example
)
GO
CREATE CLUSTERED INDEX WID ON matrix.Menu(Menu_WID);
GO
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.VIEWS WHERE TABLE_SCHEMA = 'matrix' AND TABLE_NAME='MenuView')
DROP View matrix.MenuView
GO
CREATE View matrix.MenuView AS
SELECT Menu.*
,W.*
FROM matrix.Menu
JOIN matrix.W
ON Menu_WID = WID
GO
DECLARE @WID INT
INSERT INTO matrix.W(WName,WSort) VALUES('ASCII',0)
SELECT @WID=SCOPE_IDENTITY()
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,0,'NUL','&nbsp;','Null char');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,1,'SOH','&nbsp;','Start of Heading');

INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,2,'STX','&nbsp;','Start of Text');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,3,'ETX','&nbsp;','End of Text');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,4,'EOT','&nbsp;','End of Transmission');

INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,5,'ENQ','&nbsp;','Enquiry');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,6,'ACK','&nbsp;','Acknowledgment');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,7,'BEL','&nbsp;','Bell');

INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,8,' BS','&nbsp;','Back Space');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,9,' HT','&nbsp;','Horizontal Tab');

INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,10,' LF','&nbsp;','Line Feed');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,11,' VT','&nbsp;','Vertical Tab');

INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,12,' FF','&nbsp;','Form Feed');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,13,' CR','&nbsp;','Carriage Return');

INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,14,' SO','&nbsp;','Shift Out / X-On');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,15,' SI','&nbsp;','Shift In / X-Off');

INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,16,'DLE','&nbsp;','Data Line Escape');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,17,'DC1','&nbsp;','Device Control 1 (oft. XON)');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,18,'DC2','&nbsp;','Device Control 2');

INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,19,'DC3','&nbsp;','Device Control 3 (oft. XOFF)');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,20,'DC4','&nbsp;','Device Control 4');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,21,'NAK','&nbsp;','Negative Acknowledgement');

INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,22,'SYN','&nbsp;','Synchronous Idle');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,23,'ETB','&nbsp;','End of Transmit Block');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,24,'CAN','&nbsp;','Cancel');

INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,25,' EM','&nbsp;','End of Medium');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,26,'SUB','&nbsp;','Substitute');

INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,27,'ESC','&nbsp;','Escape');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,28,' FS','&nbsp;','File Separator');

INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,29,' GS','&nbsp;','Group Separator');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,30,' RS','&nbsp;','Record Separator');

INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,31,' US','&nbsp;','Unit Separator');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,32,'&nbsp;','&nbsp;','Space');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,33,'!','&nbsp;','Exclamation mark');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,34,'"','&amp;quot;','Double quotes (or speech marks)');

INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,35,'#','&nbsp;','Number');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,36,'$','&nbsp;','Dollar');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,37,'%','&nbsp;','Procenttecken');

INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,38,'&amp;','&amp;amp;','Ampersand');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,39,'''','&nbsp;','Single quote');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,40,'(','&nbsp;','Open parenthesis (or open bracket)');

INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,41,')','&nbsp;','Close parenthesis (or close bracket)');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,42,'*','&nbsp;','Asterisk');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,43,'+','&nbsp;','Plus');

INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,44,',','&nbsp;','Comma');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,45,'-','&nbsp;','Hyphen');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,46,'.','&nbsp;','Period, dot or full stop');

INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,47,'/','&nbsp;','Slash or divide');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,48,'0','&nbsp;','Zero');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,49,'1','&nbsp;','One');

INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,50,'2','&nbsp;','Two');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,51,'3','&nbsp;','Three');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,52,'4','&nbsp;','Four');

INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,53,'5','&nbsp;','Five');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,54,'6','&nbsp;','Six');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,55,'7','&nbsp;','Seven');

INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,56,'8','&nbsp;','Eight');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,57,'9','&nbsp;','Nine');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,58,':','&nbsp;','Colon');

INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,59,';','&nbsp;','Semicolon');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,60,'<','&amp;lt;','Less than (or open angled bracket)');

INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,61,'=','&nbsp;','Equals');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,62,'>','&amp;gt;','Greater than (or close angled bracket)');

INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,63,'?','&nbsp;','Question mark');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,64,'@','&nbsp;','At symbol');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,65,'A','&nbsp;','Uppercase A');

INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,66,'B','&nbsp;','Uppercase B');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,67,'C','&nbsp;','Uppercase C');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,68,'D','&nbsp;','Uppercase D');

INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,69,'E','&nbsp;','Uppercase E');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,70,'F','&nbsp;','Uppercase F');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,71,'G','&nbsp;','Uppercase G');

INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,72,'H','&nbsp;','Uppercase H');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,73,'I','&nbsp;','Uppercase I');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,74,'J','&nbsp;','Uppercase J');

INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,75,'K','&nbsp;','Uppercase K');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,76,'L','&nbsp;','Uppercase L');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,77,'M','&nbsp;','Uppercase M');

INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,78,'N','&nbsp;','Uppercase N');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,79,'O','&nbsp;','Uppercase O');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,80,'P','&nbsp;','Uppercase P');

INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,81,'Q','&nbsp;','Uppercase Q');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,82,'R','&nbsp;','Uppercase R');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,83,'S','&nbsp;','Uppercase S');

INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,84,'T','&nbsp;','Uppercase T');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,85,'U','&nbsp;','Uppercase U');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,86,'V','&nbsp;','Uppercase V');

INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,87,'W','&nbsp;','Uppercase W');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,88,'X','&nbsp;','Uppercase X');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,89,'Y','&nbsp;','Uppercase Y');

INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,90,'Z','&nbsp;','Uppercase Z');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,91,'[','&nbsp;','Opening bracket');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,92,'\','&nbsp;','Backslash');

INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,93,']','&nbsp;','Closing bracket');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,94,'^','&nbsp;','Caret - circumflex');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,95,'_','&nbsp;','Underscore');

INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,96,'`','&nbsp;','Grave accent');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,97,'a','&nbsp;','Lowercase a');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,98,'b','&nbsp;','Lowercase b');

INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,99,'c','&nbsp;','Lowercase c');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,100,'d','&nbsp;','Lowercase d');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,101,'e','&nbsp;','Lowercase e');

INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,102,'f','&nbsp;','Lowercase f');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,103,'g','&nbsp;','Lowercase g');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,104,'h','&nbsp;','Lowercase h');

INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,105,'i','&nbsp;','Lowercase i');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,106,'j','&nbsp;','Lowercase j');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,107,'k','&nbsp;','Lowercase k');

INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,108,'l','&nbsp;','Lowercase l');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,109,'m','&nbsp;','Lowercase m');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,110,'n','&nbsp;','Lowercase n');

INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,111,'o','&nbsp;','Lowercase o');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,112,'p','&nbsp;','Lowercase p');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,113,'q','&nbsp;','Lowercase q');

INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,114,'r','&nbsp;','Lowercase r');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,115,'s','&nbsp;','Lowercase s');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,116,'t','&nbsp;','Lowercase t');

INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,117,'u','&nbsp;','Lowercase u');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,118,'v','&nbsp;','Lowercase v');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,119,'w','&nbsp;','Lowercase w');

INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,120,'x','&nbsp;','Lowercase x');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,121,'y','&nbsp;','Lowercase y');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,122,'z','&nbsp;','Lowercase z');

INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,123,'{','&nbsp;','Opening brace');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,124,'|','&nbsp;','Vertical bar');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,125,'}','&nbsp;','Closing brace');

INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,126,'~','&nbsp;','Equivalency sign - tilde');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,127,'','&nbsp;','Delete');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,128,'&#128;','&amp;euro;','Euro sign');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,129,'&nbsp;','&nbsp;','&nbsp;');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,130,'&#130;','&amp;sbquo;','Single low-9 quotation mark');

INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,131,'&#131;','&amp;fnof;','Latin small letter f with hook');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,132,'&#132;','&amp;bdquo;','Double low-9 quotation mark');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,133,'&#133;','&amp;hellip;','Horizontal ellipsis');

INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,134,'&#134;','&amp;dagger;','Dagger');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,135,'&#135;','&amp;Dagger;','Double dagger');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,136,'&#136;','&amp;circ;','Modifier letter circumflex accent');

INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,137,'&#137;','&amp;permil;','Per mille sign');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,138,'&#138;','&amp;Scaron;','Latin capital letter S with caron');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,139,'&#139;','&amp;lsaquo;','Single left-pointing angle quotation');

INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,140,'&#140;','&amp;OElig;','Latin capital ligature OE');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,141,'&nbsp;','&nbsp;','&nbsp;');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,142,'&#142;','&nbsp;','Latin captial letter Z with caron');

INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,143,'&nbsp;','&nbsp;','&nbsp;');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,144,'&nbsp;','&nbsp;','&nbsp;');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,145,'&#145;','&amp;lsquo;','Left single quotation mark');

INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,146,'&#146;','&amp;rsquo;','Right single quotation mark');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,147,'&#147;','&amp;ldquo;','Left double quotation mark');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,148,'&#148;','&amp;rdquo;','Right double quotation mark');

INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,149,'&#149;','&amp;bull;','Bullet');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,150,'&#150;','&amp;ndash;','En dash');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,151,'&#151;','&amp;mdash;','Em dash');

INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,152,'&#152;','&amp;tilde;','Small tilde');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,153,'&#153;','&amp;trade;','Trade mark sign');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,154,'&#154;','&amp;scaron;','Latin small letter S with caron');

INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,155,'&#155;','&amp;rsaquo; ','Single right-pointing angle quotation mark');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,156,'&#156;','&amp;oelig;','Latin small ligature oe');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,157,'&nbsp;','&nbsp;','&nbsp;');

INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,158,'&#158;','&nbsp;','Latin small letter z with caron');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,159,'&#159;','&amp;yuml;','Latin capital letter Y with diaeresis');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,160,'&nbsp;','&amp;nbsp;','Non-breaking space');

INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,161,'¡','&amp;iexcl;','Inverted exclamation mark');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,162,'¢','&amp;cent;','Cent sign');

INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,163,'£','&amp;pound;','Pound sign');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,164,'¤','&amp;curren;','Currency sign');

INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,165,'¥','&amp;yen;','Yen sign');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,166,'¦','&amp;brvbar;','Pipe, Broken vertical bar');

INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,167,'§','&amp;sect;','Section sign');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,168,'¨','&amp;uml;','Spacing diaeresis - umlaut');

INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,169,'©','&amp;copy;','Copyright sign');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,170,'ª','&amp;ordf;','Feminine ordinal indicator');

INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,171,'«','&amp;laquo;','Left double angle quotes');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,172,'¬','&amp;not;','Not sign');

INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,173,'­','&amp;shy;','Soft hyphen');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,174,'®','&amp;reg;','Registered trade mark sign');

INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,175,'¯','&amp;macr;','Spacing macron - overline');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,176,'°','&amp;deg;','Degree sign');

INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,177,'±','&amp;plusmn;','Plus-or-minus sign');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,178,'²','&amp;sup2;','Superscript two - squared');

INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,179,'³','&amp;sup3;','Superscript three - cubed');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,180,'´','&amp;acute;','Acute accent - spacing acute');

INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,181,'µ','&amp;micro;','Micro sign');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,182,'¶','&amp;para;','Pilcrow sign - paragraph sign');

INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,183,'·','&amp;middot;','Middle dot - Georgian comma');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,184,'¸','&amp;cedil;','Spacing cedilla');

INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,185,'¹','&amp;sup1;','Superscript one');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,186,'º','&amp;ordm;','Masculine ordinal indicator');

INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,187,'»','&amp;raquo;','Right double angle quotes');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,188,'¼','&amp;frac14;','Fraction one quarter');

INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,189,'½','&amp;frac12;','Fraction one half');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,190,'¾','&amp;frac34;','Fraction three quarters');

INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,191,'¿','&amp;iquest;','Inverted question mark');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,192,'À','&amp;Agrave;','Latin capital letter A with grave');

INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,193,'Á','&amp;Aacute;','Latin capital letter A with acute');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,194,'Â','&amp;Acirc;','Latin capital letter A with circumflex');

INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,195,'Ã','&amp;Atilde;','Latin capital letter A with tilde');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,196,'Ä','&amp;Auml;','Latin capital letter A with diaeresis');

INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,197,'Å','&amp;Aring;','Latin capital letter A with ring above');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,198,'Æ','&amp;AElig;','Latin capital letter AE');

INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,199,'Ç','&amp;Ccedil;','Latin capital letter C with cedilla');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,200,'È','&amp;Egrave;','Latin capital letter E with grave');

INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,201,'É','&amp;Eacute;','Latin capital letter E with acute');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,202,'Ê','&amp;Ecirc;','Latin capital letter E with circumflex');

INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,203,'Ë','&amp;Euml;','Latin capital letter E with diaeresis');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,204,'Ì','&amp;Igrave;','Latin capital letter I with grave');

INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,205,'Í','&amp;Iacute;','Latin capital letter I with acute');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,206,'Î','&amp;Icirc;','Latin capital letter I with circumflex');

INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,207,'Ï','&amp;Iuml;','Latin capital letter I with diaeresis');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,208,'Ð','&amp;ETH;','Latin capital letter ETH');

INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,209,'Ñ','&amp;Ntilde;','Latin capital letter N with tilde');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,210,'Ò','&amp;Ograve;','Latin capital letter O with grave');

INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,211,'Ó','&amp;Oacute;','Latin capital letter O with acute');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,212,'Ô','&amp;Ocirc;','Latin capital letter O with circumflex');

INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,213,'Õ','&amp;Otilde;','Latin capital letter O with tilde');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,214,'Ö','&amp;Ouml;','Latin capital letter O with diaeresis');

INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,215,'×','&amp;times;','Multiplication sign');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,216,'Ø','&amp;Oslash;','Latin capital letter O with slash');

INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,217,'Ù','&amp;Ugrave;','Latin capital letter U with grave');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,218,'Ú','&amp;Uacute;','Latin capital letter U with acute');

INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,219,'Û','&amp;Ucirc;','Latin capital letter U with circumflex');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,220,'Ü','&amp;Uuml;','Latin capital letter U with diaeresis');

INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,221,'Ý','&amp;Yacute;','Latin capital letter Y with acute');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,222,'Þ','&amp;THORN;','Latin capital letter THORN');

INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,223,'ß','&amp;szlig;','Latin small letter sharp s - ess-zed');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,224,'à','&amp;agrave;','Latin small letter a with grave');

INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,225,'á','&amp;aacute;','Latin small letter a with acute');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,226,'â','&amp;acirc;','Latin small letter a with circumflex');

INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,227,'ã','&amp;atilde;','Latin small letter a with tilde');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,228,'ä','&amp;auml;','Latin small letter a with diaeresis');

INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,229,'å','&amp;aring;','Latin small letter a with ring above');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,230,'æ','&amp;aelig;','Latin small letter ae');

INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,231,'ç','&amp;ccedil;','Latin small letter c with cedilla');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,232,'è','&amp;egrave;','Latin small letter e with grave');

INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,233,'é','&amp;eacute;','Latin small letter e with acute');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,234,'ê','&amp;ecirc;','Latin small letter e with circumflex');

INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,235,'ë','&amp;euml;','Latin small letter e with diaeresis');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,236,'ì','&amp;igrave;','Latin small letter i with grave');

INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,237,'í','&amp;iacute;','Latin small letter i with acute');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,238,'î','&amp;icirc;','Latin small letter i with circumflex');

INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,239,'ï','&amp;iuml;','Latin small letter i with diaeresis');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,240,'ð','&amp;eth;','Latin small letter eth');

INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,241,'ñ','&amp;ntilde;','Latin small letter n with tilde');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,242,'ò','&amp;ograve;','Latin small letter o with grave');

INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,243,'ó','&amp;oacute;','Latin small letter o with acute');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,244,'ô','&amp;ocirc;','Latin small letter o with circumflex');

INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,245,'õ','&amp;otilde;','Latin small letter o with tilde');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,246,'ö','&amp;ouml;','Latin small letter o with diaeresis');

INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,247,'÷','&amp;divide;','Division sign');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,248,'ø','&amp;oslash;','Latin small letter o with slash');

INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,249,'ù','&amp;ugrave;','Latin small letter u with grave');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,250,'ú','&amp;uacute;','Latin small letter u with acute');

INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,251,'û','&amp;ucirc;','Latin small letter u with circumflex');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,252,'ü','&amp;uuml;','Latin small letter u with diaeresis');

INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,253,'ý','&amp;yacute;','Latin small letter y with acute');
INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,254,'þ','&amp;thorn;','Latin small letter thorn');

INSERT INTO matrix.Menu(Menu_WID,MenuSort,MenuName,MenuInfo,MenuDesc) VALUES(@WID,255,'ÿ','&amp;yuml;','Latin small letter y with diaeresis');

GO
SELECT *
FROM matrix.MenuView
WHERE WName='ASCII'

