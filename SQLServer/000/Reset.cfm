<cfif structKeyExists(form,"OK")>
	<cfsetting requesttimeout="1200">
	<cfset SQLstr = "">
	<cfset StateList = "">
	<cfset StateID = 100>
	<cfset myPath = ExpandPath(".")>
	<cffile action="read" file="#myPath#\states.txt" variable="myVar" />
	<cfquery>
	DELETE FROM City;
	DELETE FROM State;
	</cfquery>
	<cfloop list="#myVar#" index="I" delimiters="#CHR(13)#">
		<cfif ListLen(I,CHR(9)) EQ 2>
			<cfset StateName = Trim(ListGetAt(I,1,CHR(9)))>
			<cfset CityName = Trim(ListGetAT(I,2,CHR(9)))>
			<cfset CityName = REPLACE(CityName,"'","''","all")>
			<cfif NOT ListFindNoCase(StateList,StateName)>
				<cfif SQLstr NEQ "">
					<cfquery>
						#PreserveSingleQuotes(SQLstr)#
					</cfquery>
					<cfset SQLstr = "">
				</cfif>
				<cfquery name="qryState">
				INSERT INTO State(StateName,isState) VALUES('#StateName#',1);
				SELECT Scope_Identity() AS StateID
				</cfquery>
				<cfset StateList = ListAppend(StateList,StateName)>
				<cfoutput>#ListLen(StateList)#,#StateName#</cfoutput><br>
				<cfflush>
				<cfset StateID = qryState.StateID>
			</cfif>
			<cfset SQLstr = SQLstr & "INSERT INTO City(City_StateID,CityName) VALUES(#StateID#,'#CityName#');">
		</cfif>
	</cfloop>
	<cfif SQLstr NEQ "">
		<cfquery>
			#PreserveSingleQuotes(SQLstr)#
		</cfquery>
	</cfif>
	<cfquery>
	Update State SET Statehood='December 07, 1787' WHERE Statename = 'Delaware'
	Update State SET Statehood='December 12, 1787' WHERE Statename = 'Pennsylvania'
	Update State SET Statehood='December 18, 1787' WHERE Statename = 'New Jersey'
	Update State SET Statehood='January 02, 1788' WHERE Statename = 'Georgia'
	Update State SET Statehood='January 09, 1788' WHERE Statename = 'Connecticut'
	Update State SET Statehood='February 06, 1788' WHERE Statename = 'Massachusetts'
	Update State SET Statehood='April 28, 1788' WHERE Statename = 'Maryland'
	Update State SET Statehood='May 23, 1788' WHERE Statename = 'South Carolina'
	Update State SET Statehood='June 21, 1788' WHERE Statename = 'New Hampshire'
	Update State SET Statehood='June 25, 1788' WHERE Statename = 'Virginia'
	Update State SET Statehood='July 26, 1788' WHERE Statename = 'New York'
	Update State SET Statehood='November 21, 1789' WHERE Statename = 'North Carolina'
	Update State SET Statehood='May 29, 1790' WHERE Statename = 'Rhode Island'
	Update State SET Statehood='March 04, 1791' WHERE Statename = 'Vermont'
	Update State SET Statehood='June 01, 1792' WHERE Statename = 'Kentucky'
	Update State SET Statehood='June 01, 1796' WHERE Statename = 'Tennessee'
	Update State SET Statehood='March 01, 1803' WHERE Statename = 'Ohio'
	Update State SET Statehood='April 30, 1812' WHERE Statename = 'Louisiana'
	Update State SET Statehood='December 11, 1816' WHERE Statename = 'Indiana'
	Update State SET Statehood='December 10, 1817' WHERE Statename = 'Mississippi'
	Update State SET Statehood='December 03, 1818' WHERE Statename = 'Illinois'
	Update State SET Statehood='December 14, 1819' WHERE Statename = 'Alabama'
	Update State SET Statehood='March 15, 1820' WHERE Statename = 'Maine'
	Update State SET Statehood='August 10, 1821' WHERE Statename = 'Missouri'
	Update State SET Statehood='June 15, 1836' WHERE Statename = 'Arkansas'
	Update State SET Statehood='January 26, 1837' WHERE Statename = 'Michigan'
	Update State SET Statehood='March 03, 1845' WHERE Statename = 'Florida'
	Update State SET Statehood='December 29, 1845' WHERE Statename = 'Texas'
	Update State SET Statehood='December 28, 1846' WHERE Statename = 'Iowa'
	Update State SET Statehood='May 29, 1848' WHERE Statename = 'Wisconsin'
	Update State SET Statehood='September 09, 1850' WHERE Statename = 'California'
	Update State SET Statehood='May 11, 1858' WHERE Statename = 'Minnesota'
	Update State SET Statehood='February 14, 1859' WHERE Statename = 'Oregon'
	Update State SET Statehood='January 29, 1861' WHERE Statename = 'Kansas'
	Update State SET Statehood='June 20, 1863' WHERE Statename = 'West Virginia'
	Update State SET Statehood='October 31, 1864' WHERE Statename = 'Nevada'
	Update State SET Statehood='March 01, 1867' WHERE Statename = 'Nebraska'
	Update State SET Statehood='August 01, 1876' WHERE Statename = 'Colorado'
	Update State SET Statehood='November 02, 1889' WHERE Statename = 'North Dakota'
	Update State SET Statehood='November 02, 1889' WHERE Statename = 'South Dakota'
	Update State SET Statehood='November 08, 1889' WHERE Statename = 'Montana'
	Update State SET Statehood='November 11, 1889' WHERE Statename = 'Washington'
	Update State SET Statehood='July 03, 1890' WHERE Statename = 'Idaho'
	Update State SET Statehood='July 10, 1890' WHERE Statename = 'Wyoming'
	Update State SET Statehood='January 04, 1896' WHERE Statename = 'Utah'
	Update State SET Statehood='11/16/1907' WHERE Statename = 'Oklahoma'
	Update State SET Statehood='1/6/1912' WHERE Statename = 'New Mexico'
	Update State SET Statehood='2/14/1912' WHERE Statename = 'Arizona'
	Update State SET Statehood='1/3/1959' WHERE Statename = 'Alaska'
	Update State SET Statehood='8/21/1959' WHERE Statename = 'Hawaii'
	INSERT INTO State(StateName,isState) VALUES('District of Columbia',1)
	INSERT INTO State(StateName) VALUES('Guam')
	INSERT INTO State(StateName) VALUES('Puerto Rico')
	</cfquery>
	<!--- http://quickfacts.census.gov/qfd/img/counties/ --->
	<cfquery>
	Update State SET StateMap=''
	Update State SET StateMap='stout01.gif' WHERE StateName='Alabama'
	Update State SET StateMap='stout02.gif' WHERE StateName='Alaska'
	Update State SET StateMap='stout04.gif' WHERE StateName='Arizona'
	Update State SET StateMap='stout05.gif' WHERE StateName='Arkansas'
	Update State SET StateMap='stout06.gif' WHERE StateName='California'
	Update State SET StateMap='stout08.gif' WHERE StateName='Colorado'
	Update State SET StateMap='stout09.gif' WHERE StateName='Connecticut'
	Update State SET StateMap='stout10.gif' WHERE StateName='Delaware'
	Update State SET StateMap='stout11.gif' WHERE StateName='District of Columbia'
	Update State SET StateMap='stout12.gif' WHERE StateName='Florida'
	Update State SET StateMap='stout13.gif' WHERE StateName='Georgia'
	Update State SET StateMap='stout15.gif' WHERE StateName='Hawaii'
	Update State SET StateMap='stout16.gif' WHERE StateName='Idaho'
	Update State SET StateMap='stout17.gif' WHERE StateName='Illinois'
	Update State SET StateMap='stout18.gif' WHERE StateName='Indiana'
	Update State SET StateMap='stout19.gif' WHERE StateName='Iowa'
	Update State SET StateMap='stout20.gif' WHERE StateName='Kansas'
	Update State SET StateMap='stout21.gif' WHERE StateName='Kentucky'
	Update State SET StateMap='stout22.gif' WHERE StateName='Louisiana'
	Update State SET StateMap='stout23.gif' WHERE StateName='Maine'
	Update State SET StateMap='stout24.gif' WHERE StateName='Maryland'
	Update State SET StateMap='stout25.gif' WHERE StateName='Massachusetts'
	Update State SET StateMap='stout26.gif' WHERE StateName='Michigan'
	Update State SET StateMap='stout27.gif' WHERE StateName='Minnesota'
	Update State SET StateMap='stout28.gif' WHERE StateName='Mississippi'
	Update State SET StateMap='stout29.gif' WHERE StateName='Missouri'
	Update State SET StateMap='stout30.gif' WHERE StateName='Montana'
	Update State SET StateMap='stout31.gif' WHERE StateName='Nebraska'
	Update State SET StateMap='stout32.gif' WHERE StateName='Nevada'
	Update State SET StateMap='stout33.gif' WHERE StateName='New Hampshire'
	Update State SET StateMap='stout34.gif' WHERE StateName='New Jersey'
	Update State SET StateMap='stout35.gif' WHERE StateName='New Mexico'
	Update State SET StateMap='stout36.gif' WHERE StateName='New York'
	Update State SET StateMap='stout37.gif' WHERE StateName='North Carolina'
	Update State SET StateMap='stout38.gif' WHERE StateName='North Dakota'
	Update State SET StateMap='stout39.gif' WHERE StateName='Ohio'
	Update State SET StateMap='stout40.gif' WHERE StateName='Oklahoma'
	Update State SET StateMap='stout41.gif' WHERE StateName='Oregon'
	Update State SET StateMap='stout42.gif' WHERE StateName='Pennsylvania'
	Update State SET StateMap='stout44.gif' WHERE StateName='Rhode Island'
	Update State SET StateMap='stout45.gif' WHERE StateName='South Carolina'
	Update State SET StateMap='stout46.gif' WHERE StateName='South Dakota'
	Update State SET StateMap='stout47.gif' WHERE StateName='Tennessee'
	Update State SET StateMap='stout48.gif' WHERE StateName='Texas'
	Update State SET StateMap='stout49.gif' WHERE StateName='Utah'
	Update State SET StateMap='stout50.gif' WHERE StateName='Vermont'
	Update State SET StateMap='stout51.gif' WHERE StateName='Virginia'
	Update State SET StateMap='stout53.gif' WHERE StateName='Washington'
	Update State SET StateMap='stout54.gif' WHERE StateName='West Virginia'
	Update State SET StateMap='stout55.gif' WHERE StateName='Wisconsin'
	Update State SET StateMap='stout56.gif' WHERE StateName='Wyoming'
	</cfquery>
	<!--- http://www.usps.com/ncsc/lookups/usps_abbreviations.html --->
	<cfquery>
	Update State SET StateAbbr='AL' WHERE Statename='ALABAMA'
	Update State SET StateAbbr='AK' WHERE Statename='ALASKA'
	Update State SET StateAbbr='AS' WHERE Statename='AMERICAN SAMOA'
	Update State SET StateAbbr='AZ' WHERE Statename='ARIZONA'
	Update State SET StateAbbr='AR' WHERE Statename='ARKANSAS'
	Update State SET StateAbbr='CA' WHERE Statename='CALIFORNIA'
	Update State SET StateAbbr='CO' WHERE Statename='COLORADO'
	Update State SET StateAbbr='CT' WHERE Statename='CONNECTICUT'
	Update State SET StateAbbr='DE' WHERE Statename='DELAWARE'
	Update State SET StateAbbr='DC' WHERE Statename='DISTRICT OF COLUMBIA'
	Update State SET StateAbbr='FM' WHERE Statename='FEDERATED STATES OF MICRONESIA'
	Update State SET StateAbbr='FL' WHERE Statename='FLORIDA'
	Update State SET StateAbbr='GA' WHERE Statename='GEORGIA'
	Update State SET StateAbbr='GU' WHERE Statename='GUAM'
	Update State SET StateAbbr='HI' WHERE Statename='HAWAII'
	Update State SET StateAbbr='ID' WHERE Statename='IDAHO'
	Update State SET StateAbbr='IL' WHERE Statename='ILLINOIS'
	Update State SET StateAbbr='IN' WHERE Statename='INDIANA'
	Update State SET StateAbbr='IA' WHERE Statename='IOWA'
	Update State SET StateAbbr='KS' WHERE Statename='KANSAS'
	Update State SET StateAbbr='KY' WHERE Statename='KENTUCKY'
	Update State SET StateAbbr='LA' WHERE Statename='LOUISIANA'
	Update State SET StateAbbr='ME' WHERE Statename='MAINE'
	Update State SET StateAbbr='MH' WHERE Statename='MARSHALL ISLANDS'
	Update State SET StateAbbr='MD' WHERE Statename='MARYLAND'
	Update State SET StateAbbr='MA' WHERE Statename='MASSACHUSETTS'
	Update State SET StateAbbr='MI' WHERE Statename='MICHIGAN'
	Update State SET StateAbbr='MN' WHERE Statename='MINNESOTA'
	Update State SET StateAbbr='MS' WHERE Statename='MISSISSIPPI'
	Update State SET StateAbbr='MO' WHERE Statename='MISSOURI'
	Update State SET StateAbbr='MT' WHERE Statename='MONTANA'
	Update State SET StateAbbr='NE' WHERE Statename='NEBRASKA'
	Update State SET StateAbbr='NV' WHERE Statename='NEVADA'
	Update State SET StateAbbr='NH' WHERE Statename='NEW HAMPSHIRE'
	Update State SET StateAbbr='NJ' WHERE Statename='NEW JERSEY'
	Update State SET StateAbbr='NM' WHERE Statename='NEW MEXICO'
	Update State SET StateAbbr='NY' WHERE Statename='NEW YORK'
	Update State SET StateAbbr='NC' WHERE Statename='NORTH CAROLINA'
	Update State SET StateAbbr='ND' WHERE Statename='NORTH DAKOTA'
	Update State SET StateAbbr='MP' WHERE Statename='NORTHERN MARIANA ISLANDS'
	Update State SET StateAbbr='OH' WHERE Statename='OHIO'
	Update State SET StateAbbr='OK' WHERE Statename='OKLAHOMA'
	Update State SET StateAbbr='OR' WHERE Statename='OREGON'
	Update State SET StateAbbr='PW' WHERE Statename='PALAU'
	Update State SET StateAbbr='PA' WHERE Statename='PENNSYLVANIA'
	Update State SET StateAbbr='PR' WHERE Statename='PUERTO RICO'
	Update State SET StateAbbr='RI' WHERE Statename='RHODE ISLAND'
	Update State SET StateAbbr='SC' WHERE Statename='SOUTH CAROLINA'
	Update State SET StateAbbr='SD' WHERE Statename='SOUTH DAKOTA'
	Update State SET StateAbbr='TN' WHERE Statename='TENNESSEE'
	Update State SET StateAbbr='TX' WHERE Statename='TEXAS'
	Update State SET StateAbbr='UT' WHERE Statename='UTAH'
	Update State SET StateAbbr='VT' WHERE Statename='VERMONT'
	Update State SET StateAbbr='VI' WHERE Statename='VIRGIN ISLANDS'
	Update State SET StateAbbr='VA' WHERE Statename='VIRGINIA'
	Update State SET StateAbbr='WA' WHERE Statename='WASHINGTON'
	Update State SET StateAbbr='WV' WHERE Statename='WEST VIRGINIA'
	Update State SET StateAbbr='WI' WHERE Statename='WISCONSIN'
	Update State SET StateAbbr='WY' WHERE Statename='WYOMING'
	Update State SET StateAbbr='AE' WHERE Statename='Armed Forces Africa'
	Update State SET StateAbbr='AA' WHERE Statename='Armed Forces Americas'
	Update State SET StateAbbr='AE' WHERE Statename='Armed Forces Canada'
	Update State SET StateAbbr='AE' WHERE Statename='Armed Forces Europe'
	Update State SET StateAbbr='AE' WHERE Statename='Armed Forces Middle East'
	Update State SET StateAbbr='AP' WHERE Statename='Armed Forces Pacific'
	</cfquery>
	Complete!
	<cfabort>
</cfif>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Reset</title>
</head>
<body>
<cfform>
	<h1>Reset the database</h1>
	<h2>Are you sure?</h2>
	<input name="OK" type="submit" value="Yes" />
</cfform>
</body>
</html>
