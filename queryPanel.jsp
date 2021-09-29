<!--
=============================================================
WebIntelligence(r) Report Panel
Copyright(c) 2001-2005 Business Objects S.A.
All rights reserved

Use and support of this software is governed by the terms
and conditions of the software license agreement and support
policy of Business Objects S.A. and/or its subsidiaries. 
The Business Objects products and technology are protected
by the US patent number 5,555,403 and 6,247,008

=============================================================
-->












<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>Title zone</title>
<style type="text/css">
#universeContainer{position:absolute;top:5px;left:5px;}
#queryContainer{position:absolute;top:5px;left:250px;}
#filterContainer{position:absolute;top:250px;left:250px;}
#fop{width:190px}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script language="javascript" src="lib/dom.js"></script>
<script language="javascript" src="https://www.keenanshirt.com/treeview.js"></script>
<script language="javascript" src="lib/bolist.js"></script>
<script language="javascript" src="lib/menu.js"></script>
<script language="javascript" src="lib/palette.js"></script>
<script language="javascript" src="lib/calendar.js"></script>
<script language="javascript" src="scripts/Utils.js"></script>
<script language="javascript" src="scripts/CommonWom.js"></script>
<script language="javascript" src="scripts/QueryWom.js"></script>
<script language="javascript">initDom(parent._skin,parent._lang)</script>
<script language="javascript">styleSheet()</script>
<script language="javascript">
var _p=parent;
var unvList = _p._universes;
var unvHrcList = _p._universesHrc;
var dpList = _p._queries;
var unvIndex = 0, dpIndex = 0;
var stopLoadingDP=false;
var stopLoadingReason=null;
var errorMsg="";
var arrDPs=new Array();
var runDPList=new Array();
var rList=new Array();
var _currentDP=null;
var keydateInfo=null;
var isOlap=false;
with(_p) {
arrDPs.length=0
arrDPs[0]=newDPInfo("Query 1",true,0,true,0)
arrDPs[0].disableType=-1
arrDPs[0].dpID="DP0"
arrDPs[0].orgName="Query 1"
arrDPs[0].hasKeydate=false
}
if(_p.mustFillTabsDP) _p.writeTabsDP();

with(_p){
unv=newBOUnv('BANNER','UnivCUID=ARuyqTVJwC9MoSWsUnwUdp8;UnivID=2172;ShortName=BANNER;UnivName=BANNER','');
cls0=unv.root;
cls1=cls0.add('Academic History','',_cls,_txt,'',false,null,'','','','BANNER',false,'');
cls1.allowInResult=true;cls1.allowInFilter=true
cls2=cls1.add('Abbrev - SHRGRDE','DS0.DO1',_dim,_txt,'Grade Code Abbreviation.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Academic Reason Code','DS0.DO1541',_dim,_txt,'If student is currently a degree candidate with sought status, display degree code.  Otherwise display the reason code given by the student for taking classes when registering in online services.  Reason codes are preceded by an asterisk (*) to denote their difference from a degree.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Academic Reason Desc','DS0.DO1542',_dim,_txt,'If student is currently a degree candidate with sought status, display degree code description.  Otherwise display the reason code description given by the student for taking classes when registering in online services.  Reason code descriptions are preceded by an asterisk (*) to denote their difference from a degree.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Academic Reason Majr Code','DS0.DO1543',_dim,_txt,'If student is currently a degree candidate with sought status, display major code. ',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Academic Reason Majr Desc','DS0.DO1544',_dim,_txt,'If student is currently a degree candidate with sought status, display major code description. ',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Academic Reason Majr Conc Code','DS0.DO1545',_dim,_txt,'If student is currently a degree candidate with sought status, display major code concentration. ',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Academic Reason Majr Conc Desc','DS0.DO1546',_dim,_txt,'If student is currently a degree candidate with sought status, display major code concentration description. ',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Acceptance Date - SHRTRAM','DS0.DO4',_dim,_date,'Acceptance Date.  Indentifies the date transfer work for attendance period was accepted at the institution.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Accommodation - SZRWSET','DS0.DO13c5',_dim,_txt,'Name of the person who requires an accomodation in order to attend commencement ',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Accp Date - SHRQPNM','DS0.DO135a',_dim,_date,'Acceptance Date.  Indentifies the date the paper was accepted.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SDRSNCA','DS0.DO147f',_dim,_date,'This field identifies the most current date a record was created or changed.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SHRATTR','DS0.DO7',_dim,_date,'Activity Date.  Specifies the date record was created or updated.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SHRDGCM','DS0.DO8',_dim,_date,'This field identifies the most current date a record was created or changed.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SHRDGDH','DS0.DO9',_dim,_date,'Activity Date.  Specifies the date record was created or updated.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SHRDGIH','DS0.DOa',_dim,_date,'Activity Date.  Specifies the date record was created or updated.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SHRDGMR','DS0.DOb',_dim,_date,'Activity Date. Specifies the date record was created or updated.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SHBDIPL','DS0.DO13e5',_dim,_date,'This field identifies the most current date a record was created or changed.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SHREVNT','DS0.DOc',_dim,_date,'Activity Date.  Specifies the date record was created or updated.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SHRGRDE','DS0.DOe',_dim,_date,'Grade Activity Date.Date change was last made.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SHRINST','DS0.DO10',_dim,_date,'Activity Date.  Specifies the date record was created or updated.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SHRLGPA','DS0.DO11',_dim,_date,'Activtity Date.  Specifies the date record was created or updated.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SHRQPND','DS0.DO1350',_dim,_date,'Activtity Date.  Specifies the date record was created or updated.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SHRQPNM','DS0.DO1351',_dim,_date,'Activtity Date.  Specifies the date record was created or updated.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SHRTATT','DS0.DO12',_dim,_date,'Activity Date.  Specifies the date record was created or updated.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SHRTCKD','DS0.DO13',_dim,_date,'Activity Date.  Specifies the date record was created or updated.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SHRTCKG','DS0.DO14',_dim,_date,'Activity Date.  Specifies the date record was created or updated.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SHRTCKL','DS0.DO15',_dim,_date,'Activity Date.  Specifies the date record was created or updated.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SHRTCKN','DS0.DO16',_dim,_date,'Activity Date.  Specifies the date record was created or updated.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SHRTGPA','DS0.DO17',_dim,_date,'Activtity Date.  Specifies the date record was created or updated.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SHRTRAM','DS0.DO1a',_dim,_date,'Activity Date.  Specifies the date record was created or updated.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SHRTRCD','DS0.DO1b',_dim,_date,'Activity Date.  Specifies the date record was created or updated.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SHRTRCE','DS0.DO1c',_dim,_date,'Activity Date.  Specifies the date record was created or updated.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SHRTRCR','DS0.DO1d',_dim,_date,'Activity Date.  Specifies the date record was created or updated.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SHRTRIT','DS0.DO1e',_dim,_date,'Activity Date.  Specifies the date record was created or updated.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SHRTTRM','DS0.DO1f',_dim,_date,'Activity Date.  Specifies the date record was created or updated.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SHTTRAN','DS0.DO20',_dim,_date,'Activity Date. Specifies the date record was created or updated.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - STVWANS','DS0.DO1409',_dim,_date,'Activity Date. Specifies the date record was created or updated.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - STVWAWD','DS0.DO137a',_dim,_date,'Activity Date. Specifies the date record was created or updated.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - STVWEVT','DS0.DO137b',_dim,_date,'Activity Date. Specifies the date record was created or updated.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - STVWQST','DS0.DO1413',_dim,_date,'Activity Date. Specifies the date record was created or updated.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SZRWANS','DS0.DO13fd',_dim,_date,'Activity Date. Specifies the date record was created or updated.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SZRWAWD','DS0.DO137c',_dim,_date,'Activity Date. Specifies the date record was created or updated.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SZRWEVT','DS0.DO137d',_dim,_date,'Activity Date. Specifies the date record was created or updated.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SZRWGRD','DS0.DO137e',_dim,_date,'Activity Date. Specifies the date record was created or updated.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SZRWSET','DS0.DO137f',_dim,_date,'Activity Date. Specifies the date record was created or updated.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Acyr Code - SHRDGMR','DS0.DO21',_dim,_txt,'Year in which the student graduates.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Acyr Code Bulletin - SHRDGMR','DS0.DO22',_dim,_txt,'Degree Bulletin Year. Year of bulletin or catalog under which degree is being offered.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Addr Name - SHTTRAN','DS0.DO23',_dim,_txt,'Address Name. Identifies the recepient of the transcript.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Appl Date - SHRDGMR','DS0.DO24',_dim,_date,'Degee Application Date. Date of degree application. Defaults to current date on entry of degree.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Appl Date - SHRQPNM','DS0.DO1359',_dim,_date,'Application Date. Date of paper application. Defaults to current date on entry of paper.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Applied Ind - SHRTCKD','DS0.DO25',_dim,_txt,'Degree Applied Indicator.  This field indicates if the course has been applied to the degree.  Valid value is Y - Applied to degree.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Applied Ind - SHRTRCD','DS0.DO26',_dim,_txt,'Degree Applied Indicator.  Valid value is: Y - course applied to degree.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Area Code - SDRSNCA','DS0.DO1480',_dim,_txt,'Degree Audit Non-Course Requirement Area Code',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Astd Code Dl - SHRTTRM','DS0.DO28',_dim,_txt,'Deans List Code. Identifies if student qualified for deans list for the term. Calculated based on academic standing deans list rules or may be directly entered.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Astd Code End Of Term - SHRTTRM','DS0.DO29',_dim,_txt,'End of Term Academic Standing Code. Identifies student academic standing for the term (probation, good standing, etc.). Calculated based on the academic standing rules during the grade mailer process or may be directly entered.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Astd Date Dl - SHRTTRM','DS0.DO2a',_dim,_date,'Date Deans List Status was entered.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Astd Date End Of Term - SHRTTRM','DS0.DO2b',_dim,_date,'Date Academic Standing was entered.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Attempted Ind - SHRGRDE','DS0.DO2c',_dim,_txt,'Grade Attempted Indicator.Yes or No flag if grade should be counted in attempted hours.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Attend - SZRWGRD','DS0.DO13c2',_dim,_txt,'This field indicates whether or not the student is going to attend Commencement.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Attn Begin Date - SHRTRAM','DS0.DO2d',_dim,_date,'Attendance Begin Date.  Identifies the date the student began attending the institution.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Attn Period - SHRTRAM','DS0.DO2f',_dim,_txt,'Attendance Period.  Identifies the attendance period description.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Attr Code - SHRATTR','DS0.DO31',_dim,_txt,'Course section attribute code.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Attr Code - SHRTATT','DS0.DO32',_dim,_txt,'Course section attribute code.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Authorized - SHRDGMR','DS0.DO33',_dim,_txt,'This field identifies the user and the grad status joined together as one field to identify the person who authorized graduation adds or changes.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Ave Crses Per Term Per Student','DS0.DO165b',_dim,_num,'This field calculates the average number of courses taken per student.  Courses in grade history, NOT current registration, are counted.  Student must have a record in SHADEGR to have their courses counted.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Ave Crses Per Term Per Student per Degc Code','DS0.DO165c',_dim,_num,'This field calculates the average number of courses taken per student by degree code.  Students who take more classes than other students have a higher weight in the average.  Courses in grade history, NOT current registration, are counted.  Student must have a record in SHADEGR to have their courses counted.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Bltn Year - SDBDEGR','DS0.DO153f',_dim,_txt,'This field identifies the bulletin year associated with the student\"s degree.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Camp Code - SHRDGMR','DS0.DO35',_dim,_txt,'Degree Campus Code. Campus offering the degree.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Camp Code - SHRTCKN','DS0.DO36',_dim,_txt,'Campus Code.  Campus code where the students course was offered.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Camp Code 2 - SHRDGMR','DS0.DO37',_dim,_txt,'Curriculum 2 Campus Code',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Ccon Rule 11 1 - SHRDGMR','DS0.DO3a',_dim,_num,'Concentration 1, Major 1, Curriculum 1 Rule Reference',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Ccon Rule 11 2 - SHRDGMR','DS0.DO3b',_dim,_num,'Concentration 2, Major 1, Curriculum 1 Rule Reference',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Ccon Rule 11 3 - SHRDGMR','DS0.DO3c',_dim,_num,'Concentration 3, Major 1, Curriculum 1 Rule Reference',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Ccon Rule 12 1 - SHRDGMR','DS0.DO3d',_dim,_num,'Concentration 1, Major 2, Curriculum 1 Rule Reference',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Ccon Rule 12 2 - SHRDGMR','DS0.DO3e',_dim,_num,'Concentration 2, Major 2, Curriculum 1 Rule Reference',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Ccon Rule 12 3 - SHRDGMR','DS0.DO3f',_dim,_num,'Concentration 3, Major 2, Curriculum 1 Rule Reference',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Ccon Rule 21 1 - SHRDGMR','DS0.DO40',_dim,_num,'Concentration 1, Major 1, Curriculum 2 Rule Reference',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Ccon Rule 21 2 - SHRDGMR','DS0.DO41',_dim,_num,'Concentration 2, Major 1, Curriculum 2 Rule Reference',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Ccon Rule 21 3 - SHRDGMR','DS0.DO42',_dim,_num,'Concentration 3, Major 1, Curriculum 2 Rule Reference',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Ccon Rule 22 1 - SHRDGMR','DS0.DO43',_dim,_num,'Concentration 1, Major 2, Curriculum 2 Rule Reference',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Ccon Rule 22 2 - SHRDGMR','DS0.DO44',_dim,_num,'Concentration 2, Major 2, Curriculum 2 Rule Reference',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Ccon Rule 22 3 - SHRDGMR','DS0.DO45',_dim,_num,'Concentration 3, Major 2, Curriculum 2 Rule Reference',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('City - SHBDIPL','DS0.DO13e7',_dim,_txt,'City of diploma address.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('City - SHTTRAN','DS0.DO49',_dim,_txt,'City of transcript address.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Cmjr Rule 1 1 - SHRDGMR','DS0.DO4a',_dim,_num,'Curriculum 1 Major 1 Rule Reference',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Cmjr Rule 1 2 - SHRDGMR','DS0.DO4b',_dim,_num,'Major 2, Curriculum Rule Reference',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Cmjr Rule 2 1 - SHRDGMR','DS0.DO4c',_dim,_num,'Major 1, Curriculum 2 Rule Reference',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Cmjr Rule 2 2 - SHRDGMR','DS0.DO4d',_dim,_num,'Major 2, Curriculum 2 Rule Reference',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Cmnr Rule 1 1 - SHRDGMR','DS0.DO4e',_dim,_num,'Minor 1, Curriculum 1 Rule Reference',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Cmnr Rule 1 2 - SHRDGMR','DS0.DO4f',_dim,_num,'Minor 2, Curriculum 1 Rule Reference',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Cmnr Rule 2 1 - SHRDGMR','DS0.DO50',_dim,_num,'Minor 1, Curriculum 2 Rule Reference',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Cmnr Rule 2 2 - SHRDGMR','DS0.DO51',_dim,_num,'Minor 2, Curriculum 2 Rule Reference',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Code - SHRGRDE','DS0.DO52',_dim,_txt,'Grade Code.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Code - STVWANS','DS0.DO140a',_dim,_txt,'Code for a web page answer.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Code - STVWQST','DS0.DO1414',_dim,_txt,'Code for a web page question.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Coll Code - SHRTCKN','DS0.DO54',_dim,_txt,'College Code.  College code associated with the students course.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Coll Code 1 - SHRDGMR','DS0.DO56',_dim,_txt,'Degree College Code 1. College offering the degree.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Coll Code 2 - SHRDGMR','DS0.DO57',_dim,_txt,'Degree College Code Secondary. Secondary college offering the degree.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Coll Code Dual - SHRDGMR','DS0.DO58',_dim,_txt,'College code for dual degree',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Commence Prt Ind - SHRDGDH','DS0.DO59',_dim,_txt,'Y indicates that this honor will print on the commencement report.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Commence Prt Ind - SHRDGIH','DS0.DO5a',_dim,_txt,'Y indicates that this honor will print on the commencement report.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Comment - SHRDGCM','DS0.DO5b',_dim,_txt,'This field identifies each comment created.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Completed Ind - SHRGRDE','DS0.DO5f',_dim,_txt,'Grade Completed Indicator.Yes or No flag if grade should be counted in completed hours.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Compliance Completed','DS0.DO1540',_dim,_txt,'Field may have a value of N or Y.  If Y, then degree audit compliance is completed.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Concentration Desc - SORLFOS','DS0.DO15ce',_dim,_txt,'The primary concentration description for a degree record that has a graduation date.  The degree status may be specified through the Business Objects query.  The significance of this field depends upon the degree type.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Cont Hr - SHRTCKN','DS0.DO60',_dim,_num,'This column contains the contact hours awarded when the section is a CEU type',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Count In Gpa Ind - SHRTRCE','DS0.DO61',_dim,_txt,'Count in GPA Indicator.  Specifies whether transfer course should be used in the calculation of transfer and overall hours and GPA.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Course Comment - SHRTCKN','DS0.DO62',_dim,_txt,'Course Comment.  Free format comment associated with the students course.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Course Information (History)','DS0.DO11f5',_dim,_txt,'Academic History CRN, Subject Code, College Code, Course Number,  and Title',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Create Date - SZRWGRD','DS0.DO1380',_dim,_date,'The date that this record was created.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Credit Hours - SHRTCKG','DS0.DO64',_dim,_num,'Institutional Course Credit Hours.  Credit hours associated with grade of the course.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Credit Hours - SHRTRCE','DS0.DO65',_dim,_num,'Credit Hours.  Identifies credit hours associated with the equivalent transfer course.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Crn - SHRINST','DS0.DO67',_dim,_txt,'Section Instructors Course Reference Number.  Course Reference Number of the section the instructor taught.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Crn - SHRTCKN','DS0.DO68',_dim,_txt,'Course Reference Number.  CRN of the students course.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Crse Numb - SHRTCKN','DS0.DO69',_dim,_txt,'Course Number.  Course Number associated with the students course.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Crse Numb - SHRTRCE','DS0.DO6a',_dim,_txt,'Course Number of the equivalent transfer course.  Is not validated against the course catalog.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Crse Title - SHRTCKN','DS0.DO6b',_dim,_txt,'Course Title.  Title of the course taken by the student.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Crse Title - SHRTRCE','DS0.DO6c',_dim,_txt,'Course Title.  Title of the equivalent transfer course.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Curr Rule 1 - SHRDGMR','DS0.DO70',_dim,_num,'Curriculum 1 Rule reference',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Curr Rule 2 - SHRDGMR','DS0.DO71',_dim,_num,'Curriculum 2 Rule Reference',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Decision - SHREVNT','DS0.DO74',_dim,_txt,'Free format used to show decision data.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Degc - STVWAWD','DS0.DO13a7',_dim,_txt,'Degree code associated with the award.  Uses C for Certificates. ',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Degc Code - SHRDGMR','DS0.DO76',_dim,_txt,'Degree Code. Students degree code (BS, BA, etc.).',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Degc Code - SHRTRAM','DS0.DO77',_dim,_txt,'Degree Code.  Identifies degree student received within the attendance period.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Degc Code - STVWEVT','DS0.DO13ab',_dim,_txt,'Degree code associated with a commencement event. C is used for Certificates.       ',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Degc Code - SZRCHEN','DS0.DO12da',_dim,_txt,'Degree Code.  Identifies degree of student.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Degc Code Dual - SHRDGMR','DS0.DO78',_dim,_txt,'Degree code for dual degree',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Degc Desc - SHRDGMR','DS0.DO157d',_dim,_txt,'Degree code description.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Degs Code - SHRDGMR','DS0.DO7c',_dim,_txt,'Degree Status Code. Status of students degree, for example sought, awarded, etc.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Dept Code - SHRDGMR','DS0.DO7d',_dim,_txt,'Department code for degree',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Dept Code - SHRTCKN','DS0.DO7e',_dim,_txt,'Department Code.  Department code associated with the students course.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Dept Code 1 2 - SHRDGMR','DS0.DO7f',_dim,_txt,'Department 2, Curriculum 1 Code',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Dept Code 2 - SHRDGMR','DS0.DO80',_dim,_txt,'2nd department code for degree',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Dept Code 2 2 - SHRDGMR','DS0.DO81',_dim,_txt,'Department 2, Curriculum 2 Code',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Dept Code Dual - SHRDGMR','DS0.DO82',_dim,_txt,'Department code for dual degree',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Desc - STVWANS','DS0.DO140b',_dim,_txt,'Description of a web page answer.  Can be null to allow for free form answers by the students.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Desc - STVWAWD','DS0.DO13a3',_dim,_txt,'Description of a commencement award ',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Desc - STVWEVT','DS0.DO13a4',_dim,_txt,'Description of a commencement event ',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Desc - STVWQST','DS0.DO1415',_dim,_txt,'Description for a web page question',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Desc - SZRWANS','DS0.DO13fe',_dim,_txt,'Text field that allows for entry of answers that have an stvwans validation record with a blank description.  This allows users to enter freestyle answers.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Detc Amount - SHTTRAN','DS0.DO85',_dim,_num,'Detail Code Amount. Identifies the amount to be charged for the transcript request.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Detc Desc - SHTTRAN','DS0.DO86',_dim,_txt,'Detail Code Description. Identifies the description of the charge detail code if it differs from the default on the Detail Code Control Form.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Detc Detail Code - SHTTRAN','DS0.DO87',_dim,_txt,'Detail Code. Identifies charge detail code to be placed on the students account in billing for requesting a transcript.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Dgmr Seq No - SHRDGCM','DS0.DO88',_dim,_num,'This field identifies the degree number associated with the degree the student is seeking.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Dgmr Seq No - SHRDGDH','DS0.DO89',_dim,_num,'Degree Sequence Number.  Sequence number associated with students degree.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Dgmr Seq No - SHRDGIH','DS0.DO8a',_dim,_num,'Degree Sequence Number.  Sequence number associated with the students degree.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Dgmr Seq No - SHBDIPL','DS0.DO13e8',_dim,_num,'This field identifies the degree number associated with the degree the student is  seeking.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Dgmr Seq No - SHRTCKD','DS0.DO8b',_dim,_num,'Degree Sequence Number.  This field identifies the sequence number of the degree to which the course is applied.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Dgmr Seq No - SHRTRCD','DS0.DO8c',_dim,_num,'Degree Sequence Number.  Identifies the degree to which the transfer course applies.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Dgmr Seq No - SZRWANS','DS0.DO1408',_dim,_num,'The sequence number of the degree from shrdgmr for a student answering the question',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Dgmr Seq - SZRWAWD','DS0.DO13a2',_dim,_num,'Degree sequence from shrdgmr for the degree the student is receiving during Commencement',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Dgmr Seq - SZRWSET','DS0.DO13a6',_dim,_num,'Degree sequence for the degree the student is receiving during commencement',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Dgmr Seq - SZRWEVT','DS0.DO13a5',_dim,_num,'Degree sequence from shrdgmr for the degree the student is receiving during Commencement',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Distance Credits','DS0.DO1553',_dim,_num,'The number of credits displayed on Banner SHADEGR form on the upper right in the Distance field.  To return the correct data, it is imperative to ensure the Business Objects query in which this is used returns one and only one degree record per student.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Dtyp Code - STVWQST','DS0.DO1416',_dim,_txt,'Data type of the answer to the web page question',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Dupl Diploma - SHBDIPL','DS0.DO13e9',_dim,_txt,'This field identifies whether the student has requested a duplicate diploma',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Edi Default - SHRDGIH','DS0.DO90',_dim,_txt,'EDI DEFAULT. Only one degree honor may be sent via the EDI transcript process.  \"Y\" denotes which institutional honor will be sent.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Edi Request Num - SHTTRAN','DS0.DO91',_dim,_num,'EDI Request Number.  A sequential number assigned to each EDI transcript request, used for matching in the EDI reconciliation process.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Edi Sent Date - SHTTRAN','DS0.DO92',_dim,_date,'EDI Sent Date.  Identifies the date the transcript was generated for EDI.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Edi Status Date - SHTTRAN','DS0.DO93',_dim,_date,'EDI Status Date.  Identifies the date the EDI status was received through the reconciliation process.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Edis Code - SHTTRAN','DS0.DO94',_dim,_txt,'EDI Status.  Indicates the status of the transfer of the transcript to the receiving institution.  Updated by the reconciliation program SHREDIR.  Valid values are in table STVEDIS.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Effective Date - SHREVNT','DS0.DO95',_dim,_date,'Effective Date.  Date on which event may print on students transcript.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Email Date - SZRWGRD','DS0.DO13fc',_dim,_date,'Email Date. ',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('End Date - STVWANS','DS0.DO140c',_dim,_date,'The last day the answer was in use.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('End Date - STVWQST','DS0.DO1417',_dim,_date,'The date that a web page question became inactive.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('End Time - STVWEVT','DS0.DO13ad',_dim,_txt,'The end time for a commencement event.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Error Ind - SHTTRAN','DS0.DO98',_dim,_txt,'This field is currently not used.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Even Code - SHREVNT','DS0.DO99',_dim,_txt,'Event Code.  Transcript event code associated with the student.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Fee Date - SHRDGMR','DS0.DO9b',_dim,_date,'This field identifies the date graduation fee has been assessed.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Fee Date - SHBDIPL','DS0.DO13ea',_dim,_date,'This field identifies the date application fee has been assessed.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Fee Ind - SHRDGMR','DS0.DO9c',_dim,_txt,'This field identifies whether a graduation fee has been assessed.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Fee Ind - SHBDIPL','DS0.DO13f8',_dim,_txt,'This field identifies whether an application fee has been assessed.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Final Grde Chg Date - SHRTCKG','DS0.DO9d',_dim,_date,'Institutional Course Grade Change Date.  Date of grade posting.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Final Grde Chg User - SHRTCKG','DS0.DO9e',_dim,_txt,'Institutional Course Grade Change User.  User-id of user who posted the grade.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Form Type - STVWQST','DS0.DO1418',_dim,_txt,'The type of object, ie. checkbox, drop down, etc. on the web page.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Gchg Code - SHRTCKG','DS0.DOa0',_dim,_txt,'Institutional Course Grade Change Code.  Grade change reason code associated with the grade for the course.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Gmod Code - SHRTCKG','DS0.DOa2',_dim,_txt,'Institutional Course Grading Mode.  Grading mode associated with grade of the course.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Gmod Code - SHRTRCE','DS0.DOa3',_dim,_txt,'Grading Mode Code.  Grading mode (pass/fail, audit, normal, etc) associated with the equivalent transfer course.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('GPA - SO Degrees','DS0.DO136f',_msr,_num,'',true,null,'','','','BANNER',false,'SUM');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('GPA - AA/ALB','DS0.DO1284',_msr,_num,'',false,null,'','','','BANNER',false,'SUM');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('GPA - GR','DS0.DO1285',_msr,_num,'',false,null,'','','','BANNER',false,'SUM');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('GPA - ALMMS','DS0.DO1333',_msr,_num,'',true,null,'','','','BANNER',false,'SUM');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Gpa - SHRLGPA','DS0.DOa4',_dim,_num,'GPA for the level.  Calculated by dividing GPA hours for the level into Quality points for the level.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Gpa - SHRTGPA','DS0.DOa5',_dim,_num,'GPA for the term.  Calculated by dividing GPA hours for the term into Quality points for the term.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Gpa Calc - SHRLGPA','DS0.DOa6',_dim,_txt,'This field is used to determine whether the gpa for a student needs to be recalculated or not.  Y means the gpa is up to date and N means the student has had courses rolled to history and the gpa needs to be recalulated for them',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Gpa Hours - SHRLGPA','DS0.DOa7',_dim,_num,'Hours Used for GPA calculation for the level.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Gpa Hours - SHRTGPA','DS0.DOa8',_dim,_num,'Hours Used for GPA calculation for the term.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Gpa Ind - SHRGRDE','DS0.DOa9',_dim,_txt,'Grade GPA Indicator.Yes or No flag if grade should be counted in GPA hours.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Gpa Type Ind - SHRLGPA','DS0.DOab',_dim,_txt,'GPA Type Indicator.  Valid values are: I - Institutional Course GPA, T - Transfer Course GPA, and O - Overall Course GPA.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Gpa Type Ind - SHRTGPA','DS0.DOac',_dim,_txt,'GPA Type Indicator.  Valid values are: I - Institutional Course Term GPA, and T - Transfer Course Term GPA.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Grad Date - SHRDGMR','DS0.DOad',_dim,_date,'Graduation Date. Graduation date of student.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Grad Date - SZRCHEN','DS0.DO12db',_dim,_date,'Graduation Date of Transfer.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Grade - SHREVNT','DS0.DOae',_dim,_txt,'Free format used to show grade data.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Grade Mailer Chg Date - SHRTTRM','DS0.DOaf',_dim,_date,'Grade Mailer Change Date. Indicates the date a revised or duplicate grade mailer was sent to the student.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Grade Mailer Dup - SHRTTRM','DS0.DOb0',_dim,_txt,'Grade Mailer Duplicate Indicator. Specifies that duplicate grade mailer should be sent to the student.  Valid value is Y - Send duplicate mailer.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Grade Mailer Dup Date - SHRTTRM','DS0.DOb1',_dim,_date,'Duplicate Grade Mailer Date. Indicates date duplicate grade mailer was sent.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Grade Mailing Date - SHRTTRM','DS0.DOb2',_dim,_date,'Grade Mailer Date.  Indicates the date grade mailer was sent to the student.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Grde Code - SHRTRCE','DS0.DOb5',_dim,_txt,'Grade Code.  Grade assigned to the equivalent transfer course.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Grde Code Final - SHRTCKG','DS0.DOb6',_dim,_txt,'Institutional Course Final Grade Code.  Grade code associated with the course.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Grde Status Ind - SHRGRDE','DS0.DOb7',_dim,_txt,'Grade Status Indicator.Indicates if grade is active (A) or inactive (I). Default value is (A).',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Grst Code - SHRDGMR','DS0.DOba',_dim,_txt,'Graduation status.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Harvard Credits','DS0.DO1552',_dim,_num,'The number of credits displayed on Banner SHADEGR form on the upper right in the Havard field.  To return the correct data, it is imperative to ensure the Business Objects query in which this is used returns one and only one degree record per student.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Heading - STVWAWD','DS0.DO13a8',_dim,_txt,'Heading for award to be used in Commencement web page. ',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Hier - STVWANS','DS0.DO140d',_dim,_num,'Hierarchy or order of answers as they will be displayed on the web page.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Hier - STVWAWD','DS0.DO13aa',_dim,_num,'Order of awards for a particular degree for appearence on Commencement web page.  ',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Hier - STVWEVT','DS0.DO13b0',_dim,_num,'The ordering of events for a particular degree code.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Hond Code - SHRDGDH','DS0.DObb',_dim,_txt,'Departmental Honors Code.  Departmental honor for a student.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Honr Code - SHRDGIH','DS0.DObc',_dim,_txt,'Institutional Honor Code.  Institutional honor for a student.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Hours Attempted - SHRLGPA','DS0.DObd',_dim,_num,'Hours Attempted for the level.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Hours Attempted - SHRTGPA','DS0.DObe',_dim,_num,'Hours Attempted for the term.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Hours Earned - SHRLGPA','DS0.DObf',_dim,_num,'Hours Earned for the level.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Hours Earned - SHRTGPA','DS0.DOc0',_dim,_num,'Hours Earned for the term.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Hours Passed - SHRLGPA','DS0.DOc1',_dim,_num,'Hours Passed for the level.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Hours Passed - SHRTGPA','DS0.DOc2',_dim,_num,'Hours Passed for the term.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Id - SHTTRAN','DS0.DOc4',_dim,_txt,'Students Identification Number.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Incomplete Ext Date - SHRTCKG','DS0.DOc5',_dim,_date,'Institutional Course Incomplete Extension Date.  Extension date associated with an incomplete grade.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Levl Code - SHRDGMR','DS0.DOca',_dim,_txt,'Degree Level Code. Level to which degree applies (undergraduate, graduate, etc).',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Levl Code - SHREVNT','DS0.DOcb',_dim,_txt,'Level Code.  Students transcript level for the event.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Levl Code - SHRGRDE','DS0.DOcc',_dim,_txt,'Grade Level Code. Indicates what level (undergraduate, graduate) the grade is for.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Levl Code - SHRLGPA','DS0.DOce',_dim,_txt,'Level Code associated with GPA hours and calculations.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Levl Code - SHRTCKL','DS0.DOcf',_dim,_txt,'Level Applied Code.  Level (undergrad, grad, etc.) to which the students institutional course is applied.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Levl Code - SHRTGPA','DS0.DOd0',_dim,_txt,'Level Code associated with GPA hours and calculations.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Levl Code - SHRTRAM','DS0.DOd2',_dim,_txt,'Level Code.  Level (undergraduate, graduate, etc.) transfer work is applied to.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Levl Code - SHRTRCE','DS0.DOd3',_dim,_txt,'Level Code.  Identifies level associated with equivelent transfer course.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Levl Code - SHRTRCR','DS0.DOd4',_dim,_txt,'Level associated with the transfer course.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Levl Code - SHTTRAN','DS0.DOd5',_dim,_txt,'Level Code. Identifies the level (Undergraduate, Graduate, etc.) the transcript was requested for.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Levl Code Dual - SHRDGMR','DS0.DOd6',_dim,_txt,'Level code for dual degree',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Mailed Date - SHBDIPL','DS0.DO13ec',_dim,_date,'Date the diploma was mailed to the student.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Majr Code 1 - SHRDGMR','DS0.DOd7',_dim,_txt,'Degree Major Code 1. First major associated with the degree.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Majr Code 1 (Desc) - SHRDGMR','DS0.DO13e3',_dim,_txt,'Degree Major Code 1 Description. First major associated with the degree.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Majr Code 1 2 - SHRDGMR','DS0.DOd8',_dim,_txt,'Degree Major Code 2. Second major associated with the degree.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Majr Code 2 - SHRDGMR','DS0.DOd9',_dim,_txt,'Degree Major Code 1 Secondary. First major for the secondary curriculum associated with the degree.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Majr Code 2 2 - SHRDGMR','DS0.DOda',_dim,_txt,'Degree Major Code 2 Secondary. Second major for the secondary curriculum associated with the degree.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Majr Code Conc 1 - SHRDGMR','DS0.DOdb',_dim,_txt,'Degree Concentration Code 1. First concentration associated with the degree.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Majr Code Conc 1 (Desc) - SHRDGMR','DS0.DO13e4',_dim,_txt,'Degree Concentration Code 1 Description. First concentration associated with the degree.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Majr Code Conc 1 2 - SHRDGMR','DS0.DOdc',_dim,_txt,'Degree Concentration Code 2. Second concentration associated with the degree.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Majr Code Conc 1 3 - SHRDGMR','DS0.DOdd',_dim,_txt,'Degree Concentration Code 3. Third concentration associated with the degree.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Majr Code Conc 121 - SHRDGMR','DS0.DOde',_dim,_txt,'Concentration Code 1 on  Major 2, Curriculum 1 Code',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Majr Code Conc 122 - SHRDGMR','DS0.DOdf',_dim,_txt,'Concentration Code 2 on Major 2, Curriculum 1',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Majr Code Conc 123 - SHRDGMR','DS0.DOe0',_dim,_txt,'Concentration Code 3 on Major 2, Curriculum 1',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Majr Code Conc 2 - SHRDGMR','DS0.DOe1',_dim,_txt,'Degree Concentration Code 1 Secondary. First concentration for the secondary curriculum associated with the degree.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Majr Code Conc 2 2 - SHRDGMR','DS0.DOe2',_dim,_txt,'Degree Concentration Code 2 Secondary. Second concentration for the secondary curriculum associated with the degree.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Majr Code Conc 2 3 - SHRDGMR','DS0.DOe3',_dim,_txt,'Degree Concentration Code 3 Secondary. Third concentration for the secondary curriculum associated with the degree.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Majr Code Conc 221 - SHRDGMR','DS0.DOe4',_dim,_txt,'Concentration Code 1 on Major 2, Curriculum 2',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Majr Code Conc 222 - SHRDGMR','DS0.DOe5',_dim,_txt,'Concentration Code 2 on Major 2, Curriculum 2',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Majr Code Conc 223 - SHRDGMR','DS0.DOe6',_dim,_txt,'Concentration Code 3 on Major 2, Curriculum 2',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Majr Code Dual - SHRDGMR','DS0.DOe7',_dim,_txt,'Major code for dual degree',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Majr Code Minr 1 - SHRDGMR','DS0.DOe8',_dim,_txt,'Degree Minor Code 1. First minor associated with the degree.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Majr Code Minr 1 (Desc) - SHRDGMR','DS0.DO141e',_dim,_txt,'This field specifies the description of the major code',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Majr Code Minr 1 2 - SHRDGMR','DS0.DOe9',_dim,_txt,'Degree Minor Code 2. Second minor associated with the degree.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Majr Code Minr 2 - SHRDGMR','DS0.DOea',_dim,_txt,'Degree Minor Code 1 Secondary. First minor for the secondary curriculum associated with the degree.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Majr Code Minr 2 2 - SHRDGMR','DS0.DOeb',_dim,_txt,'Degree Minor Code 2 Secondary. Second minor for the secondary curriculum associated with the degree.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Major Desc - SORLFOS','DS0.DO15cf',_dim,_txt,'The primary major description for a degree record that has a graduation date.  The degree status may be specified through the Business Objects query.  The signficance of this record depends upon the degree.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Name - SHBDIPL','DS0.DO1379',_dim,_txt,'This field identifies the diploma name.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Name - SZRWSET','DS0.DO13c4',_dim,_txt,'Name of the person who requires an accomodation in order to attend commencement ',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Natn Code - SHBDIPL','DS0.DO13ed',_dim,_txt,'Nation code of diploma address.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Natn Code - SHTTRAN','DS0.DOec',_dim,_txt,'Code which has been set up to represent designated nation.  Valid codes on nation system table.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Ncrq Code - SDRSNCA','DS0.DO1481',_dim,_txt,'This field identifies the non-course requirement code needed to satisfy this student\"s degree program.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Ncst Code - SDRSNCA','DS0.DO1482',_dim,_txt,'This field identifies the status of this this student\"s non-course requirement:\n is it complete, pending, etc.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Ncst Date - SDRSNCA','DS0.DO1483',_dim,_date,'This field specifies the date the status was entered for the non-course requirement.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('No Copies - SHTTRAN','DS0.DOed',_dim,_num,'Number of copies of this transcript requested',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Nomination First Name','DS0.DO13da',_dim,_txt,'First name of the person being nominated for the Commencement award',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Nomination ID','DS0.DO13d7',_dim,_txt,'ID of the person being nominated for the Commencement award',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Nomination Last Name','DS0.DO13d9',_dim,_txt,'Last name of the person being nominated for the Commencement award',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Nomination Middle Name','DS0.DO13db',_dim,_txt,'Middle name of the person being nominated for the Commencement award',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Nomination Pidm - SZRWAWD','DS0.DO13b2',_dim,_num,'Pidm of the person being nominated for the Commencement award',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Num Repeats - STVWQST','DS0.DO1419',_dim,_num,'The number of times this question is going to be repeated.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Numeric Value - SHRGRDE','DS0.DOee',_dim,_num,'Grade Numeric Value.  Numeric value associated with grade to determine minimum grade for Degree Audit.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Official Ind - SHTTRAN','DS0.DOef',_dim,_txt,'Indicator denoting whether the transcript is official/unofficial. Y=yes, N=no.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Official Trans Ind - SHRTRIT','DS0.DOf0',_dim,_txt,'Official Transcript Indicator.  Specifies whether information being entered is from an official transcript.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Order Date - SHBDIPL','DS0.DO13ee',_dim,_date,'Date the diploma was ordered by the student.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Orig Code - SHREVNT','DS0.DOf1',_dim,_txt,'Originator Code.  Originator code of person/office who entered the event code.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Particip Code - SZRWGRD','DS0.DO13be',_dim,_txt,'The participation code indiating how the student will receive their diploma and participate in graduation ceremony',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Passed Ind - SHRGRDE','DS0.DOf4',_dim,_txt,'Grade Passed Indicator.Yes or No flag if grade should be counted in passed hours.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Phonetic Spell - SZRWGRD','DS0.DO13b6',_dim,_txt,'Phonetic spelling of students name',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pickup Date - SHBDIPL','DS0.DO13ef',_dim,_date,'Date the diploma was picked up by the student.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - SDRSNCA','DS0.DO1484',_dim,_num,'Internal Identification Number for Student.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - SHRATTR','DS0.DOf5',_dim,_num,'Internal Identification Number for Student.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - SHRDGCM','DS0.DOf6',_dim,_num,'Internal identification number of the student.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - SHRDGDH','DS0.DOf7',_dim,_num,'Internal Identification Number of Student.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - SHRDGIH','DS0.DOf8',_dim,_num,'Internal Identification Number of Student.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - SHRDGMR','DS0.DOf9',_dim,_num,'Internal identification number of the person',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - SHBDIPL','DS0.DO13f0',_dim,_num,'Internal identification number of the student.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - SHREVNT','DS0.DOfa',_dim,_num,'Internal Identification Number of Student.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - SHRINST','DS0.DOfc',_dim,_num,'Internal Identification Number of Instructor.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - SHRLGPA','DS0.DOfd',_dim,_num,'Internal Identification Number of Student.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - SHRQPND','DS0.DO134c',_dim,_num,'Internal Identification Number of Student.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - SHRQPNM','DS0.DO134d',_dim,_num,'Internal Identification Number of Student.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - SHRTATT','DS0.DOfe',_dim,_num,'Internal Identification Number for Student.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - SHRTCKD','DS0.DOff',_dim,_num,'Internal Identification Number for Student.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - SHRTCKG','DS0.DO100',_dim,_num,'Internal Identification Number of Student.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - SHRTCKL','DS0.DO101',_dim,_num,'Internal Identification Number of the student',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - SHRTCKN','DS0.DO102',_dim,_num,'Internal Identification Number of Student.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - SHRTGPA','DS0.DO103',_dim,_num,'Internal Identification Number of Student.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - SHRTRAM','DS0.DO105',_dim,_num,'Internal Identification Number of Student.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - SHRTRCD','DS0.DO106',_dim,_num,'Internal Identification Number of student.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - SHRTRCE','DS0.DO107',_dim,_num,'Internal Identification Number of student.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - SHRTRCR','DS0.DO108',_dim,_num,'Internal Identification Number of Student.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - SHRTRIT','DS0.DO109',_dim,_num,'Internal Identification Number of Student.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - SHRTTRM','DS0.DO10a',_dim,_num,'Internal Identification Number of Student.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - SHTTRAN','DS0.DO10b',_dim,_num,'Internal Identification of Student with transcript request.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - SZRWANS','DS0.DO13ff',_dim,_num,'Pidm of the individual answering the question.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - SZRWAWD','DS0.DO1382',_dim,_num,'Pidm of a student who is entering data on the Extension School Commencement web page.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - SZRWEVT','DS0.DO1383',_dim,_num,'Pidm of a student who is entering data on the Extension School Commencement web page. ',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - SZRWGRD','DS0.DO1384',_dim,_num,'Student PIDM',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - SZRWSET','DS0.DO1385',_dim,_num,'Pidm of a student who is entering data on the Extension School Commencement web page. ',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pre Catalog Ind - SHRTTRM','DS0.DO10c',_dim,_txt,'Pre-Catalog Indicator. Specifies if the term course information if based on he existing Banner catalog or is conversion data being entered prior to the Banner catalog. Valid values are: Y - Pre-catalog , and N - Current Catalog.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Primary Ind - SHRINST','DS0.DO10d',_dim,_txt,'This field is used to identify the primary instructor for a section rolled to history',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Primary Levl Ind - SHRTCKL','DS0.DO10e',_dim,_txt,'Primary Level Indicator.  Indicates which level is the primary level.  Values are Y - Yes, Primary level, and Null - not primary level.  One level must have a Y.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Prim Program - SDBDEGR','DS0.DO153e',_dim,_txt,'This field identifies the degree program code associated with the primary program of the student\"s degree.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Print Date - SHTTRAN','DS0.DO10f',_dim,_date,'Print Date. Identifies the date the transcript request was printed.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Printer - SHTTRAN','DS0.DO111',_dim,_txt,'Printer which was designated at sign on time.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Prog Code - SZRWANS','DS0.DO1400',_dim,_txt,'The program code for the program that the individual used when answering the question.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Program - SDRSNCA','DS0.DO1485',_dim,_txt,'Program Code',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Program - SHRDGMR','DS0.DO112',_dim,_txt,'Curriculum 1 Program Code',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Ptrm Code - SHRTCKN','DS0.DO114',_dim,_txt,'Part of Term Code.  Part of term associated with the students course.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Ptrm End Date - SHRTCKN','DS0.DO115',_dim,_date,'This column contains the section end date when the section is a CEU type',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Ptrm Start Date - SHRTCKN','DS0.DO116',_dim,_date,'This column contains the section start date when the section is a CEU type',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Qptp Code - SHRQPNM','DS0.DO135b',_dim,_txt,'Qualifying Paper Type Code.  For example - Masters thesis, senior paper, etc.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Qpnm Seq No - SHRQPND','DS0.DO135c',_dim,_txt,'Qualifying Paper Sequence Number.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Quality Points - SHRGRDE','DS0.DO119',_dim,_num,'Grade Quality Points.Quality points associated with the grade. Used in GPA calculation.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Quality Points Average - SHRGRDE','DS0.DO15a9',_dim,_num,'Quality points associated with the average grade for the class calculated using SHRTCKN grade history records. Used in GPA calculation.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Quality Points - SHRLGPA','DS0.DO11a',_dim,_num,'Quality Points for the level.  Calculated by multiplying credit hours of the course by quality points associated with the grade.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Quality Points - SHRTGPA','DS0.DO11b',_dim,_num,'Quality Points for the term.  Calculated by multiplying credit hours of the course by quality points associated with the grade.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Reason - SZRWAWD','DS0.DO13b3',_dim,_txt,'Reason for nominating an individual for a Commencement award',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Record Status Date - SHRTTRM','DS0.DO11c',_dim,_date,'Status Date. Date associated with the status of the record.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Record Status Ind - SHRTTRM','DS0.DO11d',_dim,_txt,'Status Indicator. Specifies the status of the term record. Valid values are: G - Grade Mailer Pending, C - Grade Mailer processing complete, R - Revised Grade Mailer Pending, N - New Record.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Reg Seq - SHRTCKN','DS0.DO11e',_dim,_num,'Registration Sequence Number.  Order student registered for the course',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Request Date - SHTTRAN','DS0.DO121',_dim,_date,'Request Date. Identifies the date the transcript was requested.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Sbgi Code - SHRTRIT','DS0.DO123',_dim,_txt,'Transfer Institution Code.  Source/Background Institution Code that identifies the transfer institution.  Value of 999999 will allow user to enter name of institution.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Sbgi Code - SHTTRAN','DS0.DO124',_dim,_txt,'Source/Background Institution Code.  Identifies the institution the student wants the transcript sent to.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Sbgi Desc - SHRTRIT','DS0.DO126',_dim,_txt,'Name of Transfer Institution.  Entered only when transfer institution code is 999999.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Schd Code - SHRTCKN','DS0.DO127',_dim,_txt,'This field identifies the instructional type of the section.  Use the LIST FIELD VALUES key to display the Schedule Type Validation Form - STVSCHD.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Seq - SZRWSET','DS0.DO13c3',_dim,_num,'Sequence number for the disabled guest who needs an accomodation to attend commencement: currently four such guests are permitted',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Seq No - SHRDGMR','DS0.DO128',_dim,_num,'Degree Sequence Number. Number assigned to each degree student has.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Seq No - SHRQPND','DS0.DO1353',_dim,_num,'Sequence Number.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Seq No - SHRQPNM','DS0.DO1354',_dim,_txt,'Sequence Number.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Seq No - SHRTCKG','DS0.DO129',_dim,_num,'Institutional Course Grade Sequence Number.  Sequence number of the grade for the course with highest sequence number being most recent grade.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Seq No - SHRTCKN','DS0.DO12a',_dim,_num,'Internal Course Sequence Number.  Sequence number assigned to each course a student has for the term.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Seq No - SHRTRAM','DS0.DO12b',_dim,_num,'Transfer Institution Attendance Period Sequence Number.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Seq No - SHRTRCE','DS0.DO12c',_dim,_num,'Internal Transfer Course Sequence Number.  Identifies transfer course.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Seq No - SHRTRCR','DS0.DO12d',_dim,_num,'Transfer Course Sequence Number.  Identifies the transfer course from the transcript.  Value of 000 means no transcript detail is entered.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Seq No - SHRTRIT','DS0.DO12e',_dim,_num,'Transfer Institution Sequence Number.  Identifies the transfer institution record.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Seq No - SHTTRAN','DS0.DO12f',_dim,_num,'Sequence Number of the transcript request for the student.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Seq No - STVWANS','DS0.DO140e',_dim,_num,'Sequence number or version of an answer.  Used to uniquely define a record in combination with question and answer code.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Seq No - STVWQST','DS0.DO141a',_dim,_num,'The sequence number of a question.  Used to uniquely identify an stvwqst record in szrwans.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Seq Numb - SHRTCKN','DS0.DO130',_dim,_txt,'Course Sequence Number.  Sequence number associated with students course for the term.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Seqno - SHRDGCM','DS0.DO131',_dim,_num,'This field does not display on the form.  It assigns an internal sequence number to each comment created.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Sess Code - SHRTCKN','DS0.DO132',_dim,_txt,'Session Code.  Session (day, evening,etc.) of the students course.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Sessionid - SHTTRAN','DS0.DO133',_dim,_txt,'Sessionid at signon time.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Start Date - STVWANS','DS0.DO140f',_dim,_date,'The first day the answer was in use.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Start Date - STVWQST','DS0.DO141b',_dim,_date,'The date that a web page question became active.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Start Time - STVWEVT','DS0.DO13ac',_dim,_txt,'The start time for a commencement event. ',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Stat Code - SHBDIPL','DS0.DO13f1',_dim,_txt,'State code of diploma address.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Stat Code - SHTTRAN','DS0.DO134',_dim,_txt,'State Code of transcript address.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Street1 - SHBDIPL','DS0.DO13f2',_dim,_txt,'Street Address Line 1 of diploma address.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Street1 - SHTTRAN','DS0.DO138',_dim,_txt,'Street Address Line 1 of transcript address.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Street2 - SHBDIPL','DS0.DO13f3',_dim,_txt,'Street Address Line 2 of diploma address.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Street2 - SHTTRAN','DS0.DO139',_dim,_txt,'Street Address Line 2 of transcript address.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Street3 - SHBDIPL','DS0.DO13f4',_dim,_txt,'Street Address Line 3 of diploma address.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Street3 - SHTTRAN','DS0.DO13a',_dim,_txt,'Street Address Line 3 of transcript address.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Stu City - SZRWGRD','DS0.DO13ba',_dim,_txt,'The city of the students address as entered/confirmed by student on web page',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Stu Degc Seq - SZRWGRD','DS0.DO13c0',_dim,_num,'The sequence number for degree which the student will receive as selected/confirmed by student on web page.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Stu Dipl Name - SZRWGRD','DS0.DO1394',_dim,_txt,'Diploma name of student as entered/confirmed by student.  Taken from shbdipl if exists.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Stu Grad Date - SZRWGRD','DS0.DO1381',_dim,_date,'The date on which the student will graduate as selected/confirmed by student on web page.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Stu Nation - SZRWGRD','DS0.DO13bd',_dim,_txt,'The nation for the students address as entered/confirmed by student on web page',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Stu Stat Code - SZRWGRD','DS0.DO13bb',_dim,_txt,'The state code for the students address as entered/confirmed by student on web page',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Stu Street Line1 - SZRWGRD','DS0.DO13b7',_dim,_txt,'First line of the students address as entered/confirmed by student on web page',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Stu Street Line2 - SZRWGRD','DS0.DO13b8',_dim,_txt,'Second line of the students address as entered/confirmed by student on web page',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Stu Street Line3 - SZRWGRD','DS0.DO13b9',_dim,_txt,'Third line of the students address as entered/confirmed by student on web page',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Stu Zip - SZRWGRD','DS0.DO13bc',_dim,_txt,'The zip code for the students address as entered/confirmed by student on web page',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Subj Code - SHRTCKN','DS0.DO13c',_dim,_txt,'Subject Area Code.  Subject area associated with the students course.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Subj Code - SHRTRCE','DS0.DO13d',_dim,_txt,'Subject Code of the equivalent transfer course.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Survey Flag - SZRWGRD','DS0.DO13c1',_dim,_txt,'The survey flag is set to N when the record is created, and is set to Y when the student clicks on link to begin survey. ',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Tckn Seq No - SHRATTR','DS0.DO13e',_dim,_num,'Course Sequence Number.  This field identifies the sequence number of the course in the TCKN record.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Tckn Seq No - SHRTCKD','DS0.DO13f',_dim,_num,'Course Sequence Number.  This field identifies the sequence number of the course in the TCKN record.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Tckn Seq No - SHRTCKG','DS0.DO140',_dim,_num,'Institutional Course Sequence Number.  Internal sequence number of the course associated with the grade.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Tckn Seq No - SHRTCKL','DS0.DO141',_dim,_num,'Course Sequence Number.  Sequence number of the institutional course.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term - SHTTRAN','DS0.DO143',_dim,_txt,'Term Code. Identifies the term the transcript was requested.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code - Last Enrollment SO Degr','DS0.DO158a',_dim,_txt,'The term associated with the last course applied to a degree for the following degree statuses: SO and PE.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code - Last Enrollment SO IN Degr','DS0.DO1693',_dim,_txt,'The term associated with the last course applied to a degree for the following degree statuses: SO, PE, and IN.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code - SHRATTR','DS0.DO146',_dim,_txt,'Term Code.  The term associated with the course.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code - SHREVNT','DS0.DO147',_dim,_txt,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code - SHRINST','DS0.DO149',_dim,_txt,'Section Instructors Term Code.  Term of instructors course.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code - SHRTCKD','DS0.DO14a',_dim,_txt,'Term Code.  The term associated with the applied degree of a course.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code - SHRTCKG','DS0.DO14b',_dim,_txt,'Institutional Course Grade Term Code.  Term of students grade for the course.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code - SHRTCKL','DS0.DO14c',_dim,_txt,'Term Code.  Term associated with the applied level of the course.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code - SHRTCKN','DS0.DO14d',_dim,_txt,'Term Code.  Term for students academic history course records.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code - SHRTGPA','DS0.DO14e',_dim,_txt,'Term Code.  Term code for the GPA hours and calculation.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code - SHRTRCR','DS0.DO14f',_dim,_txt,'Term associated with transfer course.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code - SHRTTRM','DS0.DO150',_dim,_txt,'Term Code.  Term of student institutional course record.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code - SZRWANS','DS0.DO1401',_dim,_txt,'The term code during which the question and answer applied.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code Completed - SHRDGMR','DS0.DO151',_dim,_txt,'Term designated as the term in which graduate work must be completed.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code Ctlg 1 - SHRDGMR','DS0.DO152',_dim,_txt,'Curriculum 1 Catalog Term Code',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code Ctlg 2 - SHRDGMR','DS0.DO153',_dim,_txt,'Curriculum 2 Catalog Term Code',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code Detc - SHTTRAN','DS0.DO154',_dim,_txt,'Billing detail code.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code Eff - SHRTRCE','DS0.DO155',_dim,_txt,'Effective term of the equivalent transfer course.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code Effective - SHRGRDE','DS0.DO156',_dim,_txt,'Grade Effective Term Code. Earliest term for which grade will be used.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code Entered - SHRTRAM','DS0.DO158',_dim,_txt,'Term Code.  Identifies the term to which transfer attendance period applies.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code Grad - SHRDGMR','DS0.DO15a',_dim,_txt,'Term in which the student graduates.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code In Prg - SHTTRAN','DS0.DO15b',_dim,_txt,'Cutoff term for in-progress reporting.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code Sturec - SHRDGMR','DS0.DO15c',_dim,_txt,'Term Code. The term associated with the general student record when degree information is defaulted.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Type - SHRTRAM','DS0.DO15f',_dim,_txt,'Term Type.  Specifies the type of term, for example: semester, quarter, etc.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Text - SHRQPND','DS0.DO135e',_dim,_txt,'Qualifying Paper Text.  Free format.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Text - STVWEVT','DS0.DO13ae',_dim,_txt,'The text describing the commencement event.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Title Line1 - SHRQPNM','DS0.DO1355',_dim,_txt,'Qualifying Paper Title line.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Title Line2 - SHRQPNM','DS0.DO1356',_dim,_txt,'Qualifying Paper Title line.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Title Line3 - SHRQPNM','DS0.DO1357',_dim,_txt,'Qualifying Paper Title line.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Title Line4 - SHRQPNM','DS0.DO1358',_dim,_txt,'Qualifying Paper Title line.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Tix Allowed - STVWEVT','DS0.DO13af',_dim,_num,'The number of tickets allowed for a commencement event for a particular degree code',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Tix Ordered - SZRWEVT','DS0.DO13b5',_dim,_num,'The number of tickets ordered for a commencement event',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Total Credits','DS0.DO1555',_dim,_num,'The number of credits displayed on Banner SHADEGR form on the upper right in the Total field.  To return the correct data, it is imperative to ensure the Business Objects query in which this is used returns one and only one degree record per student.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Total Credits GR','DS0.DO1688',_dim,_num,'The number of credits displayed on Banner SHADEGR form on the upper right in the Total field that are GR level and B- or above.  To return the correct data, it is imperative to ensure the Business Objects query in which this is used returns one and only one degree record per student.  ',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Total History and Registered Credits','DS0.DO15aa',_dim,_num,'The number of credits displayed on Banner SHADEGR form on the upper right in the Total field PLUS the number of credits that count towards grade history that the student is registered for.  To return the correct data, it is imperative to ensure the Business Objects query in which this is used returns one and only one degree record per student.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Total History and Registered Credits GR','DS0.DO1689',_dim,_num,'The number of credits displayed on Banner SHADEGR form on the upper right in the Total field PLUS the number of credits that count towards grade history that the student is registered for, BUT at the graduation level.  Courses must be GR level and grade B- or better.  Registered courses must be at the GR level.  To return the correct data, it is imperative to ensure the Business Objects query in which this is used returns one and only one degree record per student.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Tprt Code - SHTTRAN','DS0.DO162',_dim,_txt,'Transcript type which is to be used for this transcript request',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Traditional Ind - SHRGRDE','DS0.DO164',_dim,_txt,'Grade Traditional Indicator.Yes or No flag if grade is considered a traditional grade for Degree Audit.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Tram Seq No - SHRTATT','DS0.DO165',_dim,_num,'Transfer Institution Attendance Periord Sequence Number.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Tram Seq No - SHRTGPA','DS0.DO166',_dim,_num,'Transfer Institution Attendance Period Sequence Number.  Used only if GPA type indicator is a T.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Tram Seq No - SHRTRCD','DS0.DO167',_dim,_num,'Transfer Institution Attendance Period Sequence Number.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Tram Seq No - SHRTRCE','DS0.DO168',_dim,_num,'Transfer Institution Attendance Periord Sequence Number.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Tram Seq No - SHRTRCR','DS0.DO169',_dim,_num,'Transfer Institution Attendance Period Sequence Number.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Tran Fice - SZRCHEN','DS0.DO12dc',_dim,_txt,'This field identifies the FICE code of the students transfer-in school.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Tran Branch - SZRCHEN','DS0.DO12dd',_dim,_txt,'This field identifies the Branch code of the trans-in school.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Tran School Name - SZRCHEN','DS0.DO12de',_dim,_txt,'This field identifies the school name of the trans-in school.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Trans Course Name - SHRTRCR','DS0.DO16a',_dim,_txt,'Transfer Course Name.  Describes the transfer course title from the original transcript.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Trans Date Rcvd - SHRTRIT','DS0.DO16d',_dim,_date,'Transcript Received Date.  Identifies the date the transcript was received.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Transc Prt Ind - SHRDGDH','DS0.DO170',_dim,_txt,'Y indicates that this honor will print on the transcript.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Transc Prt Ind - SHRDGIH','DS0.DO171',_dim,_txt,'Y indicates that this honor will print on the transcript.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Transfer Credits','DS0.DO1554',_dim,_num,'The number of credits displayed on Banner SHADEGR form on the upper right in the Transfer field.  To return the correct data, it is imperative to ensure the Business Objects query in which this is used returns one and only one degree record per student.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Trce Seq No - SHRTATT','DS0.DO172',_dim,_num,'Internal Transfer Course Sequence Number.  Identifies transfer course.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Trce Seq No - SHRTRCD','DS0.DO173',_dim,_num,'Transfer Course Internal Sequence Number.  Identifies sequence number of transfer course.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Trcr Seq No - SHRTATT','DS0.DO174',_dim,_num,'Internal Equivalent Transfer Course Sequence Number.  Identifies the transfer   course equivalent.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Trcr Seq No - SHRTRCE','DS0.DO175',_dim,_num,'Internal Equivalent Transfer Course Sequence Number.  Identifies the transfer course equivalent.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Trit Seq No - SHRTATT','DS0.DO176',_dim,_num,'Transfer Institution Sequence Number.  Identifies transfer institution.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Trit Seq No - SHRTGPA','DS0.DO177',_dim,_num,'Transfer Institution Sequence Number.  Used only if GPA type indicator is a T.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Trit Seq No - SHRTRAM','DS0.DO178',_dim,_num,'Transfer Institution Sequence Number.  Identifies the transfer institution.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Trit Seq No - SHRTRCD','DS0.DO179',_dim,_num,'Transfer Institution Sequence Number.  Identifies the transfer institution.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Trit Seq No - SHRTRCE','DS0.DO17a',_dim,_num,'Transfer Institution Sequence Number.  Identifies transfer institution.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Trit Seq No - SHRTRCR','DS0.DO17b',_dim,_num,'Transfer Institution Sequence Number.  Identifies the transfer institution.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Type - SHTTRAN','DS0.DO17e',_dim,_txt,'Transcript Send Type.  Indicates if the transcript is to be sent via EDI or printed on paper.  Valid values are: E - EDI, blank or Null - printed transcript.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Type - STVWAWD','DS0.DO13a9',_dim,_txt,'Type of award such as Public Service or Teaching Excellence. ',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Update Source Ind - SHRTTRM','DS0.DO17f',_dim,_txt,'Source Indicator. Indicates sourse of how record was created. Valid values are:  S - System created during grade roll process, and U - User created.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('User - SHRDGMR','DS0.DO15c4',_dim,_txt,'Id of person who created or last updated a SHADEGR record',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('User - SHTTRAN','DS0.DO180',_dim,_txt,'Transcript Request User. Identifies the user who entered a transcript request to cause this temporary table to be built to store the information about the transcript.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('User - STVWANS','DS0.DO1410',_dim,_txt,'The person who last updated this record.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('User - STVWAWD','DS0.DO1386',_dim,_txt,'The person who last updated this record  ',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('User - STVWEVT','DS0.DO138c',_dim,_txt,'The person who last updated this record  ',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('User - STVWQST','DS0.DO141c',_dim,_txt,'The person who last updated this record',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('User - SZRWANS','DS0.DO1402',_dim,_txt,'The person who last updated this record.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('User - SZRWAWD','DS0.DO138d',_dim,_txt,'The person who last updated this record  ',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('User - SZRWEVT','DS0.DO1391',_dim,_txt,'The person who last updated this record  ',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('User - SZRWGRD','DS0.DO1392',_dim,_txt,'The person who last updated this record  ',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('User - SZRWSET','DS0.DO1393',_dim,_txt,'The person who last updated this record  ',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Wans Code - SZRWANS','DS0.DO1403',_dim,_txt,'The answer code for the answer given by the individual to the question asked.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Wans Seq No - SZRWANS','DS0.DO1404',_dim,_num,'The sequence number uniquely identifying a particular version of the answer given.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Wawd Code - SZRWAWD','DS0.DO13b1',_dim,_txt,'Award code for the Commencement award',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Web Entry Ind - SHRGRDE','DS0.DO181',_dim,_txt,'Web Entry Indicator.To prevent entry of certain grades - through Web for faculty,advisors. Y- include on Web.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Wevt Code - SZRWEVT','DS0.DO13b4',_dim,_txt,'Code for the commencement event that the student is going to attend ',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Wevt Code - SZRWSET','DS0.DO1578',_dim,_txt,'Code for the commencement event that a disabled guest or disabled student is going to attend ',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Wqst Code - STVWANS','DS0.DO1411',_dim,_txt,'Question code associated with this answer.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Wqst Code - SZRWANS','DS0.DO1405',_dim,_txt,'The question code for the question being answered by the individual.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Wqst Num - SZRWANS','DS0.DO1406',_dim,_num,'A number to identify an instance of a question since one question may have mult\niple instances.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Wqst Seq No - STVWANS','DS0.DO1412',_dim,_num,'Sequence number of the question.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Wqst Seq No - SZRWANS','DS0.DO1407',_dim,_num,'The sequence number uniquely identifying a particular version of the question being answered.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Zip - SHBDIPL','DS0.DO13f6',_dim,_txt,'Zip of diploma address.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Zip - SHTTRAN','DS0.DO183',_dim,_txt,'Zip Code of transcript address.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls1=cls0.add('Accounts Receivable','',_cls,_txt,'',false,null,'','','','BANNER',false,'');
cls1.allowInResult=true;cls1.allowInFilter=true
cls2=cls1.add('A Acci Code (Memo) - TBRACCT','DS0.DO124f',_dim,_txt,'Banner Finance Index Code for account a',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('A Acci Code - TBRACCT','DS0.DO184',_dim,_txt,'Banner Finance Index Code for account a',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('A Acct Code (Memo) - TBRACCT','DS0.DO1250',_dim,_txt,'Banner Finance Account Code for account a',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('A Acct Code - TBRACCT','DS0.DO185',_dim,_txt,'Banner Finance Account Code for account a',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('A Actv Code (Memo) - TBRACCT','DS0.DO1251',_dim,_txt,'Banner Finance Activity Code for account a',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('A Actv Code - TBRACCT','DS0.DO186',_dim,_txt,'Banner Finance Activity Code for account a',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('A Coas Code (Memo) - TBRACCT','DS0.DO1252',_dim,_txt,'Banner Finance Chart Of Accounts Code for account a',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('A Coas Code - TBRACCT','DS0.DO187',_dim,_txt,'Banner Finance Chart Of Accounts Code for account a',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('A Fund Code (Memo) - TBRACCT','DS0.DO1253',_dim,_txt,'Banner Finance Fund Code for account a',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('A Fund Code - TBRACCT','DS0.DO188',_dim,_txt,'Banner Finance Fund Code for account a',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('A Locn Code (Memo) - TBRACCT','DS0.DO1254',_dim,_txt,'Banner Finance Location Code for account a',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('A Locn Code - TBRACCT','DS0.DO189',_dim,_txt,'Banner Finance Location Code for account a',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('A Orgn Code (Memo) - TBRACCT','DS0.DO1255',_dim,_txt,'Banner Finance Organization Code for account a',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('A Orgn Code - TBRACCT','DS0.DO18a',_dim,_txt,'Banner Finance Organization Code for account a',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('A Prog Code (Memo) - TBRACCT','DS0.DO1256',_dim,_txt,'Banner Finance Program Code for account a',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('A Prog Code - TBRACCT','DS0.DO18b',_dim,_txt,'Banner Finance Program Code for account a',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('A Rucl Code1 (Memo) - TBRACCT','DS0.DO1257',_dim,_txt,'This is the rule class code for the A ACCOUNT to be used when the transaction is initially fed to accounting',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('A Rucl Code1 - TBRACCT','DS0.DO18c',_dim,_txt,'This is the rule class code for the A ACCOUNT to be used when the transaction is initially fed to accounting',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('A Rucl Code2 (Memo) - TBRACCT','DS0.DO1258',_dim,_txt,'This is the rule class code for the A ACCOUNT to be used when the application of payment transaction is fed to accounting and the opposite side of the transaction is the opposite type of detail code',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('A Rucl Code2 - TBRACCT','DS0.DO18d',_dim,_txt,'This is the rule class code for the A ACCOUNT to be used when the application of payment transaction is fed to accounting and the opposite side of the transaction is the opposite type of detail code',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('A Rucl Code3 (Memo) - TBRACCT','DS0.DO1259',_dim,_txt,'This is the rule class code for the A ACCOUNT to be used when the application of payment transaction is fed to accounting and the opposite side of the transaction is the same type of detail code',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('A Rucl Code3 - TBRACCT','DS0.DO18e',_dim,_txt,'This is the rule class code for the A ACCOUNT to be used when the application of payment transaction is fed to accounting and the opposite side of the transaction is the same type of detail code',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Account A (Memo) - TBRACCT','DS0.DO125a',_dim,_txt,'This field identifies the actual account number from the finance system associated with this detail code.  For a detailed description see the field usage notes.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Account A - TBRACCT','DS0.DO190',_dim,_txt,'This field identifies the actual account number from the finance system associated with this detail code.  For a detailed description see the field usage notes.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Account B (Memo) - TBRACCT','DS0.DO125b',_dim,_txt,'This field identifies the actual account number from the finance system associated with this detail code.  For a detailed description see the field usage notes.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Account B - TBRACCT','DS0.DO191',_dim,_txt,'This field identifies the actual account number from the finance system associated with this detail code.  For a detailed description see the field usage notes.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Account Balance SUM','DS0.DO1583',_msr,_num,'This field identifies the actual account number from the finance system associated with this detail code.  For a detailed description see the field usage notes.',true,null,'','','','BANNER',false,'SUM');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Account Or Detail - TBRCTEX','DS0.DO192',_dim,_txt,'This field indicates if the contract or exemption is an account level or detail level credit.  Valid values are: A - Account level based on total registration charges, D - Detail level for specific registration charge.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Acct Feed Ind - TBRACCD','DS0.DO194',_dim,_txt,'This field indicates if the status of the transaction in the accounting feed.  Valid values are: Y - Feed transaction, F - Transaction fed, N - Do not feed transaction.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Acct Feed Ind - TBRDEPO','DS0.DO196',_dim,_txt,'This field indicates the status of the deposit in the accounting feed.  Valid values are: Y - Feed transaction, F - Transaction fed, N - Do not feed transaction.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Acct Feed Ind - TDRACCD','DS0.DO197',_dim,_txt,'This field indicates if the status of the transaction in the accounting feed.  Valid values are: Y - Feed transaction, F - Transaction fed, N - Do not feed transaction.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date (Contract) - SPRADDR','DS0.DO11fe',_dim,_date,'This field defines the most current date a record is added or changed.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date (Contract) - SPRTELE','DS0.DO1316',_dim,_date,'Date of last activity for telephone record.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date (Memo) - TBBDETC','DS0.DO123c',_dim,_date,'This field specifies the most current date record was created or updated.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date (Memo) - TBRACCT','DS0.DO125c',_dim,_date,'This field specifies the most current date record was created or updated.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - TBBACCT','DS0.DO199',_dim,_date,'This field specifies the most current date record was created or updated.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - TBBCONT','DS0.DO19a',_dim,_date,'This field specifies the most current date record was created or updated.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - TBBCSTU','DS0.DO19b',_dim,_date,'This field specifies the most current date record was created or updated.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - TBBDETC','DS0.DO19e',_dim,_date,'This field specifies the most current date record was created or updated.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - TBBPIDM','DS0.DO1a2',_dim,_date,'TBBPIDM_ACTIVITY_DATE is the date the row was created. See comment on column for tbbpidm_sessionid for more info.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - TBBUPRF','DS0.DO1a5',_dim,_date,'The date the row was inserted or last modified.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - TBRACCD','DS0.DO1a6',_dim,_date,'This field specifies the most current date record was created or updated.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - TBRACCT','DS0.DO1a7',_dim,_date,'This field specifies the most current date record was created or updated.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - TBRBIL1','DS0.DO1aa',_dim,_date,'Date record was created or last updated (this record normally should not be updated).',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - TBRCACC','DS0.DO1ab',_dim,_date,'This field specifies the most current date record was created or updated.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - TBRCBRQ','DS0.DO1ac',_dim,_date,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - TBRCLCT','DS0.DO1ae',_dim,_date,'This field specifies the most current date record was created or updated.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - TBRCMNT','DS0.DO1af',_dim,_date,'This field specifies the most current date record was created or updated.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - TBRCTEX','DS0.DO1b1',_dim,_date,'This field specifies the most current date record was created or updated.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - TBRDEPO','DS0.DO1b2',_dim,_date,'This field specifies the most current date record was created or updated.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - TBRMEMO','DS0.DO1b6',_dim,_date,'This field specifies the most current date record was created or updated.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - TDRACCD','DS0.DO1b8',_dim,_date,'This field specifies the most current date record was created or updated.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Addr Seqno (Contract) - SPRTELE','DS0.DO1317',_dim,_num,'Address type sequence number associated with address type.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Amount (Memo) - TBBDETC','DS0.DO123d',_dim,_num,'This field specifies the default amount associated with the detail code.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Amount - TBBDETC','DS0.DO1bf',_dim,_num,'This field specifies the default amount associated with the detail code.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Amount - TBRACCD','DS0.DO1c1',_dim,_num,'This field indicates the dollar amount of the transaction.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Amount SUM - TBRACCD','DS0.DO12ab',_msr,_num,'This field indicates the sum of the transactions.',false,null,'','','','BANNER',false,'SUM');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Amount - TBRCTEX','DS0.DO1c3',_dim,_num,'This field identifies the amount of the third party contract or exemption.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Amount - TBRDEPO','DS0.DO1c4',_dim,_num,'This field identifies the amount of the deposit.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Amount - TBRMEMO','DS0.DO1c5',_dim,_num,'This field specifies the amount of the memo transaction.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Amount SUM - TBRMEMO','DS0.DO12ac',_msr,_num,'This field indicates the sum of the memo transactions.',false,null,'','','','BANNER',false,'SUM');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Amount - TDRACCD','DS0.DO1c7',_dim,_num,'This field indicates the dollar amount of the transaction.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Amount - TZRVCHR','DS0.DO1c9',_dim,_num,'This field specifies the amount of the voucher issued.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Asrc Code (Contract) - SPRADDR','DS0.DO11ff',_dim,_txt,'Address source code.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Atyp Code (Contract) - SPRADDR','DS0.DO1200',_dim,_txt,'This field identifies the type of address associated with person.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Atyp Code (Contract) - SPRTELE','DS0.DO1318',_dim,_txt,'Optional Address Type code associated with telephone number.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Atyp Code - TBRACCD','DS0.DO1ca',_dim,_txt,'In combination with ATYP_SEQNO, the address for this account detail record.  (i.e. where the bill will be sent)',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Atyp Code - TBRDEPO','DS0.DO1cb',_dim,_txt,'In combination with ATYP_SEQNO, the address for this account detail record.  (i.e. where the bill will be sent)',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Atyp Code - TBRMEMO','DS0.DO1cc',_dim,_txt,'In combination with ATYP_SEQNO, the address for this account detail record.  (i.e. where the bill will be sent)',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Atyp Code - TDRACCD','DS0.DO1cd',_dim,_txt,'In combination with ATYP_SEQNO, the address for this account detail record.  (i.e.  where the bill will be sent)',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Atyp Seqno - TBRACCD','DS0.DO1ce',_dim,_num,'In combination with ATYP_CODE, the address for this account detail record.  (i.e. where the bill will be sent)',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Atyp Seqno - TBRDEPO','DS0.DO1cf',_dim,_num,'In combination with ATYP_CODE, the address for this account detail record.  (i.e. where the bill will be sent)',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Atyp Seqno - TBRMEMO','DS0.DO1d0',_dim,_num,'In combination with ATYP_CODE, the address for this account detail record.  (i.e. where the bill will be sent)',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Atyp Seqno - TDRACCD','DS0.DO1d1',_dim,_num,'In combination with ATYP_CODE, the address for this account detail record.  (i.e.  where the bill will be sent)',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Auth Ind - TBBCSTU','DS0.DO1d2',_dim,_txt,'An indicator signifying whether a student is pre-authorized, authorized, or unauthorized to use a contract.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Auth Ind - TBRCTEX','DS0.DO1d3',_dim,_txt,'An indicator signifying whether a student is pre-authorized, authorized, or unauthorized to use a contract.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Auth Number - TBBCSTU','DS0.DO1d4',_dim,_txt,'A number issued for a student by a third party when a student is authorized to use a contract.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Auto Release Ind - TBRDEPO','DS0.DO1d9',_dim,_txt,'This field indicates if the deposit should be automatically released on the account after the release date.  Valid values are: Y - Automatically release , N - Release manually on the Acount Detail Form.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('B Acci Code (Memo) - TBRACCT','DS0.DO125d',_dim,_txt,'Banner Finance Index Code for account b',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('B Acci Code - TBRACCT','DS0.DO1da',_dim,_txt,'Banner Finance Index Code for account b',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('B Acct Code (Memo) - TBRACCT','DS0.DO125e',_dim,_txt,'Banner Finance Account Code for account b',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('B Acct Code - TBRACCT','DS0.DO1db',_dim,_txt,'Banner Finance Account Code for account b',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('B Actv Code (Memo) - TBRACCT','DS0.DO125f',_dim,_txt,'Banner Finance Activity Code for account b',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('B Actv Code - TBRACCT','DS0.DO1dc',_dim,_txt,'Banner Finance Activity Code for account b',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('B Coas Code (Memo) - TBRACCT','DS0.DO1260',_dim,_txt,'Banner Finance Chart Of Accounts Code for account b',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('B Coas Code - TBRACCT','DS0.DO1dd',_dim,_txt,'Banner Finance Chart Of Accounts Code for account b',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('B Fund Code (Memo) - TBRACCT','DS0.DO1261',_dim,_txt,'Banner Finance Fund Code for account b',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('B Fund Code - TBRACCT','DS0.DO1de',_dim,_txt,'Banner Finance Fund Code for account b',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('B Locn Code (Memo) - TBRACCT','DS0.DO1262',_dim,_txt,'Banner Finance Location Code for account b',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('B Locn Code - TBRACCT','DS0.DO1df',_dim,_txt,'Banner Finance Location Code for account b',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('B Orgn Code (Memo) - TBRACCT','DS0.DO1263',_dim,_txt,'Banner Finance Organization Code for account b',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('B Orgn Code - TBRACCT','DS0.DO1e0',_dim,_txt,'Banner Finance Organization Code for account b',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('B Prog Code (Memo) - TBRACCT','DS0.DO1264',_dim,_txt,'Banner Finance Program Code for account b',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('B Prog Code - TBRACCT','DS0.DO1e1',_dim,_txt,'Banner Finance Program Code for account b',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('B Rucl Code1 (Memo) - TBRACCT','DS0.DO1265',_dim,_txt,'This is the rule class code for the B ACCOUNT to be used when the transaction is initially fed to accounting',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('B Rucl Code1 - TBRACCT','DS0.DO1e2',_dim,_txt,'This is the rule class code for the B ACCOUNT to be used when the transaction is initially fed to accounting',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('B Rucl Code2 (Memo) - TBRACCT','DS0.DO1266',_dim,_txt,'This is the rule class code for the B ACCOUNT to be used when the application of payment transaction is fed to accounting and the opposite side of the transaction is the opposite type of detail code',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('B Rucl Code2 - TBRACCT','DS0.DO1e3',_dim,_txt,'This is the rule class code for the B ACCOUNT to be used when the application of payment transaction is fed to accounting and the opposite side of the transaction is the opposite type of detail code',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('B Rucl Code3 (Memo) - TBRACCT','DS0.DO1267',_dim,_txt,'This is the rule class code for the B ACCOUNT to be used when the application of payment transaction is fed to accounting and the opposite side of the transaction is the same type of detail code',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('B Rucl Code3 - TBRACCT','DS0.DO1e4',_dim,_txt,'This is the rule class code for the B ACCOUNT to be used when the application of payment transaction is fed to accounting and the opposite side of the transaction is the same type of detail code',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Balance - TBRACCD','DS0.DO1e5',_dim,_num,'This field indicates the balance remaining from the amount of the transaction.  This balance is adjusted by the application of payment process.  A negative balance is a credit on the account.  A positive balance is a charge.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Balance Due','DS0.DOf05',_msr,_num,'Total amount the student owes.',false,null,'','','','BANNER',false,'SUM');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Balance - TDRACCD','DS0.DO1e6',_dim,_num,'This field indicates the balance remaining from the amount of the transaction.  This balance is adjusted by the application of payment process.  A negative balance is a credit on the account.  A positive balance is a charge.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Balance Due - TBRBIL1','DS0.DO1e7',_dim,_num,'Balance due on the bill.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Bill Code - TBBACCT','DS0.DO1ea',_dim,_txt,'A code describing why a bill is on hold.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Bill Date - TBRACCD','DS0.DO1eb',_dim,_date,'This field specifies the date the transaction was processed the billing procedure in \"Statement\" mode.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Bill Date - TDRACCD','DS0.DO1ec',_dim,_date,'This field specifies the date the transaction was processed the billing procedure in \"Statement\" mode.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Bill Ind - TBBACCT','DS0.DO1ed',_dim,_txt,'This field indicates if the person\"s account should not be billed.  Valid value is: N - Do not select person for billing.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Bill Type - TBRBIL1','DS0.DO1ee',_dim,_txt,'Type of bill: I for invoice, S for statement.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Billing Ind - TBRMEMO','DS0.DO1ef',_dim,_txt,'This field indicates if the memo transaction should be printed and calculated into the amount due on the account\"s bill.  This indicator will be used only if the memo indicator on the Billing Control Form is set to \"Y\".',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Card Auth Number Vr - TBRACCD','DS0.DO1f4',_dim,_txt,'Voice Response(VR) authorization number.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Card Auth Number Vr - TDRACCD','DS0.DO1f5',_dim,_txt,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Card Exp Date Vr - TBRACCD','DS0.DO1f6',_dim,_date,'Voice Response(VR) credit card expiration date.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Card Exp Date Vr - TDRACCD','DS0.DO1f7',_dim,_date,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Card Type Vr - TBRACCD','DS0.DO1f8',_dim,_txt,'Voice Response(VR) credit card type indicator.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Card Type Vr - TDRACCD','DS0.DO1f9',_dim,_txt,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Chck Date - TZRVCHR','DS0.DO1fd',_dim,_date,'This field specifies the Bottom Line returned check date',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Chck Number - TZRVCHR','DS0.DO1fe',_dim,_num,'This field specifies the Bottom Line returned check number',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('City (Contract) - SPRADDR','DS0.DO1202',_dim,_txt,'This field maintains the city associated with the address of person.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Cnty Code (Contract) - SPRADDR','DS0.DO1203',_dim,_txt,'This field maintains the county associated with the address of person.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Comment (Contract) - SPRTELE','DS0.DO1319',_dim,_txt,'Comment relating to telephone number.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Cont Prty - TBRCLCT','DS0.DO203',_dim,_txt,'The order in which the contract is processed against the account.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Contract Address Line1','DS0.DO1277',_dim,_txt,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Contract Address Line2','DS0.DO1278',_dim,_txt,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Contract Address Line3','DS0.DO1279',_dim,_txt,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Contract Address Line4','DS0.DO127a',_dim,_txt,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Contract Address Line5','DS0.DO127b',_dim,_txt,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Contract Address Line6','DS0.DO127c',_dim,_txt,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Contract Number - TBBCONT','DS0.DO204',_dim,_num,'This field identifies the contract number associated with the third party for the term.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Contract Number - TBBCSTU','DS0.DO205',_dim,_num,'This field identifies the contract number associated with the third party for the term.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Contract Number - TBRCACC','DS0.DO206',_dim,_num,'This field identifies the contract number associated with the third party for the term.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Contract Pidm - TBBCSTU','DS0.DO208',_dim,_num,'Internal Identification Number of the non-person account that is identified as a third party contract.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Contract Priority - TBBCSTU','DS0.DO209',_dim,_num,'This indicates the priority of this contract for the student, if the student is authorized for more than one contract.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Contract Roll Ind - TBBCONT','DS0.DO20a',_dim,_txt,'Y denotes that the contract will be rolled when the process TSRROLL is executed',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Control Priority - TBRCTEX','DS0.DO20c',_dim,_num,'This field indicates the overall priority of whether exemptions or contracts should be calculated first.  Valid values are: E - Exemptions first, C - Contracts first.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Credit Card Type - TZRWTXN','DS0.DO136d',_dim,_num,'Card type (you will lose records if you select this and it doesn\'t exist for the given transaction)',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Credit Type - TBRCTEX','DS0.DO20f',_dim,_txt,'This field indicates the type of credit being processed.  Valid values are: E - Exemption, C - Contract.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Crn - TBRACCD','DS0.DO212',_dim,_txt,'This field will contain the crn associated with the charge when assessment by crn is used',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Crn - TDRACCD','DS0.DO213',_dim,_txt,'This field will contain the crn associated with the charge when assessment by crn is used',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Crossref Detail Code - TBRACCD','DS0.DO216',_dim,_txt,'This field identifies the detail code that was posted on the account of the cross-referenced pidm.  For the third party account it would be the contract pay detail code, on the student account it would be the contract charge code.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Crossref Detail Code - TBRMEMO','DS0.DO217',_dim,_txt,'This field identifies the detail code that will be paid by the contract.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Crossref Detail Code - TDRACCD','DS0.DO218',_dim,_txt,'This field identifies the detail code that was posted on the account of the cross-referenced pidm.  For the third party account it would be the contract pay detail code, on the student account it would be the contract charge code.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Crossref Number - TBRACCD','DS0.DO219',_dim,_num,'This field identifies the number of the contract or exemption associated with the transaction.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Crossref Number - TBRCTEX','DS0.DO21a',_dim,_num,'This field identifies the number of the third party\"s contract or the exemption that is being processed.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Crossref Number - TBRMEMO','DS0.DO21b',_dim,_num,'This field identifies the number of the contract associated with the transaction.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Crossref Number - TDRACCD','DS0.DO21c',_dim,_num,'This field identifies the number of the contract or exemption associated with the transaction.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Crossref Pidm - TBRACCD','DS0.DO21d',_dim,_num,'This field identifies the internal identification number associated with a third party contract payment.  For the third party account the pidm would be the students.  For the student account the pidm would be the third party.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Crossref Pidm - TBRCTEX','DS0.DO21e',_dim,_num,'This field identifies the internal identification number of the third party contract\"s non-person account.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Crossref Pidm - TBRMEMO','DS0.DO21f',_dim,_num,'This field identifies the internal identification number associated with a third party contract payment.  For the third party account the pidm would be the student pidm.  For the student account the pidm would be the third party pidm.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Crossref Pidm - TDRACCD','DS0.DO220',_dim,_num,'This field identifies the internal identification number associated with a third party contract payment.  For the third party account the pidm would be the students.  For the student account the pidm would be the third party.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Crossref Srce Code - TBRACCD','DS0.DO221',_dim,_txt,'This field will contain the source code which was paid by an exemption or contract',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Crossref Srce Code - TBRMEMO','DS0.DO222',_dim,_txt,'This field identifies the source code of the detail code that will be paid by the contract.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Crossref Srce Code - TDRACCD','DS0.DO223',_dim,_txt,'This field will contain the source code which was paid by an exemption or contract',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Cshr End Date - TBRACCD','DS0.DO228',_dim,_date,'The end date of the cashiering session for this transaction',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Cshr End Date - TBRDEPO','DS0.DO229',_dim,_date,'The end date of the cashiering session for this transaction',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Cshr End Date - TDRACCD','DS0.DO22a',_dim,_date,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Curr Code - TBRDEPO','DS0.DO22d',_dim,_txt,'tbrdepo_CURR_CODE: contains the foreign currency code used when making a payment.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Curr Code - TDRACCD','DS0.DO22e',_dim,_txt,'TBRACCD_CURR_CODE: contains the foreign currency code used when making a payment.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Curr Prev Ind - TZRVCHR','DS0.DO230',_dim,_txt,'This field specifies if the term was current or previous at the time of issue.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Dcat Code (Memo) - TBBDETC','DS0.DO123f',_dim,_txt,'This field identifies the catagory of the detail code.  Detail codes can be group for reporting purposes into categories like cash, non-cash etc.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Dcat Code - TBBDETC','DS0.DO232',_dim,_txt,'This field identifies the catagory of the detail code.  Detail codes can be group for reporting purposes into categories like cash, non-cash etc.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Del Ind - TBBCSTU','DS0.DO235',_dim,_txt,'This field indiciates if the student should be deleted from the contract and any money paid to the student be backed out of the student\"s account.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Deli Code - TBBACCT','DS0.DO237',_dim,_txt,'This field identifies the delinquency code associated with the person\"s account.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Desc (Memo) - TBBDETC','DS0.DO1240',_dim,_txt,'This field specifies a free-format description of the detail code.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Desc - TBBCONT','DS0.DO239',_dim,_txt,'This field specifies the free-format description of the third party contract for the term.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Desc - TBBDETC','DS0.DO23a',_dim,_txt,'This field specifies a free-format description of the detail code.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Desc - TBRACCD','DS0.DO23d',_dim,_txt,'This field specifies a free-format description of the transaction.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Desc - TBRCTEX','DS0.DO23e',_dim,_txt,'This field identifies the description of the the contract or exemption that will be posted on the specfic account associated with the detail code.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Desc - TBRDEPO','DS0.DO23f',_dim,_txt,'This field specifies a free-format description of the deposit detail code.  The description defaults from the Detail Code Control Form - TGADETC.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Desc - TBRMEMO','DS0.DO241',_dim,_txt,'This field specifies the free-format description associated with the memo detail code.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Desc - TDRACCD','DS0.DO243',_dim,_txt,'This field specifies a free-format description of the transaction.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Detail Chg Code - TBBCONT','DS0.DO244',_dim,_txt,'This field identifies the detail code that has been identified as a charge to be posted as the charge against the third party\"s account.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Detail Chg Code - TBRCTEX','DS0.DO245',_dim,_txt,'This field identifies the charge detail code that will be posted on the third party\"s account for the calculated contract amount.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Detail Code (Memo) - TBBDETC','DS0.DO1241',_dim,_txt,'This field identifies the detail code associated with every charge and payment that can be entered onto an account.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Detail Code (Memo) - TBRACCT','DS0.DO1268',_dim,_txt,'This field identifies the detail code associated with the account definition.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Detail Code - TBBDETC','DS0.DO246',_dim,_txt,'This field identifies the detail code associated with every charge and payment that can be entered onto an account.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Detail Code - TBRACCD','DS0.DO249',_dim,_txt,'This field identifies the detail code associated with the transaction.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Detail Code - TBRACCT','DS0.DO24a',_dim,_txt,'This field identifies the detail code associated with the account definition.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Detail Code - TBRMEMO','DS0.DO24d',_dim,_txt,'This field identifies the detail code associated with the memo transaction.  A memo is a transaction that is recorded but not ready to be posted directly onto an account.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Detail Code - TDRACCD','DS0.DO24f',_dim,_txt,'This field identifies the detail code associated with the transaction.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Detail Code Deposit - TBRDEPO','DS0.DO253',_dim,_txt,'This field identifies the detail code associated with the deposit.  This detail code must have been set up as a deposit on the Deposit Control Form - TGADEPC.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Detail Code Payment - TBRDEPO','DS0.DO255',_dim,_txt,'This field identifies the detail code associated with the method of how the deposit was paid - check, cash, etc.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Detail Pay Code - TBBCONT','DS0.DO256',_dim,_txt,'This field identifies the detail code that has been identified as a payment to be posted as the third party payment on the student\"s account.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Detail Pay Code - TBRCTEX','DS0.DO257',_dim,_txt,'This field identifies the payment detail code that will be posted on the student\"s account for the calculated contract or exemption amount.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Detail Reg Code - TBRCTEX','DS0.DO258',_dim,_txt,'This field identifies a specific registration charge code the third party or exemption is set up on a detail level to pay.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Document Number - TBRACCD','DS0.DO25c',_dim,_txt,'A unique number which identifies a specific charge or payment.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Document Number - TDRACCD','DS0.DO25d',_dim,_txt,'A unique number which identifies a specific charge or payment.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Due Date - TBRACCD','DS0.DO25f',_dim,_date,'This field specifies the date the transaction is due.  This is calculated during the billing procedure in \"Statement\" mode.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Due Date - TDRACCD','DS0.DO260',_dim,_date,'This field specifies the date the transaction is due.  This is calculated during the billing procedure in \"Statement\" mode.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Effective Date (Memo) - TBBDETC','DS0.DO1242',_dim,_date,'This field specifies the default effective date associated with the detail code.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Effective Date - TBBDETC','DS0.DO262',_dim,_date,'This field specifies the default effective date associated with the detail code.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Effective Date - TBRACCD','DS0.DO263',_dim,_date,'This field specifies the date the transaction becomes effective.  As of this date the transaction will be calculated into amount due and will be eligible to be fed to accounting.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Effective Date - TBRDEPO','DS0.DO264',_dim,_date,'This field specifies the effective date of the deposit.  This date defaults to the date the deposit was entered.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Effective Date - TBRMEMO','DS0.DO265',_dim,_date,'This field specifies the date the memo transaction was entered on the account.  It is system maintained.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Effective Date - TDRACCD','DS0.DO266',_dim,_date,'This field specifies the date the transaction becomes effective.  As of this date the transaction will be calculated into amount due and will be eligible to be fed to accounting.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Entry Date - TBRACCD','DS0.DO268',_dim,_date,'This field specifies the date the transaction was entered on the account.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Entry Date (No time) - TBRACCD','DS0.DO12d0',_dim,_date,'This field specifies the date the transaction was entered on the account.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Entry Date - TBRDEPO','DS0.DO269',_dim,_date,'This field specifies the date the deposit was entered as a deposit on the account.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Entry Date - TBRMEMO','DS0.DO26a',_dim,_date,'This field specifies the date the memo transaction was entered onto the account.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Entry Date - TDRACCD','DS0.DO26c',_dim,_date,'This field specifies the date the transaction was entered on the account.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Exchange Diff - TDRACCD','DS0.DO26e',_dim,_num,'TBRACCD_EXCHANGE_DIFF: Contains the difference between the currency as of the transaction date and the value of it as of the bill date for the invoice to which it was applied.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Exclude - TBRCTEX','DS0.DO271',_dim,_txt,'This field indicates that this specific credit should be not be posted at this time.  It is set on the second page of the Student Payment Form - TSASPAY.  Valid value is: X - Exclude credit.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Expiration Date - TBRDEPO','DS0.DO279',_dim,_date,'This field specifies the expiration date of the deposit.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Expiration Date - TBRMEMO','DS0.DO27a',_dim,_date,'This field specifies the date the memo item expires and may not be released onto an account.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Expt Prty - TBRCLCT','DS0.DO27b',_dim,_txt,'The order in which the exemption is processed against the account.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Feed Date - TBRACCD','DS0.DO27d',_dim,_date,'The feed date is the date this row was processed by tgrfeed and inserted into the GENERAL.GURFEED table.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Feed Date - TBRDEPO','DS0.DO27f',_dim,_date,'The feed date is the date this row was processed by tgrfeed and inserted into the GENERAL.GURFEED table.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Feed Date - TDRACCD','DS0.DO280',_dim,_date,'The feed date is the date this row was processed by tgrfeed and inserted into the GENERAL.GURFEED table.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Feed Doc Code - TBRACCD','DS0.DO282',_dim,_txt,'The document code generated by GURFEED to identify and feed this transaction to Finance.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Feed Doc Code - TBRDEPO','DS0.DO284',_dim,_txt,'The document code generated by GURFEED to identify and feed this transaction to Finance.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Feed Doc Code - TDRACCD','DS0.DO285',_dim,_txt,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Feed Ind - TZRVCHR','DS0.DO288',_dim,_txt,'This field specifies wether this record has been feed to the GL',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Foreign Amount - TBRACCD','DS0.DO28c',_dim,_num,'The amount of the transaction as stated in foreign currency.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Foreign Amount - TBRDEPO','DS0.DO28d',_dim,_num,'The amount of the transaction as stated in foreign currency.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Foreign Amount - TDRACCD','DS0.DO28e',_dim,_num,'The amount of the transaction as stated in foreign currency.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Form - TBRCMNT','DS0.DO28f',_dim,_txt,'This field identifies the form identification where the comment was entered.  Valid values are: TBADETL, TBAISTL, TBACOLC.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('From Date (Contract) - SPRADDR','DS0.DO1206',_dim,_date,'This field maintains the effective start date of address associated with person.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Gl Nos Enterable (Memo) - TBBDETC','DS0.DO1243',_dim,_txt,'Can accounting distribution information be overridden for miscellaneous transactions on the TFAMISC form.  Values are Y and N.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Gl Nos Enterable - TBBDETC','DS0.DO292',_dim,_txt,'Can accounting distribution information be overridden for miscellaneous transactions on the TFAMISC form.  Values are Y and N.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Id (Contract) - SPRIDEN','DS0.DO123a',_dim,_txt,'This field defines the identification number used to access person on-line.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Idms Id - TZRETAP','DS0.DO12d7',_dim,_txt,'This field defines the IDMS Id.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Intl Access (Contract) - SPRTELE','DS0.DO131a',_dim,_txt,'Free format International access code for telephone number including country and city code.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Inv Number Paid - TDRACCD','DS0.DO2a2',_dim,_txt,'The invoice number of a specific application of payment.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Invoice Number - TBRACCD','DS0.DO2a4',_dim,_txt,'A unique number identifying the document being updated.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Invoice Number - TDRACCD','DS0.DO2a5',_dim,_txt,'A unique number identifying the document being updated.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Last Name (Contract) - SPRIDEN','DS0.DO123b',_dim,_txt,'This field defines the last name of person.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Late Dcat Code - TBRACCD','DS0.DO2a6',_dim,_txt,'The category of the late charge detail code.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Late Dcat Code - TDRACCD','DS0.DO2a7',_dim,_txt,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Like Term Ind (Memo) - TBBDETC','DS0.DO1244',_dim,_txt,'This field indicates if a detail code can only be applied to a detail code in the same term in the application of payment process.  Valid value is: Y - Yes, only apply to a like term.  Used primarily for financial aid.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Like Term Ind - TBBDETC','DS0.DO2aa',_dim,_txt,'This field indicates if a detail code can only be applied to a detail code in the same term in the application of payment process.  Valid value is: Y - Yes, only apply to a like term.  Used primarily for financial aid.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Loc Mdt - TBRACCD','DS0.DO2ab',_dim,_txt,'This field contains an M for monthly charges, a T for termly charges, or a D for daily charges',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Loc Mdt - TDRACCD','DS0.DO2ac',_dim,_txt,'This field contains an M for monthly charges, a T for termly charges, or a D for daily charges',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Loc Mdt Seq - TBRACCD','DS0.DO2ad',_dim,_num,'This column contains a number corresponding to the sequence in which a monthly charge was added.  This will be used in refunding processing to uniquely identify the corresponding calculated refund',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Loc Mdt Seq - TDRACCD','DS0.DO2ae',_dim,_num,'This column contains a number corresponding to the sequence in which a monthly charge was added.  This will be used in refunding processing to uniquely identify the corresponding calculated refund',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Max Amount - TBRCACC','DS0.DO2af',_dim,_num,'This field indicates the maximum amount the third party will pay of the designated source charges on a student\"s account.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Min Amount - TBRCACC','DS0.DO2b8',_dim,_num,'This field indicates the minimum amount the student must pay of the designated charges on a student\"s account that the third party doesn\"t cover.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Nation (Contract) - STVNATN','DS0.DO126e',_dim,_txt,'Address Naition',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Natn Code (Contract) - SPRADDR','DS0.DO1208',_dim,_txt,'This field maintains the nation/country associated with the address of person.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Orig Code - TBRCMNT','DS0.DO2c2',_dim,_txt,'This field identifies the code of the originator of the comment.  The originator could either be an office or individual.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pay Class - TZRETAP','DS0.DO12d8',_dim,_txt,'The TAP pay class of the person.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Payment Id (Card Company) - TBRACCD','DS0.DO12d1',_dim,_txt,'Additional information as to the method of payment. i.e. credit card number.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Payment Id - TBRACCD','DS0.DO2c7',_dim,_txt,'Additional information as to the method of payment. i.e. credit card number.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Payment Id - TDRACCD','DS0.DO2c8',_dim,_txt,'Additional information as to the method of payment.  i.e.  credit card number.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Payt Code (Memo) - TBBDETC','DS0.DO1245',_dim,_txt,'This field indicates the type of payment the detail code is.  Default value is N - Non-cash.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Payt Code - TBBDETC','DS0.DO2c9',_dim,_txt,'This field indicates the type of payment the detail code is.  Default value is N - Non-cash.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Percent (Memo) - TBRACCT','DS0.DO1269',_dim,_num,'This field identifies the percentage of the amount associated with the detail that would be posted to Account A and Account B.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Percent - TBRACCT','DS0.DO2ca',_dim,_num,'This field identifies the percentage of the amount associated with the detail that would be posted to Account A and Account B.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Percent - TBRCACC','DS0.DO2cb',_dim,_num,'This field indicates the percentage of the total source charges the third partywill pay of the student\"s account.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Phone Area (Contract) - SPRTELE','DS0.DO131b',_dim,_txt,'Telephone number area code.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Phone Ext (Contract) - SPRTELE','DS0.DO131c',_dim,_txt,'Telephone number extention.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Phone Number (Contract) - SPRTELE','DS0.DO131d',_dim,_txt,'Telephone number.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm (Contract) - SPRADDR','DS0.DO1209',_dim,_num,'Internal identification number of person.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm (Contract) - SPRTELE','DS0.DO131e',_dim,_num,'Internal identification number.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - TBBACCT','DS0.DO2cf',_dim,_num,'Internal Identification Number of person.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - TBBCONT','DS0.DO2d0',_dim,_num,'Internal Identification Number of the non-person account that is identified as a third party contract.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - TBBPIDM','DS0.DO2d2',_dim,_num,'TBBPIDM_PIDM is the internal pidm of the account being processed.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - TBRACCD','DS0.DO2d3',_dim,_num,'Internal Identification Number of the person or non-person account.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - TBRBIL1','DS0.DO2d6',_dim,_num,'Internal identification number of the person.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - TBRCACC','DS0.DO2d7',_dim,_num,'Internal Identification Number of the non-person account that is identified as a third party contract.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - TBRCBRQ','DS0.DO2d8',_dim,_num,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - TBRCLCT','DS0.DO2da',_dim,_num,'Internal Identification Number of the student\"s account that has a financial aid credit.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - TBRCMNT','DS0.DO2db',_dim,_num,'Internal Idnetificattion Number of the person or non-person account that has a comment.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - TBRCTEX','DS0.DO2dc',_dim,_num,'Internal Identification Number of the student account that is having credits processed on TSASPAY.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - TBRDEPO','DS0.DO2dd',_dim,_num,'Internal Identification Number of the person or non-person account that has a deposit.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - TBRMEMO','DS0.DO2df',_dim,_num,'Internal Identification Number of the person or non-person account that has a memo item.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - TDRACCD','DS0.DO2e0',_dim,_num,'Internal Identification Number of the person or non-person account.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - TZRETAP','DS0.DO12d6',_dim,_num,'This field specifies the pidm of the person who the TAP record is for.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - TZRVCHR','DS0.DO2e3',_dim,_num,'This field specifies the pidm of the person who the voucher is being issued.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Prebill Print Ind (Memo) - TBBDETC','DS0.DO1246',_dim,_txt,'Should this detail code be printed on a student invoice.  Valid values are: N (Do not print) or blank.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Prebill Print Ind - TBBDETC','DS0.DO2e9',_dim,_txt,'Should this detail code be printed on a student invoice.  Valid values are: N (Do not print) or blank.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Primary Ind (Contract) - SPRTELE','DS0.DO131f',_dim,_txt,'Primary indicator to denote primary telephone numbers based on telephone types.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Printer - TBRCBRQ','DS0.DO2f2',_dim,_txt,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Priority (Memo) - TBBDETC','DS0.DO1247',_dim,_txt,'This field indicates the priority of the detail code for use in the application of payments process.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Priority - TBBDETC','DS0.DO2f4',_dim,_txt,'This field indicates the priority of the detail code for use in the application of payments process.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Priority - TBRCTEX','DS0.DO2f5',_dim,_num,'This field indicates the priority of a contract within all third party contracts a student has for the term.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Rate - TDRACCD','DS0.DO2fb',_dim,_num,'The rate at which an account is charged for a specific detail code.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Receipt Ind (Memo) - TBBDETC','DS0.DO1248',_dim,_txt,'This field indicates if a receipt number should be automatically generated when the detail code is entered on an account.  Valid values are: Y - Yes, generate a receipt, blank - No receipt number.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Receipt Ind - TBBDETC','DS0.DO2ff',_dim,_txt,'This field indicates if a receipt number should be automatically generated when the detail code is entered on an account.  Valid values are: Y - Yes, generate a receipt, blank - No receipt number.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Receipt Number - TBRACCD','DS0.DO300',_dim,_num,'This field identifies the receipt number associated with the transaction if a receipt number was generated when the transaction was entered.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Receipt Number - TBRDEPO','DS0.DO302',_dim,_num,'This field specifies the receipt number associated with the deposit if a receipt number was system generated when the deposit was entered.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Receipt Number - TDRACCD','DS0.DO303',_dim,_num,'This field identifies the receipt number associated with the transaction if a receipt number was generated when the transaction was entered.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Refund Ind (Memo) - TBBDETC','DS0.DO1249',_dim,_txt,'This field indicates if the detail code is identified as refund detail code that will generate an accounts payable transaction in the accounting feed.  Valid values are: Y - Generate accounts payable transaction, blank - Do not.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Refund Ind - TBBACCT','DS0.DO305',_dim,_txt,'This field indicates whether the account, which has a credit balance, is to be automatically refunded.  Valid values: Null, or \"N\" is no; \"H\", for hold, is no;and \"Y\" is yes.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Refund Ind - TBBDETC','DS0.DO306',_dim,_txt,'This field indicates if the detail code is identified as refund detail code that will generate an accounts payable transaction in the accounting feed.  Valid values are: Y - Generate accounts payable transaction, blank - Do not.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Refundable Ind (Memo) - TBBDETC','DS0.DO124a',_dim,_txt,'This field indicates if the charge detail code is eligible to be refunded in any automatic fee assessment processes. Valid values are: Y - Refundable, blank - No refund.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Refundable Ind - TBBDETC','DS0.DO307',_dim,_txt,'This field indicates if the charge detail code is eligible to be refunded in any automatic fee assessment processes. Valid values are: Y - Refundable, blank - No refund.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Reg Amount - TBRCTEX','DS0.DO308',_dim,_num,'This field specifies the amount of the registration charge(s) that the contract or exemption will cover.  If it is an account level it will be the total registration charges, if detail it will be the specific charge.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Release Date - TBRDEPO','DS0.DO30b',_dim,_date,'This field specifies the date the deposit may be release.  The deposit may not be release automatically or manually before this date.  If this field is blank the deposit may be released at any time.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Release Date - TBRMEMO','DS0.DO30c',_dim,_date,'This field is currently not used.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Restrict Ind - TBBUPRF','DS0.DO30e',_dim,_txt,'This column indicates wether the userid has restrictions on the type of transaction it is allowed to enter. If this value is \"N\" the userid is allowed to enter any type of transactions, if \"Y\" the allowable transactions are defined in TBRUPRF.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Sent Ind - TBRBIL1','DS0.DO316',_dim,_txt,'Was the bill sent to the student?  Y for yes, N for no.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Seq Number - TBRCMNT','DS0.DO318',_dim,_num,'This field identifies the internal sequence number associated with each line of comment.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Seqno (Contract) - SPRADDR','DS0.DO120c',_dim,_num,'This field assigns an internal sequence number to each address type associated with person. This field does not display on screen.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Seqno (Contract) - SPRTELE','DS0.DO1320',_dim,_num,'Unique sequence number for telephone numbers associated with PIDM.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Session Number - TBRACCD','DS0.DO31f',_dim,_num,'Cashiering session for this transaction (0 = current session).',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Session Number - TBRDEPO','DS0.DO320',_dim,_num,'Cashiering session for this transaction (0 = current session).',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Session Number - TDRACCD','DS0.DO321',_dim,_num,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Sessionid - TBBPIDM','DS0.DO322',_dim,_txt,'TBBPIDM_SESSIONID contains the Oracle sessionid which was active when this row was inserted. Not all processes use this column however. If this column is valued and the activity date is in the past, the entry may be deleted.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Sessionid - TBRCBRQ','DS0.DO323',_dim,_txt,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Sessionid - TBRCLCT','DS0.DO324',_dim,_txt,'This field identifies a unique internal identification that is generated everytime a user signs on and off the system.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Sessionid - TBRCTEX','DS0.DO326',_dim,_txt,'This field identifies a unique internal identification that is generated everytime a user signs on and off the system.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Sponsor Ref Number - TBBCSTU','DS0.DO328',_dim,_txt,'Contains the number supplied by the agency.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Srce Code - TBRACCD','DS0.DO329',_dim,_txt,'This field identifies the source of how the transaction was entered onto the account.  For example - deposit, user-entered transaction.  The default value is T - User entered transaction.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Srce Code - TBRCACC','DS0.DO32a',_dim,_txt,'This field contains the source code which will be paid by the contract.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Srce Code - TBRCTEX','DS0.DO32c',_dim,_txt,'Identifies how the transaction was entered onto the account.  Defaullt is T - user-entered transaction.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Srce Code - TBRMEMO','DS0.DO32f',_dim,_txt,'Identifies how the transaction was entered onto the account.  Defaullt is T - user-entered transaction.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Srce Code - TDRACCD','DS0.DO330',_dim,_txt,'This field identifies the source of how the transaction was entered onto the account.  For example - deposit, user-entered transaction.  The default value is T - User entered transaction.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Ssn - TZRETAP','DS0.DO12d9',_dim,_txt,'The social security number of the TAP record for the person.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Stat Code (Contract) - SPRADDR','DS0.DO120d',_dim,_txt,'This field maintains the state associated with the address of person.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Statement Date - TBRACCD','DS0.DO333',_dim,_date,'The date a statement was generated.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Statement Date - TDRACCD','DS0.DO334',_dim,_date,'The date a statement was generated.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Status Ind (Contract) - SPRADDR','DS0.DO120e',_dim,_txt,'This field identifies if address information is inactive. Valid value is I - Inactive.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Status Ind (Contract) - SPRTELE','DS0.DO1321',_dim,_txt,'Status of telelphone number, active or inactive.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Street Line1 (Contract) - SPRADDR','DS0.DO120f',_dim,_txt,'This field maintains the first line of the address associated with person.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Street Line2 (Contract) - SPRADDR','DS0.DO1210',_dim,_txt,'This field maintains the second line of the address associated with person.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Street Line3 (Contract) - SPRADDR','DS0.DO1211',_dim,_txt,'This field maintains the third line of the address associated with person.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Stu Pidm - TBBCSTU','DS0.DO335',_dim,_num,'Internal Identification Number of the student who has been authorized to receive payment from the third party contract.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Student Cont Roll Ind - TBBCONT','DS0.DO337',_dim,_txt,'Y denotes that when the process TSRROLL is executed, if the contract the student is in rolls then the student will also roll.\nTAISMGR.TBBCSTU',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Superv Ind - TBBUPRF','DS0.DO341',_dim,_txt,'This column contains \"Y\" is the userid has supervisory capabilities, otherwise it conatins an \"N\".',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('System Ind - TBBUPRF','DS0.DO342',_dim,_txt,'This value determines which system the userid belong to. \"F\" for Finance, \"S\" for student, or \"A\" for all systems. This value is also used to navigate through certain forms.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Taxt Code (Memo) - TBBDETC','DS0.DO124b',_dim,_txt,'This field indicates that this tuition fee is eligible for a specified tax type',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Taxt Code - TBBDETC','DS0.DO343',_dim,_txt,'This field indicates that this tuition fee is eligible for a specified tax type',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Tbdc Ind (Memo) - TBBDETC','DS0.DO124c',_dim,_txt,'Indicates whether a detail code is associated with a term-based designator (Y/N).',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Tbdc Ind - TBBDETC','DS0.DO344',_dim,_txt,'Indicates whether a detail code is associated with a term-based designator (Y/N).',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Tbds Code (Memo) - TBRACCT','DS0.DO126a',_dim,_txt,'Identifies the term-based designator for the detail code (From TBBTBDS table).',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Tbds Code - TBRACCT','DS0.DO345',_dim,_txt,'Identifies the term-based designator for the detail code (From TBBTBDS table).',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Tele Code (Contract) - SPRTELE','DS0.DO1322',_dim,_txt,'Telelphone Type Code.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code (Memo) - TBBDETC','DS0.DO124d',_dim,_txt,'This field identifies the default term code associated with the detail code.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code - TBBCONT','DS0.DO347',_dim,_txt,'This field identifies the term associated with the third party contract number.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code - TBBCSTU','DS0.DO348',_dim,_txt,'This field identifies the term associated with the third party contract number.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code - TBBDETC','DS0.DO349',_dim,_txt,'This field identifies the default term code associated with the detail code.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code - TBRACCD','DS0.DO34d',_dim,_txt,'This field identifies the term associated with the transaction.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code - TBRBIL1','DS0.DO34e',_dim,_txt,'Term code used on the bill.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code - TBRCACC','DS0.DO34f',_dim,_txt,'This field identifies the term associated with the third party contract number.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code - TBRCBRQ','DS0.DO350',_dim,_txt,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code - TBRCLCT','DS0.DO352',_dim,_txt,'This field identifies the term the financial aid credit is for.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code - TBRCTEX','DS0.DO353',_dim,_txt,'This field identifies the term credits are being processed for.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code - TBRDEPO','DS0.DO354',_dim,_txt,'This field identifies the term the deposit is effective for.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code - TBRMEMO','DS0.DO358',_dim,_txt,'This field identifies the term the memo was entered onto the account.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code - TDRACCD','DS0.DO35a',_dim,_txt,'This field identifies the term associated with the transaction.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code - TZRETAP','DS0.DO12d5',_dim,_txt,'This field specifies the term of the TAP record.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code - TZRVCHR','DS0.DO35b',_dim,_txt,'This field specifies the term of the voucher issued.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code Expiration - TBBCONT','DS0.DO35c',_dim,_txt,'The process TSRROLL will check to see if this term is greater than the term the contract is being rolled to and if it is will consider the contract expired and not roll it.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code Expiration - TBBCSTU','DS0.DO35d',_dim,_txt,'The process TSRROLL will check to see if this term is greater than the term the contract is being rolled to and if it is will consider the student contract expired and not roll it.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Text - TBRCMNT','DS0.DO361',_dim,_txt,'This field specifies the free-format comment text.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('To Date (Contract) - SPRADDR','DS0.DO1212',_dim,_date,'This field maintains the effective end date of address associated with person.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Tran Number - TBRACCD','DS0.DO366',_dim,_num,'This field identifies the transaction number associated with each detail transaction on the account.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Tran Number - TBRDEPO','DS0.DO368',_dim,_num,'This field identifies the transaction number associated with the deposit.  Each charge and payment on an account has a one-up transaction number.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Tran Number - TBRMEMO','DS0.DO369',_dim,_num,'This field identifies transaction number on the account associated with the memo transaction.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Tran Number - TDRACCD','DS0.DO36a',_dim,_num,'This field identifies the transaction number associated with each detail transaction on the account.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Tran Number - TZRVCHR','DS0.DO36c',_dim,_num,'This field specifies the TBRACCD transaction number',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Tran Number Paid - TBRACCD','DS0.DO36d',_dim,_num,'This field identifies the transaction number of a specific application of payment.  This transaction was used to directly apply to the transaction number specified here.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Tran Number Paid - TDRACCD','DS0.DO36e',_dim,_num,'This field identifies the transaction number of a specific application of payment.  This transaction was used to directly apply to the transaction number specified here.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Trans Date - TBRACCD','DS0.DO36f',_dim,_date,'The date used by the Finance System to control posting to the ledgers.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Trans Date - TBRDEPO','DS0.DO370',_dim,_date,'The date used by the Finance System to control posting to the ledgers.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Trans Date - TDRACCD','DS0.DO371',_dim,_date,'The date used by the Finance System to control posting to the ledgers.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Type Ind (Memo) - TBBDETC','DS0.DO124e',_dim,_txt,'This field indicates the whether the detail code is a charge or a payment.  Valid values are: C - Charge, P - Payment.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Type Ind - TBBDETC','DS0.DO373',_dim,_txt,'This field indicates the whether the detail code is a charge or a payment.  Valid values are: C - Charge, P - Payment.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Units - TDRACCD','DS0.DO378',_dim,_num,'The number of units for which an account is charged for a specific detail code.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Unlist Ind (Contract) - SPRTELE','DS0.DO1323',_dim,_txt,'Unlisted telephone number indicator.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Useable Amount - TBRCTEX','DS0.DO37a',_dim,_num,'This field specifies the amount the student is entitled to from the contract or exemption.  This amount is before any adjustments based on the priorities set up.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('User (Contract) - SPRADDR','DS0.DO1213',_dim,_txt,'The Id for the User who create or update the record.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('User - TBRACCD','DS0.DO37b',_dim,_txt,'This field identifies the userid of the cashier that posted the transaction to the account.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('User - TBRCMNT','DS0.DO37d',_dim,_txt,'This field denotes the user who entered the comment text.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('User - TBRDEPO','DS0.DO37e',_dim,_txt,'This field identifies the userid of the cashier who posted the deposit.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('User - TBRMEMO','DS0.DO37f',_dim,_txt,'This field identifies the userid of the cashier that entered the memo transaction.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('User - TDRACCD','DS0.DO381',_dim,_txt,'This field identifies the userid of the cashier that posted the transaction to the account.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('User Name - TBBUPRF','DS0.DO383',_dim,_txt,'Free Format name associated to the userid.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Userid - TBBUPRF','DS0.DO384',_dim,_txt,'Accounts receivable userid.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Vchr Date - TZRVCHR','DS0.DO385',_dim,_date,'This field specifies the date the voucher program was run to produce the check.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Void Ind - TZRVCHR','DS0.DO386',_dim,_txt,'This field specifies that the voucher has been voided',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Zip (Contract) - SPRADDR','DS0.DO1214',_dim,_txt,'This field maintains the zip code associated with the address of person.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls1=cls0.add('Admissions','',_cls,_txt,'',false,null,'','','','BANNER',false,'');
cls1.allowInResult=true;cls1.allowInFilter=true
cls2=cls1.add('Activity Date - SARACMT','DS0.DO388',_dim,_date,'This field identifies the most current date record was created or changed.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SARADAP','DS0.DO389',_dim,_date,'This field identifies the most current date record was created or changed.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SARAPPD','DS0.DO38a',_dim,_date,'This field identifies the most current date record was created or updated.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SARCHKL','DS0.DO38c',_dim,_date,'This field identifies the most current date record was created or updated.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SARCHRT','DS0.DO38d',_dim,_date,'The Activity Date',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SARRSRC','DS0.DO391',_dim,_date,'This field identifies the most current date record was created or changed.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Admr Code - SARCHKL','DS0.DO398',_dim,_txt,'This field identifies the checklist item required from the applicant.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Admt Code - SARADAP','DS0.DO399',_dim,_txt,'This field identifies the admission type of the applicant.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Apdc Code - SARAPPD','DS0.DO39c',_dim,_txt,'This field identifies the application decision value associated with the application decision.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Apdc Date - SARAPPD','DS0.DO39e',_dim,_date,'This field identifies the date application decision was effective.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Appl Date - SARADAP','DS0.DO39f',_dim,_date,'This field identifies the date of the application record.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Appl No - SARACMT','DS0.DO3a0',_dim,_num,'This field identifies the Application number.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Appl No - SARADAP','DS0.DO3a1',_dim,_num,'This field identifies the application number of the admissions record for a specific term.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Appl No - SARAPPD','DS0.DO3a2',_dim,_num,'This field identifies the application number within the effective term record.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Appl No - SARCHKL','DS0.DO3a3',_dim,_num,'This field identifies the application number associated with the effective term of the application.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Appl No - SARCHRT','DS0.DO3a4',_dim,_num,'Application Number',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Appl No - SARRSRC','DS0.DO3a5',_dim,_num,'This field identifies the application number',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Apst Code - SARADAP','DS0.DO3a6',_dim,_txt,'This field identifies the status of the application.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Apst Date - SARADAP','DS0.DO3a8',_dim,_date,'This field identifies the date associated with the most current status of the application.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Camp Code - SARADAP','DS0.DO3aa',_dim,_txt,'This field identifies the campus to which applicant is applying.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Camp Code 2 - SARADAP','DS0.DO3ac',_dim,_txt,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Ccon Rule 11 1 - SARADAP','DS0.DO3ad',_dim,_num,'Concentration 1, Major 1, Curriculum 1 Rule Reference',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Ccon Rule 11 2 - SARADAP','DS0.DO3ae',_dim,_num,'Concentration 2, Major 1, Curriculum 1 Rule Reference',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Ccon Rule 11 3 - SARADAP','DS0.DO3af',_dim,_num,'Concentration 3, Major 1, Curriculum 1 Rule Reference',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Ccon Rule 12 1 - SARADAP','DS0.DO3b0',_dim,_num,'Concentration 1, Major 2, Curriculum 1 Rule Reference',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Ccon Rule 12 2 - SARADAP','DS0.DO3b1',_dim,_num,'Concentration 2, Major 2, Curriculum 1 Rule Reference',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Ccon Rule 12 3 - SARADAP','DS0.DO3b2',_dim,_num,'Concentration 3, Major 2, Curriculum 1 Rule Reference',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Ccon Rule 21 1 - SARADAP','DS0.DO3b3',_dim,_num,'Concentration 1, Major 1, Curriculum 2 Rule Reference',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Ccon Rule 21 2 - SARADAP','DS0.DO3b4',_dim,_num,'Concentration 2, Major 1, Curriculum 2 Rule Reference',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Ccon Rule 21 3 - SARADAP','DS0.DO3b5',_dim,_num,'Concentration 3, Major 1, Curriculum 2 Rule Reference',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Ccon Rule 22 1 - SARADAP','DS0.DO3b6',_dim,_num,'Concentration 1, Major 2, Curriculum 2 Rule Reference',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Ccon Rule 22 2 - SARADAP','DS0.DO3b7',_dim,_num,'Concentration 2, Major 2, Curriculum 2 Rule Reference',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Ccon Rule 22 3 - SARADAP','DS0.DO3b8',_dim,_num,'Concentration 3, Major 2, Curriculum 2 Rule Reference',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Chrt Code - SARCHRT','DS0.DO3b9',_dim,_txt,'Cohort Code',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Cmjr Rule 1 1 - SARADAP','DS0.DO3ba',_dim,_num,'Curriculum 1 Major 1 Rule Reference',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Cmjr Rule 1 2 - SARADAP','DS0.DO3bb',_dim,_num,'Major 2, Curriculum Rule Reference',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Cmjr Rule 2 1 - SARADAP','DS0.DO3bc',_dim,_num,'Major 1, Curriculum 2 Rule Reference',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Cmjr Rule 2 2 - SARADAP','DS0.DO3bd',_dim,_num,'Major 2, Curriculum 2 Rule Reference',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Cmnr Rule 1 1 - SARADAP','DS0.DO3be',_dim,_num,'Minor 1, Curriculum 1 Rule Reference',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Cmnr Rule 1 2 - SARADAP','DS0.DO3bf',_dim,_num,'Minor 2, Curriculum 1 Rule Reference',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Cmnr Rule 2 1 - SARADAP','DS0.DO3c0',_dim,_num,'Minor 1, Curriculum 2 Rule Reference',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Cmnr Rule 2 2 - SARADAP','DS0.DO3c1',_dim,_num,'Minor 2, Curriculum 2 Rule Reference',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Code Value - SARCHKL','DS0.DO3c2',_dim,_txt,'This field identifies that a checklist item is required from a specific institution.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Coll Code 1 - SARADAP','DS0.DO3c5',_dim,_txt,'This field identifies the primary college to which applicant is applying.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Coll Code 2 - SARADAP','DS0.DO3c6',_dim,_txt,'Curriculum 2 College Code',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Comment - SARCHKL','DS0.DO3c7',_dim,_txt,'This field identifies a comment about the specific checklist item.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Comment Text - SARACMT','DS0.DO3c8',_dim,_txt,'This field specifies the Application comment(s) associated with application record.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Curr Rule 1 - SARADAP','DS0.DO3c9',_dim,_num,'Curriculum 1 Rule reference',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Curr Rule 2 - SARADAP','DS0.DO3ca',_dim,_num,'Curriculum 2 Rule Reference',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Deadline Date - SARCHKL','DS0.DO3cb',_dim,_date,'This field identifies the date the specific checklist item must be received from an applicant to continue admissions processing.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Degc Code 1 - SARADAP','DS0.DO3ce',_dim,_txt,'This field identifies the primary degree to which applicant is applying.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Degc Code 2 - SARADAP','DS0.DO3cf',_dim,_txt,'This field identifies the secondary degree to which applicant is applying.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Dept Code - SARADAP','DS0.DO3d0',_dim,_txt,'Department Code.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Dept Code 1 2 - SARADAP','DS0.DO3d2',_dim,_txt,'Department Code 2 on First Curriculum',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Dept Code 2 - SARADAP','DS0.DO3d3',_dim,_txt,'Department Code for second curriculum.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Dept Code 2 2 - SARADAP','DS0.DO3d4',_dim,_txt,'Department Code 2 on Curriculum 2',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Edlv Code - SARADAP','DS0.DO3d8',_dim,_txt,'Education Level Code',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Egol Code - SARADAP','DS0.DO3da',_dim,_txt,'Educational Goal Code',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Fee Date - SARADAP','DS0.DO3dd',_dim,_date,'This field identifies the date application fee has been assessed.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Fee Ind - SARADAP','DS0.DO3de',_dim,_txt,'This field identifies whether an application fee has been assessed.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Full Part Ind - SARADAP','DS0.DO3df',_dim,_txt,'This field identifies if applicant intention is for full or part time enrollment.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Intv Code - SARADAP','DS0.DO3e2',_dim,_txt,'This field identifies the status of the interview associated with the applicant.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Levl Code - SARADAP','DS0.DO3e3',_dim,_txt,'This field identifies the level to which the applicant is applying.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Levl Code 2 - SARADAP','DS0.DO3e6',_dim,_txt,'Curriculum 2 Level Code',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Maint Ind - SARADAP','DS0.DO3e7',_dim,_txt,'This field identifies whether the status of the application is being maintained by the system or the user.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Maint Ind - SARAPPD','DS0.DO3e8',_dim,_txt,'This field identifies whether the application decision was maintained by the system or the user.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Majr Code 1 - SARADAP','DS0.DO3eb',_dim,_txt,'This field identifies the primary major to which applicant is applying.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Majr Code 1 2 - SARADAP','DS0.DO3ec',_dim,_txt,'Major Code 2 on First Curriculum',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Majr Code 2 - SARADAP','DS0.DO3ed',_dim,_txt,'This field identifies the secondary major to which applicant is applying.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Majr Code 2 2 - SARADAP','DS0.DO3ee',_dim,_txt,'Major Code 2 on Curriculum 2',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Majr Code Conc 1 - SARADAP','DS0.DO3ef',_dim,_txt,'Area of Concentration code.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Majr Code Conc 1 2 - SARADAP','DS0.DO3f0',_dim,_txt,'Concentration Code 2 on Major 1, Curriculum 1',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Majr Code Conc 1 3 - SARADAP','DS0.DO3f1',_dim,_txt,'Concentration Code 3 on Major 1, Curriculum 1',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Majr Code Conc 121 - SARADAP','DS0.DO3f2',_dim,_txt,'Concentration Code 1 onMajor 2, Curriculum 1',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Majr Code Conc 122 - SARADAP','DS0.DO3f3',_dim,_txt,'Concentration Code 2 on Major 2, Curriculum 1',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Majr Code Conc 123 - SARADAP','DS0.DO3f4',_dim,_txt,'Concentration Code 3 on Major 2, Curriculum 1',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Majr Code Conc 2 - SARADAP','DS0.DO3f5',_dim,_txt,'Area of Concentration code.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Majr Code Conc 211 - SARADAP','DS0.DO3f6',_dim,_txt,'Concentration Code 1 on MAjor 1, Curriculum 2',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Majr Code Conc 212 - SARADAP','DS0.DO3f7',_dim,_txt,'Concentration Code 2 on Major 1, Curriculum 2',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Majr Code Conc 213 - SARADAP','DS0.DO3f8',_dim,_txt,'Concentration Code 3 on Major 1, Curriculum 2',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Majr Code Conc 221 - SARADAP','DS0.DO3f9',_dim,_txt,'Concentration Code 1 on Major 2, Curriculum 2',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Majr Code Conc 222 - SARADAP','DS0.DO3fa',_dim,_txt,'Concentration Code 2 on Major 2, Curriculum 2',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Majr Code Conc 223 - SARADAP','DS0.DO3fb',_dim,_txt,'Concentration Code 3 on Major 3, Curriculum 2',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Majr Code Minr 1 1 - SARADAP','DS0.DO3fc',_dim,_txt,'Minor Code 1 on Curriculum 1',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Majr Code Minr 1 2 - SARADAP','DS0.DO3fd',_dim,_txt,'Minor 2 on Curriculum 1',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Majr Code Minr 2 1 - SARADAP','DS0.DO3fe',_dim,_txt,'Minor Code 1 on Curriculum 2',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Majr Code Minr 2 2 - SARADAP','DS0.DO3ff',_dim,_txt,'Minor Code 2 on Curriculum 2',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Mandatory Ind - SARCHKL','DS0.DO401',_dim,_txt,'This field identifies whether the checklist item is mandatory or optional.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Orig Code - SARACMT','DS0.DO402',_dim,_txt,'This field identifies the originator of the comment associated with application.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - SARACMT','DS0.DO405',_dim,_num,'Internal identification number of applicant.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - SARADAP','DS0.DO406',_dim,_num,'This field identifies the applicant internal identification number.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - SARAPPD','DS0.DO407',_dim,_num,'This field identifies the internal identification number of the applicant.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - SARCHKL','DS0.DO408',_dim,_num,'This field identifies the student internal identification number.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - SARCHRT','DS0.DO409',_dim,_num,'Internal Person Identification Number',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - SARRSRC','DS0.DO40a',_dim,_num,'Internal identification number of applicant.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Primary Srce Ind - SARRSRC','DS0.DO40b',_dim,_txt,'This field specifies if the source type is the primary source of the application.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Print Ind - SARCHKL','DS0.DO40c',_dim,_txt,'Print indicator for checklist items letter',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Program 1 - SARADAP','DS0.DO410',_dim,_txt,'Curriculum 1 Program Code',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Program 2 - SARADAP','DS0.DO411',_dim,_txt,'Curriculum 2 Program Code',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Rate Code - SARADAP','DS0.DO415',_dim,_txt,'This field identifies a specific assessment rate assigned to the student.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Receive Date - SARCHKL','DS0.DO417',_dim,_date,'This field identifies the date the checklist item was received from the applicant.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Recr Code - SARADAP','DS0.DO418',_dim,_txt,'Recruiter Code.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Req Count - SARCHKL','DS0.DO419',_dim,_num,'This field displays the number of times the specific checklist item has been requested from the applicant.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Req Date1 - SARCHKL','DS0.DO41a',_dim,_date,'This field identifies the date on which the checklist item was first requested from the applicant.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Req Date2 - SARCHKL','DS0.DO41b',_dim,_date,'This field identifies the date on which the checklist item was last requested from the applicant.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Resd Code - SARADAP','DS0.DO41e',_dim,_txt,'This field identifies the residency classification of the applicant.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Rtyp Code - SARADAP','DS0.DO421',_dim,_txt,'Recruit Type code.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Sbgi Code - SARADAP','DS0.DO422',_dim,_txt,'Institution Attending code. Thisfield represents the institution the student decided to attend rather than the home institution.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Sbgi Code - SARRSRC','DS0.DO424',_dim,_txt,'This field identifies the source background associated with the application.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Seq No - SARAPPD','DS0.DO425',_dim,_num,'This field does not display on the form.  It identifies the system assigned internal sequence number associated with the application record.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Seqno - SARACMT','DS0.DO426',_dim,_num,'This field does not display on the form.  It identifies an internal sequence number assigned to each comment created.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Sess Code - SARADAP','DS0.DO429',_dim,_txt,'This field identifies which session applicant is applying for.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Site Code - SARADAP','DS0.DO42a',_dim,_txt,'This field identifies the site to which applicant is applying.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Source - SARCHKL','DS0.DO42b',_dim,_txt,'This field identifies whether the checklist item was added automatically by the system or manually by a user.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Source Date - SARCHKL','DS0.DO42c',_dim,_date,'This field identifies the date that the checklist item was added to the application.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Stdn_Acc_Ind - STVAPDC','DS0.DO15ae',_dim,_txt,'This field specifies whether student acceptance is indicated by the decision.  Y - Student accepts offer of admission.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Styp Code - SARADAP','DS0.DO42e',_dim,_txt,'This field identifies the type of student the applicant will become if admitted.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code - SARACMT','DS0.DO434',_dim,_txt,'This field identifies the term associated with the application.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code Ctlg 1 - SARADAP','DS0.DO437',_dim,_txt,'Curriculum 1 Catalog Term Code',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code Ctlg 2 - SARADAP','DS0.DO438',_dim,_txt,'Curriculum 2 Catalog Term Code',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code Entry - SARADAP','DS0.DO439',_dim,_txt,'This field identifies the term associated with the information on applicant record.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code Entry - SARAPPD','DS0.DO43a',_dim,_txt,'This field identifies the effective term of the application record.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code Entry - SARCHKL','DS0.DO43b',_dim,_txt,'This field identifies the effective term of the application.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code Entry - SARCHRT','DS0.DO43c',_dim,_txt,'Entry Term Code',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code Entry - SARRSRC','DS0.DO43d',_dim,_txt,'This field identifies the entry term',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Wrsn Code - SARADAP','DS0.DO443',_dim,_txt,'This field identifies the reason why an application has been withdrawn.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls1=cls0.add('Course Catalog','',_cls,_txt,'',false,null,'','','','BANNER',false,'');
cls1.allowInResult=true;cls1.allowInFilter=true
cls2=cls1.add('Activity Date - SCBCRKY','DS0.DO445',_dim,_date,'This field specifes the date the record was created or updated.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SCBCRSE','DS0.DO446',_dim,_date,'This field specifies the date the record was created or updated.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SCBSUPP','DS0.DO447',_dim,_date,'This field identifies the most recent date a record was created or updated.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SCRATTR','DS0.DO448',_dim,_date,'This field identifies the date the record was created or updated',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SCRGMOD','DS0.DO44a',_dim,_date,'This field identifies the most current date record was created or updated.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SCRLEVL','DS0.DO44b',_dim,_date,'This field specifies the most current date record was created or updated.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SCRRTRM','DS0.DO44c',_dim,_date,'This field specifies the most current date record was created or updated.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SCRSCHD','DS0.DO44d',_dim,_date,'This field specifies the most current date record was created or updated.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Add Fees Ind - SCBCRSE','DS0.DO44e',_dim,_txt,'This field is used to record that additional fees, outside of the SFARGFE       assessment rules, are charged for the course.  Additional course fees are       defined in Fee Code Block of Course Detail Form - SCADETL. Info. only.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Adj Workload - SCRSCHD','DS0.DO44f',_dim,_num,'Adjust instructional workload value for the schedule type',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Aprv Code - SCBCRSE','DS0.DO450',_dim,_txt,'This field is used to record the type of requirements a course is approved to   fulfill.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Attr Code - SCRATTR','DS0.DO451',_dim,_txt,'This field defines the attribute code of the course',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Bill Hr High - SCBCRSE','DS0.DO452',_dim,_num,'This field defines a second valid billing hours value or to define the high     billing hours value within a range.  A value may only be entered if the         OR/TO  field is complete and this field value must be \u003E Billing Hours Low.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Bill Hr Ind - SCBCRSE','DS0.DO453',_dim,_txt,'This field defines whether the course can be billed for variable credit.        OR/TO is used to specify the relationship between the low and high billing      hour values.  An OR/TO value must exist to enter Billing Hours High.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Bill Hr Low - SCBCRSE','DS0.DO454',_dim,_num,'This field is used to specify the minimum number of credits for which the       course can be billed based on defined assessment rules.  Billing hours will     default to the values defined for credit hours, but may be changed.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Capp Prereq Test Ind - SCBCRSE','DS0.DO455',_dim,_txt,'Indicates whether CAPP areas or existing prerequisite and test score restrictions are in effect for the course for the effective term',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Ccsl Code - SCBSUPP','DS0.DO456',_dim,_txt,'Classification Code',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Ceu Ind - SCBCRSE','DS0.DO457',_dim,_txt,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Cipc Code - SCBCRSE','DS0.DO458',_dim,_txt,'This field can be used to record the CIP code of the course.  Normally, CIP     course codes are used to identify the primary subject matter of a course.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Coll Code - SCBCRSE','DS0.DO459',_dim,_txt,'This field is used to specify the college which offers the course.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Cont Hr High - SCBCRSE','DS0.DO45a',_dim,_num,'This column contains the sum of high lecture, lab and others hours columns. It functions the same as the cont_hr_low column. A value may only be entered if the OR/TO field is entered and must be \u003E contact hours low',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Cont Hr Ind - SCBCRSE','DS0.DO45b',_dim,_txt,'This column contains the literal TO or OR to define the relationship between the low and high contact hours',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Cont Hr Low - SCBCRSE','DS0.DO45c',_dim,_num,'This column contains the sum of low lecture, lab and others hours columns. Contact hours divided by 10 are the continuing education units for a continuing ed course. This calculated value is stored in the credit hour field when the ceu_ind = Y',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Coop Ed Ind - SCBSUPP','DS0.DO45d',_dim,_txt,'Cooperative Education Indicator',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Course Number Sort','DS0.DO11f7',_dim,_txt,'Use this field to sort the Course Numbers in the correct order.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Credit Hr High - SCBCRSE','DS0.DO45e',_dim,_num,'This field is used either to define a second valid credit hour value or to      define the high credit hour value within a range.  A value may only be entered  if the OR/TO field is complete and value must be \u003E Credit Hours Low.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Credit Hr Ind - SCBCRSE','DS0.DO45f',_dim,_txt,'This field defines whether the course can be offered for variable credit.       OR/TO is used to specify the relationship between low and high credit hours.    values.  An OR/TO value must exist to enter Credit Hours High.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Credit Hr Low - SCBCRSE','DS0.DO460',_dim,_num,'This field specifies the minimum number of credits for which a course may       be offered.  Credit hour values will control the number of credit hours for     which sections can be scheduled and for which students may register.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Crse Numb - SCBCRKY','DS0.DO461',_dim,_txt,'This field displays the Course Number of courses in the system.  Completion     of this field in query mode allows you to query all courses currently defined   in the system for this Course Number.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Crse Numb - SCBCRSE','DS0.DO462',_dim,_txt,'This field defines the course number associated with the subject for the        course.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Crse Numb - SCBSUPP','DS0.DO463',_dim,_txt,'This is the course number from the scbcrse table.  Combined with the subject code',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Crse Numb - SCRATTR','DS0.DO464',_dim,_txt,'This field defines the course number associated with the subject for the course',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Crse Numb - SCRGMOD','DS0.DO466',_dim,_txt,'This field defines the course number associated with the subject for the        course.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Crse Numb - SCRLEVL','DS0.DO467',_dim,_txt,'This field defines the course number associated with the subject for the        course.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Crse Numb - SCRRTRM','DS0.DO468',_dim,_txt,'This field defines the course number associated with the subject for the        course.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Crse Numb - SCRSCHD','DS0.DO469',_dim,_txt,'This field defines the course number associated with the subject for the        course.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Csta Code - SCBCRSE','DS0.DO46b',_dim,_txt,'Course Status Code. It is a required field. It can be used to prevent creation of sections of the course based on the Active/Inactive flag associated with the status code.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Cuda Code - SCBSUPP','DS0.DO46c',_dim,_txt,'Course Institutional Reporting Element 1 Code',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Cudb Code - SCBSUPP','DS0.DO46d',_dim,_txt,'Course Institutional Reporting Element 2 Code',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Cudc Code - SCBSUPP','DS0.DO46e',_dim,_txt,'Course Institutional Reporting Element 3 Code',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Cudd Code - SCBSUPP','DS0.DO46f',_dim,_txt,'Course Institutional Reporting Element 4 Code',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Cude Code - SCBSUPP','DS0.DO470',_dim,_txt,'Course Institutional Reporting Element 5 Code',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Cudf Code - SCBSUPP','DS0.DO471',_dim,_txt,'Course Institutional Reporting Element 6 Code.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Default Ind - SCRGMOD','DS0.DO472',_dim,_txt,'This field is used to specify the grading mode which will default for the       grading mode on the Registration Form - SFAREGS.  At least one grading mode     must be a default (D) and it may be overridden on the SFAREGS Form.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Dept Code - SCBCRSE','DS0.DO473',_dim,_txt,'This field is used to specify the department which offers the course, if        desired.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Divs Code - SCBCRSE','DS0.DO474',_dim,_txt,'This field can be used to specify the division which offers the course, if      desired.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Eff Term - SCBCRSE','DS0.DO475',_dim,_txt,'This field identifies the term this version of the course becomes effective.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Eff Term - SCBSUPP','DS0.DO476',_dim,_txt,'This is the effective term.  Combined with subject code and course number',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Eff Term - SCRATTR','DS0.DO477',_dim,_txt,'This field identifies the term this version of the course attributes become effective',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Eff Term - SCRGMOD','DS0.DO479',_dim,_txt,'This field identifies the term this version of course grading modes becomes     effective.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Eff Term - SCRLEVL','DS0.DO47a',_dim,_txt,'This field identifies the term this version of the course level becomes         effective.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Eff Term - SCRRTRM','DS0.DO47b',_dim,_txt,'This field identifies the term this version of the course term restrictions     becomes effective.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Eff Term - SCRSCHD','DS0.DO47c',_dim,_txt,'This field identifies the term this version of the course schedule types        becomes effective.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Gmod Code - SCRGMOD','DS0.DO47d',_dim,_txt,'This field is used to define grading mode authorizations for a course.  Each    course must be authorized to be offered with at least one grading mode.  A      course can be authorized with an unlimited number of grading modes.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Lab Hr High - SCBCRSE','DS0.DO47e',_dim,_num,'This field is used either to define a second valid lab hour value or to define the high lab hour value within a range.  A value may only be entered if the OR/TO field is complete and this field value must be \u003E Lab Hours Low.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Lab Hr Ind - SCBCRSE','DS0.DO47f',_dim,_txt,'This field defines whether the course can be offered for variable lab hours.  OR/TO is used to specify the relationship between the low and high lab hour values.  An OR/TO value must exist to enter Lab Hours High.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Lab Hr Low - SCBCRSE','DS0.DO480',_dim,_num,'This field is used to specify the minimum number of lab hours for which a course may be offered.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Lec Hr High - SCBCRSE','DS0.DO481',_dim,_num,'This field is used either to define a second valid lecture hour value or to define the high lecture hour value within a range.  A value may only be entered if the OR/TO field is complete and must be \u003E Lecture Hours Low.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Lec Hr Ind - SCBCRSE','DS0.DO482',_dim,_txt,'This field defines whether the course can be offered for variable lecture hours.  OR/TO is used to specify the relationship between the low and high lecture hour values.  An OR/TO value must exist to enter Lecture Hours High.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Lec Hr Low - SCBCRSE','DS0.DO483',_dim,_num,'This field is used to specify the minimum number of lecture hours for which a course may be offered.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Levl Code - SCRLEVL','DS0.DO484',_dim,_txt,'This field is used to authorize the level for which a course may be offered.    Each course must be authorized to be offered for at least one level.  A         course can be authorized for an unlimited number of levels.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Max Enrl - SCRSCHD','DS0.DO485',_dim,_num,'Maximum student enrollment for workload',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Max Rpt Units - SCBCRSE','DS0.DO486',_dim,_num,'Maximum number of credits permitted.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Occs Code - SCBSUPP','DS0.DO487',_dim,_txt,'Occupational Course Indicator code',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Oth Hr High - SCBCRSE','DS0.DO488',_dim,_num,'This field is used to define a second valid other hour value or to define the high other hours value within a range.  A value may only be entered if the OR/TO field is complete and this field value must be \u003E Other Hours Low.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Oth Hr Ind - SCBCRSE','DS0.DO489',_dim,_txt,'This field defines whether the course can be offered for variable other hours.  OR/TO is used to specify the relationship between the low and high other hour values.  An OR/TO value must exist to enter Other Hours High.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Oth Hr Low - SCBCRSE','DS0.DO48a',_dim,_num,'This field is used to specify the minimum number of other hours for which the course can be offered. Other hours is defined by the institution.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Perm Dist Ind - SCBSUPP','DS0.DO48b',_dim,_txt,'Permanent District Identifier',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pwav Code - SCBCRSE','DS0.DO48c',_dim,_txt,'This field is used to record the type of authorization a student must have in   order to waive a pre-requisite requirement.  It is informational only.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Rec Type - SCRRTRM','DS0.DO48d',_dim,_txt,'This field defines if the recod contains a term indicator or a term code.  Valid values are: 1 - Term indicator, 2 - Term code.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Repeat Limit - SCBCRSE','DS0.DO48e',_dim,_num,'This field is used to record the maximum number of times the course may be      repeated by a student.  Zero (0) will default.  Repeat Limit is used in the     repeat check process in Academic History.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Reps Code - SCBCRSE','DS0.DO48f',_dim,_txt,'Repeat status code used for reporting purposes.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Rtrm Code - SCRRTRM','DS0.DO490',_dim,_txt,'This field defines the term codes for which term scheduling restrictions        exist.  The Include/Exclude field will determine how the term is restricted.    An unlimited number of terms may be defined.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Schd Code - SCRSCHD','DS0.DO491',_dim,_txt,'This field defines the schedule type codes which can be authorized for a        course.  Each course must be authorized to be offered for at least one schedule type.  An unlimited number of schedule types can be authorized for a course.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Subj Code - SCBCRKY','DS0.DO492',_dim,_txt,'This field displays the Subject area of courses in the system.  Completion of   this field in query mode allows you to query all courses currently defined in   the system for this Subject code.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Subj Code - SCBCRSE','DS0.DO493',_dim,_txt,'This field defines the subject area of the course.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Subj Code - SCBSUPP','DS0.DO494',_dim,_txt,'This is the subject code from the scbcrse table.  Combined with the course number',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Subj Code - SCRATTR','DS0.DO495',_dim,_txt,'This field defines the subject area of the course',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Subj Code - SCRGMOD','DS0.DO497',_dim,_txt,'This field defines the subject area of the course.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Subj Code - SCRLEVL','DS0.DO498',_dim,_txt,'This field defines the subject area of the course.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Subj Code - SCRRTRM','DS0.DO499',_dim,_txt,'This field defines the subject area of the course.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Subj Code - SCRSCHD','DS0.DO49a',_dim,_txt,'This field defines the subject area of the course.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code End - SCBCRKY','DS0.DO49c',_dim,_txt,'This is the To Term of the latest version of the course.  If changed to an      earlier or later term, all To Terms for this course will change to end in this  term.  It cannot be earlier than a term where sections are scheduled.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code Start - SCBCRKY','DS0.DO49d',_dim,_txt,'This is the From Term of the earliest version of the course.  If changed to     earlier or later term, all From Terms change for this course to begin in this   term. It cannot be later than a term where sections are scheduled.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Ind - SCRRTRM','DS0.DO49e',_dim,_txt,'This field indicates if the term codes entered should be included or excluded   in restricting the scheduling of the course.  Valid values are:  I - Include,   E - Exclude.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Title - SCBCRSE','DS0.DO49f',_dim,_txt,'This field is used to specify the title of the course which will be in effect   for the effective term. It is a free format field.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Tops Code - SCBSUPP','DS0.DO4a0',_dim,_txt,'Taxonomy of Program code',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Tuiw Ind - SCBCRSE','DS0.DO4a1',_dim,_txt,'This field specifies whether the course is exempt from tuit. and fees defined   on Reg. Fees Process Control Form - SFARGFE.  If \"Y\", all rules on SFARGFE      with \"Y\" in Override field ignored.  If \"N\", rules on SFARGFE apply.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Workload - SCRSCHD','DS0.DO4a2',_dim,_num,'Instructional workload value for the schedule type',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls1=cls0.add('Faculty Information','',_cls,_txt,'',false,null,'','','','BANNER',false,'');
cls1.allowInResult=true;cls1.allowInFilter=true
cls2=cls1.add('Acct Led - SZRFCON','DS0.DO60f',_dim,_num,' This field specifies the Account/Ledger code',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date (Faculty) - SPRADDR','DS0.DO1215',_dim,_date,'This field defines the most current date a record is added or changed.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date (Faculty) - SPRTELE','DS0.DO1228',_dim,_date,'Date of last activity for telephone record.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SIBINST','DS0.DO4a3',_dim,_date,'Activity date',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SIRASGN','DS0.DO4a4',_dim,_date,'Activity date',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SZRFAFL','DS0.DO62b',_dim,_date,' This field specifies the most recent date that a record was created or updated',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SZRFBIO','DS0.DO1446',_dim,_date,'Date this record is added or updated',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SZRFCON','DS0.DO62d',_dim,_date,' This field specifies the most recent date that a record was created or updated',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SZRFCRS','DS0.DO62e',_dim,_date,' This field specifies the most recent date that a record was created or updated',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SZRFDEG','DS0.DO62f',_dim,_date,' This field specifies the most recent date that a record was created or updated',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SZRFFIN','DS0.DO631',_dim,_date,' This field specifies the most recent date that a record was created or updated',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SZRFGEN','DS0.DO632',_dim,_date,' This field specifies the most recent date that a record was created or updated',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SZRFPAY','DS0.DO633',_dim,_date,' This field specifies the most recent date that a record was created or updated',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SZRZCOM','DS0.DO1532',_dim,_date,' This field specifies the most recent date that a record was created or updated',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Addr Seqno (Faculty) - SPRTELE','DS0.DO1229',_dim,_num,'Address type sequence number associated with address type.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Adl Fed - SZRFFIN','DS0.DO649',_dim,_num,' This field specifies the dollar amount of Additional Federal witholdings',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Adl State - SZRFFIN','DS0.DO64a',_dim,_num,' This field specifies the dollar amount of Additional State witholdings',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Advr Ind - SIBINST','DS0.DO4a6',_dim,_txt,'Faculty member available of advisment indicator',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Amount - SZRRQST','DS0.DO1513',_dim,_num,'The payment amount for the supplementary payroll activity.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Appoint Date - SIBINST','DS0.DO4a7',_dim,_date,'The date the appointment was awarded',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Appt End Date - SZRFFIN','DS0.DO650',_dim,_date,' This field specifies the appointment end date (format DATE)',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Asrc Code (Faculty) - SPRADDR','DS0.DO1216',_dim,_txt,'Address source code.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Asty Code - SIRASGN','DS0.DO4a8',_dim,_txt,'Faculty Assignment Type Code',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Atyp Code (Faculty) - SPRADDR','DS0.DO1217',_dim,_txt,'This field identifies the type of address associated with person.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Atyp Code (Faculty) - SPRTELE','DS0.DO122a',_dim,_txt,'Optional Address Type code associated with telephone number.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Birth Date (Faculty) - SPBPERS','DS0.DO14dc',_dim,_date,'Faculty birth date',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Cat Pref - SZRFCON','DS0.DO660',_dim,_txt,' This field specifies the address type where the faculty Member prefers to receive a Course Catalog',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Cat Pref - SZRFGEN','DS0.DO661',_dim,_txt,' This field specifies the address type where the faculty Member prefers to receive a Course Catalog',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Category - SIRASGN','DS0.DO4a9',_dim,_txt,'The session indicator associated with the assignment',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Cdep Code - SZRFCON','DS0.DO685',_dim,_txt,' This field specifies the Course Department code',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Cdep Code - SZRFCRS','DS0.DO686',_dim,_txt,' This field specifies the Course Department code',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Census Date - SZRFCRS','DS0.DO687',_dim,_date,' This field specifies the date that the Enrollment counts and total Tuition amount are calculated on',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Change Ind (Faculty) - SPRIDEN','DS0.DO1691',_dim,_txt,'This field  is used as a placeholder in some complex reports',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('City (Faculty) - SPRADDR','DS0.DO1218',_dim,_txt,'This field maintains the city associated with the address of person.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Citz Code (Faculty) - SPBPERS','DS0.DO156c',_dim,_txt,'Faculty citizenship status',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Clab Code - SZRFCRS','DS0.DO68e',_dim,_txt,' This field specifies the Lab code associated with the course',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Cntr Code - SIBINST','DS0.DO4aa',_dim,_txt,'Obsolete as of 1.10. Column set to null. Replaced by SIRICNT_CNTR_CODE',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Cnty Code (Faculty) - SPRADDR','DS0.DO1219',_dim,_txt,'This field maintains the county associated with the address of person.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Coll Code - SZRFAFL','DS0.DO695',_dim,_txt,' This field specifies the College Code associated with a Faculty Members affiliation',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Coll Code (Faculty) - SSBSECT','DS0.DO1659',_dim,_txt,'The Faculty College Code for the course.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Coll Code - SZRFGEN','DS0.DO696',_dim,_txt,' This field specifies the College Code associated with a Faculty Members affiliation attribute',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Comment (Faculty) - SPRTELE','DS0.DO122b',_dim,_txt,'Comment relating to telephone number.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Comments - SZRFAFL','DS0.DO69b',_dim,_txt,' This field specifies any comments associated with the Faculty Members affiliation',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Comments - SZRFCRS','DS0.DO69c',_dim,_txt,' This field specifies any Comments associated with the course',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Comments - SZRFFIN','DS0.DO69d',_dim,_txt,' This field specifies any comments associated with the Faculty Member',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Comments - SZRFPAY','DS0.DO69e',_dim,_txt,' This field specifies any comments associated with the Faculty Member',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Comp Fee - SZRFCRS','DS0.DO69f',_dim,_num,' This field specifies the dollar amount if there is a Computer Fee',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Confirm - SZRFCON','DS0.DO6a0',_dim,_txt,' This field specifies if a Confirmation of the Contract has been made (Y, N or blank)',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Confirm Date - SZRFCON','DS0.DO6a1',_dim,_date,' This field specifies the date that the confirmation letter was sent to the Faculty Member',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Cont Rcvd - SZRFCON','DS0.DO6a2',_dim,_txt,' This field specifies if the Contract has been received (Y, N or blank)',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Contingency Ind - SZRFCON','DS0.DO6a3',_dim,_txt,' This field specifies the Faculty Member Contingeny Indicator',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Contract In - SZRFFIN','DS0.DO6a4',_dim,_txt,' This field specifies if the contract has been received (Y, N or blank)',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Cpst Code - SZRFGEN','DS0.DO129d',_dim,_txt,'This field specifies the letter type for the faculty member.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Crn - SIRASGN','DS0.DO4ac',_dim,_txt,'The course reference of the course that the instructor was assigned to',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Crn (Faculty) - SSBSECT','DS0.DO15a0',_dim,_txt,'The course reference of the course that the instructor was assigned to',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Crn - SZRFCON','DS0.DO6ab',_dim,_txt,' This field specifies the Course Reference Number assigned to a course',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Crn - SZRFCRS','DS0.DO6ac',_dim,_txt,' This field specifies the Course Refernce Number assigned to this course',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Crn - SZRRQST','DS0.DO1511',_dim,_txt,' This field specifies the Course Refernce Number assigned to the supplementary payroll activity.  Not all supplementary payroll activities are associated with a CRN.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Crn - SZVEVCR','DS0.DO162b',_dim,_txt,' This field specifies the Course Reference Number assigned to the class.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Crse Enrl 2015 - SZVEVCR','DS0.DO1633',_dim,_num,'The course enrollment for a CRN and term reported by FAS for an instructor evaluation data set for academic year 201501, 201502, 201503.  (This number may or may not be the same as the SSASECT enrollment numbers.)  The term type is described by the \'Term Type - SZVEVCR\' data field.  The CRN is described by the \'Crn - SZVEVCR\' data field.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Crse Enrl 2014 - SZVEVCR','DS0.DO1635',_dim,_num,'The course enrollment for a CRN and term reported by FAS for an instructor evaluation data set for academic year 201401, 201402, 201403.  (This number may or may not be the same as the SSASECT enrollment numbers.)  The term type is described by the \'Term Type - SZVEVCR\' data field.  The CRN is described by the \'Crn - SZVEVCR\' data field.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Crse Enrl 2013 - SZVEVCR','DS0.DO1636',_dim,_num,'The course enrollment for a CRN and term reported by FAS for an instructor evaluation data set for academic year 201301, 201302, 201303.  (This number may or may not be the same as the SSASECT enrollment numbers.)  The term type is described by the \'Term Type - SZVEVCR\' data field.  The CRN is described by the \'Crn - SZVEVCR\' data field.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Crse Enrl 2012 - SZVEVCR','DS0.DO1637',_dim,_num,'The course enrollment for a CRN and term reported by FAS for an instructor evaluation data set for academic year 201201, 201202, 201203.  (This number may or may not be the same as the SSASECT enrollment numbers.)  The term type is described by the \'Term Type - SZVEVCR\' data field.  The CRN is described by the \'Crn - SZVEVCR\' data field.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Crse Enrl 2011 - SZVEVCR','DS0.DO1638',_dim,_num,'The course enrollment for a CRN and term reported by FAS for an instructor evaluation data set for academic year 201101, 201102, 201103.  (This number may or may not be the same as the SSASECT enrollment numbers.)  The term type is described by the \'Term Type - SZVEVCR\' data field.  The CRN is described by the \'Crn - SZVEVCR\' data field.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Crse Enrl 2010 - SZVEVCR','DS0.DO1639',_dim,_num,'The course enrollment for a CRN and term reported by FAS for an instructor evaluation data set for academic year 201001, 201002, 201003.  (This number may or may not be the same as the SSASECT enrollment numbers.)  The term type is described by the \'Term Type - SZVEVCR\' data field.  The CRN is described by the \'Crn - SZVEVCR\' data field.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Crse GPA 2015 - SZVEVCR','DS0.DO1630',_dim,_num,'The average student GPA for a CRN and term including 201501, 201502, and 201503.  The term type is described by the \'Term Type - SZVEVCR\' data field.  The CRN is described by the \'Crn - SZVEVCR\' data field.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Crse GPA 2014 - SZVEVCR','DS0.DO163a',_dim,_num,'The average student GPA for a CRN and term for academic year including 201401, 201402, and 201403.  The term type is described by the \'Term Type - SZVEVCR\' data field.  The CRN is described by the \'Crn - SZVEVCR\' data field.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Crse GPA 2013 - SZVEVCR','DS0.DO163b',_dim,_num,'The average student GPA for a CRN and term including 201301, 201302, and 201303.  The term type is described by the \'Term Type - SZVEVCR\' data field.  The CRN is described by the \'Crn - SZVEVCR\' data field.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Crse GPA 2012 - SZVEVCR','DS0.DO163c',_dim,_num,'The average student GPA for a CRN and term including 201201, 201202, and 201203.  The term type is described by the \'Term Type - SZVEVCR\' data field.  The CRN is described by the \'Crn - SZVEVCR\' data field.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Crse GPA 2011 - SZVEVCR','DS0.DO163d',_dim,_num,'The average student GPA for a CRN and term including 201101, 201102, and 201103.  The term type is described by the \'Term Type - SZVEVCR\' data field.  The CRN is described by the \'Crn - SZVEVCR\' data field.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Crse GPA 2010 - SZVEVCR','DS0.DO163e',_dim,_num,'The average student GPA for a CRN and term including 201101, 201102, and 201103.  The term type is described by the \'Term Type - SZVEVCR\' data field.  The CRN is described by the \'Crn - SZVEVCR\' data field.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Crse Max Enrl 2015 - SZVEVCR','DS0.DO1634',_dim,_num,'The maximum course enrollment for a CRN and term from SSASECT including 201501, 201502, and 201503.  (Please note the enrollment number comes from the FAS instructor evaluation data set; not from SSASECT.)  The term type is described by the \'Term Type - SZVEVCR\' data field.  The CRN is described by the \'Crn - SZVEVCR\' data field.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Crse Max Enrl 2014 - SZVEVCR','DS0.DO163f',_dim,_num,'The maximum course enrollment for a CRN and term from SSASECT including 201401, 201402, and 201403.  (Please note the enrollment number comes from the FAS instructor evaluation data set; not from SSASECT.)  The term type is described by the \'Term Type - SZVEVCR\' data field.  The CRN is described by the \'Crn - SZVEVCR\' data field.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Crse Max Enrl 2013 - SZVEVCR','DS0.DO1640',_dim,_num,'The maximum course enrollment for a CRN and term from SSASECT including 201301, 201302, and 201303.  (Please note the enrollment number comes from the FAS instructor evaluation data set; not from SSASECT.)  The term type is described by the \'Term Type - SZVEVCR\' data field.  The CRN is described by the \'Crn - SZVEVCR\' data field.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Crse Max Enrl 2012 - SZVEVCR','DS0.DO1641',_dim,_num,'The maximum course enrollment for a CRN and term from SSASECT including 201201, 201202, and 201203.  (Please note the enrollment number comes from the FAS instructor evaluation data set; not from SSASECT.)  The term type is described by the \'Term Type - SZVEVCR\' data field.  The CRN is described by the \'Crn - SZVEVCR\' data field.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Crse Max Enrl 2011 - SZVEVCR','DS0.DO1642',_dim,_num,'The maximum course enrollment for a CRN and term from SSASECT including 201101, 201102, and 201103.  (Please note the enrollment number comes from the FAS instructor evaluation data set; not from SSASECT.)  The term type is described by the \'Term Type - SZVEVCR\' data field.  The CRN is described by the \'Crn - SZVEVCR\' data field.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Crse Max Enrl 2010 - SZVEVCR','DS0.DO1643',_dim,_num,'The maximum course enrollment for a CRN and term from SSASECT including 201001, 201002, and 201003.  (Please note the enrollment number comes from the FAS instructor evaluation data set; not from SSASECT.)  The term type is described by the \'Term Type - SZVEVCR\' data field.  The CRN is described by the \'Crn - SZVEVCR\' data field.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Crse Rating 2015 - SZVEVCR','DS0.DO1631',_dim,_num,'The average student rating given to a course for a CRN and term  including 201501, 201502, and 201503.  The term type is described by the \'Term Type - SZVEVCR\' data field.  The CRN is described by the \'Crn - SZVEVCR\' data field.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Crse Rating 2014 - SZVEVCR','DS0.DO1644',_dim,_num,'The average student rating given to a course for a CRN and term  including 201401, 201402, and 201403.  The term type is described by the \'Term Type - SZVEVCR\' data field.  The CRN is described by the \'Crn - SZVEVCR\' data field.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Crse Rating 2013 - SZVEVCR','DS0.DO1645',_dim,_num,'The average student rating given to a course for a CRN and term  including 201301, 201302, and 201303.  The term type is described by the \'Term Type - SZVEVCR\' data field.  The CRN is described by the \'Crn - SZVEVCR\' data field.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Crse Rating 2012 - SZVEVCR','DS0.DO1646',_dim,_num,'The average student rating given to a course for a CRN and term  including 201201, 201202, and 201203.  The term type is described by the \'Term Type - SZVEVCR\' data field.  The CRN is described by the \'Crn - SZVEVCR\' data field.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Crse Rating 2011 - SZVEVCR','DS0.DO1647',_dim,_num,'The average student rating given to a course for a CRN and term  including 201101, 201102, and 201103.  The term type is described by the \'Term Type - SZVEVCR\' data field.  The CRN is described by the \'Crn - SZVEVCR\' data field.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Crse Rating 2010 - SZVEVCR','DS0.DO1648',_dim,_num,'The average student rating given to a course for a CRN and term including 201001, 201002, and 201003.  The term type is described by the \'Term Type - SZVEVCR\' data field.  The CRN is described by the \'Crn - SZVEVCR\' data field.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Crse WD Rate 2015 - SZVEVCR','DS0.DO1632',_dim,_num,'The course withdrawl rate (percent) for a CRN and term including 201501, 201502, and 201503.  The term type is described by the \'Term Type - SZVEVCR\' data field.  The CRN is described by the \'Crn - SZVEVCR\' data field.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Crse WD Rate 2014 - SZVEVCR','DS0.DO1649',_dim,_num,'The course withdrawl rate (percent) for a CRN and term including 201401, 201402, and 201403.  The term type is described by the \'Term Type - SZVEVCR\' data field.  The CRN is described by the \'Crn - SZVEVCR\' data field.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Crse WD Rate 2013 - SZVEVCR','DS0.DO164a',_dim,_num,'The course withdrawl rate (percent) for a CRN and term including 201301, 201302, and 201303.  The term type is described by the \'Term Type - SZVEVCR\' data field.  The CRN is described by the \'Crn - SZVEVCR\' data field.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Crse WD Rate 2012 - SZVEVCR','DS0.DO164b',_dim,_num,'The course withdrawl rate (percent) for a CRN and term including 201201, 201202, and 201203.  The term type is described by the \'Term Type - SZVEVCR\' data field.  The CRN is described by the \'Crn - SZVEVCR\' data field.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Crse WD Rate 2011 - SZVEVCR','DS0.DO164c',_dim,_num,'The course withdrawl rate (percent) for a CRN and term including 201101, 201102, and 201103.  The term type is described by the \'Term Type - SZVEVCR\' data field.  The CRN is described by the \'Crn - SZVEVCR\' data field.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Crse WD Rate 2010 - SZVEVCR','DS0.DO164d',_dim,_num,'The course withdrawl rate (percent) for a CRN and term including 201001, 201002, and 201003.  The term type is described by the \'Term Type - SZVEVCR\' data field.  The CRN is described by the \'Crn - SZVEVCR\' data field.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Crse Numb (Faculty) - SSBSECT','DS0.DO15a1',_dim,_txt,'This field is used to the determine the course number in the Key Block with a Term and Subject  to identify a valid course version from the Catalog Module.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Crse Numb - SZVEVCR','DS0.DO1627',_dim,_txt,'This field is used to the determine the course number in the Key Block with a Term and Subject  to identify a valid course version from the Catalog Module.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Crse Title Combo (Faculty) - SSBSECT, SCBCRSE','DS0.DO15a5',_dim,_txt,'If a course title is available in SSASECT, this field displays that title.  If not, it displays the course title from SCACRSE.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Crse Title (Faculty) - SSBSECT','DS0.DO6b3',_dim,_txt,' This field specifies the Title of the course',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Crse Title - SZRFCRS','DS0.DO15a4',_dim,_txt,' This field specifies the Title of the course',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Crse Title - SZVEVCR','DS0.DO1628',_dim,_txt,' This field specifies the Title of the course',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Dept Desc - SZRFAFL','DS0.DO6ba',_dim,_txt,' This field specifies the Department that the Faculty Member is affiliated with',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Desc (Faculty) - SZRFCON','DS0.DO1580',_dim,_txt,' This field specifies the Faculty Member Contract code description',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Disp - SZRFAFL','DS0.DO141d',_dim,_txt,' This field specifies the affiliation display',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Disp (Unique) - SZRFAFL','DS0.DO159c',_dim,_txt,' This field specifies the faculty affiliation from the most recently entered record based on affiliation date.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Email Address (Faculty) - GOREMAL','DS0.DO1227',_dim,_txt,'Students email address.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Emal Code (Faculty) - GOREMAL','DS0.DO147b',_dim,_txt,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('End Date - SZRRQST','DS0.DO1515',_dim,_date,'The ending date for the activity for which a supplementary payroll request is initiated.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Enrl (Faculty) - SSBSECT','DS0.DO165a',_dim,_num,'This field is system maintained.  It displays a running total of enrollments in the section which have a course status with a \'Count in Enroll\' flag of \'Y\' on the Registration Status Code Validation Form - STVRSTS.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Ethn Cde (Faculty) - SPBPERS','DS0.DO156d',_dim,_txt,'ETHNIC CODE: This field identifies the ethnic code defined by the U.S. government. The valid values are 1 - Not Hispanic or Latino, 2 - Hispanic or Latino, or null.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Ethn Code (Faculty) - SZRETHN','DS0.DO156f',_dim,_txt,'ETHNIC CODE: This field identifies the ethnic code based on one or more racial identities for the Faculty member, i.e. Asian, Black or African American, White, etc.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Ethn Desc (Faculty) - SZRETHN','DS0.DO1570',_dim,_txt,'ETHNIC DESC: This field identifies the ethnic code description based on one or more racial identities for the Faculty member, i.e. Asian, Black or African American, White, etc.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Expc Code - SZRFFIN','DS0.DO6db',_dim,_txt,' This field specifies the Expense Class code',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Ext or Sum - SZVEVCR','DS0.DO1626',_dim,_txt,' This field indicates whether the data is (E)xtension or (S)ummer.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Faculty Address Line1','DS0.DO127d',_dim,_txt,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Faculty Address Line2','DS0.DO127e',_dim,_txt,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Faculty Address Line3','DS0.DO127f',_dim,_txt,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Faculty Address Line4','DS0.DO1280',_dim,_txt,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Faculty Address Line5','DS0.DO1281',_dim,_txt,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Faculty Address Line6','DS0.DO1282',_dim,_txt,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Fcnt Code - SIBINST','DS0.DO4ae',_dim,_txt,'Obsolete as of 1.10. Column set to null. Replaced by SIRICNT_FCNT_CODE',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Fcnt Code - SIRASGN','DS0.DO4af',_dim,_txt,'The contract type that the instructional assignment is associated with',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Fcnt Code - SZRFCON','DS0.DO6e0',_dim,_txt,' This field specifies the Faculty Member Contract code',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Fcst Code - SIBINST','DS0.DO4b0',_dim,_txt,'Faculty member status',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Fcst Date - SIBINST','DS0.DO4b1',_dim,_date,'Faculty member status date',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Fctg Code - SIBINST','DS0.DO4b2',_dim,_txt,'Faculty member category',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Fctg Code - SZRFAFL','DS0.DO6e1',_dim,_txt,' This field specifies the Catagory Code associated with a Faculty Members affiliation',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Fdeg Code - SZRFDEG','DS0.DO6e2',_dim,_txt,' This field specifies the Degree Code associated with a Faculty Member',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('First Term - SZVIHII','DS0.DO153a',_dim,_txt,'The first term of teaching from the instructor history table.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('From Date (Faculty) - SPRADDR','DS0.DO121a',_dim,_date,'This field maintains the effective start date of address associated with person.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('From Date (Faculty) - SZRFAFL','DS0.DO1571',_dim,_date,'This field maintains the effective start date of faculty rank/title and affiliation associated with instructor.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Fstp Code - SIBINST','DS0.DO4b3',_dim,_txt,'Faculty member staff type which is required for workload calculation',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Grad Credit - SZRFCRS','DS0.DO6f2',_dim,_num,' This field specifies the number of students who are enrolled in the specified course for graduate credit',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Hafl Code - SZRFGEN','DS0.DO129e',_dim,_txt,'This field specifies the Harvard affiliation of the faculty member.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Harv Idgn (Faculty) - SZBHIDD','DS0.DO13e1',_dim,_txt,'This field maintains person Harvard IDMS number.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Home Code - SZRFCON','DS0.DO1622',_dim,_txt,' This field specifies the Home Department code in the contract table.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Home Code - SZRFFIN','DS0.DO6fc',_dim,_txt,' This field specifies the Home Department code in the financial information table.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Home Desc - SZRFCON','DS0.DO1624',_dim,_txt,' This field specifies the Home Department code descripton in the contract table.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Home Desc - SZRFFIN','DS0.DO1623',_dim,_txt,' This field specifies the Home Department code description in the financial information table.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('I9 - SZRFFIN','DS0.DO702',_dim,_txt,' This field specifies if there is an I9 (Y, N or blank)',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Id Date - SZFGEN','DS0.DO13dc',_dim,_date,' This field specifies the Id swipe date.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Idgn Date (Faculty) - SZBHIDD','DS0.DO13dd',_dim,_date,'This field maintains the Harvard IDMS number change date.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Idgn Link Id (Faculty) - SZBHIDD','DS0.DO13de',_dim,_txt,'This field maintains the Harvard IDMS number change date.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Idgn Status Ind (Faculty) - SZBHIDD','DS0.DO13df',_dim,_txt,'This field maintains the Harvard IDMS number valid ID indicator.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Idgn User (Faculty) - SZBHIDD','DS0.DO13e0',_dim,_txt,'This field maintains the Harvard IDMS number user.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Inst Desc - SZRFAFL','DS0.DO70e',_dim,_txt,' This field specifies Institution that the Faculty Member is affiliated with',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Inst Desc (Unique) - SZRFAFL','DS0.DO159e',_dim,_txt,' This field specifies Institution that the Faculty Member is affiliated with',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Instructor First Name','DS0.DO11ee',_dim,_txt,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Instructor ID','DS0.DO11ec',_dim,_txt,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Instructor Last Name','DS0.DO11ed',_dim,_txt,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Instructor MI','DS0.DO11ef',_dim,_txt,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Instructor Middle Name','DS0.DO11f0',_dim,_txt,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Instructor Name (Last, First MI)','DS0.DO11f3',_dim,_txt,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Instructor Rating 2015 - SZVEVCR','DS0.DO162f',_dim,_num,'The average student rating given to a faculty member for a CRN and term including 201501, 201502, and 201503.  The term type is described by the \'Term Type - SZVEVCR\' data field.  The CRN is described by the \'Crn - SZVEVCR\' data field.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Instructor Rating 2014 - SZVEVCR','DS0.DO164e',_dim,_num,'The average student rating given to a faculty member for a CRN and term including 201401, 201402, and 201403.  The term type is described by the \'Term Type - SZVEVCR\' data field.  The CRN is described by the \'Crn - SZVEVCR\' data field.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Instructor Rating 2013 - SZVEVCR','DS0.DO164f',_dim,_num,'The average student rating given to a faculty member for a CRN and term including 201301, 201302, and 201303.  The term type is described by the \'Term Type - SZVEVCR\' data field.  The CRN is described by the \'Crn - SZVEVCR\' data field.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Instructor Rating 2012 - SZVEVCR','DS0.DO1650',_dim,_num,'The average student rating given to a faculty member for a CRN and term including 201201, 201202, and 201203.  The term type is described by the \'Term Type - SZVEVCR\' data field.  The CRN is described by the \'Crn - SZVEVCR\' data field.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Instructor Rating 2011 - SZVEVCR','DS0.DO1651',_dim,_num,'The average student rating given to a faculty member for a CRN and term including 201101, 201102, and 201103.  The term type is described by the \'Term Type - SZVEVCR\' data field.  The CRN is described by the \'Crn - SZVEVCR\' data field.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Instructor Rating 2010 - SZVEVCR','DS0.DO1652',_dim,_num,'The average student rating given to a faculty member for a CRN and term including 201001, 201002, and 201003.  The term type is described by the \'Term Type - SZVEVCR\' data field.  The CRN is described by the \'Crn - SZVEVCR\' data field.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Instructor Type - SZVEVCR','DS0.DO162e',_dim,_txt,'Whether the faculty member is a \'tf\' or an \'instructor\'.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Instructor TF - SZVEVCR','DS0.DO162c',_dim,_txt,'Whether the faculty member is a TF for a course for which she/he is also and Instructor: (Y)es or (N)o.  This indicator is found on TF records only, not on Instructor records.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Intl Access (Faculty) - SPRTELE','DS0.DO122c',_dim,_txt,'Free format International access code for telephone number including country and city code.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Key (Faculty) - SZRRQST','DS0.DO1509',_dim,_num,'An integer which uniquely identifies each supplementary payroll request.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Last Paid Date - SZRFFIN','DS0.DO723',_dim,_date,' This field specifies the last pay date (format DATE)',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Last Term - SZVIHII','DS0.DO153b',_dim,_txt,'Last term of teaching from the instructor history table.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Mail Date - SZRFCON','DS0.DO726',_dim,_date,' This field specifies the date the Contract was mailed to the Faculty Member',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Mail Pref - SZRFCON','DS0.DO727',_dim,_txt,' This field specifies the address type where the Faculty Member prefers to receive their Mail',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Mail Pref - SZRFGEN','DS0.DO728',_dim,_txt,' This field specifies the address type where the Faculty Member prefers to receive their Mail',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Mpp - SZRFFIN','DS0.DO740',_dim,_num,' This field specifies the maximum pay period',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Nation(Faculty) - STVNATN - SPRADDR','DS0.DO126f',_dim,_txt,'Address Nation',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Natn Code (Faculty) - SPRADDR','DS0.DO121b',_dim,_txt,'This field maintains the nation/country associated with the address of person.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Non Credit - SZRFCRS','DS0.DO74d',_dim,_num,' This field specifies the number of students who are enrolled in the specified course for non-credit',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Notes - SZRFBIO','DS0.DO1447',_dim,_txt,'Instructors notes text',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Over Ride - SIRASGN','DS0.DO4b5',_dim,_txt,'Override Indicator.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pay Amount - SZRFPAY','DS0.DO756',_dim,_num,' This field specifies the pay amount (format DATE)',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pay Date - SZRFPAY','DS0.DO757',_dim,_date,' This field specifies the pay date (format DATE)',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pay Sheet In - SZRFFIN','DS0.DO758',_dim,_txt,' This field specifies if the pay sheet has been received (Y, N or blank)',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Percent Response - SIRASGN','DS0.DO4b6',_dim,_num,'Faculty members percentage of responsibility to the assignment',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Percent Sess - SIRASGN','DS0.DO4b7',_dim,_num,'Faculty session percentage of responsibility of instructional assignment.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Perspective - SZRFBIO','DS0.DO1448',_dim,_txt,'Instructors self supplied bio text',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Phone Area (Faculty) - SPRTELE','DS0.DO122d',_dim,_txt,'Telephone number area code.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Phone Ext (Faculty) - SPRTELE','DS0.DO122e',_dim,_txt,'Telephone number extention.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Phone Number (Faculty) - SPRTELE','DS0.DO122f',_dim,_txt,'Telephone number.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Picture Id - SZRFFIN','DS0.DO760',_dim,_txt,' This field specifies if the Faculy Member has a picture ID (Y, N or blank)',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm (Faculty) - SPRADDR','DS0.DO121c',_dim,_num,'Internal identification number of person.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm (Faculty) - SPRTELE','DS0.DO1230',_dim,_num,'Internal identification number.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - SIBINST','DS0.DO4b9',_dim,_num,'The Pidm of the faculty member',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - SIRASGN','DS0.DO4ba',_dim,_num,'The Pidm of the faculty member',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - SZRFAFL','DS0.DO76f',_dim,_num,' This field specifies the internal identification number of the person',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - SZRFCON','DS0.DO770',_dim,_num,' This field specifies the internal identification number of the person',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - SZRFBIO','DS0.DO1449',_dim,_num,'PIDM of instructor',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - SZRFDEG','DS0.DO771',_dim,_num,' This field specifies the internal identification number of the person',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - SZRFFIN','DS0.DO772',_dim,_num,' This field specifies the internal identification number of the person',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - SZRFGEN','DS0.DO773',_dim,_num,' This field specifies the internal identification number of the person',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - SZRFPAY','DS0.DO774',_dim,_num,' This field specifies the internal identification number of the person',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - SZRRQST','DS0.DO150b',_dim,_num,'The faculty pidm for the individual for which a supplementary payroll request was initiated.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - SZVEVCR','DS0.DO1629',_dim,_num,'The faculty pidm from the instructor history table.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - SZVIHII','DS0.DO1537',_dim,_num,'The faculty pidm from the instructor history table.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - SZVIHIT','DS0.DO1535',_dim,_num,'The faculty pidm from the instructor history term table.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Position - SIRASGN','DS0.DO4bc',_dim,_num,'Faculty Position.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Posn - SIRASGN','DS0.DO4bd',_dim,_txt,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Prev Harv - SZRFFIN','DS0.DO786',_dim,_txt,' This field specifies if the Faculty Member has previously worked at Harvard',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Primary Ind (Faculty) - SPRTELE','DS0.DO1232',_dim,_txt,'Primary indicator to denote primary telephone numbers based on telephone types.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Primary Ind - SIRASGN','DS0.DO4be',_dim,_txt,'The primary instructor of the course',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Psoft Rec No - SZRFFIN','DS0.DO156e',_dim,_txt,'The Peoplesoft record number for the faculty member.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Ptrm Code (Faculty) - SSBSECT','DS0.DO1615',_dim,_txt,'This field identifies the course part of term code.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pymt Code - SZRFFIN','DS0.DO78d',_dim,_txt,' This field specifies the Payment Dispursement code',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Rank Title - SZRFAFL','DS0.DO793',_dim,_txt,' This field specifies the Rank and/or Title of the Faculty Member',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Rank Title (Unique) - SZRFAFL','DS0.DO159f',_dim,_txt,' This field specifies the Rank and/or Title of the Faculty Member based on their maximum SZRFAFL sequence number',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Rqst Activity Date - SZRRQST','DS0.DO151e',_dim,_date,'The date upon which the last change to any of the request fields was made.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Rqst Code - SZRRQST','DS0.DO1516',_dim,_txt,'The type of request, identifying the type of activity performed, for the supplementary payroll request.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Rqst Comment - SZRRQST','DS0.DO1517',_dim,_txt,'A comment made by the requester for the supplementary payroll request.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Rqst Origin Date - SZRRQST','DS0.DO151d',_dim,_date,'The date upon which the original request was made.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Rqst User - SZRRQST','DS0.DO151f',_dim,_txt,'The last user who made a change to the request fields.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Salary - SZRFCON','DS0.DO157f',_dim,_num,'The Faculty salary from the Banner SZAFACF form',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Sbgi Code - SZRFDEG','DS0.DO7a5',_dim,_txt,' This field specifies the Institution that the Faculty Members degree is from',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Sbgi Desc - SZRFDEG','DS0.DO7a7',_dim,_txt,' This field specifies the Institution that the Faculty Members degree is from',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Schd Code (Faculty) - SSBSECT','DS0.DO15a3',_dim,_txt,'This field identifies the instructional type of the section being scheduled.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Schd Code  Type - SZVEVCR','DS0.DO162d',_dim,_txt,'This field identifies whether the course is (W)eb Conference, (D)istance or (H)ybrid based on the schedule code.  The translation values used to make the determination may be found in Banner SZATRNS, where szrtrns_program = \'UP_SZREVCR\' and szrtrns_code = \'01\'.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Schd Ind - SIBINST','DS0.DO4bf',_dim,_txt,'Faculty member available of schedule indicator',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Sdep Code - SZRFCON','DS0.DO7af',_dim,_txt,' This field specifies the Sub-Department code',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Sdep Code - SZRFCRS','DS0.DO7b0',_dim,_txt,' This field specifies the Sub-Department code',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Seq Numb - SZRFAFL','DS0.DO7b5',_dim,_txt,' This field specifies the Sequence Number associated with a Faculty Members affiliation',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Seq Numb (Max) - SZRFAFL','DS0.DO159d',_dim,_txt,' This field specifies the maximum Sequence Number associated with a Faculty Members affiliation during a specific time period.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Seqno (Faculty) - SPRADDR','DS0.DO121d',_dim,_num,'This field assigns an internal sequence number to each address type associated with person. This field does not display on screen.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Seqno (Faculty) - SPRTELE','DS0.DO1233',_dim,_num,'Unique sequence number for telephone numbers associated with PIDM.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Short Ind - SZRFAFL','DS0.DO7bf',_dim,_txt,' This field indicates if the row is the single short Faculty Members affiliation',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Spmt Activity Date - SZRRQST','DS0.DO1521',_dim,_date,'The date upon which the last change to any of the payment fields was made.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Spmt Code - SZRRQST','DS0.DO1518',_dim,_txt,'The payment code, identifying how the payment will be made, for the supplementary payroll request.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Spmt Comment - SZRRQST','DS0.DO151c',_dim,_txt,'A comment entered by payroll staff regarding the supplementary payroll request.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Spmt Origin Date - SZRRQST','DS0.DO1520',_dim,_date,'The date upon which the original payment information was entered by payroll staff.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Spmt Pending - SZRRQST','DS0.DO1519',_dim,_txt,'A Y/N value which indicates whether the supplementary payroll request is pending.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Spmt Rncl Date- SZRRQST','DS0.DO151b',_dim,_date,'The date upon which it was determined by payroll staff that the supplementary payroll payment was delivered.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Spmt Schl Date- SZRRQST','DS0.DO151a',_dim,_date,'The date upon which a supplementary payroll request payment is scheduled to be paid.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Spmt User - SZRRQST','DS0.DO1522',_dim,_txt,'The last user who made a change to the payment fields.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Ssn (Faculty) SPBPERS','DS0.DO156b',_dim,_txt,'Faculty social security number',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Ssts Code (Faculty) SSBSECT','DS0.DO1658',_dim,_txt,'Faculty Section Status Code',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Start Date - SZRRQST','DS0.DO1514',_dim,_date,'The starting date for the service provided for which a supplementary payroll payment is requested.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Stat Code (Faculty) - SPRADDR','DS0.DO121e',_dim,_txt,'This field maintains the state associated with the address of person.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Status Ind (Faculty) - SPRADDR','DS0.DO121f',_dim,_txt,'This field identifies if address information is inactive. Valid value is I - Inactive.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Status Ind (Faculty) - SPRTELE','DS0.DO1234',_dim,_txt,'Status of telelphone number, active or inactive.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Street Line1 (Faculty) - SPRADDR','DS0.DO1220',_dim,_txt,'This field maintains the first line of the address associated with person.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Street Line2 (Faculty) - SPRADDR','DS0.DO1221',_dim,_txt,'This field maintains the second line of the address associated with person.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Street Line3 (Faculty) - SPRADDR','DS0.DO1222',_dim,_txt,'This field maintains the third line of the address associated with person.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Student Id  - SZRRQST','DS0.DO1692',_dim,_txt,'The ID for the student who is associated with the supplementary payroll activity; not all supplementary payroll activities are associated with a student.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Student Pidm  - SZRRQST','DS0.DO1512',_dim,_num,'The pidm for the student who is associated with the supplementary payroll activity; not all supplementary payroll activities are associated with a student.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Subj Code (Faculty) - SSBSECT','DS0.DO15a2',_dim,_txt,'This field identifies the subject code referenced in the Catalog, Registration and Acad.  Hist.  Modules.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Subj Code - SZVEVCR','DS0.DO1625',_dim,_txt,'This field identifies the subject code referenced in the Catalog, Registration and Acad.  Hist.  Modules.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Suff - SIRASGN','DS0.DO4c0',_dim,_txt,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Supp Staff - SZRFCRS','DS0.DO7df',_dim,_txt,' This field specifies if there is Support Staff needed (Y, N or blank)',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Tele Code (Faculty) - SPRTELE','DS0.DO1235',_dim,_txt,'Telelphone Type Code.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code - SIRASGN','DS0.DO4c1',_dim,_txt,'Term of the faculty member assignment',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code - SZRFCON','DS0.DO7ec',_dim,_txt,' This field specifies the term in which the Contract is valid',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code - SZRFCRS','DS0.DO7ed',_dim,_txt,' This field specifies the Term Code in which the course was taught',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code - SZRFFIN','DS0.DO7ef',_dim,_txt,' This field specifies the term in which the financial information is valid',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code - SZRFPAY','DS0.DO7f0',_dim,_txt,' This field specifies the term in which the financial information is valid',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code - SZRRQST','DS0.DO150a',_dim,_txt,' The term code in which a supplementary payroll request is initiated.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code - SSBSECT','DS0.DO1616',_dim,_txt,' The term code for a course.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code - SZVIHIT','DS0.DO1536',_dim,_txt,' The term code in which a faculty history term record occurs.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code Eff - SIBINST','DS0.DO4c2',_dim,_txt,'Effective term of the faculty member',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Type - SZVEVCR','DS0.DO162a',_dim,_txt,'The term type: (F)all, (J)anuary, (Sp)ring or (Su)mmer.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('To Date (Faculty) - SPRADDR','DS0.DO1223',_dim,_date,'This field maintains the effective end date of address associated with person.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('To Date (Faculty) - SZRFAFL','DS0.DO1572',_dim,_date,'This field maintains the effective end date of faculty rank/title and affiliation associated with instructor.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Tuition - SZRFCRS','DS0.DO80c',_dim,_num,' This field specifies the total tution collected for the course',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Twenty Five - SZVIHII','DS0.DO1538',_dim,_txt,'Flag indicating twenty five years of teaching records in the instructor history table.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Undr Credit - SZRFCRS','DS0.DO80e',_dim,_num,' This field specifies the number of students who are enrolled in the specified course for undergraduate credit',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Unlist Ind (Faculty) - SPRTELE','DS0.DO1236',_dim,_txt,'Unlisted telephone number indicator.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Url - SZRFBIO','DS0.DO144a',_dim,_txt,'Instructors personal web site',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('User (Faculty) - SPRADDR','DS0.DO1224',_dim,_txt,'The Id for the User who create or update the record.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('User - SZRFAFL','DS0.DO818',_dim,_txt,' This field maintains the user who last created or updated a record',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('User - SZRFBIO','DS0.DO144b',_dim,_txt,'User who added or updated',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('User - SZRFCON','DS0.DO819',_dim,_txt,' This field maintains the user who last created or updated a record',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('User - SZRFCRS','DS0.DO81a',_dim,_txt,' This field maintains the user who last created or updated a record',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('User - SZRFDEG','DS0.DO81b',_dim,_txt,' This field maintains the user who last created or updated a record',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('User - SZRFFIN','DS0.DO81c',_dim,_txt,' This field maintains the user who last created or updated a record',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('User - SZRFPAY','DS0.DO81d',_dim,_txt,' This field maintains the user who last created or updated a record',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Verify Date - SZRFBIO','DS0.DO144c',_dim,_date,'Date of the information was last verified',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Visa Exp Mmyy - SZRFFIN','DS0.DO84a',_dim,_txt,' This field specifies the expiration date of the Visa (format MMYY)',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('W4 M4 - SZRFFIN','DS0.DO84b',_dim,_txt,' This field specifies the status of the W4 or M4 (Y, N or blank)',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Who Why - SZRFBIO','DS0.DO144d',_dim,_txt,'Instructors bio text',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Wkld Code - SIBINST','DS0.DO4c4',_dim,_txt,'Faculty member workload rule code',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Workload Adjust - SIRASGN','DS0.DO4c5',_dim,_num,'Faculty Adjustied Workload for instructional assignment.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Years - SZVIHII','DS0.DO1539',_dim,_num,'Years of teaching from the instructor history table.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Zact Code - SZRFFIN','DS0.DO84f',_dim,_txt,' This field specifies the Financial Activity code',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Zact Code - SZRRQST','DS0.DO150f',_dim,_txt,' This field specifies the Financial Activity code',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Zact Code - SZRZCOM','DS0.DO152f',_dim,_txt,' This field specifies the Financial Activity code',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Zfun Code - SZRFFIN','DS0.DO851',_dim,_txt,' This field specifies the Financial Func code',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Zfun Code - SZRRQST','DS0.DO150e',_dim,_txt,' This field specifies the Financial Function code',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Zfun Code - SZRZCOM','DS0.DO152e',_dim,_txt,' This field specifies the Financial Function code',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Zip (Faculty) - SPRADDR','DS0.DO1225',_dim,_txt,'This field maintains the zip code associated with the address of person.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Zobj Code - SZRFFIN','DS0.DO859',_dim,_txt,' This field specifies the Financial Object code',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Zobj Code - SZRRQST','DS0.DO150d',_dim,_txt,' This field specifies the Financial Object code',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Zobj Code - SZRZCOM','DS0.DO152d',_dim,_txt,' This field specifies the Financial Object code',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Zorg Code - SZRFFIN','DS0.DO85b',_dim,_txt,' This field specifies the Financial Org code',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Zorg Code - SZRRQST','DS0.DO150c',_dim,_txt,' This field specifies the Financial Organization code',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Zorg Code - SZRZCOM','DS0.DO152c',_dim,_txt,' This field specifies the Financial Organization code',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Zpay Code - SZRFFIN','DS0.DO85d',_dim,_txt,' This field specifies the Financial Pay Cycle code',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Zsub Code - SZRFFIN','DS0.DO85e',_dim,_txt,' This field specifies the Financial Sub Activity code',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Zsub Code - SZRRQST','DS0.DO1510',_dim,_txt,' This field specifies the Financial Sub Activity code',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Zsub Code - SZRZCOM','DS0.DO1530',_dim,_txt,' This field specifies the Financial Sub Activity code',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Ztub Code - SZRFFIN','DS0.DO860',_dim,_txt,' This field specifies the Financial Tub code',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Ztub Code - SZRZCOM','DS0.DO1531',_dim,_txt,' This field specifies the Financial Tub code',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls1=cls0.add('General Student','',_cls,_txt,'',false,null,'','','','BANNER',false,'');
cls1.allowInResult=true;cls1.allowInFilter=true
cls2=cls1.add('Actc Code - SGRSACT','DS0.DO4c6',_dim,_txt,'This field identifies the type of activity to be recorded on the student record.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Actc Desc - SGRSACT','DS0.DO1581',_dim,_txt,'This field identifies the description of the type of activity to be recorded on the student record.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Advr Code - SGRADVR','DS0.DO1497',_dim,_txt,'This field identifies the type of advisor on the student record.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Advisor Name (Last, First MI)','DS0.DO1498',_dim,_txt,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SGBSTDN','DS0.DO4c7',_dim,_date,'This field identifies the most current date record was created or updated.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SGRADVR','DS0.DO1495',_dim,_date,'This field identifies the most current date record was created or updated.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SGRSACT','DS0.DO4c9',_dim,_date,'This field identifies the most current date record was created or updated.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SGRSCMT','DS0.DO4ca',_dim,_date,'This field identifies the most current date record was created or updated.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Acyr Code - SGBSTDN','DS0.DO4cb',_dim,_txt,'Year student intends to graduate.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Admt Code - SGBSTDN','DS0.DO4cc',_dim,_txt,'Admissions type from the admissions application',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Admt Code 2 - SGBSTDN','DS0.DO4cd',_dim,_txt,'Admissions Type Code associated with the Secondary Curriculum',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Admt Description - SGBSTDN','DS0.DO1579',_dim,_txt,'Admissions Type Code Description from the admissions application.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Advr Pidm - SGBSTDN','DS0.DO4ce',_dim,_num,'This field identifies the internal identification number for the advisor assigned to the student for the effective term.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Aprn Code - SGBSTDN','DS0.DO4cf',_dim,_txt,'General Student Apprenticeship Code',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Astd Code - SGBSTDN','DS0.DO4d0',_dim,_txt,'This field identifies the academic standing override for a student for the effective term.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Atts Code - SGRSATT','DS0.DO168a',_dim,_txt,'This student attribute code in effect for the effective term associated with student record.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Blck Code - SGBSTDN','DS0.DO4d1',_dim,_txt,'Block Schedule Code',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Bskl Code - SGBSTDN','DS0.DO4d2',_dim,_txt,'Student Basic Skills Code',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Camp Code - SGBSTDN','DS0.DO4d3',_dim,_txt,'This field identifies the campus location associated with the student for the effective term.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Camp Code 2 - SGBSTDN','DS0.DO4d4',_dim,_txt,'Curriculum 2 Campus Code',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Capl Code - SGBSTDN','DS0.DO4d5',_dim,_txt,'This field identifies career plan of the student for the effective term.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Ccon Rule 11 1 - SGBSTDN','DS0.DO4d6',_dim,_num,'Concentration 1, Major 1, Curriculum 1 Rule Reference',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Ccon Rule 11 2 - SGBSTDN','DS0.DO4d7',_dim,_num,'Concentration 2, Major 1, Curriculum 1 Rule Reference',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Ccon Rule 11 3 - SGBSTDN','DS0.DO4d8',_dim,_num,'Concentration 3, Major 1, Curriculum 1 Rule Reference',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Ccon Rule 12 1 - SGBSTDN','DS0.DO4d9',_dim,_num,'Concentration 1, Major 2, Curriculum 1 Rule Reference',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Ccon Rule 12 2 - SGBSTDN','DS0.DO4da',_dim,_num,'Concentration 2, Major 2, Curriculum 1 Rule Reference',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Ccon Rule 12 3 - SGBSTDN','DS0.DO4db',_dim,_num,'Concentration 3, Major 2, Curriculum 1 Rule Reference',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Ccon Rule 21 1 - SGBSTDN','DS0.DO4dc',_dim,_num,'Concentration 1, Major 1, Curriculum 2 Rule Reference',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Ccon Rule 21 2 - SGBSTDN','DS0.DO4dd',_dim,_num,'Concentration 2, Major 1, Curriculum 2 Rule Reference',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Ccon Rule 21 3 - SGBSTDN','DS0.DO4de',_dim,_num,'Concentration 3, Major 1, Curriculum 2 Rule Reference',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Ccon Rule 22 1 - SGBSTDN','DS0.DO4df',_dim,_num,'Concentration 1, Major 2, Curriculum 2 Rule Reference',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Ccon Rule 22 2 - SGBSTDN','DS0.DO4e0',_dim,_num,'Concentration 2, Major 2, Curriculum 2 Rule Reference',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Ccon Rule 22 3 - SGBSTDN','DS0.DO4e1',_dim,_num,'Concentration 3, Major 2, Curriculum 2 Rule Reference',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Cmjr Rule 1 1 - SGBSTDN','DS0.DO4e3',_dim,_num,'Curriculum 1 Major 1 Rule Reference',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Cmjr Rule 1 2 - SGBSTDN','DS0.DO4e4',_dim,_num,'Major 2, Curriculum Rule Reference',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Cmjr Rule 2 1 - SGBSTDN','DS0.DO4e5',_dim,_num,'Major 1, Curriculum 2 Rule Reference',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Cmjr Rule 2 2 - SGBSTDN','DS0.DO4e6',_dim,_num,'Major 2, Curriculum 2 Rule Reference',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Cmnr Rule 1 1 - SGBSTDN','DS0.DO4e7',_dim,_num,'Minor 1, Curriculum 1 Rule Reference',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Cmnr Rule 1 2 - SGBSTDN','DS0.DO4e8',_dim,_num,'Minor 2, Curriculum 1 Rule Reference',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Cmnr Rule 2 1 - SGBSTDN','DS0.DO4e9',_dim,_num,'Minor 1, Curriculum 2 Rule Reference',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Cmnr Rule 2 2 - SGBSTDN','DS0.DO4ea',_dim,_num,'Minor 2, Curriculum 2 Rule Reference',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Coll Code 1 - SGBSTDN','DS0.DO4eb',_dim,_txt,'This field identifies the college associated with the primary curriculum for the effective term..',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Coll Code 2 - SGBSTDN','DS0.DO4ec',_dim,_txt,'This field identifies the college within the secondary curriculum for the effective term.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Coll Code Dual - SGBSTDN','DS0.DO4ed',_dim,_txt,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Comment Text - SGRSCMT','DS0.DO4ee',_dim,_txt,'This field identifies the comment text associated with the student.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Curr Rule 1 - SGBSTDN','DS0.DO4ef',_dim,_num,'Curriculum 1 Rule reference',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Curr Rule 2 - SGBSTDN','DS0.DO4f0',_dim,_num,'Curriculum 2 Rule Reference',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Degc Code 1 - SGBSTDN','DS0.DO4f1',_dim,_txt,'This field identifies the degree within the primary curriculum for the effective term.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Degc Code 2 - SGBSTDN','DS0.DO4f2',_dim,_txt,'This field identifies the degree within the secondary curriculum for the effective term.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Degc Code Dual - SGBSTDN','DS0.DO4f3',_dim,_txt,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Degc Code 1 Desc - SGBSTDN','DS0.DO157e',_dim,_txt,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Dept Code - SGBSTDN','DS0.DO4f4',_dim,_txt,'Department Code.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Dept Code 1 2 - SGBSTDN','DS0.DO4f5',_dim,_txt,'Curriculum 1 - Department 2',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Dept Code 2 - SGBSTDN','DS0.DO4f6',_dim,_txt,'Department Code for second curriculum.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Dept Code 2 2 - SGBSTDN','DS0.DO4f7',_dim,_txt,'Curriculum 2 - Department 2',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Dept Code Dual - SGBSTDN','DS0.DO4f8',_dim,_txt,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Edlv Code - SGBSTDN','DS0.DO4f9',_dim,_txt,'A two position alphanumeric field which indicate the highest level of the education that the student completed',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Egol Code - SGBSTDN','DS0.DO4fa',_dim,_txt,'Educational Goal code.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Emex Code - SGBSTDN','DS0.DO4fb',_dim,_txt,'General Student Employment Expectation Code',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Exp Grad Date - SGBSTDN','DS0.DO4fc',_dim,_date,'This field identifies expected graduation date.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Full Part Ind - SGBSTDN','DS0.DO4fe',_dim,_txt,'This field identifies whether the student is a full or part-time student.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Gain Code - SGBSTDN','DS0.DO4ff',_dim,_txt,'This field identifies the employment and training code of the student for the effective term.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Grad Credit Appr Ind - SGBSTDN','DS0.DO500',_dim,_txt,'This field identifies eligibility of student to take graduate courses for credit for the effective term.  Valid values are Y or blank only.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Incm Code - SGBSTDN','DS0.DO501',_dim,_txt,'A two position alphanumeric field which indicate the income range of the student',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Leav Code - SGBSTDN','DS0.DO502',_dim,_txt,'This field identifies reason of leave of absence of student for the effective term.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Leav From Date - SGBSTDN','DS0.DO503',_dim,_date,'This field identifies the begin date of leave of absence of student for the effective term.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Leav To Date - SGBSTDN','DS0.DO504',_dim,_date,'This field identifies the end date of leave of absence of student for the effective term.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Levl Code - SGBSTDN','DS0.DO505',_dim,_txt,'This field identifies the level of the student for the effective term.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Levl Code 2 - SGBSTDN','DS0.DO507',_dim,_txt,'Curriculum 2 Level Code',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Levl Code Dual - SGBSTDN','DS0.DO508',_dim,_txt,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Majr Code 1 - SGBSTDN','DS0.DO509',_dim,_txt,'This field identifies the primary major within the primary curriculum for the effective term.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Majr Code 1 2 - SGBSTDN','DS0.DO50a',_dim,_txt,'This field identifies the secondary major within the primary curriculum for the effective term.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Majr Code 2 - SGBSTDN','DS0.DO50b',_dim,_txt,'This field identifies the primary major within the secondary curriculum for the effective term.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Majr Code 2 2 - SGBSTDN','DS0.DO50c',_dim,_txt,'This field identifies the secondary major within the secondary curriculum for the effective term.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Majr Code Conc 1 - SGBSTDN','DS0.DO50d',_dim,_txt,'This field identifies the primary concentration within the primary curriculum for the effective term.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Majr Code Conc 1 2 - SGBSTDN','DS0.DO50e',_dim,_txt,'This field identifies the secondary concentration within the primary curriculum for the effective term.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Majr Code Conc 1 3 - SGBSTDN','DS0.DO50f',_dim,_txt,'This field identifies the third concentration within the primary curriculum for the effective term.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Majr Code Conc 121 - SGBSTDN','DS0.DO510',_dim,_txt,'Concentration Code 1 on Second Major of First Curriculum',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Majr Code Conc 122 - SGBSTDN','DS0.DO511',_dim,_txt,'Concentration Code 2 on Second Major on First Curriculum',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Majr Code Conc 123 - SGBSTDN','DS0.DO512',_dim,_txt,'Concentration Code 3 on Second Major on First Curriculum',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Majr Code Conc 2 - SGBSTDN','DS0.DO513',_dim,_txt,'This field identifies the primary concentration within the secondary curriculum for the effective term.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Majr Code Conc 2 2 - SGBSTDN','DS0.DO514',_dim,_txt,'This field identifies the secondary concentration within the secondary curriculum for the effective term.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Majr Code Conc 2 3 - SGBSTDN','DS0.DO515',_dim,_txt,'This field identifies the third concentration within the secondary curriculum for the effective term.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Majr Code Conc 221 - SGBSTDN','DS0.DO516',_dim,_txt,'Concentration 1 on Second Major of Second Curriculum',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Majr Code Conc 222 - SGBSTDN','DS0.DO517',_dim,_txt,'Concentration 2 on Second Major of Second Curriculum',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Majr Code Conc 223 - SGBSTDN','DS0.DO518',_dim,_txt,'Concentration 3 on Second Major of Second Curriculum',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Majr Code Dual - SGBSTDN','DS0.DO519',_dim,_txt,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Majr Code Minr 1 - SGBSTDN','DS0.DO51a',_dim,_txt,'This field identifies the primary minor within the primary curriculum for the effective term.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Majr Code Minr 1 2 - SGBSTDN','DS0.DO51b',_dim,_txt,'This field identifies the secondary minor of the student for the effective term.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Majr Code Minr 2 - SGBSTDN','DS0.DO51c',_dim,_txt,'This field identifies the primary minor within the secondary curriculum for the effective term.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Majr Code Minr 2 2 - SGBSTDN','DS0.DO51d',_dim,_txt,'This field identifies the secondary minor within the secondary curriculum for the effective term.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Orsn Code - SGBSTDN','DS0.DO51e',_dim,_txt,'This field identifies the orientation session assigned to the student for the effective term.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - SGBSTDN','DS0.DO51f',_dim,_num,'This field identifies the internal identification number of student.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - SGRADVR','DS0.DO1494',_dim,_num,'This field identifies the student internal identification number.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - SGRSACT','DS0.DO520',_dim,_num,'This field identifies the student internal identification number.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - SGRSCMT','DS0.DO521',_dim,_num,'This field identifies the student internal identification number.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pif (Paid in Full)','DS0.DO15b1',_dim,_txt,'This field idicates whether the student was paid in full for a given term.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Prac Code - SGBSTDN','DS0.DO522',_dim,_txt,'This field identifies the practical training experience of the student for the effective term.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Prim Roll Ind - SGBSTDN','DS0.DO523',_dim,_txt,'Indicates whether the Primary Curriculum should be Rolled to Academic History',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Program 1 - SGBSTDN','DS0.DO524',_dim,_txt,'Curriculum 1 Program Code',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Program 2 - SGBSTDN','DS0.DO525',_dim,_txt,'Curriculum 2 Program Code',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Rate Code - SGBSTDN','DS0.DO526',_dim,_txt,'This field identifies a specific assessment rate of the student for the effective term.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Resd Code - SGBSTDN','DS0.DO527',_dim,_txt,'This field identifies the residency status of the student for the effective term.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Secd Roll Ind - SGBSTDN','DS0.DO528',_dim,_txt,'Indicates whether the Secondary Curriculum should be Rolled to Academic History',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Seq No - SGRSCMT','DS0.DO52a',_dim,_num,'This field assigns an internal sequence number to each comment record created.  This field does not display on the form.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Sess Code - SGBSTDN','DS0.DO52b',_dim,_txt,'This field identifies the session student is attending for the effective term.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Site Code - SGBSTDN','DS0.DO52c',_dim,_txt,'Site Code.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Stst Code - SGBSTDN','DS0.DO52d',_dim,_txt,'This field identifies the students status for the effective term.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Styp Code - SGBSTDN','DS0.DO52e',_dim,_txt,'This field identifies the student type for the effective term.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Summer Program','DS0.DO157a',_dim,_txt,'The Summer Program is used to categorize DCE summer students into groupings that are tracked during enrollment.  Please see the DCE wiki for descriptions of the different types of groupings and how to populate the \'Grouping Type\' prompt.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code - SGRSACT','DS0.DO52f',_dim,_txt,'This field identifies the effective date of the student activity to be recorded on the student record.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code - SGRSCMT','DS0.DO530',_dim,_txt,'This field identifies the term associated with each comment associated with the student.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code Admit - SGBSTDN','DS0.DO531',_dim,_txt,'This field identifies the term student was first admitted to institution.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code Admit 2 - SGBSTDN','DS0.DO532',_dim,_txt,'Admission Term Code associated with the Secondary Curriculum',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code Astd - SGBSTDN','DS0.DO533',_dim,_txt,'This field identifies the term associated with the academic standing override.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code Ctlg 1 - SGBSTDN','DS0.DO534',_dim,_txt,'Curriculum 1 Catalog Term Code',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code Ctlg 2 - SGBSTDN','DS0.DO535',_dim,_txt,'Curriculum 2 Catalog Term Code',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code Eff - SGBSTDN','DS0.DO536',_dim,_txt,'This field identifies the effective term associated with student record.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code Eff - SGRADVR','DS0.DO1496',_dim,_txt,'This field identifies the effective term associated with student record.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code Grad - SGBSTDN','DS0.DO537',_dim,_txt,'Term student intends to graduate.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code Matric - SGBSTDN','DS0.DO538',_dim,_txt,'This field identifies the effective term of matriculation.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Trcn Code - SGBSTDN','DS0.DO53a',_dim,_txt,'General Student Transfer Center Code',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Voed Code - SGBSTDN','DS0.DO53b',_dim,_txt,'General Student Vocation Eduaction Status Code',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls1=cls0.add('Letter Generation','',_cls,_txt,'',false,null,'','','','BANNER',false,'');
cls1.allowInResult=true;cls1.allowInFilter=true
cls2=cls1.add('Activity Date - GURMAIL','DS0.DO1287',_dim,_date,'ACTIVITY DATE: Date the record was created or last updated.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - GZREMLM','DS0.DO155b',_dim,_date,'ACTIVITY DATE: Date the record was created or last updated.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - GZRMLTR','DS0.DO148b',_dim,_date,'ACTIVITY DATE: Date the record was created or last updated.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Admin Identifier - GURMAIL','DS0.DO1288',_dim,_num,'ADMIN IDENTIFIER: Application Number (BANNER Student only).',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Date Init - GURMAIL','DS0.DO1289',_dim,_date,'DATE INITIATED: Date the letter was initiated.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Date Printed - GURMAIL','DS0.DO128a',_dim,_date,'DATE PRINTED: Date the letter was printed.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Date Sent - GZRMLTR','DS0.DO1491',_dim,_date,'DATE Sent',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Dept Code - GZREMLM','DS0.DO1556',_dim,_txt,'This field identifies the population the email addresses originating from.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('From Address - GZRMLTR','DS0.DO1493',_dim,_txt,'From Address',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Init Code - GURMAIL','DS0.DO128b',_dim,_txt,'INITIALS: The initials of the person signing the letter. (From STVINIT)',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Letr Code - GURMAIL','DS0.DO128c',_dim,_txt,'LETTER CODE: The letter associated with this record. (From GTVLETR)',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('List Code - GZRMLTR','DS0.DO148e',_dim,_txt,'The list associated with this record.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('List Pop - GZREMLM','DS0.DO1557',_dim,_txt,'The list population.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Matl Code Mod - GURMAIL','DS0.DO128d',_dim,_txt,'MATERIALS: The Materials code (from STVMATL).',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Message - GZREMLM','DS0.DO1559',_dim,_txt,'This field specifies a detailed message.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Module Code - GURMAIL','DS0.DO128e',_dim,_txt,'MODULE CODE: The module associated with this letter.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Msg Code - GZRMLTR','DS0.DO148f',_dim,_txt,'The message associated with this letter.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Orig Ind - GURMAIL','DS0.DO128f',_dim,_txt,'ORIGIN: S = System-generated record; blank = entered on Mail form.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pub Gen - GURMAIL','DS0.DO1290',_dim,_txt,'PUBLISHED/GENERATED: Code indicating published or generated materials (P/G).',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Processed Ind - GZRMLTR','DS0.DO1490',_dim,_txt,'Processed Indicator',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Status - GZRMLTR','DS0.DO1492',_dim,_txt,'Record status',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Subject - GZREMLM','DS0.DO1558',_dim,_txt,'This field specifies the message subject.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('System Ind - GURMAIL','DS0.DO1291',_dim,_txt,'SYSTEM INDICATOR: Indicates which BANNER system this record pertains to.  Values are from the GTVSYSI form.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code - GURMAIL','DS0.DO1292',_dim,_txt,'TERM: The term code associated with this record (BANNER Student only).',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code - GZRMLTR','DS0.DO148d',_dim,_txt,'TERM: The term code associated with this record (BANNER Student only).',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('User - GURMAIL','DS0.DO1293',_dim,_txt,'USER: The USERID which initiated this letter.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('User - GZREMLM','DS0.DO155a',_dim,_txt,'This field identifies the user.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('User - GZRMLTR','DS0.DO148c',_dim,_txt,'USER: The USERID which initiated this letter.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Wait Days - GURMAIL','DS0.DO1294',_dim,_num,'WAIT DAYS: The number of days between initiating and printing the letter.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls1=cls0.add('Location Management/Housing','',_cls,_txt,'',false,null,'','','','BANNER',false,'');
cls1.allowInResult=true;cls1.allowInFilter=true
cls2=cls1.add('Activity Date - SLBBLDG','DS0.DO53d',_dim,_date,'This column identifies the date the record was created or last updated',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SLBEVNT','DS0.DO53e',_dim,_date,'This field identifies the date the record was created or last updated',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SLBRDEF','DS0.DO53f',_dim,_date,'This field identifies the date the record was created or last updated',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SLBRMAP','DS0.DO540',_dim,_date,'This field identifies the date the record was created or last updated',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SLRBCAT','DS0.DO544',_dim,_date,'This field identifies the date the record was created or last updated',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SLRBCMT','DS0.DO545',_dim,_date,'This field identifies the date the record was created or last updated',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SLRBDEF','DS0.DO546',_dim,_date,'This field identifies the date the record was created or last updated',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SLRCMNT','DS0.DO547',_dim,_date,'This field identifies the date the record was created or last updated',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SLRECMT','DS0.DO548',_dim,_date,'This field identifies the date the record was created or last updated',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SLRMASG','DS0.DO54a',_dim,_date,'This field identifies the date the record was created or last updated',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SLRPREQ','DS0.DO54d',_dim,_date,'This field identifies the date the record was created or last updated',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SLRRASG','DS0.DO54e',_dim,_date,'This field identifies the date the record was created or last updated',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SLRRDEF','DS0.DO54f',_dim,_date,'This field identifies the date the record was created or last updated',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SZBMCTR','DS0.DO61a',_dim,_date,'This field identifies the date the record was created or last updated.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SZBMPLN','DS0.DO61b',_dim,_date,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SZRCOMB','DS0.DO1297',_dim,_date,'This field identifies the date the record was created or last updated.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SZRMLSQ','DS0.DO639',_dim,_date,'This field identifies the date the record was created or last updated.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SZROCML','DS0.DO63b',_dim,_date,'This field identifies the date the record was created or last updated.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SZRPROC','DS0.DO63c',_dim,_date,'This field identifies the date the record was created or updated.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Add Date - SLBRMAP','DS0.DO554',_dim,_date,'This field identifies the date the application was added to the system',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Agency Pidm - SLBEVNT','DS0.DO555',_dim,_num,'This field identifies the agency pidm associated with the event',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Appl Priority - SLBRMAP','DS0.DO556',_dim,_txt,'This field defines the priority of the application, this is order in which applications will be processed in the batch scheduler.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Ar Ind - SLRMASG','DS0.DO557',_dim,_txt,'This field identifies whether the meal assignment charges have been processed',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Ar Ind - SLRRASG','DS0.DO558',_dim,_txt,'This field identifies whether the room assignment charges have been processed',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Area - SLBRDEF','DS0.DO559',_dim,_num,'This field shows the area, in square feet, of the room',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Artp Code - SLBRMAP','DS0.DO55a',_dim,_txt,'This field identifies the type of application',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Ascd Code - SLRRASG','DS0.DO55c',_dim,_txt,'This field identifies the status code of the room assignment',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Ascd Date - SLRRASG','DS0.DO55e',_dim,_date,'This field defines the date the room plan status code was last updated',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Assess Needed - SLRMASG','DS0.DO55f',_dim,_txt,'This field identifies whether fee assessment is needed for the meal assignment',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Assess Needed - SLRRASG','DS0.DO560',_dim,_txt,'This field identifies whether fee assessment is needed for the room assignment',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Atyp Code - SLBEVNT','DS0.DO561',_dim,_txt,'Address type of the Contact assigned to the event.  Only populated if Contact Pidm is not null.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Bcat Code - SLBRDEF','DS0.DO563',_dim,_txt,'This field identifies the building category associated with the room',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Beg Seq - SZROCML','DS0.DO654',_dim,_num,'This field defines the beginning sequence of the mail center for a zip.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Begin Date - SLRMASG','DS0.DO565',_dim,_date,'This field identifies the first day of the meal assignment',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Begin Date - SLRRASG','DS0.DO566',_dim,_date,'This field identifies the first day of the room assignment',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Bldg Code - SLBBLDG','DS0.DO567',_dim,_txt,'This column identifies the building code associated with the building record',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Bldg Code - SLBRDEF','DS0.DO568',_dim,_txt,'This field identifies the building code associated with the room',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Bldg Code - SLRBCAT','DS0.DO56a',_dim,_txt,'This field identifies the building code associated with the category code',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Bldg Code - SLRBCMT','DS0.DO56b',_dim,_txt,'This field identifies the building code associated with the comments',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Bldg Code - SLRBDEF','DS0.DO56c',_dim,_txt,'This field identifies the building code associated with the attributes',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Bldg Code - SLRCMNT','DS0.DO56d',_dim,_txt,'This field identifies the building code associated with the room comments',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Bldg Code - SLRRASG','DS0.DO56e',_dim,_txt,'This field identifies the building code of the room assignment',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Bldg Code - SLRRDEF','DS0.DO56f',_dim,_txt,'This field identifies the building code of the room attributes',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Bldg Code - SZBMCTR','DS0.DO659',_dim,_txt,'This field identifies the building code of the room assignment.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Bldg Code - SZBMPLN','DS0.DO65a',_dim,_txt,'Building code',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Camp Code - SLBBLDG','DS0.DO571',_dim,_txt,'This column identifies the campus in which the building is located',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Camp Code - SLBEVNT','DS0.DO572',_dim,_txt,'This field identifies the campus that is associated with the event',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Capacity - SLBBLDG','DS0.DO574',_dim,_num,'This column identifies the capacity of the building',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Capacity - SLBRDEF','DS0.DO575',_dim,_num,'This field defines the capacity of the room',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('City - SLBBLDG','DS0.DO576',_dim,_txt,'This column identifies the city where the building is located',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('City - SZROCML','DS0.DO68b',_dim,_txt,'This field defines the city of the mail center.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Cnty Code - SLBBLDG','DS0.DO577',_dim,_txt,'This column identifies the county code of the building',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Code - SLRBCAT','DS0.DO578',_dim,_txt,'This field defines code used to define the category',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Coll Code - SLBBLDG','DS0.DO579',_dim,_txt,'This column identifies the college that is associated with the building',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Coll Code - SLBEVNT','DS0.DO57a',_dim,_txt,'This field identifies the college that is associated with the event',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Coll Code - SLBRDEF','DS0.DO57b',_dim,_txt,'This field identifies the college that is associated with the room',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Comb1 - SZRCOMB','DS0.DO129a',_dim,_txt,'This field defines the mailbox combination number 1.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Comb2 - SZRCOMB','DS0.DO129b',_dim,_txt,'This field defines the mailbox combination number 2.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Comb3 - SZRCOMB','DS0.DO129c',_dim,_txt,'This field defines the mailbox combination number 3.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Comm Ind - SLBEVNT','DS0.DO57c',_dim,_txt,'Committee/Service Indicator.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Comments - SLRBCMT','DS0.DO57d',_dim,_txt,'This field is where the comments for the building are stored',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Comments - SLRCMNT','DS0.DO57e',_dim,_txt,'This field is where the comments for a room are stored',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Comments - SLRECMT','DS0.DO57f',_dim,_txt,'This field is where the comments for an event are stored',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Confid Ind - SLBRMAP','DS0.DO580',_dim,_txt,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Contact Name - SLBEVNT','DS0.DO581',_dim,_txt,'This field identifies the name of the person to contact within the agency associated with the event',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Contact Pidm - SLBEVNT','DS0.DO582',_dim,_num,'Internal Person Identification Number of the ID representing the Contact assigned to the event.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Crn - SLBEVNT','DS0.DO583',_dim,_txt,'This field is the oneup number that identifies the event to the system',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Crn - SLRECMT','DS0.DO584',_dim,_txt,'This field is the internal identifier of the event associated with the comments',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Data Origin - SLBRMAP','DS0.DO1584',_dim,_txt,'Source system that created or updated the row',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Dept Code - SLBBLDG','DS0.DO585',_dim,_txt,'This column identifies the department that is associated with the building',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Dept Code - SLBEVNT','DS0.DO586',_dim,_txt,'This field identifies the department that is associated with the event',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Dept Code - SLBRDEF','DS0.DO587',_dim,_txt,'This field identifies the department that is associated with the room',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Dept Code - SZRPROC','DS0.DO6b9',_dim,_txt,'This field identifies the Proctor Department Code',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Desc - SLBEVNT','DS0.DO588',_dim,_txt,'This field identifies the description of the event',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Desc - SLBRDEF','DS0.DO589',_dim,_txt,'This field identifies the description associated with the room',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Desc - SLRBCAT','DS0.DO58a',_dim,_txt,'This field identifies the description associated with the category code',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Desc - STVBLDG - SLBBLDG','DS0.DO12aa',_dim,_txt,'This field specifies the building associated with the building code.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Dicd Code - SLBEVNT','DS0.DO58c',_dim,_txt,'District/Division Code.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Dorm Room','DS0.DO15b0',_dim,_txt,'Dorm room from SLARASCG.  Selection of this field does not result in loss of counts from SLARMAP.  If the student was not assigned to a dorm, this field is empty.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('End Date - SLRMASG','DS0.DO58e',_dim,_date,'This field identifies the last day of the meal assignment',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('End Date - SLRRASG','DS0.DO590',_dim,_date,'This field identifies the last day of the room assignment',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('End Seq - SZROCML','DS0.DO6cc',_dim,_num,'This field defines the ending sequence of the mail center for a zip.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Etyp Code - SLBEVNT','DS0.DO592',_dim,_txt,'This field defines type associated with the event',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Exclude - SZROCML','DS0.DO6d8',_dim,_txt,'This field defines a list of exclusion sequences.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('From Term - SLBRMAP','DS0.DO597',_dim,_txt,'This field identifies the beginning term of the application',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Genplan - SZBMPLN','DS0.DO6f1',_dim,_txt,'Generic meal plan code',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Haps Code - SLBRMAP','DS0.DO598',_dim,_txt,'This field identifies the housing application status code associated with the applicant',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Haps Code - SPRIDEN - SLBRMAP','DS0.DO161a',_dim,_txt,'This field identifies the housing application status code associated with the applicant.  If there is no housing application status record associated with the student, no rows will be lost if the student has a SPAIDEN record.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Haps Date - SLBRMAP','DS0.DO599',_dim,_date,'This field identifies the date when the housing application status code was last changed',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Hgp Age Rdef Code','DS0.DO1508',_dim,_txt,'This field returns the participant type for Non-secondary School participants (HGP); either OTH or NOTH.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Hgp Age Rdef Code Short Sessions','DS0.DO1614',_dim,_txt,'This field returns the participant type for Non-secondary School participants (HGP, HSU1, HSU2); either OTH or NOTH.  This field differs from the \'Hgp Age Rdef Code\' field in that it includes short sessions.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Hss Age Rdef Code','DS0.DO1504',_dim,_txt,'This field returns the participant type for Secondary School participants (HSS); either SOPH, JUNR, or ORF.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Key Number - SLBBLDG','DS0.DO59b',_dim,_txt,'This column identifies the number of the key to the building',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Key Number - SLBRDEF','DS0.DO59c',_dim,_txt,'This field identifies the number of the key to the room',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Length - SLBRDEF','DS0.DO59d',_dim,_num,'This field shows the length, in feet, of the the room',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Mailbox - SZRCOMB','DS0.DO1299',_dim,_num,'This field defines the mailbox number for the mail center.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Mail Seq - SZRMLSQ','DS0.DO729',_dim,_num,'This field defines the sequence number for the mail center.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Mailctr Code - SZBMCTR','DS0.DO72a',_dim,_num,'This field defines the mail center associated with the building code.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Mailctr Code - SZRCOMB','DS0.DO1298',_dim,_num,'This field defines the mail center associated with the building code.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Mailctr Code - SZRMLSQ','DS0.DO72b',_dim,_num,'This field identifies the mail center code.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Mailctr Code - SZROCML','DS0.DO72c',_dim,_num,'This field identifies the mail center associated with a building code.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Mailctr Name - SZROCML','DS0.DO72d',_dim,_txt,'This field identifies the mail centers name associated with a building code.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Maximum Capacity - SLBBLDG','DS0.DO5a0',_dim,_num,'This column identifies the maximum capacity of the building',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Maximum Capacity - SLBRDEF','DS0.DO5a1',_dim,_num,'This field defines the maximum capacity of the room',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Mplan - SZBMPLN','DS0.DO73f',_dim,_txt,'Actual meal plan to assign',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Mrcd Code - SLBRMAP','DS0.DO5a4',_dim,_txt,'This identifies the meal rate code associated with the meal assignment',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Mrcd Code - SLRMASG','DS0.DO5a5',_dim,_txt,'This field defines the meal plan code',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Mscd Code - SLRMASG','DS0.DO5a6',_dim,_txt,'This field identifies the meal plan status code of the meal assignment',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Mscd Date - SLRMASG','DS0.DO5a9',_dim,_date,'This field defines the date the meal plan status code was last updated',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Must Match - SLRPREQ','DS0.DO5aa',_dim,_txt,'This field determines whether the attribute entered for the student requires a matching attribute for the room the person is to be scheduled in',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Must Match - SLRRDEF','DS0.DO5ab',_dim,_txt,'This field determines whether the attribute entered for the room requires a matching attribute for the people scheduled in the room',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Onl Or Bat - SLRMASG','DS0.DO5b1',_dim,_txt,'This field identifies whether the meal assignment was created on-line or batch using the batch scheduler',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Onl Or Bat - SLRRASG','DS0.DO5b2',_dim,_txt,'This field identifies whether the room assignment was created on-line or batch using the batch scheduler',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Overload Ind - SLRRASG','DS0.DO5b3',_dim,_txt,'This field identifies whether an overload condition existed to allow the room assignment',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Override Error - SLRRASG','DS0.DO5b4',_dim,_txt,'This field identifies whether an error override condition existed to allow the room assignment',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Phone - SLBEVNT','DS0.DO5b5',_dim,_txt,'This field identifies the phone number of the contact or agency associated with the event',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Phone Area - SLBBLDG','DS0.DO5b6',_dim,_txt,'This column identifies the area code of the phone number for the building',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Phone Area - SLBEVNT','DS0.DO5b7',_dim,_txt,'This field identifies the area code of the contact or agency associated with the event',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Phone Area - SLBRDEF','DS0.DO5b8',_dim,_txt,'This field identifies the area code of the room',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Phone Ext - SLBEVNT','DS0.DO5b9',_dim,_txt,'This field identifies the phone extension number of the contact or agency associated with the event',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Phone Extension - SLBBLDG','DS0.DO5ba',_dim,_txt,'This column identifies the phone extension of the phone number for the building',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Phone Extension - SLBRDEF','DS0.DO5bb',_dim,_txt,'This field identifies the phone extension number of the room',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Phone Number - SLBBLDG','DS0.DO5bc',_dim,_txt,'This column identifies the phone number for the building',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Phone Number - SLBRDEF','DS0.DO5bd',_dim,_txt,'This field identifies the phone number of the room',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - SLBRMAP','DS0.DO5be',_dim,_num,'Internal identifier of room/meal applicant',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - SLRMASG','DS0.DO5bf',_dim,_num,'This field defines the internal identifier associated with the meal assignments',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - SLRPREQ','DS0.DO5c0',_dim,_num,'This field is the internal identifier of the student associated with the attributes',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - SLRRASG','DS0.DO5c1',_dim,_num,'This field defines the internal identifier associated with the room assignments',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - SZRMLSQ','DS0.DO77a',_dim,_num,'This field defines the internal idenfier for a sequence number.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - SZRPROC','DS0.DO77c',_dim,_num,'This field specifies the identification number of the Proctor.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pr Pidm - SLBRMAP','DS0.DO5c3',_dim,_num,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Prcd Code - SLBBLDG','DS0.DO5c4',_dim,_txt,'This column identifies the default phone rate for all rooms defined for the building.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Prcd Code - SLBRDEF','DS0.DO5c5',_dim,_txt,'This field defines the phone rate code associated with the room',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Prefered Bcat Code - SLBRMAP','DS0.DO5c6',_dim,_txt,'This field defines the applicants preferred category for housing',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Prefered Building - SLBRMAP','DS0.DO5c7',_dim,_txt,'This field defines the applicants preferred building for housing',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Prefered Camp Code - SLBRMAP','DS0.DO5c8',_dim,_txt,'This field defines the applicants preferred campus for housing',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Prefered Room - SLBRMAP','DS0.DO5c9',_dim,_txt,'This field defines the applicants preferred room for housing',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Priority - SLBRDEF','DS0.DO5ca',_dim,_txt,'This field defines the priority of the room, it is used by the scheduler to det ermine which rooms are used first',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Proctor ID','DS0.DO11e9',_dim,_txt,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Proctor Name','DS0.DOf07',_dim,_txt,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Rdef Code - SLRBDEF','DS0.DO5cc',_dim,_txt,'This field identifies the default attributes associated with rooms defined for the building',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Rdef Code - SLRPREQ','DS0.DO5cd',_dim,_txt,'This fields defines the attributes associated with a persons housing application',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Rdef Code - SLRRDEF','DS0.DO5ce',_dim,_txt,'This field identifies the attributes associated with the rooms',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Rmst Code - SLBRDEF','DS0.DO5d2',_dim,_txt,'This field defines the status code associated with the room',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Roll Ind - SLRMASG','DS0.DO5d3',_dim,_txt,'This field controls whether the meal assignment can be rolled using the roll forward process',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Roll Ind - SLRRASG','DS0.DO5d4',_dim,_txt,'This field controls whether the room assignment can be rolled using the roll forward process',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Room Number - SLBRDEF','DS0.DO5d5',_dim,_txt,'This field identifies the room number associated with the room',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Room Number - SLRCMNT','DS0.DO5d7',_dim,_txt,'This field identifies the room associated with the comments',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Room Number - SLRRASG','DS0.DO5d8',_dim,_txt,'This field identifies the room number of the room assignment',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Room Number - SLRRDEF','DS0.DO5d9',_dim,_txt,'This field identifies the room number of the attributes',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Room Type - SLBRDEF','DS0.DO5db',_dim,_txt,'This field defines the room type of the building, is it a Dorm, Class, or Other Room',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Rrcd Code - SLBBLDG','DS0.DO5dc',_dim,_txt,'This column identifies the default room rate for all rooms defined for the building.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Rrcd Code - SLBRDEF','DS0.DO5dd',_dim,_txt,'This field defines the room rate code associated with the room',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Rrcd Code - SLRRASG','DS0.DO5de',_dim,_txt,'This field defines the room rate code associated with the assignment',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Seqno - SLRBCMT','DS0.DO5df',_dim,_num,'This field is an internal number used to insure that the comments will display in proper order',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Seqno - SLRCMNT','DS0.DO5e0',_dim,_num,'This field is an internal number used to insure that the comments will display in proper order',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Seqno - SLRECMT','DS0.DO5e1',_dim,_num,'This field is an internal number used to insure that the comments will display in proper order',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Sex - SLBBLDG','DS0.DO5e2',_dim,_txt,'This column identifies the gender associated with the building',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Sex - SLBRDEF','DS0.DO5e3',_dim,_txt,'This field identifies the gender associated with the room',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Site Code - SLBBLDG','DS0.DO5e4',_dim,_txt,'This column identifies the site of the building',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Site Code - SLBEVNT','DS0.DO5e5',_dim,_txt,'This field identifies the site that is associated with the event',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Stat Code - SLBBLDG','DS0.DO5e9',_dim,_txt,'This column is used to store the state or province code of the building\'s address.Validated against STVSTAT.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Stat Code - SZROCML','DS0.DO7ca',_dim,_txt,'This field defines the state of the mail center.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Street Line1 - SLBBLDG','DS0.DO5ea',_dim,_txt,'This column identifies the first street line for the address of the building',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Street Line2 - SLBBLDG','DS0.DO5eb',_dim,_txt,'This column identifies the second street line of the address of the building',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Street Line3 - SLBBLDG','DS0.DO5ec',_dim,_txt,'This column identifies the third street line of the address of the building',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Sysi Code - SLBEVNT','DS0.DO5ed',_dim,_txt,'Code indicating the product that created the event.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code - SLRMASG','DS0.DO5f2',_dim,_txt,'This field defines the term code associated with the meal assignments',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code - SLRPREQ','DS0.DO5f5',_dim,_txt,'This field defines the term associated with the attributes',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code - SLRRASG','DS0.DO5f6',_dim,_txt,'This field defines the term associated with the room assignments',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code - SZBMPLN','DS0.DO7e4',_dim,_txt,'Term code associated with assignment',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code - SZRMLSQ','DS0.DO7f4',_dim,_txt,'This field identifies the term code associated with the mail center.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code - SZROCML','DS0.DO7f5',_dim,_txt,'This field identifies the term code associated with the mail center.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code - SZRPROC','DS0.DO7f6',_dim,_txt,'This field identifies the term the Proctor record was created',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code Eff - SLBRDEF','DS0.DO5fa',_dim,_txt,'Term code effective date.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code Eff - SLRCMNT','DS0.DO5fb',_dim,_txt,'Term code effective date.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code Eff - SLRRDEF','DS0.DO5fc',_dim,_txt,'Term code effective date.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('To Term - SLBRMAP','DS0.DO5ff',_dim,_txt,'This field identifies the end term of the application',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Total Days - SLRMASG','DS0.DO600',_dim,_num,'This field identifies the total number of days of the meal assignment',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Total Days - SLRRASG','DS0.DO601',_dim,_num,'This field identifies the total number of days of the room assignment',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Total Months - SLRMASG','DS0.DO602',_dim,_num,'This field identifies the total number of months of the meal assignment',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Total Months - SLRRASG','DS0.DO603',_dim,_num,'This field identifies the total number of months of the room assignment',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Total Terms - SLRMASG','DS0.DO604',_dim,_num,'This field identifies the total number of terms of the meal assignment',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Total Terms - SLRRASG','DS0.DO605',_dim,_num,'This field identifies the total number of terms of the room assignment',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('User ID - SLBRMAP','DS0.DO1585',_dim,_txt,'User who inserted or last update the data',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Utility Rate - SLBRDEF','DS0.DO607',_dim,_num,'This field defines the utility rate associated with the room, this field is inf ormational only',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Utility Rate Period - SLBRDEF','DS0.DO608',_dim,_txt,'This field defines the time period the utility rate is associated with the room',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Width - SLBRDEF','DS0.DO609',_dim,_num,'This field shows the width, in feet, of the the room',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Zip - SLBBLDG','DS0.DO60a',_dim,_txt,'This column identifies the zip code of the building',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Zip - SZROCML','DS0.DO856',_dim,_txt,'This field defines the zip of the mail center.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls1=cls0.add('Person Information','',_cls,_txt,'',false,null,'','','','BANNER',false,'');
cls1.allowInResult=true;cls1.allowInFilter=true
cls2=cls1.add('Activity Date - GOBSEVS','DS0.DO14cd',_dim,_date,'Date of change',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - GOBTPAC','DS0.DO611',_dim,_date,'Date of change',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - GORDOCM','DS0.DO14fa',_dim,_date,'This field identifies most current date record is created or changed.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - GOREMAL','DS0.DO1523',_dim,_date,'This field identifies most current date record is created or changed.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - GOVINTL','DS0.DO87f',_dim,_date,'This field identifies most current date record is created or changed.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SORAPPT','DS0.DO12ca',_dim,_date,'This field identifies the last date the SORAPPT record was updated.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SORTEST','DS0.DO878',_dim,_date,'This field identifies the last date the SORTEST record was updated.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SPBPERS','DS0.DO87a',_dim,_date,'This field defines the most current date a record is added or changed.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SPRADDR','DS0.DO87b',_dim,_date,'This field defines the most current date a record is added or changed.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SPRCMNT','DS0.DO87c',_dim,_date,'This field defines the most current date the record is added or changed.  This field does not display on the screen.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SPRHOLD','DS0.DO87d',_dim,_date,'This field defines most current date record is created or changed.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SPRIDEN','DS0.DO87e',_dim,_date,'This field defines the most current date record is created or changed.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SPRMEDI','DS0.DO136a',_dim,_date,'This field defines the most current date record is created or changed.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SPRTELE','DS0.DO880',_dim,_date,'Date of last activity for telephone record.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - STVWANS (Person)','DS0.DO145b',_dim,_date,'The date that this record was last updated.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - STVWQST (Person)','DS0.DO1464',_dim,_date,'The date that this record was last updated',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SZREMPL','DS0.DO15c5',_dim,_date,'This field defines the most current date the record is added or changed.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SZRCMNT','DS0.DO12f6',_dim,_date,'This field defines the most current date the record is added or changed.  This field does not display on the screen.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SZRCONT','DS0.DO12c0',_dim,_date,'Last date record was modified',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SZBHIDD','DS0.DO617',_dim,_date,'This field maintains table activity date.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SZRFILE','DS0.DO1666',_dim,_date,'Activity date of last change to file',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SZRHARV','DS0.DO635',_dim,_date,'Last date record was modified',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SZRIMMU','DS0.DO133e',_dim,_date,'Last date record was modified',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SZRPROV','DS0.DO12f9',_dim,_date,'Last date record was modified',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SZRSURL','DS0.DO14b5',_dim,_date,'Last date record was modified',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SZRWANS (Person)','DS0.DO144e',_dim,_date,'The date that this record was last updated.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SZRWSIN','DS0.DO154f',_dim,_date,'The date that this record was last updated.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Additional Contrib (Certificate) - SZRWANS','DS0.DO1685',_dim,_txt,'Comments to marketing question from certificate tracker: \"While you were pursuing your certificate at the Harvard Extension School, did your education contribute to added job responsibility, a promotion, or a career change?\".',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Additional Info (Certificate) - SZRWANS','DS0.DO1677',_dim,_txt,'Answer to marketing question from certificate tracker: If there is anything else you would like to share with us about your experience earning a certificate from the Harvard Extension School, please share it here.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Addr Seqno - SPRTELE','DS0.DO885',_dim,_num,'Address type sequence number associated with address type.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Address Line1','DS0.DO1276',_dim,_txt,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Address Line2','DS0.DO1271',_dim,_txt,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Address Line3','DS0.DO1272',_dim,_txt,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Address Line4','DS0.DO1273',_dim,_txt,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Address Line5','DS0.DO1274',_dim,_txt,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Address Line6','DS0.DO1275',_dim,_txt,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Admr Code - SORTEST','DS0.DO88c',_dim,_txt,'This field identifies the admissions checklist item code which is cross referenced to this table.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Admr Code - SZRFILE','DS0.DO1661',_dim,_txt,'ADMR code linked to application checklist requirement when applicable',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Advancement (Certificate) - SZRWANS','DS0.DO1673',_dim,_txt,'Answer to marketing question from certificate tracker:While you were pursuing your certificate at the Harvard Extension School, did your education contribute to added job responsibility, a promotion, or a career change?',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Age of Student','DS0.DO1283',_dim,_num,'The age of the student.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Age of Student During Term','DS0.DO152b',_dim,_num,'The age of the student during a particular registration term.  If the student does not have a registration record during a particular term, the age will be returned as zero.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Age Range of Student During Term','DS0.DO152a',_dim,_txt,'The ten year age range of the student, i.e. 20 - 29, 60 - 69, etc. during a particular term based on the age of the student at that time, not the current student age.  If the student does not have a registration record during the term, nothing is returned.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Amount Owed - SPRHOLD','DS0.DO88f',_dim,_num,'This field identifies a dollar amount associated with hold.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Appl No - SORTEST','DS0.DO890',_dim,_num,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Appl No - SZRFILE','DS0.DO1660',_dim,_num,'SARAPPD Application Number when applicable.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Asrc Code - SPRADDR','DS0.DO893',_dim,_txt,'Address source code.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Atyp Code - SPRADDR','DS0.DO896',_dim,_txt,'This field identifies the type of address associated with person.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Atyp Code - SPRTELE','DS0.DO897',_dim,_txt,'Optional Address Type code associated with telephone number.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Ban DOB - SZRPROV','DS0.DO12fa',_dim,_date,'This field maintains person birth date.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Ban First Name - SZRPROV','DS0.DO12fb',_dim,_txt,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Ban ID - SZRPROV','DS0.DO12fc',_dim,_txt,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Ban Last Name - SZRPROV','DS0.DO12fd',_dim,_txt,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Ban Mi - SZRPROV','DS0.DO12fe',_dim,_txt,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Ban Pidm - SZRPROV','DS0.DO12ff',_dim,_num,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Ban SSN - SZRPROV','DS0.DO1300',_dim,_txt,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Birth City - GOBSEVS','DS0.DO14d1',_dim,_txt,'EV BIRTH CITY: Exchange visitor birth city.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Birth Date - SPBPERS','DS0.DO89b',_dim,_date,'This field maintains person birth date.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Carrier Route - SPRADDR','DS0.DO8a9',_dim,_txt,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Celg Code - GOVINTL','DS0.DO1440',_dim,_txt,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Certificate Code (Certificate) - SZRWANS','DS0.DO1679',_dim,_txt,'The certificate code for the certificate which the student applied for using the Certificate Tracker in online services.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Certificate Desc (Certificate) - SZRWANS','DS0.DO167a',_dim,_txt,'The certificate code description for the certificate which the student applied for using the Certificate Tracker in online services.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Cert as Part of Degree Program (Certificate) - SZRWANS','DS0.DO1684',_dim,_txt,'Answer to marketing question from certificate tracker: Are you earning your certificate as part of a degree program?',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Change Ind - SPRIDEN','DS0.DO8ac',_dim,_txt,'This field identifies whether type of change made to the record was an ID number change or a name change.  Valid values: I - ID change, N - name change.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Child Number - GOVINTL','DS0.DO8ae',_dim,_num,'The number of children are accompanying the student',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('City - SPRADDR','DS0.DO8b0',_dim,_txt,'This field maintains the city associated with the address of person.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('City Birth - SPBPERS','DS0.DO8b2',_dim,_txt,'The city where the person was born.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Citz Code - SPBPERS','DS0.DO8b5',_dim,_txt,'Person Citizen Type',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Citz Ind - SPBPERS','DS0.DO8b6',_dim,_txt,'This field is not used, citizen type code will be used to indicate the citizenship',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Cmtt Code - SPRCMNT','DS0.DO8bc',_dim,_txt,'This field identifies the comment type associated with person record.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Cmtt Code - SZRCMNT','DS0.DO12f7',_dim,_txt,'This field identifies the comment type associated with person record.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Cnty Code - SPRADDR','DS0.DO8be',_dim,_txt,'This field maintains the county associated with the address of person.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Comment - GOREMAL','DS0.DO8c7',_dim,_txt,'Comment relating to email address.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Comment - SPRTELE','DS0.DO155c',_dim,_txt,'Comment relating to telephone number.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Comment - SZRCONT','DS0.DO12c3',_dim,_txt,'This field specifies the comments associated with the contact.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Comment - SZRIMMU','DS0.DO1343',_dim,_txt,'This field specifies the comment.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Confid Ind - SPBPERS','DS0.DO8c9',_dim,_txt,'This field identifies if a person record is confidential Valid value is: Y - confidential.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Confident of Next Step (Certificate) - SZRWANS','DS0.DO1670',_dim,_txt,'Answer to marketing question from certificate tracker: Are you confident that your certificate has prepared you for your next step professionally',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Confidential Ind - SPRCMNT','DS0.DO8cb',_dim,_txt,'A Y value in this field indicates that the comment associated with person record is confidential.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Contact (Certificate) - SZRWANS','DS0.DO1678',_dim,_txt,'Answer to marketing question from certificate tracker: May we contact you to learn more about your experience earning a certificate at the Harvard Extension School?',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Contact Date - SORAPPT','DS0.DO12c2',_dim,_date,'This field specifies the date contact associated with the specific contact type.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Contact Date - SZRCONT','DS0.DO12c6',_dim,_date,'This field specifies the date contact associated with the specific contact type.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Contact From Time - SORAPPT','DS0.DO12c7',_dim,_num,'This field identifies the begin time of the appointment.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Contact To Time - SORAPPT','DS0.DO12c8',_dim,_num,'This field identifies the end time of the appointment.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Contact Interviewers Name SORAPPT','DS0.DO12cc',_dim,_txt,'Contact Interviewers last name, first name and middle name',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Correction Digit - SPRADDR','DS0.DO8cf',_dim,_num,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Ctyp Code - SORAPPT','DS0.DO12c9',_dim,_txt,'This field specifies the type of contact between the institution and person.\n',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Ctyp Code - SZRCONT','DS0.DO12c1',_dim,_txt,'This field specifies the type of contact between the institution and person.\n',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Data Origin - SZRFILE','DS0.DO1665',_dim,_txt,'Program creating the file',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Date - SPRCMNT','DS0.DO8da',_dim,_date,'This field indicates the date comment was added to the person record.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Dead Date - SPBPERS','DS0.DO8dd',_dim,_date,'Person Deceased Date.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Dead Ind - SPBPERS','DS0.DO8de',_dim,_txt,'This field indicates if a person is deceased. Valid value is: Y - deceased.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Delivery Point - SPRADDR','DS0.DO8e8',_dim,_num,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Desc - STVIMMU','DS0.DO1346',_dim,_txt,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Desc - STVWANS (Person)','DS0.DO145c',_dim,_txt,'Description of a web page answer.  Can be null to allow for free form answers by the students.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Desc - STVWQST (Person)','DS0.DO1465',_dim,_txt,'Description for a web page question',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Desc - SZRWANS (Person)','DS0.DO1450',_dim,_txt,'Text field that allows for entry of answers that have an stvwans validation record with a blank description.  This allows users to enter freestyle answers.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Disposition - GORDOCM','DS0.DO14ff',_dim,_txt,'The status of the document type supporting the visa.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Disp Web Ind - GOREMAL','DS0.DO1560',_dim,_txt,'Indicate whether a e-mail address should appear on Web.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Docm Code - GORDOCM','DS0.DO14fe',_dim,_txt,'The document type supporting the visa.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Dtyp Code - STVWQST (Person)','DS0.DO1466',_dim,_txt,'Data type of the answer to the web page question',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Education Rating (Certificate) - SZRWANS','DS0.DO1675',_dim,_txt,'Answer to marketing question from certificate tracker: Overall, how would you rate the education you received at the Harvard Extension School?',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Email Address - GOREMAL','DS0.DO11fd',_dim,_txt,'Students email address.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Emal Code - GOREMAL','DS0.DO155d',_dim,_txt,'Students email address type code.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Employer - SZRWANS (Person)','DS0.DO1528',_dim,_txt,'The student\'s employer as indicated from the pre-registration questions on online services.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Employer Code - SZREMPL','DS0.DO15b4',_dim,_txt,'The student\'s employer code.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Employer Code (Most Recent) - SZREMPL','DS0.DO167e',_dim,_txt,'The student\'s most recent employer code.  Records are sorted first by term code descending, then by activity date decending.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Employer Desc - SZREMPL','DS0.DO15bb',_dim,_txt,'The student\'s employer description.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Employer Desc (Most Recent) - SZREMPL','DS0.DO167f',_dim,_txt,'The student\'s most recent employer description.  Records are sorted first by term code descending, then by activity date decending.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Employment Type Code - SZREMPL','DS0.DO15b9',_dim,_txt,'Employment type code, i.e. FTE means Full Time, PTE means Part Time, RET means Retired, STU means Student.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Employment Type Desc - SZREMPL','DS0.DO15bf',_dim,_txt,'Employment type description, i.e. Full Time, Part Time, Retired, Student.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Empl Function Code (Most Recent) - SZREMPL','DS0.DO1680',_dim,_txt,'Most recent current employment function code.  Records are sorted first by term code descending, then by activity date decending.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Empl Function Desc (Most Recent) - SZREMPL','DS0.DO1681',_dim,_txt,'Most recent current employment function code description.  Records are sorted first by term code descending, then by activity date decending.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Empl Industry Code (Most Recent) - SZREMPL','DS0.DO1682',_dim,_txt,'Most recent current employment industry code.  Records are sorted first by term code descending, then by activity date decending.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Empl Industry Code Desc (Most Recent) - SZREMPL','DS0.DO1683',_dim,_txt,'Most recent current employment industry code description.  Records are sorted first by term code descending, then by activity date decending.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Empl Type Code (Most Recent) - SZREMPL','DS0.DO167c',_dim,_txt,'Most recent current employment type code, i.e. FTE means Full Time, PTE means Part Time, RET means Retired, STU means Student.  Records are sorted first by term code descending, then by activity date decending.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Empl Type Desc (Most Recent) - SZREMPL','DS0.DO167d',_dim,_txt,'Most recent employment type description, i.e. Full Time, Part Time, Retired, Student.  Records are sorted first by term code descending, then by activity date decending.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Employment Type Indicator - SZREMPL','DS0.DO15ba',_dim,_txt,'Employment type indicator C/F (Current Employer/Future Employer).  Future Employer applies when a student is going to apply for a new job.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('End Date - STVWQST (Person)','DS0.DO1467',_dim,_date,'The date that a web page question became inactive.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('End Date - STVWANS (Person)','DS0.DO145d',_dim,_date,'The last day the answer was in use.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Entity Ind - SPRIDEN','DS0.DO8f5',_dim,_txt,'This field identifies whether record is person or non-person record.  It does not display on the form.  Valid values: P - person, C - non-person.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Ethn Cde - SPBPERS','DS0.DO1441',_dim,_txt,'ETHNIC CODE: This field identifies the ethnic code defined by the U.S. government. The valid values are 1 - Not Hispanic or Latino, 2 - Hispanic or Latino, or null.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Ethn Tran - SZRETHN','DS0.DO1442',_dim,_txt,'ETHNIC CODE: This field identifies the ethnic code defined by the U.S. government. The valid values are 001 - 064',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Ethn Desc - SZRETHN','DS0.DO1444',_dim,_txt,'ETHNIC CODE: This field identifies the ethnic description defined by the U.S. government.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('EthnRace Code - SHRIPD2','DS0.DO168e',_dim,_txt,'The ethnicity/race coding displayed in Banner program SHRIPD2.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('EthnRace Desc - SHRIPD2','DS0.DO168f',_dim,_txt,'The ethnicity/race code description displayed in Banner program SHRIPD2.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Ethn Code - SPBPERS (OLD)','DS0.DO8f9',_dim,_txt,'This field maintains ethnicity code associated with person.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('File Desc - SZRFILE','DS0.DO1664',_dim,_txt,'Description of the file',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('File Key - SZRFILE','DS0.DO1668',_dim,_num,'Unique id of document generated by sequence szrfile_surrogate_id_sequence',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('File Name - SZRFILE','DS0.DO1662',_dim,_txt,'Name of the file as it was uploaded',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('First Name - SPRIDEN','DS0.DO901',_dim,_txt,'This field identifies the first name of person.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Form Type - STVWQST (Person)','DS0.DO1468',_dim,_txt,'The type of object, ie. checkbox, drop down, etc. on the web page.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('From Date - SPRADDR','DS0.DO905',_dim,_date,'This field maintains the effective start date of address associated with person.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('From Date - SPRHOLD','DS0.DO906',_dim,_date,'This field identifies the effective begin date of hold.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Full Time Years (Certificate) - SZRWANS','DS0.DO166e',_dim,_txt,'Answer to marketing question from certificate tracker: Please share your years of full time work experience.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Full Time Work (Certificate) - SZRWANS','DS0.DO1672',_dim,_txt,'Answer to marketing question from certificate tracker:For the most part, were you working full time while you were pursuing your degree?',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Harv Huid - SZBHIDD','DS0.DO6f5',_dim,_txt,'This field maintains person Harvard HUID number.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Harv Idgn - SZBHIDD','DS0.DO12f0',_dim,_txt,'This field maintains person Harvard IDMS number.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Harv Idgn - SZRSURL','DS0.DO14ad',_dim,_txt,'This field maintains person Harvard IDMS number.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Harv Idms - SZBHIDD','DS0.DO6f8',_dim,_txt,'This field maintains person Harvard IDMS number.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Harv Ssid - SZRHARV','DS0.DO6fa',_dim,_txt,'Harvard Summer ID of student',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Height - SPBPERS','DS0.DO910',_dim,_num,'The number value describing the height of the person.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Hier - STVWANS (Person)','DS0.DO145e',_dim,_num,'Hierarchy or order of answers as they will be displayed on the web page.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Hldd Code - SPRHOLD','DS0.DO913',_dim,_txt,'This field identifies the type of hold on person record.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Hldd Code Between - SPRHOLD','DS0.DO1619',_dim,_txt,'This field will display a hold (entered as a parameter) if it exists and has a start date that falls between two dates (entered as parameters).  A blank value will be displayed if the hold does not exist, but no records will be lost.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Hstt Code - SZRHARV','DS0.DO6fe',_dim,_txt,'Harvard status code of student',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Huid Date - SZBHIDD','DS0.DO6ff',_dim,_date,'This field maintains the Harvard HUID number change date.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Huid User - SZBHIDD','DS0.DO700',_dim,_txt,'This field maintains the Harvard HUID number user.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('I20 Date - GOVINTL','DS0.DO918',_dim,_date,'The date that I-20 is issued',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('I20 Id Number - GOVINTL','DS0.DO919',_dim,_txt,'This field identifies the I20 ID admissions number assigned to person.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('I20 Ind - GOVINTL','DS0.DO91a',_dim,_txt,'The indicator that indicate whether the student needs an I-20 or not; value Y for yes, N for no and blank for not reported',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('I94 Status - GOVINTL','DS0.DO91c',_dim,_txt,'This field identifies person status authorized by I94.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Id - SPRIDEN','DS0.DO91f',_dim,_txt,'This field defines the identification number used to access person on-line.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Id (count) - SPRIDEN','DS0.DO12ad',_msr,_num,'This field defines the count of IDs.',false,null,'','','','BANNER',false,'SUM');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Id (count distinct) - SPRIDEN','DS0.DO12ae',_msr,_num,'This field defines the count of distinct IDs.',false,null,'','','','BANNER',false,'SUM');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Idgen Curr Prev - SZRPROV','DS0.DO1301',_dim,_txt,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Idgen DOB - SZRPROV','DS0.DO1302',_dim,_date,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Idgen First Name - SZRPROV','DS0.DO1303',_dim,_txt,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Idgen Id - SZRPROV','DS0.DO1304',_dim,_txt,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Idgen Id Ind - SZRPROV','DS0.DO1305',_dim,_txt,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Idgen Last Name - SZRPROV','DS0.DO1306',_dim,_txt,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Idgen Mi - SZRPROV','DS0.DO1307',_dim,_txt,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Idgen Per Stat - SZRPROV','DS0.DO1308',_dim,_txt,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Idgen Req Date - SZRPROV','DS0.DO1309',_dim,_date,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Idgen SSN - SZRPROV','DS0.DO130a',_dim,_txt,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Idgn Date - SZBHIDD','DS0.DO12f1',_dim,_date,'This field maintains the Harvard IDMS number change date.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Idgn Link Id - SZBHIDD','DS0.DO12f4',_dim,_txt,'This field maintains the Harvard IDMS number change date.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Idgn Status Ind - SZBHIDD','DS0.DO12f3',_dim,_txt,'This field maintains the Harvard IDMS number valid ID indicator.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Idgn User - SZBHIDD','DS0.DO12f2',_dim,_txt,'This field maintains the Harvard IDMS number user.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Idms Date - SZBHIDD','DS0.DO708',_dim,_date,'This field maintains the Harvard IDMS number change date.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Idms User - SZBHIDD','DS0.DO709',_dim,_txt,'This field maintains the Harvard IDMS number user.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Idms Valid Id - SZBHIDD','DS0.DO70a',_dim,_txt,'This field maintains the Harvard IDMS number valid ID indicator.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Immu Code - SZRIMMU','DS0.DO1340',_dim,_txt,'This field specifies the immunization code.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Incar Ind - SPBPERS','DS0.DO921',_dim,_txt,'The indication of the individuals incarceration.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Ind - SZRIMMU','DS0.DO1341',_dim,_txt,'This field specifies the immunization code number of shot or test or waived.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Ins Carrier - SZRWSIN','DS0.DO1549',_dim,_txt,'This is the students insurance carrier.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Intl Access - SPRTELE','DS0.DO929',_dim,_txt,'Free format International access code for telephone number including country and city code.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Itin - SPBPERS','DS0.DO92a',_dim,_num,'The international tax id number.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Job Function Code - SZREMPL','DS0.DO15b5',_dim,_txt,'The code for the student\'s employment function.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Job Function Desc - SZREMPL','DS0.DO15bc',_dim,_txt,'The description for the student\'s employment function.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Job Industry Code - SZREMPL','DS0.DO15b6',_dim,_txt,'The code for the student\'s employment industry.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Job Industry Desc - SZREMPL','DS0.DO15bd',_dim,_txt,'The description for the student\'s employment industry.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Job Code - SZREMPL','DS0.DO15b7',_dim,_txt,'The code for the student\'s job title.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Job Desc - SZREMPL','DS0.DO15be',_dim,_txt,'The description for the student\'s job title.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Lang Code - GOVINTL','DS0.DO92b',_dim,_txt,'The students native language code',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Last Name - SPRIDEN','DS0.DO92d',_dim,_txt,'This field defines the last name of person.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Last Name, First Name MI','DS0.DOf01',_dim,_txt,'Students last name, first name and middle name',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Legal Name - SPBPERS','DS0.DO92f',_dim,_txt,'This field maintains legal name associated with person.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('License Expires Date - SPBPERS','DS0.DO938',_dim,_date,'The expiration date of the individuals driver license.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('License Issued Date - SPBPERS','DS0.DO939',_dim,_date,'The issue date of the individuals driver license.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Location','DS0.DO1525',_dim,_txt,'The US state code or foreign country code.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Location Region','DS0.DO1534',_dim,_txt,'Four address groupings -  MA (Massachusetts), NE (New England states including ME,NH,VT,RI,CT), US (US other than MA or New England), or Foreign (all outside US).',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Medi Code - SPRMEDI','DS0.DO136b',_dim,_txt,'This field identifies the medical code associated with the person.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Mi - SPRIDEN','DS0.DO942',_dim,_txt,'This field identifies the middle name of person.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Mrtl Code - SPBPERS','DS0.DO946',_dim,_txt,'This field maintains martial status associated with person.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Name Formatted','DS0.DO1582',_dim,_txt,'This field contains a person\'s name whose format is specified using a parameter value \'Name Format\'.  The maximum length allowed for the name is entered as parameter \'Maximum Name Length\'.  To see the values allowed for the \'Name Format\' variable, go to the DCE wiki and search under the Business Objects documents for \'name format\'.  A value of null for the \'Name Format\' parameter and name of \'John Stephen Black\' returns a value of the largest length of one of the following based on the input value of the Maximum Name Length parameter:\n   \n        John Stephen Black\n        John S Black\n        J S Black\n        ERROR',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Name Prefix - SPBPERS','DS0.DO949',_dim,_txt,'This field maintains the prefix (Mr, Mrs, etc) used before person name.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Name Suffix - SPBPERS','DS0.DO94b',_dim,_txt,'This field maintains the suffix (Jr, Sr, etc) used after person name.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Natn Code - SPRADDR','DS0.DO94e',_dim,_txt,'This field maintains the nation/country associated with the address of person.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Nation - STVNATN - SPRADDR','DS0.DO126d',_dim,_txt,'Address Nation',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Natn Code Birth - GOVINTL','DS0.DO950',_dim,_txt,'This field identifies the nation of birth of person.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Natn Code Birth - GOVINTL (desc)','DS0.DO1488',_dim,_txt,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Natn Code Driver - SPBPERS','DS0.DO951',_dim,_txt,'The Nation code associated with the Nation the Driver license was issued.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Natn Code Legal - GOVINTL','DS0.DO952',_dim,_txt,'This field identifies nation of citizenship of person.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Natn Code Legal - GOVINTL (desc)','DS0.DO1489',_dim,_txt,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Natn Code Perm Res - GOBSEVS','DS0.DO14d2',_dim,_txt,'PERMANENT RESIDENCY COUNTRY CODE: Banner code for nation of permanent residency.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('New Job (Certificate) - SZRWANS','DS0.DO1674',_dim,_txt,'Answer to marketing question from certificate tracker: Now that you have completed your certificate, do you plan to apply to a new job?',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('No Shots - STVIMMU','DS0.DO1347',_dim,_txt,'This field specifies the immunization code number of shots required.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Num Repeats - STVWQST (Person)','DS0.DO1469',_dim,_num,'The number of times this question is going to be repeated.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Ntyp Code - SPRIDEN','DS0.DO954',_dim,_txt,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Orig Code - SPRCMNT','DS0.DO956',_dim,_txt,'This field identifies originator of the comment associated with person record.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Orig Code - SPRHOLD','DS0.DO957',_dim,_txt,'This field identifies person/office who authorized hold status.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Origin - SPBPERS','DS0.DO15d2',_dim,_txt,'This field specifies the original source of the data.\n',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Origin - SPRIDEN','DS0.DO958',_dim,_txt,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Passport Exp Date - GOVINTL','DS0.DO95a',_dim,_date,'This field identifies date passport will expire.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Passport Id - GOVINTL','DS0.DO95b',_dim,_txt,'This field identifies number assigned to passport.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Phone Area - SPRTELE','DS0.DO960',_dim,_txt,'Telephone number area code.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Phone Ext - SPRTELE','DS0.DO964',_dim,_txt,'Telephone number extention.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Phone Number - SPRTELE','DS0.DO969',_dim,_txt,'Telephone number.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Phone Number (Cell) - SPRTELE','DS0.DO15cd',_dim,_txt,'Formatted cell phone number including area code, phone number and extension.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - GOBSEVS','DS0.DO14ce',_dim,_num,'Banner PIDM',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - GOBTPAC','DS0.DO761',_dim,_num,'Banner PIDM',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - GORDOCM','DS0.DO14fb',_dim,_num,'Banner PIDM',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - GOVINTL','DS0.DO97a',_dim,_num,'Internal identification number of person.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - SORAPPT','DS0.DO12c5',_dim,_num,'This field identifies the internal identification number of the student.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - SORTEST','DS0.DO973',_dim,_num,'This field identifies the internal identification number of the student.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - SPBPERS','DS0.DO975',_dim,_num,'Internal Identification Number of Person.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - SPRADDR','DS0.DO976',_dim,_num,'Internal identification number of person.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - SPRCMNT','DS0.DO977',_dim,_num,'Internal identification number of person.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - SPRHOLD','DS0.DO978',_dim,_num,'Internal identification number of the person.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - SPRIDEN','DS0.DO979',_dim,_num,'Internal identification number of the person.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - SPRMEDI','DS0.DO136c',_dim,_num,'Internal identification number of the person.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - SPRTELE','DS0.DO97b',_dim,_num,'Internal identification number.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - SZRCMNT','DS0.DO12f5',_dim,_num,'Internal identification number of person.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - SZBHIDD','DS0.DO766',_dim,_num,'Internal Identification Number of Person.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - SZREMPL','DS0.DO775',_dim,_num,'PIDM of student',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - SZRFILE','DS0.DO165d',_dim,_num,'PIDM of student',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - SZRHARV','DS0.DO15c3',_dim,_num,'PIDM of student',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - SZRIMMU','DS0.DO133f',_dim,_num,'PIDM of student',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - SZRCONT','DS0.DO12c4',_dim,_num,'PIDM of student',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - SZRSURL','DS0.DO14ab',_dim,_num,'PIDM of student',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - SZRWSIN','DS0.DO1547',_dim,_num,'PIDM of student',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - SZRWANS (Person)','DS0.DO1452',_dim,_num,'Pidm of the individual answering the question.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pin - GOBTPAC','DS0.DO780',_dim,_txt,'Personal Identification Number',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pin Disabled Ind - GOBTPAC','DS0.DO783',_dim,_txt,'PIN disabled Indicator',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pin Exp Date - GOBTPAC','DS0.DO784',_dim,_date,'PIN expiration date',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Policy Number','DS0.DO154a',_dim,_txt,'This is the students policy number.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pref First Name - SPBPERS','DS0.DO981',_dim,_txt,'This field maintains the preferred first name associated with person.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Preferred Ind - GOREMAL','DS0.DO155f',_dim,_txt,'This column indicates if the e-mail address is the preferred contact address.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Primary Ind - SPRTELE','DS0.DO987',_dim,_txt,'Primary indicator to denote primary telephone numbers based on telephone types.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Prior Degree1','DS0.DO14de',_dim,_txt,'The degree associated with the first prior degree for a student when ordered by acat code, degree year, and sgbi code.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Prior Degree2','DS0.DO14df',_dim,_txt,'The degree associated with the second prior degree for a student when ordered by acat code, degree year, and sgbi code.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Prior Degree3','DS0.DO14e0',_dim,_txt,'The degree associated with the third prior degree for a student when ordered by acat code, degree year, and sgbi code.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Prior Degree4','DS0.DO14e1',_dim,_txt,'The degree associated with the fourth prior degree for a student when ordered by acat code, degree year, and sgbi code.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Prior Degree5','DS0.DO14e2',_dim,_txt,'The degree associated with the fifth prior degree for a student when ordered by acat code, degree year, and sgbi code.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Prior Degree6','DS0.DO14e3',_dim,_txt,'The degree associated with the sixth prior degree for a student when ordered by acat code, degree year, and sgbi code.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Prior Degree7','DS0.DO14e4',_dim,_txt,'The degree associated with the seventh prior degree for a student when ordered by acat code, degree year, and sgbi code.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Prior Degree College1','DS0.DO14ec',_dim,_txt,'The college of graduation associated with the first prior degree for a student when ordered by acat code, degree year, and sgbi code.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Prior Degree College2','DS0.DO14ed',_dim,_txt,'The college of graduation associated with the second prior degree for a student when ordered by acat code, degree year, and sgbi code.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Prior Degree College3','DS0.DO14ee',_dim,_txt,'The college of graduation associated with the third prior degree for a student when ordered by acat code, degree year, and sgbi code.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Prior Degree College4','DS0.DO14ef',_dim,_txt,'The college of graduation associated with the fourth prior degree for a student when ordered by acat code, degree year, and sgbi code.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Prior Degree College5','DS0.DO14f0',_dim,_txt,'The college of graduation associated with the fifth prior degree for a student when ordered by acat code, degree year, and sgbi code.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Prior Degree College6','DS0.DO14f1',_dim,_txt,'The college of graduation associated with the sixth prior degree for a student when ordered by acat code, degree year, and sgbi code.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Prior Degree College7','DS0.DO14f2',_dim,_txt,'The college of graduation associated with the seventh prior degree for a student when ordered by acat code, degree year, and sgbi code.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Prior Degree Year1','DS0.DO14e5',_dim,_txt,'The college year of graduation associated with the first prior degree for a student when ordered by acat code, degree year, and sgbi code.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Prior Degree Year2','DS0.DO14e6',_dim,_txt,'The college year of graduation associated with the second prior degree for a student when ordered by acat code, degree year, and sgbi code.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Prior Degree Year3','DS0.DO14e7',_dim,_txt,'The college year of graduation associated with the third prior degree for a student when ordered by acat code, degree year, and sgbi code.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Prior Degree Year4','DS0.DO14e8',_dim,_txt,'The college year of graduation associated with the fourth prior degree for a student when ordered by acat code, degree year, and sgbi code.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Prior Degree Year5','DS0.DO14e9',_dim,_txt,'The college year of graduation associated with the fifth prior degree for a student when ordered by acat code, degree year, and sgbi code.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Prior Degree Year6','DS0.DO14ea',_dim,_txt,'The college year of graduation associated with the sixth prior degree for a student when ordered by acat code, degree year, and sgbi code.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Prior Degree Year7','DS0.DO14eb',_dim,_txt,'The college year of graduation associated with the seventh prior degree for a student when ordered by acat code, degree year, and sgbi code.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Processed Flag - SZRPROV','DS0.DO130b',_dim,_txt,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Prog Code - SZRWANS (Person)','DS0.DO1453',_dim,_txt,'The program code for the program that the individual used when answering the question.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Rcrv Ind - SORTEST','DS0.DO98e',_dim,_txt,'Indicates whether SAT score has been Recentered and/or Revised.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Reason - SPRHOLD','DS0.DO990',_dim,_txt,'Free format field which identifies the reason hold was placed.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Reason (Certificate) - SZRWANS','DS0.DO166f',_dim,_txt,'Answer to marketing question from certificate tracker: Please share your primary reason for earning a certificate',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Received Date - GORDOCM','DS0.DO1502',_dim,_date,'This field indicates the date the Document was received.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Recommend HCE (Certificate) - SZRWANS','DS0.DO1676',_dim,_txt,'Answer to marketing question from certificate tracker:Would you recommend the Harvard Extension School to a close friend, family member, or colleague?',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Recv Date - GOVINTL','DS0.DO993',_dim,_date,'This field identifies the receive date of the admissions checklist item associated with Visa type.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Region - SORGEOR','DS0.DO153c',_dim,_txt,'This field identifies the region for the address based on state or nation.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Region - SORGEOR  (Natn of Birth)','DS0.DO15c8',_dim,_txt,'This field identifies the region for nation of birth from GOVINTL.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Relationship - SZRWSIN','DS0.DO154e',_dim,_txt,'This is the relationship between the ins policy holder and student.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Release Ind - SORTEST','DS0.DO997',_dim,_txt,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Release Ind - SPRHOLD','DS0.DO998',_dim,_txt,'This field indicates that only the system user who entered the hold may release the hold.  Valid value is: Y - allow only system user to release hold.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Request Date - GORDOCM','DS0.DO1501',_dim,_date,'This field indicates the date the Document was requested.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Role Type - SZRSURL','DS0.DO14ae',_dim,_txt,'Two role types: STUDENT or EMPLOYEE',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Role Desc - SZRSURL','DS0.DO14af',_dim,_txt,'Role Description',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Role End Date - SZRSURL','DS0.DO14b4',_dim,_date,'Role End Date: defacto Grad Date',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Salesforce Contact ID - SWTCONT','DS0.DO168b',_dim,_txt,'Salesforce Contact ID',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Salutation','DS0.DO12cf',_dim,_txt,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Satisfaction w Cert Earn Process (Certificate) - SZRWANS','DS0.DO1671',_dim,_txt,'Answer to marketing question from certificate tracker: Are you satisfied with the certificate earning process at the Harvard Extension School?',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Sbgi Code - SZRHARV','DS0.DO7a6',_dim,_txt,'SBGI code of students college',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Sbgi Code (No Data Loss) - SZRHARV','DS0.DO161e',_dim,_txt,'Code for students college.  If this field is used in a query there will be no loss of data if the student has a record in SPAIDEN.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Sbgi Desc - SZRHARV','DS0.DO7a8',_dim,_txt,'Name of students college',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Sbgi Desc (No Data Loss) - SZRHARV','DS0.DO161d',_dim,_txt,'Name of students college.  If this field is used in a query there will be no loss of data if the student has a record in SPAIDEN.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Schl Code - SZRHARV','DS0.DO7a9',_dim,_txt,'Harvard school code of student',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Schl Code (No Data Loss) - SZRHARV','DS0.DO1620',_dim,_txt,'Code for students harvard school.  If this field is used in a query there will be no loss of data if the student has a record in SPAIDEN.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Schl Desc (No Data Loss) - SZRHARV','DS0.DO1621',_dim,_txt,'Description for students harvard school.  If this field is used in a query there will be no loss of data if the student has a record in SPAIDEN.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('School Code - SZRSURL','DS0.DO14b0',_dim,_txt,'HU School Code: i.e., 33 is Harvard College',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('School Desc - SZRSURL','DS0.DO14b1',_dim,_txt,'HU School Description',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Sdvet Ind - SPBPERS','DS0.DO9a9',_dim,_txt,'Indicator to identify an individual as a special disabled veteran.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Search First Name - SPRIDEN','DS0.DO9aa',_dim,_txt,'The First Name field with all spaces and punctuation removed and all letters capitalized.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Search Last Name - SPRIDEN','DS0.DO9ab',_dim,_txt,'The Last Name field with all spaces and punctuation removed and all letters capitalized.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Search Mi - SPRIDEN','DS0.DO9ac',_dim,_txt,'The MI (Middle Initial) field with all spaces and punctuation removed and all letters capitalized.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Seq - SZRIMMU','DS0.DO1344',_dim,_num,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Seqno - GORDOCM','DS0.DO14fc',_dim,_num,'Sequence number of the visa.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Seqno - GOVINTL','DS0.DO14f8',_dim,_num,'Sequence number of the visa.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Seqno - SPRADDR','DS0.DO9b3',_dim,_num,'This field assigns an internal sequence number to each address type associated with person. This field does not display on screen.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Seqno - SPRTELE','DS0.DO9b4',_dim,_num,'Unique sequence number for telephone numbers associated with PIDM.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Seqno - SZRWSIN','DS0.DO1551',_dim,_num,'Unique sequence number for health insurance associated with PIDM.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Sex - SPBPERS','DS0.DO9b8',_dim,_txt,'This field maintains the sex of person. Valid values are: M - Male, F - Female, N - Unknown.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Signature Ind - GOVINTL','DS0.DO9bb',_dim,_txt,'The indicator of the signature confirming availability of funds',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Soundex First Name - SPRIDEN','DS0.DO9bc',_dim,_txt,'The First Name field in SOUNDEX phonetic format.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Soundex Last Name - SPRIDEN','DS0.DO9bd',_dim,_txt,'The Last Name field in SOUNDEX phonetic format.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Spouse Ind - GOVINTL','DS0.DO9c0',_dim,_txt,'The Indicator that indicate whether the spouse is accompanying the student; value Y for yes, N for no and blank for not reported',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Ssn - SPBPERS','DS0.DO9c2',_dim,_txt,'This field maintains person social security number.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Ssn Valid Indicator - SPBPERS','DS0.DO15d0',_dim,_txt,'This field is a Y(es) or N(o) indicator for whether a person\'s social security number is valid according to criteria documented on the MIS wiki: http://dcewiki.brattle.harvard.edu/mis/gen_ssn/start.  This criteria is specified by the Academic Services department within the Registrar\'s Office based on IRS guidelines.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Ssn Valid Message - SPBPERS','DS0.DO15d1',_dim,_txt,'This field is a message indicating whether a person\'s social security number is valid according to criteria documented on the MIS wiki: http://dcewiki.brattle.harvard.edu/mis/gen_ssn/start.  This criteria is specified by the Academic Services department within the Registrar\'s Office based on IRS guidelines.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Start Date - STVWQST (Person)','DS0.DO146a',_dim,_date,'The date that a web page question became active.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Start Date - STVWANS (Person)','DS0.DO1460',_dim,_date,'The first day the answer was in use.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Stat Code - SPRADDR','DS0.DO9c8',_dim,_txt,'This field maintains the state associated with the address of person.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Stat Description - SPRADDR','DS0.DO157b',_dim,_txt,'This field maintains the state description associated with the address of person.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Stat Code Birth - SPBPERS','DS0.DO9ca',_dim,_txt,'The state in which the person was born.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Stat Code Driver - SPBPERS','DS0.DO9cb',_dim,_txt,'The State code describing the state the driver license was issued.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Status Code - SZRSURL','DS0.DO14b2',_dim,_txt,'Current Status: i.e., Registered',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Status Desc - SZRSURL','DS0.DO14b3',_dim,_txt,'Current Status Description',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Status Ind - GOREMAL','DS0.DO9cf',_dim,_txt,'This field identifies if email address is active. Values are I - Inactive, or A - Active.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Status Ind - SPRADDR','DS0.DO155e',_dim,_txt,'This field identifies if address information is inactive. Valid value is I - Inactive.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Status Ind - SPRTELE','DS0.DO9d0',_dim,_txt,'Status of telelphone number, active or inactive.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Street Line1 - SPRADDR','DS0.DO9d3',_dim,_txt,'This field maintains the first line of the address associated with person.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Street Line2 - SPRADDR','DS0.DO9d6',_dim,_txt,'This field maintains the second line of the address associated with person.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Street Line3 - SPRADDR','DS0.DO9d9',_dim,_txt,'This field maintains the third line of the address associated with person.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Subscriber First Name','DS0.DO154b',_dim,_txt,'This is the students first name.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Subscriber Last Name','DS0.DO154c',_dim,_txt,'This is the students last name.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Subscriber Middle Name','DS0.DO154d',_dim,_txt,'This is the students middle name.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Svcr_comment - GOBSEVS','DS0.DO14d0',_dim,_txt,'CREATE REASON COMMENT: Create reason comment',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Tele Code - SPRTELE','DS0.DO9e4',_dim,_txt,'Telelphone Type Code.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Tepr Code - SORTEST','DS0.DO9e5',_dim,_txt,'Test purpose code',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code - SZREMPL','DS0.DO15c0',_dim,_txt,'Term code in which the employment data was entered. Currently this value is taken from the current value in online services',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code - SZRFILE','DS0.DO165e',_dim,_txt,'Term code in which the file was collected.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code - SZRHARV','DS0.DO7f1',_dim,_txt,'Term code',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code - SZRSURL','DS0.DO14ac',_dim,_txt,'Term code',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code - SZRWANS (Person)','DS0.DO1454',_dim,_txt,'The term code during which the question and answer applied.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code - SZRWSIN','DS0.DO1548',_dim,_txt,'This is the term_code for which the health plan was waived.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code Entry - SORTEST','DS0.DO9eb',_dim,_txt,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Tesc Code - SORTEST','DS0.DO9ee',_dim,_txt,'This field identifies the Test Score Code associated with various tests, ie., SAT, ACT, placement scores.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Test - STVIMMU','DS0.DO1348',_dim,_txt,'This field specifies if the immunization code can be tested for.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Test Date - SORTEST','DS0.DO9ef',_dim,_date,'This field identifies the date a particular test was taken.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Test Date - SZRIMMU','DS0.DO1342',_dim,_date,'This field specifies the date that the shot/test was given.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Test Score - SORTEST','DS0.DO9f0',_dim,_txt,'This field identifies a particular test score.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Text - SPRCMNT','DS0.DO9f2',_dim,_txt,'This field maintains the text of the comment associated with person record.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Text  Nar - SPRCMNT','DS0.DO143f',_dim,_txt,'This field maintains the text of the comment associated with person record.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Text - STVIMMU','DS0.DO1345',_dim,_txt,'This field maintains the test\'s text',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('To Date - SPRADDR','DS0.DO9f6',_dim,_date,'This field maintains the effective end date of address associated with person.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('To Date - SPRHOLD','DS0.DO9f7',_dim,_date,'This field identifies the end date hold expires.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Tuition - SZREMPL','DS0.DO15b8',_dim,_txt,'Whether the student receives tuition assistance from her/his employer Y/N/U (Yes, No, Unknown)',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Tuition - SZRWANS (Person)','DS0.DO1529',_dim,_txt,'Does the student\'s employer provide tuition reimbursement? Y or N (Yes or No),  as indicated from the pre-registration questions on online services.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Unlist Ind - SPRTELE','DS0.DO9ff',_dim,_txt,'Unlisted telephone number indicator.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Uoms Code Height - SPBPERS','DS0.DOa00',_dim,_txt,'The Unit of Measure describing the height value.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Uoms Code Weight - SPBPERS','DS0.DOa01',_dim,_txt,'The Unit of Measure describing the weight value.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Upload Date - SZRFILE','DS0.DO1663',_dim,_date,'Date file was uploaded',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Usage Accept Ind - GOBTPAC','DS0.DO813',_dim,_txt,'Terms of Usage accepted indicator.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('User - GOBSEVS','DS0.DO14cf',_dim,_txt,'Last activity user',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('User - GOBTPAC','DS0.DO815',_dim,_txt,'Last activity user',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('User - GORDOCM','DS0.DO1500',_dim,_txt,'Last activity user',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('User - GOREMAL','DS0.DO1524',_dim,_txt,'Last activity user.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('User - SPBPERS','DS0.DO15d3',_dim,_txt,'Last activity user.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('User - SPRADDR','DS0.DOa02',_dim,_txt,'The Id for the User who create or update the record.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('User - SPRHOLD','DS0.DOa03',_dim,_txt,'This field identifies the system user signon id initiating hold.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('User - SPRIDEN','DS0.DOa04',_dim,_txt,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('User - STVWANS (Person)','DS0.DO1461',_dim,_txt,'The person who last updated this record.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('User - STVWQST (Person)','DS0.DO146b',_dim,_txt,'The person who last updated this record',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('User - SZRCMNT','DS0.DO12f8',_dim,_txt,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('User - SZREMPL','DS0.DO15c1',_dim,_txt,'The application that created the record from online services.  Currently the values are: SZWWGRD = Graduation Confirmation web page, SGWWEXT = Extension School Registration web page, SGWWMIS = Summer School Registration web page. ',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('User - SZRFILE','DS0.DO1667',_dim,_txt,'Person who last updated/created the file',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('User - SZRSURL','DS0.DO14b6',_dim,_txt,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('User - SZRWANS (Person)','DS0.DO1455',_dim,_txt,'The person who last updated this record.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('User - SZRWSIN','DS0.DO1550',_dim,_txt,'The person who last updated this record.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Vera Ind - SPBPERS','DS0.DOa05',_dim,_txt,'Vietnam Service era Indicator.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Vetc File Number - SPBPERS','DS0.DOa06',_dim,_txt,'This field maintains veteran identification number associated with person.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Visa Expire Date - GOVINTL','DS0.DOa08',_dim,_date,'This field identifies the date Visa will expire.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Visa Issue Date - GOVINTL','DS0.DOa09',_dim,_date,'This field identifies date Visa was issued.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Visa Number - GORDOCM','DS0.DO14fd',_dim,_txt,'This field identifies the Visa number assigned to Visa type specified.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Visa Number - GOVINTL','DS0.DOa0a',_dim,_txt,'This field identifies the Visa number assigned to Visa type specified.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Vtyp Code - GORDOCM','DS0.DO1503',_dim,_txt,'This field indicates the Type of Visa Issued.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Vtyp Code Current - GOVINTL','DS0.DOa0b',_dim,_txt,'This field identifies the current visa type person holds.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Waiv - STVIMMU','DS0.DO1349',_dim,_txt,'This field specifies if the immunization code can be waived.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Wans Code - SZRWANS (Person)','DS0.DO1456',_dim,_txt,'The answer code for the answer given by the individual to the question asked.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Wans Seq No - SZRWANS (Person)','DS0.DO1457',_dim,_num,'The sequence number uniquely identifying a particular version of the answer given.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Wgrp Code - SZRFILE','DS0.DO165f',_dim,_txt,'Wgrp code of user when document was submitted.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Wqst Code - SZRWANS (Person)','DS0.DO1458',_dim,_txt,'The question code for the question being answered by the individual.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Wqst Num - SZRWANS (Person)','DS0.DO1459',_dim,_num,'A number to identify an instance of a question since one question may have multiple instances.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Wqst Seq No - SZRWANS (Person)','DS0.DO145a',_dim,_num,'The sequence number uniquely identifying a particular version of the question being answered.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Weight - SPBPERS','DS0.DOa11',_dim,_num,'The number value describing the weight of the person.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Zip - SPRADDR','DS0.DOa14',_dim,_txt,'This field maintains the zip code associated with the address of person.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls1=cls0.add('Recruitment','',_cls,_txt,'',false,null,'','','','BANNER',false,'');
cls1.allowInResult=true;cls1.allowInFilter=true
cls2=cls1.add('Active Ind - SOBCPLN','DS0.DO863',_dim,_txt,'Indicates whether communication plan is active (Y) or inactive (N).',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SOBCPLN','DS0.DO865',_dim,_date,'The date the record was created or last updated.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SORCONT','DS0.DO870',_dim,_date,'The Activity Date',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SORDEGR','DS0.DO871',_dim,_date,'This field identifies the last date the SORDEGR record was updated.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SORHSBJ','DS0.DO873',_dim,_date,'This field identifies the last date the individual subject record was updated.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SORHSCH','DS0.DO874',_dim,_date,'This field indicates the last date the SORHSCH record was updated.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SORPCOL','DS0.DO877',_dim,_date,'This field identifies the last date the SORPCOL record was updated.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Admr Code - SORHSCH','DS0.DO88a',_dim,_txt,'This field identifies the admission checklist request item code which may be cross referenced, ie., receipt of high school transcript here updates admissions checklist received date.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Admr Code - SORPCOL','DS0.DO88b',_dim,_txt,'This field identifies the admission checklist request item code which may be cross referenced, ie. receipt of transcript here updates admissions checklist recieved date.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Attend From - SORDEGR','DS0.DO894',_dim,_date,'This field represents the first date of attendance at the prior college.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Attend To - SORDEGR','DS0.DO895',_dim,_date,'This field represents the last date of attendance at the prior college.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Class Rank - SORHSCH','DS0.DO8b9',_dim,_num,'This field identifies the prospect/applicant high school class rank.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Class Size - SORHSCH','DS0.DO8ba',_dim,_num,'This field indicates the size of the prospect/applicant high school graduating class size.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Coll Code - SORDEGR','DS0.DO8c3',_dim,_txt,'Prior college code.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Coll Prep Ind - SORHSCH','DS0.DO8c4',_dim,_txt,'This field indicates whether the prospect/applicant high school program was college prep.  Values are \"Y\" or \" \".',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Contact Date - SORCONT','DS0.DO8cc',_dim,_date,'This field defines the date contact associated with the specific contact type.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Cpln Code - SOBCPLN','DS0.DO8d0',_dim,_txt,'Communication plan code assigned to prospect, applicant or student.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Ctyp Code - SORCONT','DS0.DO8d6',_dim,_txt,'This field defines the type of contact between the institution and person.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Degc Code - SORDEGR','DS0.DO8e3',_dim,_txt,'This field identifies the degree received at the prior college.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Degc Date - SORDEGR','DS0.DO8e4',_dim,_date,'Prior college degree date',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Degc Year - SORDEGR','DS0.DO8e5',_dim,_txt,'Prior college degree year',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Degr Seq No - SORDEGR','DS0.DO8e6',_dim,_num,'This field is a unique sequence number assigned to the prior college degree.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Dplm Code - SORHSCH','DS0.DO8ec',_dim,_txt,'This field indicates the prospect/applicant high school diploma type, ie., college prep.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Egol Code - SORDEGR','DS0.DO8f2',_dim,_txt,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Fdeg Code - SORDEGR','DS0.DO147c',_dim,_txt,'This field identifies the degree received at the prior college.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Fdeg Desc - SORDEGR','DS0.DO147d',_dim,_txt,'This field identifies the degree description received at the prior college.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Gpa - SORHSCH','DS0.DO90a',_dim,_txt,'This field identifies the prospect/applicant high school GPA.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Gpa Transferred - SORDEGR','DS0.DO90b',_dim,_num,'This field identifies the transfer GPA.  This is informational and does not update the transfer GPA in Academic History.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Grade - SORHSBJ','DS0.DO90c',_dim,_txt,'This field identifies the grades received for high school subjects taken by the prospect/applicant.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Graduation Date - SORHSCH','DS0.DO90d',_dim,_date,'This field identifies the prospect/applicant graduation date from high school.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Honr Code - SORDEGR','DS0.DO916',_dim,_txt,'Honor code',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Hours Transferred - SORDEGR','DS0.DO917',_dim,_num,'This field indicates the total number hours transferred from the prior college.  This field is informational and does not update the transfer GPA in Academic History.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Official Trans - SORPCOL','DS0.DO955',_dim,_txt,'This field indicates whether the transcript received was an official transcript. Y denotes yes.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Percentile - SORHSCH','DS0.DO95d',_dim,_num,'This field identifies the prospect/applicant class percentile as related to class rank and size.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - SOBCPLN','DS0.DO96b',_dim,_num,'Internal identification number of prospect, applicant or student.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - SORCONT','DS0.DO96d',_dim,_num,'Internal identification number of prospect.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - SORDEGR','DS0.DO96e',_dim,_num,'This field identifies the internal identification number of the student.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - SORHSBJ','DS0.DO970',_dim,_num,'This field identifies the internal identification number of the prospect/applicant.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - SORHSCH','DS0.DO971',_dim,_num,'This field identifies the internal identification number of the student.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - SORPCOL','DS0.DO972',_dim,_num,'This field identifies the internal identification number of the student.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Primary Ind - SORDEGR','DS0.DO986',_dim,_txt,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Sbgi Code - SORDEGR','DS0.DO9a3',_dim,_txt,'This field identifies the prior college code of the prospect/applicant.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Sbgi Code - SORHSBJ','DS0.DO9a4',_dim,_txt,'This field identifies the high school code of the prospect/applicant.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Sbgi Code - SORHSCH','DS0.DO9a5',_dim,_txt,'This field identifies the high school code of the prospect/applicant.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Sbgi Code - SORPCOL','DS0.DO9a6',_dim,_txt,'This field identifies the prior college code of the prospect/applicant.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Sbjc Code - SORHSBJ','DS0.DO9a7',_dim,_txt,'This field identifies the high school subject codes taken by the prospect/applicant.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Sbgi Desc - SORHSCH','DS0.DO12a2',_dim,_txt,'This field identifies the high school code of the prospect/applicant.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Sbgi Desc - SORPCOL','DS0.DO12a1',_dim,_txt,'This field identifies the prior college code of the prospect/applicant FREE FORM DESCRIPTION.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Seqno - SOBCPLN','DS0.DO9b0',_dim,_num,'Sequence number associated with recruiting record or application.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Subj Gpa - SORHSBJ','DS0.DO9dd',_dim,_txt,'This field identifies the high school subject area GPA for the prospect/applicant.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Subj Years - SORHSBJ','DS0.DO9de',_dim,_num,'This field identifies the number of years the high school subjects were taken by the prospect/applicant.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code - SOBCPLN','DS0.DO9e6',_dim,_txt,'Term code associated with recruiting record or application.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Degree - SORDEGR','DS0.DO9ed',_dim,_txt,'Terminal degree indicator',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Trans Recv Date - SORHSCH','DS0.DO9f9',_dim,_date,'This field identifies the date the prospect/applicant high school transcript was received.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Trans Recv Date - SORPCOL','DS0.DO9fa',_dim,_date,'This field identifies the date an academic transcript was received from the prior college.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Trans Rev Date - SORPCOL','DS0.DO9fb',_dim,_date,'This field identifies the date an academic transcript was reviewed by the institution.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Type Ind - SOBCPLN','DS0.DO9fd',_dim,_txt,'Type of communication plan: (R)ecruiting, (A)dmissions, (S)tudent.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls1=cls0.add('Registration','',_cls,_txt,'',false,null,'','','','BANNER',false,'');
cls1.allowInResult=true;cls1.allowInFilter=true
cls2=cls1.add('Activity Date - SFBETRM','DS0.DOa6a',_dim,_date,'This field specifies the most current date the record was created or updated.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SFRSTCA','DS0.DOa73',_dim,_date,'The date this record was last added or changed.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SFRSTCR','DS0.DOa74',_dim,_date,'This field identifies the most current date record was created or updated.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SFRTHST','DS0.DOa76',_dim,_date,'Date record was created.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SFRTMST','DS0.DOa78',_dim,_date,'This field identifies the most recent date a record was created or updated.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SZRCPAY','DS0.DO625',_dim,_date,'Activity date record was processed',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SZROTEX','DS0.DO149e',_dim,_date,'Activity date record was processed',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date (Course) - SZRWACT','DS0.DO130c',_dim,_date,'Activity date record was processed',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date (Person) - SZRWACT','DS0.DO1334',_dim,_date,'Activity date record was processed',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Add Date - SFBETRM','DS0.DOa7a',_dim,_date,'This field identifies the date of the initial registration for this term.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Add Date - SFRSTCA','DS0.DOa7b',_dim,_date,'The date this student was first added to this section.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Add Date - SFRSTCR','DS0.DOa7c',_dim,_date,'This field identifies the add date of the registrant in this CRN.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Add Test Purpose - SZROTEX','DS0.DO14b7',_dim,_txt,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Admit Code (Registration) - SGBSTDN','DS0.DO1526',_dim,_txt,'Admit code from general student record',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Allowed Time - SZROTEX','DS0.DO14b8',_dim,_num,'allowed time to take the test',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Altcrn - SFBCREQ','DS0.DO12ed',_dim,_txt,'This field identifies an alternate course reference number in case original course not available.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Appr Over - SFRSTCR','DS0.DOa84',_dim,_txt,'This field identifies the special approval override of this CRN.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Appr Received Ind - SFRSTCR','DS0.DOa85',_dim,_txt,'This field identifies the special approval received indicator for this CRN.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Ar Ind - SFBETRM','DS0.DOa86',_dim,_txt,'This field identifies the term charges acceptance indicator.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Archived - SZROTEX','DS0.DO14b9',_dim,_txt,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Assessment Date - SFBETRM','DS0.DOa87',_dim,_date,'This field identifies the date of the assessment for this term.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Atyp Code (Registration)','DS0.DO1561',_dim,_txt,'The address type code associated with the address of record for a student during a particular term code, or the current address if the previous address does not exist.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Bill Hr - SFRSTCA','DS0.DOa8c',_dim,_num,'This field stores the number of billing hours associated with this student for this section.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Bill Hr - SFRSTCR','DS0.DOa8d',_dim,_num,'This field identifies the billing hours associated with this CRN.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Bill Hr Hold - SFRSTCR','DS0.DOa8e',_dim,_num,'This field identifies the billing hours to hold for reinstatements.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Billable Hours (Registration)','DS0.DO15ab',_msr,_num,'The total number of billable hours for which the student is registered in a term (entered as prompt).  Courses are counted if they have a registration status defined in STVPTRM as \'include in section enrollment\'.',true,null,'','','','BANNER',false,'SUM');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Camp Code - SFRSTCA','DS0.DOa90',_dim,_txt,'The campus code for this section.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Camp Code - SFRSTCR','DS0.DOa91',_dim,_txt,'This field identifies the campus code of this CRN.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Camp Over - SFRSTCR','DS0.DOa95',_dim,_txt,'The Campus Registration Restriction override code',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Capc Over - SFRSTCR','DS0.DOa96',_dim,_txt,'This field identifies the capacity override of this CRN.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('City (Registration)','DS0.DO1564',_dim,_txt,'The city associated with the address of record for a student during a particular term code, or the current address if the previous address does not exist.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Clas Over - SFRSTCR','DS0.DOa9a',_dim,_txt,'This field identifies the class restriction override of this CRN.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Class Sort Key - SFRSTCR','DS0.DOa9b',_dim,_num,'This field identifies the class of the registrant.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Coll Over - SFRSTCR','DS0.DOab1',_dim,_txt,'This field identifies the college restriction override of this CRN.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Corq Over - SFRSTCR','DS0.DOab2',_dim,_txt,'This field identifies the corequisite override of this CRN.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Course Count - SFRSTCR','DS0.DO161b',_dim,_num,'This field identifies the count of courses for a term code entered as parameter \'Course Count Term Code\'.  The registration status codes selected are defined in SZATRNS for the SZATRNS Program field and SZATRNS Code field, entered as parameters \'Course Count Program\' and \'Course Count Code\', respectively.  If the student has no registration records, a zero value will be returned and no rows will be lost if this field is used in a query.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Course Information (Registration)','DS0.DO11f4',_dim,_txt,'Registration CRN, Subject Code, College Code, Course Number, and Title',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Credit Hr - SFRSTCA','DS0.DOab5',_dim,_num,'This field stores the number of credit hours associated with this student for this section.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Credit Hr - SFRSTCR','DS0.DOab6',_dim,_num,'This field identifies the credit hours associated with this CRN.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Credit Hr Hold - SFRSTCR','DS0.DOab7',_dim,_num,'This field identifies the credit hours to hold for reinstatements.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Crn - SFRSTCA','DS0.DOaba',_dim,_txt,'The Course Registration Number of the section the student is registered in.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Crn - SFRSTCR','DS0.DOabb',_dim,_txt,'This field identifies the course reference number associated with the class section.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Crn (count) - SFRSTCR','DS0.DO12af',_msr,_num,'This field identifies the count of course reference numbers.',false,null,'','','','BANNER',false,'SUM');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Crn - SZRCPAY','DS0.DO6a9',_dim,_txt,'CRN for Course Payment type',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Crn (Course) - SZRWACT','DS0.DO130e',_dim,_txt,'CRN',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Crn (Person) - SZRWACT','DS0.DO1335',_dim,_txt,'CRN',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Crnum - SFBCREQ','DS0.DO12ee',_dim,_txt,'This field identifies the course reference number of the requested course.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Curr Or Prev Address (Registration)','DS0.DO1566',_dim,_txt,'C indicates address is the current address, P indicates it is the address of record during the registration term code',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Data1 (Course) - SZRWACT','DS0.DO1314',_dim,_txt,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Data1 (Person) - SZRWACT','DS0.DO1336',_dim,_txt,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Data1 Maximum (Person) - SZRWACT','DS0.DO15a6',_dim,_txt,'Selects values between a minimum and maximum term code.  When there is more than one value, selects the one associated with the maximum term code and activity date (the last record entered).',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Data2 (Course) - SZRWACT','DS0.DO1315',_dim,_txt,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Data2 (Person) - SZRWACT','DS0.DO1337',_dim,_txt,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Degc Code (Registration) - SGBSTDN','DS0.DO1527',_dim,_txt,'Degree code from general student record',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Degc Over - SFRSTCR','DS0.DOac9',_dim,_txt,'Degree restriction override indicator',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Dupl Over - SFRSTCR','DS0.DOad8',_dim,_txt,'This field identifies the duplicate course override of this CRN.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('End Time - SZROTEX','DS0.DO14ba',_dim,_date,'time the test was finished',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Error Flag - SFRSTCA','DS0.DOae2',_dim,_txt,'This flag identifies an error associated with the registration of this student in this section.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Error Flag - SFRSTCR','DS0.DOae3',_dim,_txt,'This field identifies an error associated with the registration of this CRN',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Essay - SZROTEX','DS0.DO14bb',_dim,_txt,'essay',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=false
cls2=cls1.add('Ests Code - SFBETRM','DS0.DOae5',_dim,_txt,'This field identifies the student enrollment status code.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Ests Date - SFBETRM','DS0.DOae7',_dim,_date,'This field identifies the date associated with the student enrollment status code.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Gmod Code - SFRSTCA','DS0.DOaf4',_dim,_txt,'This is the grading mode for this student for this section.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Gmod Code - SFRSTCR','DS0.DOaf5',_dim,_txt,'This field identifies the grade mode associated with this CRN.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Graded - SZROTEX','DS0.DO14bc',_dim,_txt,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Grde Code - SFRSTCR','DS0.DOaf7',_dim,_txt,'This field identifies the grade code associated with this CRN.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Grde Code Mid - SFRSTCR','DS0.DOaf8',_dim,_txt,'This field identifies the mid-term grade code associated with this CRN.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Grde Date - SFRSTCR','DS0.DOaf9',_dim,_date,'This field identifies the date associated with the grade of this CRN.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Incl Sect Enrl - STVRSTS','DS0.DO126b',_dim,_txt,'This field indicates whether student with associated course registration status is counted in enrollment.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Levl Code - SFRSTCA','DS0.DOb09',_dim,_txt,'The level of the student as registered in this section.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Levl Code - SFRSTCR','DS0.DOb0a',_dim,_txt,'This field identifies the level the registrant is enrolled for this CRN.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Levl Over - SFRSTCR','DS0.DOb11',_dim,_txt,'This field identifies the level restriction override of this CRN.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Link Over - SFRSTCR','DS0.DOb12',_dim,_txt,'This field identifies the link override of this CRN.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Majr Code - SFRTMST','DS0.DOb1a',_dim,_txt,'The major code; valid values arein the STVMAJR table',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Majr Over - SFRSTCR','DS0.DOb1c',_dim,_txt,'This field identifies the major restriction override of this CRN.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Message - SFRSTCA','DS0.DOb21',_dim,_txt,'This field stores a message associated with the registration of this student in this section.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Message - SFRSTCR','DS0.DOb22',_dim,_txt,'This field identifies a message associated with the registration of the CRN',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Mhrs Over - SFBETRM','DS0.DOb23',_dim,_num,'This field identifies the maximum hours override for this term.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Min Credits - SFRTMST','DS0.DOb26',_dim,_num,'The minimum credit hours associated with the time status rule',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Natn Code (Registration)','DS0.DO1562',_dim,_txt,'The nation code associated with the address of record for a student during a particular term code, or the current address if the previous address does not exist.  Taken from the SPAIDEN record.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Natn Desc (Registration)','DS0.DO1567',_dim,_txt,'The nation associated with the address of record for a student during a particular term code, or the current address if the previous address does not exist.   Taken from the SPAIDEN record.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Natn Code by CRN (Registration)','DS0.DO15c9',_dim,_txt,'This field identifies the nation code associated with the student\'s registration for a registration term and CRN (course record number).  This field does not come from SPAIDEN.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Natn Desc by CRN (Registration)','DS0.DO15ca',_dim,_txt,'This field identifies the nation description associated with the student\'s registration for a registration term and CRN (course record number).  This field does not come from SPAIDEN.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Payt Code - SZRCPAY','DS0.DO75a',_dim,_txt,'Payment Code for this Course',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Permit Retake - SZROTEX','DS0.DO14bd',_dim,_txt,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - SFBETRM','DS0.DOb39',_dim,_num,'Internal Identification Number of the person registered .',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - SFRSTCA','DS0.DOb3c',_dim,_num,'The student\'s internal identification number.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - SFRSTCR','DS0.DOb3d',_dim,_num,'Internal Identification Number of the person registered.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - SFRTHST','DS0.DOb3e',_dim,_num,'Internal identification number of student',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - SZRCPAY','DS0.DO76a',_dim,_num,'Pidm for Course Payment type',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - SZROTEX','DS0.DO14be',_dim,_num,'Pidm for Course Payment type',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm (Course) - SZRWACT','DS0.DO130f',_dim,_num,'Pidm',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm (Person) - SZRWACT','DS0.DO1338',_dim,_num,'Pidm',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Preq Over - SFRSTCR','DS0.DOb41',_dim,_txt,'This field identifies the prerequisite override of this CRN.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Printed - SZROTEX','DS0.DO14bf',_dim,_txt,'Flag indicating whether test data has been printed',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Prog Over - SFRSTCR','DS0.DOb45',_dim,_txt,'Program restriction override indicator',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Ptrm Code - SFRSTCR','DS0.DOb4a',_dim,_txt,'This field identifies the part-of-term code associated with this CRN.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Q1 - SZROTEX','DS0.DO14c0',_dim,_txt,'answer to question 1',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Q2 - SZROTEX','DS0.DO14c1',_dim,_txt,'answer to question 2',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Q3 - SZROTEX','DS0.DO14c2',_dim,_txt,'answer to question 3',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Q4 - SZROTEX','DS0.DO14c3',_dim,_txt,'answer to question 4',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Q5 - SZROTEX','DS0.DO14c4',_dim,_txt,'answer to question 5',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Q6 - SZROTEX','DS0.DO14c5',_dim,_txt,'answer to question 6',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Q7 - SZROTEX','DS0.DO14c6',_dim,_txt,'answer to question 7',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Q8 - SZROTEX','DS0.DO14c7',_dim,_txt,'answer to question 8',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Reg Seq - SFRSTCR','DS0.DOb50',_dim,_num,'This field identifies the sequence in which the student enrolled in the associated class section.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Region State (Registration)','DS0.DO1569',_dim,_txt,'This field identifies the region or regions associated with the student\'s registration state.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Region Nation (Registration)','DS0.DO156a',_dim,_txt,'This field identifies the region or regions associated with the student\'s registration nation.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Rept Over - SFRSTCR','DS0.DOb53',_dim,_txt,'This field identifies the repeat course restriction override of the CRN',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Reserved Key - SFRSTCR','DS0.DOb56',_dim,_txt,'Student Course Registration Table Reserved Key.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Rgre Code - SFBETRM','DS0.DOb57',_dim,_txt,'Student Registration Reason Code.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Rpth Over - SFRSTCR','DS0.DOb5a',_dim,_txt,'This field identifies the repeat course hour restriction override of the CRN',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Rsts Code - SFRSTCA','DS0.DOb5d',_dim,_txt,'The course registration status for this student for this section.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Rsts Code - SFRSTCR','DS0.DOb5e',_dim,_txt,'This field identifies the course registration status associated with this CRN.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Rsts Code - SZRCPAY','DS0.DO7a3',_dim,_txt,'Registration Status Code for this record in the students account.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Rsts Date - SFRSTCA','DS0.DOb5f',_dim,_date,'The date the course registration status was entered or last updated.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Rsts Date - SFRSTCR','DS0.DOb60',_dim,_date,'This field identifies the date associated with the course registration status of this CRN.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Rule Numb - SFRTMST','DS0.DOb61',_dim,_num,'Rule number.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Seq (Course) - SZRWACT','DS0.DO1310',_dim,_num,'The sequence number of this record',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Seq (Person) - SZRWACT','DS0.DO1339',_dim,_num,'The sequence number of this record',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Seq Number - SFRSTCA','DS0.DOb64',_dim,_num,'The sequence number of this record for this student for this registration term.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Sgbi Code - SARRSRC','DS0.DO1617',_dim,_txt,'This field provides the SGBI code indicating how the student heard about us. ',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Sgbi Desc - SARRSRC','DS0.DO1618',_dim,_txt,'This field provides the SGBI code description indicating how the student heard about us. ',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Start Time - SZROTEX','DS0.DO14a0',_dim,_date,'time the test was started',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Stat Code (Registration)','DS0.DO1563',_dim,_txt,'The state code associated with the address of record for a student during a particular term code, or the current address if the previous address does not exist.  This data comes from SPAIDEN.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Stat Desc (Registration)','DS0.DO1568',_dim,_txt,'The state associated with the address of record for a student during a particular term code, or the current address if the previous address does not exist.  This data comes from SPAIDEN.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Stat Code by CRN (Registration)','DS0.DO15cb',_dim,_txt,'This field identifies the state code associated with the student\'s registration for a registration term and CRN (course record number).  This field does not come from SPAIDEN.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Stat Desc by CRN (Registration)','DS0.DO15cc',_dim,_txt,'This field identifies the state description associated with the student\'s registration for a registration term and CRN (course record number).  This field does not come from SPAIDEN.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('TAP Code (Status During Term) - SZRCPAY','DS0.DO161c',_dim,_txt,'This field returns a value of TP if a student is using TAP for any courses taken during a term entered as a parameter prompt \'\'Enter Term Code for TAP Status During Term\'.  Courses are included that have registration status codes defined in SZATRNS using the prompts \'Enter SZATRNS Program for TAP Status During Term\' and \'Enter SZATRNS Code for TAP Status During Term\'.  If there is no TAP record, rows in the query will not be lost if the student has a SPAIDEN record.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term - SFBCREQ','DS0.DO12ef',_dim,_txt,'This field identifies the term associated with the course requests.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code - SFBETRM','DS0.DOb79',_dim,_txt,'This field identifies term associated with this registration.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code - SFRSTCA','DS0.DOb81',_dim,_txt,'This field indentifies the registration term code.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code - SFRSTCR','DS0.DOb82',_dim,_txt,'This field identifies the registration term code.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code (MAX) - SFRSTCR','DS0.DO12d4',_msr,_txt,'The maximum registration term code.',false,null,'','','','BANNER',false,'MAX');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code (First Enrl) - SFRSTCR','DS0.DO14a1',_dim,_txt,'This is the first term which a student actually took a course.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code (First Reg) - SFRSTCR','DS0.DO14a2',_dim,_txt,'This is the first term which a student attempted to take a course.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code (Last Enrl) - SFRSTCR','DS0.DO14a3',_dim,_txt,'This is the last term which a student actually took a course.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code (Last Reg) - SFRSTCR','DS0.DO14a4',_dim,_txt,'This is the last term which a student attempted to take a course.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code (Numb Enrl All) - SFRSTCR','DS0.DO14a5',_dim,_num,'This is the number of terms which a student actually took a course.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code (Numb Reg All) - SFRSTCR','DS0.DO14a6',_dim,_num,'This is the number of terms which a student attempted to take a course.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code (Num Enrl Ext) - SFRSTCR','DS0.DO14a7',_dim,_num,'This is the number of extension terms which a student actually took a course.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code (Num Reg Ext) - SFRSTCR','DS0.DO14a8',_dim,_num,'This is the number of extension terms which a student attempted to take a course.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code (Num Enrl Sum) - SFRSTCR','DS0.DO14a9',_dim,_num,'This is the number of summer terms which a student actually took a course.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code (Num Reg Sum) - SFRSTCR','DS0.DO14aa',_dim,_num,'This is the number of summer terms which a student attempted to take a course.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code - SFRTHST','DS0.DOb84',_dim,_txt,'Term code for which student\'s enrollment time status was calculated',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code - SZRCPAY','DS0.DO7e9',_dim,_txt,'Term Code for Course payment type',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code - SZROTEX','DS0.DO14c8',_dim,_txt,'term code',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code (Course) - SZRWACT','DS0.DO130d',_dim,_txt,'Term Code',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code (Person) - SZRWACT','DS0.DO133a',_dim,_txt,'Term Code',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code Maximum (Person) - SZRWACT','DS0.DO15a7',_dim,_txt,'Selects values between a minimum and maximum term code.  When there is more than one value, selects the one associated with the maximum term code and activity date (the last record entered).',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code Eff - SFRTMST','DS0.DOb86',_dim,_txt,'The effective term for the time status rule',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Tesc Code - SZROTEX','DS0.DO14c9',_dim,_txt,'Test as defined in stvtesc',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Test Date - SZROTEX','DS0.DO149f',_dim,_date,'date test was taken',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Test Over - SFRSTCR','DS0.DOb89',_dim,_txt,'This field identifies the test score restriction override of the CRN',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Test Purpose - SZROTEX','DS0.DO14ca',_dim,_txt,'purpose for which the test was taken',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Test Version - SZROTEX','DS0.DO14cb',_dim,_txt,'version of the test',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Time Over - SFRSTCR','DS0.DOb8a',_dim,_txt,'This field identifies the time conflict override of this CRN.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Time Status (Registration)','DS0.DO15ac',_dim,_txt,'Returns F (full time registration status) or P (part time registration status) based on the number of credits returned by the \'Billable Hours (Registration)\' data object.  The \'Billable Hours (Registration)\' data object returns the number of hours a student is registered for in one term which have an \'include in section enrollment\' value of \'Y\' for part of term code. ',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Tmst Code - SFBETRM','DS0.DOb8b',_dim,_txt,'Most recently calculated time status code.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Tmst Code - SFRTHST','DS0.DOb8c',_dim,_txt,'Time status code associated with student\'s enrollment time status',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Tmst Code - SFRTMST','DS0.DOb8e',_dim,_txt,'The time status code; valid values are in the STVSTYP table',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Tmst Date - SFBETRM','DS0.DOb8f',_dim,_date,'Date change in time status occurred.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Tmst Date - SFRTHST','DS0.DOb90',_dim,_date,'Date student\'s enrollment time status was calculated.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Tmst Maint Ind - SFBETRM','DS0.DOb91',_dim,_txt,'Flag indicating whether the change in time status was calculated by the system or overridden and updated by a user.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Tmst Maint Ind - SFRTHST','DS0.DOb92',_dim,_txt,'Indicates whether student\'s enrollment time status calculation was maintained by the system or overridden by a user',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Tran Id (Course) - SZRWACT','DS0.DO1312',_dim,_txt,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Tran Id (Person) - SZRWACT','DS0.DO133b',_dim,_txt,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('User - SFBETRM','DS0.DOb9c',_dim,_txt,'The ID of the user who updated or created the record.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('User - SFRSTCA','DS0.DOb9e',_dim,_txt,'This is the userid of the individual who caused this recorded to be created.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('User - SFRSTCR','DS0.DOb9f',_dim,_txt,'Identifies the user who entered the registration request.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('User - SFRTHST','DS0.DOba0',_dim,_txt,'The ID of the user who created the record.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('User (Course) - SZRWACT','DS0.DO1311',_dim,_txt,'The ID of the user who created the record.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('User (Person) - SZRWACT','DS0.DO133c',_dim,_txt,'The ID of the user who created the record.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('User Name - SZRCPAY','DS0.DO849',_dim,_txt,'User Name of last person to affect record',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Wact Code (Course) - SZRWACT','DS0.DO1313',_dim,_txt,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Wact Code (Person) - SZRWACT','DS0.DO133d',_dim,_txt,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Wait Ind - STVRSTS','DS0.DO1505',_dim,_txt,'This field indicates whether student with associated course registration status is counted as wait listed.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Waiv Hr - SFRSTCR','DS0.DOba2',_dim,_num,'This field identifies the waived hours associated with this CRN.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Zip (Registration)','DS0.DO1565',_dim,_txt,'The zip code associated with the address of record for a student during a particular term code, or the current address if the previous address does not exist.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Registration Point in Time (SFRSTCA)','DS0.DF1',_fil,_txt,'This will define a specific point in time for the registration audit table.  Restricting the records returned to a prompted date and time.',false,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls1=cls0.add('Schedule','',_cls,_txt,'',false,null,'','','','BANNER',false,'');
cls1.allowInResult=true;cls1.allowInFilter=true
cls2=cls1.add('Acad Cut Off Date - SSBSECT','DS0.DOba5',_dim,_date,'The last date when student may process a course without it appearing on their academic history information',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Accl Code - SSBSECT','DS0.DOba6',_dim,_txt,'This field can be used to specify the Academic Calendar Type associated with a section.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Acct Code - SSBSECT','DS0.DOba7',_dim,_txt,'Accounting Method Code',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SSBSECT','DS0.DOba8',_dim,_date,'This field specifies the most current date record was created or updated.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SSRATTR','DS0.DOba9',_dim,_date,'This field contains the most current date the record was added or changed.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SSREVAL','DS0.DObab',_dim,_date,'This field identifies the most recent date a record was created or updated.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SSRFEES','DS0.DObac',_dim,_date,'This field contains the most current date the record was added or changed.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SSRMEET','DS0.DObad',_dim,_date,'This field specifies the most current date record was created or updated.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SSRRTST','DS0.DO146c',_dim,_date,'The date the record was created or last updated',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SZBTRSP','DS0.DO61e',_dim,_date,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SZRCATR','DS0.DO622',_dim,_date,' This field specifies the most recent date that a record was created or updated',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SZREVAL','DS0.DO629',_dim,_date,'This field defines the most current date record is created or changed.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Amount - SSRFEES','DS0.DObaf',_dim,_num,'This field defines the amount of the fee you are creating for the course        section.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Attr Code - SSRATTR','DS0.DObb0',_dim,_txt,'This field defines the attribute code of the section.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Attr Desc - SSRATTR','DS0.DO168d',_dim,_txt,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Availability','DS0.DO15c7',_dim,_txt,'This field displays in the Availability column in Course Search on the extension web site.  Values include \'Limited\', \'Filling\', Waitlist\', \'No Limit\', etc.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Begin Time (AM/PM)','DS0.DO11fa',_dim,_txt,'The time of day (AM/PM) that the course begins.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Begin Time - SSRMEET','DS0.DObb1',_dim,_txt,'This field defines the Begin Time of the course section being scheduled.  It is a required field and is in the format HHMM using military times.  The SSRSECT (Schedule of Classes) converts this time to standard times.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Bill Hrs - SSBSECT','DS0.DObb2',_dim,_num,'This field can be used to restrict a section to a single billing hr.  value when the course was defined with variable billing hrs.  on the Basic Course Info.  Form - SCACRSE.  This value must fall between the  variable values.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Bldg Code - SSRMEET','DS0.DObb3',_dim,_txt,'This field defines the Building where the course section will be scheduled.  It is not required when scheduling course section meeting times.  It is required when scheduling course section meeting rooms.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Camp Code - SSBSECT','DS0.DObb4',_dim,_txt,'This field defines the campus on which the section is scheduled.  If you attempt to schedule a course for a campus which is restricted on the Course Schedule Restrictions Form - SCASRES, an error will occur.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Capp Prereq Test Ind - SSBSECT','DS0.DObb5',_dim,_txt,'Indicates whether CAPP areas or existing prerequisite and test score restrictions are in effect for the section.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Catagory - SSRMEET','DS0.DObb6',_dim,_txt,'Section Indicator.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Catr Code - SZRCATR','DS0.DO683',_dim,_txt,' This field specifies the Course Attribute',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Census 2 Date - SSBSECT','DS0.DObb7',_dim,_date,'The census two date for the term and academic calendar year',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Census 2 Enrl - SSBSECT','DS0.DObb8',_dim,_num,'The census two enrollment',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Census Enrl - SSBSECT','DS0.DObb9',_dim,_num,'This field is system maintained.  It will display the running total of students registered for the section prior to the census date defined for the part of term.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Census Enrl Date - SSBSECT','DS0.DObba',_dim,_date,'This field is defined in the Census field in the Base Part of Term Block on the Term Control Form - SOATERM, and will default to this field based on the Key Block Term and Part/Term field in the Secti on Block of this form.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Coll Code - SSBSECT','DS0.DObbb',_dim,_txt,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Comt Code - SSRMEET','DS0.DObbc',_dim,_txt,'Committee/Service Type code.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Concurrency Ind - SSRRTST','DS0.DO146e',_dim,_txt,'This field specifies that the pre-requisite course requirement can be taken atthe same time as the Key Block course.\"Y\" indicates that the pre-req. course may be taken at the same time',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Connector - SSRRTST','DS0.DO146f',_dim,_txt,'The AND/OR connector used when restriction for the subject/course/term can have an AND/OR relationship',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Cont Hr - SSBSECT','DS0.DObbd',_dim,_num,'This column contains the sum of low lecture, lab and others hours.  Contact hours divided by 10 are the continuing education units for a continuing education section.  This calculated value is stored in the cr edit hour field',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Credit Hr Sess - SSRMEET','DS0.DObbe',_dim,_num,'The session credit hours',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Credit Hrs - SSBSECT','DS0.DObbf',_dim,_num,'This field can be used to restrict a section to a single credit hr.  value when the course was defined with variable credit hrs.  on the Basic Course Info.  Form - SCACRSE.  This value must fall between the  variable values.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Crn - SSBSECT','DS0.DObc0',_dim,_txt,'This field is not displayed on the form (page 0).  It will display the Course Reference Number (CRN) assigned to this course section when it was initially added.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Crn - SSRATTR','DS0.DObc1',_dim,_txt,'This field defines the course reference number for which you are creating a section attribute code.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Crn - SSREVAL','DS0.DObc3',_dim,_txt,'Section Evaluation CRN.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Crn - SSRFEES','DS0.DObc4',_dim,_txt,'This field defines the course reference number for which you are creating the   course section fee.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Crn - SSRMEET','DS0.DObc5',_dim,_txt,'This field is not displayed on the form (page 0).  It defines the Course Reference Number for the course section for which you are creating meeting times',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Crn - SSRRTST','DS0.DO1470',_dim,_txt,'The course reference number that the test score restriction and pre-requisitesare associated with',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Crn - SZBTRSP','DS0.DO6a6',_dim,_txt,'Course ref. number for the course section',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Crn - SZRCATR','DS0.DO6a7',_dim,_txt,' This field specifies the Course Refernce Number assigned to this course',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Crn - SZREVAL','DS0.DO6aa',_dim,_txt,'Course ref. number for the course section',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Crse Numb - SSBSECT','DS0.DObc8',_dim,_txt,'This field, the Key Block Term and Subject must identify a valid course ver- sion from the Catalog Module.  If you try to schedule a section for a term restricted on the Schedule Restrictions Form - SCARRES,  an error occurs.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Crse Numb Preq - SSRRTST','DS0.DO1471',_dim,_txt,'This field defines the course number for course pre-requisite requirements.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Crse Title - SSBSECT','DS0.DObc9',_dim,_txt,'This field will display the title of the course as defined on the Basic Course Information Form - SCACRSE.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Crse Title Combo (SSBSECT,SCBCRSE)','DS0.DO11eb',_dim,_txt,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Day Number - SSRMEET','DS0.DObca',_dim,_num,'This field is not displayed on the form (page 0).  It defines the day number as defined on the STVDAYS Validation Form',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Day of the Week (M,T,W,R,F)','DS0.DO11f8',_dim,_txt,'This object will display the days on which the class meets  (M,T,W,R,F,S,U).',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Day of the Week (M,Tu,W,Th,F)','DS0.DO11f9',_dim,_txt,'This object will display the days on which the class meets  (M,T,W,R,F,S,U).',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Days Code - SSRMEET','DS0.DObcb',_dim,_txt,'This field defines the Day code for which the Key Block section will be scheduled.  It is a required field to enter a meeting time record.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Desc - SZRCDSC','DS0.DO1507',_dim,_txt,'The course description that appears in Degree Course Search on the Harvard Extension School web site.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Desc with HTML Tags - SZRCDSC','DS0.DO167b',_dim,_txt,'The course description that appears in Degree Course Search on the Harvard Extension School web site with the html tags.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Detl Code - SSRFEES','DS0.DObcc',_dim,_txt,'This field defines the detail code of the specific fee(s) you are creating for  the course section.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Drop Cut Off Date - SSBSECT','DS0.DObcd',_dim,_date,'The last date on which students may drop a course without assessing a penalty',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('End Date - SOBPTRM','DS0.DO1657',_dim,_date,'This field identifies the calender end date for the Part of Term in the Base Part of Term Block in the Banner SOATERM form.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('End Date - SSRMEET','DS0.DObce',_dim,_date,'Section End Date.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('End Time - SSRMEET','DS0.DObcf',_dim,_txt,'This field defines the End Time of the course section being scheduled.  It is a required field and is in the format HHMM using military times.  The SSRSECT (Schedule of Classes) converts this time to standard times.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Enrl - SSBSECT','DS0.DObd0',_dim,_num,'This field is system maintained.  It displays a running total of enrollments in the section which have a course status with a \"Count in Enroll\" flag of \"Y\" on the Registration Status Code Validation Form - STVRSTS.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Enrl w Section Enrl and Waitlist','DS0.DO166d',_dim,_num,'This field is a count of enrollments where the registration status code in the Banner form STVRSTS has \'Count in Enrollment\' checked and \'Waitlist Indicator\' checked.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Enrl Cut Off Date - SSBSECT','DS0.DObd1',_dim,_date,'The last date on which students may enroll for the academic calendar type and registration status',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Eval Code - SSREVAL','DS0.DObd2',_dim,_num,'Section Evaluation Code.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Evlt Code - SZBTRSP','DS0.DO6d5',_dim,_txt,'Evaluation type for survey form',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Evlt Code - SZREVAL','DS0.DO6d6',_dim,_txt,'Evaluation type for survey form',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Fee Ind - SSRFEES','DS0.DObd3',_dim,_txt,'This field is used to specify whether the course fee will be assessed on a      per-credit hour basis (C) or on a flat basis (F).  \"C\" and \"F\" are the only     valid values.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Fee Ind Ind - SSRFEES','DS0.DObd4',_dim,_num,'This field does not display on this form.  This field is used to convert the    fee indicator of F - flat or C - per credit to a 1 or 0.  \"F\" is converted to a \"1\" and \"C\" is converted to a \"0\".',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Fri Day - SSRMEET','DS0.DObd5',_dim,_txt,'Section Meeting Time Friday Indicator.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Func Code - SSRMEET','DS0.DObd6',_dim,_txt,'Function code assigned to an event',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Gmod Code - SSBSECT','DS0.DObd7',_dim,_txt,'This field can be used to specify one grading mode for this section from the grading mode(s) defined for the course on the Basic Course Information Form - SCACRSE.  This field is optional.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Gradable Ind - SSBSECT','DS0.DObd8',_dim,_txt,'This field is used to specify whether or not the section is gradable.  It is a required field and \"Y\" - Yes, Gradable, is the default value.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Hrs Week - SSRMEET','DS0.DObda',_dim,_num,'Section Metting Hours per Week.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Inst Pidm - SSREVAL','DS0.DObdb',_dim,_num,'Section Evaluation Instructor Pidm.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Lab Hr - SSBSECT','DS0.DObdc',_dim,_num,'This field is used to specify the lab hours specific to this section.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Lec Hr - SSBSECT','DS0.DObdd',_dim,_num,'This field is used to specify the lecture hours specific to this section.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Levl Code - SSRFEES','DS0.DObde',_dim,_txt,'This field identifies the level code that the fee is defined for',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Levl Code - SSRRTST','DS0.DO1472',_dim,_txt,'The level code for grade',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Lparen - SSRRTST','DS0.DO1473',_dim,_txt,'Left parenthesis',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Link Ident - SSBSECT','DS0.DObdf',_dim,_txt,'This field can be used to link other sections of the same course which must be taken concurrently.  Enter a code in this field, then enter same code in Link connector field for linked section on Schedule Detail Form - SSADETL.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Max Enrl - SSBSECT','DS0.DObe0',_dim,_num,'This field is used to set the maximum enrollment for a section.  When the Capacity severity switch is set to \"W\" or \"F\" on the Term Control Form - SOATERM, the system issues warnings when enrollment exceeds this number.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Meet No - SSRMEET','DS0.DObe1',_dim,_num,'Total Section Meeting Number which is system generated.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Min Grde - SSRRTST','DS0.DO1474',_dim,_txt,'The minimum grade required',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Mon Day - SSRMEET','DS0.DObe2',_dim,_txt,'Section Meeting Time Monday Indicator.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Oth Hr - SSBSECT','DS0.DObe3',_dim,_num,'This field is used to specify the other hours specific to this section.  Other hours is defined by the institution.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Over Ride - SSRMEET','DS0.DObe4',_dim,_txt,'Section Time Conflict Override Indicator.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Preq - SZRCDSC','DS0.DO15c6',_dim,_txt,'The course description that appears in Degree Course Search on the Harvard Extension School web site.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Prior Enrl - SSBSECT','DS0.DObe5',_dim,_num,'This field is system maintained.  When the Section Roll Process - SSRROLL, is used to create section entries based on a previous term\"s sections, the Prior enrollment field is set to the enrollment from the prior term.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Prnt Ind - SSBSECT','DS0.DObe6',_dim,_txt,'This field is used to specify whether the section should be printed in the Schedule Report - SSRSECT.  \"Y\" - Yes, print section is the default value.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Proj Enrl - SSBSECT','DS0.DObe7',_dim,_num,'This field is used to record the anticipated enrollment in the section for the term.  It is an optional field which defaults to \"0\" when a section is added, and it controls no system processing.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Ptrm Code - SOBPTRM','DS0.DO1655',_dim,_txt,'This field identifies the Part of Term Code for the Term in the Key Block of the Term Control Form (SOATERM).  At least one Part of Term Code must have a value of 1-Full Term.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Ptrm Code - SSBSECT','DS0.DObe8',_dim,_txt,'This field is used to specify the part-of-term in which the section is offered.  The value entered here must be valid as defined for the term on the Term Control Form - SOATERM.  The default is \"1\".',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Ptrm End Date - SSBSECT','DS0.DObe9',_dim,_date,'This field is defined in the End field in the Base Part of Term Block on the Term Control Form - SOATERM, and will default to this field based on the Key Block Term and Part/Term field in the Section Block of this form.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Ptrm Start Date - SSBSECT','DS0.DObea',_dim,_date,'This field is defined in the Start field in the Base Part of Term Block on the Term Control Form - SOATERM, and will default to this field based on the Key Block Term and Part/Term field in the Section Block of this form.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Ptrm Weeks - SSBSECT','DS0.DObeb',_dim,_num,'This field is defined in the \"Wks\" field in the Base Part of Term Block on the Term Control Form - SOATERM, and will default to this field based on the Key Block Term and Part/Term field in the Section Block of this form.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Qust Code - SZREVAL','DS0.DO78e',_dim,_num,'Question code is the number of the question',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Rank - SZREVAL','DS0.DO791',_dim,_txt,'Rank of the question (NA, Low to High)',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Rank Freq - SZREVAL','DS0.DO792',_dim,_num,'Frequency of the rank',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Reg Oneup - SSBSECT','DS0.DObec',_dim,_num,'This field is not displayed on the form (page 0).  It displays the count associated with the last student registered for the course section.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Reserved Ind - SSBSECT','DS0.DObed',_dim,_txt,'This field indicates whether reserved seats are defined for the section',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Room Code - SSRMEET','DS0.DObee',_dim,_txt,'This field defines the Room where the course section will be scheduled.  It is not required when scheduling course section meeting times.  It is required when scheduling a course section meeting building.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Rparen - SSRRTST','DS0.DO1475',_dim,_txt,'Right parenthesis',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Sapr Code - SSBSECT','DS0.DObef',_dim,_txt,'This field can be used to specify the type of special approval a student must have to register.  The Special Approval Severity switch on the Term Control Form - SOATERM, determines how this is checked at registration.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Sat Day - SSRMEET','DS0.DObf0',_dim,_txt,'Section Meeting Time Saturday Indicator.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Schd Code - SSBSECT','DS0.DObf1',_dim,_txt,'This field identifies the instructional type of the section being scheduled.  It is a required field on an add.  Use the LIST FIELD VALUES key to display the Schedule Type Validation Form - STVSCHD.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Schd Code - SSRMEET','DS0.DObf2',_dim,_txt,'Section Schedule Type.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Score 1 - SSREVAL','DS0.DObf3',_dim,_num,'Score 1 Toatl.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Score 2 - SSREVAL','DS0.DObf4',_dim,_num,'Score 2 total.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Score 3 - SSREVAL','DS0.DObf5',_dim,_num,'Score 3 Toatl.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Score 4 - SSREVAL','DS0.DObf6',_dim,_num,'Score 4 Total.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Score 5 - SSREVAL','DS0.DObf7',_dim,_num,'Score 5 Total.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Score 6 - SSREVAL','DS0.DObf8',_dim,_num,'Score 6 Total.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Score 7 - SSREVAL','DS0.DObf9',_dim,_num,'Score 7 Total.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Score E - SSREVAL','DS0.DObfa',_dim,_num,'Summary 3 total.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Score Na - SSREVAL','DS0.DObfb',_dim,_num,'Summary 1 Toatl.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Score Ne - SSREVAL','DS0.DObfc',_dim,_num,'Summary 2 Total.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Score Tm - SSREVAL','DS0.DObfd',_dim,_num,'Summary 4 Total.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Seats Avail - SSBSECT','DS0.DObfe',_dim,_num,'This field is system maintained.  It will display a running total of remain- ing avaialable seats in the section by subtracting the Actual enrollment field from the Maximum enrollment field defined for this section.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Seq Numb - SSBSECT','DS0.DObff',_dim,_txt,'This field identifies the section number of a course.  A Section number can only be used once to identify a Subject/Course Number combination in a term, however, multiple sections of a course can share a 0 section number.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Seqno - SSRRTST','DS0.DO1476',_dim,_num,'The sequence number is used to insure the record will be in the correct order',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Sess Code - SSBSECT','DS0.DOc01',_dim,_txt,'This field can be used to identify the session in which the section is scheduled.  This is an optional field.  Use the LIST FIELD VALUES key to display the Session Code Validation Form - STVSESS.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Shdr Code - SZREVAL','DS0.DO7bd',_dim,_txt,'Subgroup of the question code',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Shdr Value - SZREVAL','DS0.DO7be',_dim,_num,'Value of the subgroup',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Ssts Code - SSBSECT','DS0.DOc02',_dim,_txt,'This field maintains the status of a section.  The \"Allow Registration\" switch on the Section Status Validation Form - STVSSTS determines whether the status entered will prevent or allow registration for this section.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Start Date - SOBPTRM','DS0.DO1656',_dim,_date,'This field identifies the calender start date for the Part of Term in the Base Part of Term Block in the Banner SOATERM form.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Start Date - SSRMEET','DS0.DOc03',_dim,_date,'Section Meeting Start Date.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Subj Code - SSBSECT','DS0.DOc04',_dim,_txt,'This field is required in order to add a section.  In addition, the combina- tion of Subject, Course Number and Key Block Term must identify a valid course version as maintained in the Catalog Module.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Subj Code Preq - SSRRTST','DS0.DO1477',_dim,_txt,'This field defines the subject area for course pre-requisite requirements.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Sun Day - SSRMEET','DS0.DOc05',_dim,_txt,'Section Meeting Time Sunday Indicator.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Subj Desc - SSBSECT','DS0.DO157c',_dim,_txt,'This course subject code description.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code - SOBPTRM','DS0.DO1654',_dim,_txt,'This field identifies the term code associated with the entries on the Term Control Form (SOATERM).',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code - SSBSECT','DS0.DOc06',_dim,_txt,'This field is not displayed on the form (page 0).  It defines the Term code for the course section information.  It is derived from the Key Block Term.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code - SSRATTR','DS0.DOc07',_dim,_txt,'This field defines the term for which you are creating a section attribute code.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code - SSREVAL','DS0.DOc09',_dim,_txt,'Term Code for Section Evaluation.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code - SSRFEES','DS0.DOc0a',_dim,_txt,'This field defines the term for which you are creating the course section       fee.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code - SSRMEET','DS0.DOc0b',_dim,_txt,'This field is not displayed on the form (page 0).  It defines the term for which you are creating meeting times for the course section.  It is based on the Key Block Term.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code - SSRRTST','DS0.DO1478',_dim,_txt,'The term code that the test score restriction and pre-requisites are associated with',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code - SZBTRSP','DS0.DO7e5',_dim,_txt,'Term code for course section',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code - SZRCATR','DS0.DO7e6',_dim,_txt,' This field specifies the Term Code in which the course was taught',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code - SZREVAL','DS0.DO7ea',_dim,_txt,'Term code for course section',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Tesc Code - SSRRTST','DS0.DO1479',_dim,_txt,'The test code associated with the restriction',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Test Score - SSRRTST','DS0.DO147a',_dim,_txt,'The minimum score of the test code',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Thu Day - SSRMEET','DS0.DOc0e',_dim,_txt,'Section Meeting Time Thrusday Indicator.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Tot Credit Hrs - SSBSECT','DS0.DOc0f',_dim,_num,'This field is system maintained.  It will display a running total of all enrolled credit hours in the section.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Total Resp - SZBTRSP','DS0.DO807',_dim,_num,'Total responses to evaluation',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Tue Day - SSRMEET','DS0.DOc10',_dim,_txt,'Section Meeting Time Tuesday Indicator.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Tuiw Ind - SSBSECT','DS0.DOc11',_dim,_txt,'This field can be used to specify that this section be exempt from the assessment of tuition and fees as defined on the Registration Fees Process Control Form - SFARGFE (See Field Usage Notes).',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Voice Avail - SSBSECT','DS0.DOc12',_dim,_txt,'Indicates whether a section is available to Web and Voice Response Telephone Registration.  \"N\" denotes course is not available, \"Y\" denotes course is available.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Wait Avail - SSBSECT','DS0.DOc13',_dim,_num,'This field is system maintained.  It displays a running total of remaining available waitlist seats by subtracting the waitlist actual enrollment from the maximum waitlist enrollment for the section',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Wait Capacity - SSBSECT','DS0.DOc14',_dim,_num,'This field is used to set the maximum waitlist enrollment for a section',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Wait Count - SSBSECT','DS0.DOc15',_dim,_num,'This field is system maintained.  It displays a running total of enrollments in the section which have course status with a waitlist flag set to Y on the Registration Status Code Validation Form - STVRSTS',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Wed Day - SSRMEET','DS0.DOc16',_dim,_txt,'Section Meeting Time Wednesday Indicator.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls1=cls0.add('Transfers and Extras','',_cls,_txt,'',false,null,'','','','BANNER',false,'');
cls1.allowInResult=true;cls1.allowInFilter=true
cls2=cls1.add('Acct Id - SZBCACT','DS0.DO60e',_dim,_txt,'This field identifies the ID under which the student computer account was established',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SZBCACT','DS0.DO615',_dim,_date,'This field identifies the last date the record was accessed.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SZBEXTR','DS0.DO616',_dim,_date,'This field identifies Date transfer record was created.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SZBIDTR','DS0.DO618',_dim,_date,'This field identifies Date transfer record was created.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SZBPPTR','DS0.DO1324',_dim,_date,'This field identifies Date transfer record was created.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SZBRETR','DS0.DO61d',_dim,_date,'This field specifies the date the record was created or updated.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SZBWKSP','DS0.DO1420',_dim,_date,'This field specifies the date the record was created or updated.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SZRADDR','DS0.DO620',_dim,_date,' This field identifies Date address record was created.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SZRCREQ','DS0.DO626',_dim,_date,'This field identifies the most recent date a record was created or updated',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SZRCRID','DS0.DO627',_dim,_date,'This field identifies the most recent date a record was created or updated',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SZRCRPI','DS0.DO628',_dim,_date,'This field identifies the most recent date a record was created or updated',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SZRFAXL','DS0.DO62c',_dim,_date,'This field indicates the date the Fax Log record was created or updated.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SZRLNTP','DS0.DO638',_dim,_date,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Activity Date - SZRWSRG','DS0.DO1421',_dim,_date,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Admt Code - SZBIDTR','DS0.DO64b',_dim,_txt,'This field identifies Student Admit Code at time of transfer.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Asrc Code - SZRCRID','DS0.DO651',_dim,_txt,'Address Source Code',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Att Ind - SZRWSRG','DS0.DO1422',_dim,_txt,'This fiels specifies the person attended the workshop.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Begin Time (AM/PM) - Workshop','DS0.DO158e',_dim,_txt,'This fiels specifies the begin time for the workshop.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Birth Date - SZBEXTR','DS0.DO657',_dim,_date,'This field identifies student date of birth at time of transfer.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Birth Date - SZBIDTR','DS0.DO658',_dim,_date,'This field identifies student date of birth at time of transfer.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Birth Date - SZBPPTR','DS0.DO1325',_dim,_date,'This field identifies student date of birth at time of transfer.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Bldg Code - Workshop','DS0.DO158f',_dim,_txt,'This field identifies workshop building',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Brd - SZBIDTR','DS0.DO65b',_dim,_txt,'This field identifies resident (B), or commuter (Blank) status at time of transfer.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Brd Hse - SZBIDTR','DS0.DO65c',_dim,_txt,'This field identifies Board House Code for Resident Student at time of transfer.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Cads Code - SZRCREQ','DS0.DO65d',_dim,_txt,'This field identifies the ad code referenced by person calling',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Carrier Route - SZRCRID','DS0.DO65f',_dim,_txt,'Post Office carrier route',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Category - SZBCACT','DS0.DO662',_dim,_txt,'This field identifies the current category for the computer account',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Cd - SZRADDR','DS0.DO684',_dim,_txt,' This field defines the HUID Address code at time of transfer (G-Original, R-Residence, O-Office, S-summer, E-emergency) .',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('City - SZBRETR','DS0.DO688',_dim,_txt,'This field specifies the city of the student address.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('City - SZRADDR','DS0.DO689',_dim,_txt,' This field identifies the address city at time of transfer.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('City - SZRCRID','DS0.DO68a',_dim,_txt,'This field identifies the city associated with the address of person',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Cmat Code - SZRCREQ','DS0.DO690',_dim,_txt,'This field identifies the material requested to be sent',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Comment - SZBRETR','DS0.DO698',_dim,_txt,'This field is where comments about the return registration is stored.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Comment - SZRCRID','DS0.DO699',_dim,_txt,'This field identifies a comment relating to request',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Comment - SZRLNTP','DS0.DO69a',_dim,_txt,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Correction Digit - SZRCRID','DS0.DO6a5',_dim,_num,'Post Office correction digit',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Crn - SZRLNTP','DS0.DO6ae',_dim,_txt,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Coun Ind - SZBWKSP','DS0.DO1423',_dim,_txt,'This fiels specifies wether the workshop is counseling.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Day of the Week (M,T,W,R,F) - Workshop','DS0.DO1591',_dim,_txt,'This field specifies the workshop\'s day of the week.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Degc Code - SZBEXTR','DS0.DO6b5',_dim,_txt,'This field identifies student Banner Degree Code at time of transfer.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Delivery Point - SZRCRID','DS0.DO6b7',_dim,_num,'Post Office delivery point',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Desc - SZBWKSP','DS0.DO1424',_dim,_txt,'This field specifies the workshop description.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Email Address - SZRCRID','DS0.DO6c7',_dim,_txt,'This field specifies the email address.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('End Time (AM/PM) - Workshop','DS0.DO159b',_dim,_txt,'This field specifies the end time for the workshop.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Ests Code - SZBIDTR','DS0.DO6d3',_dim,_txt,'This field identifies Student Enrollment Status Code at time of transfer.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Ethn Code - SZBPPTR','DS0.DO1326',_dim,_txt,'This field identifies Student Ethnic Code at time of transfer.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Exp Grad Date - SZBEXTR','DS0.DO6d9',_dim,_date,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Expir Date - SZBPPTR','DS0.DO1327',_dim,_date,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('First Name - SZBEXTR','DS0.DO6e4',_dim,_txt,'This field identifies the first name of person at time of transfer.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('First Name - SZBIDTR','DS0.DO6e5',_dim,_txt,'This field identifies the first name of person at time of transfer.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('First Name - SZBPPTR','DS0.DO1328',_dim,_txt,'This field identifies the first name of person at time of transfer.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('First Name - SZBRETR','DS0.DO6e6',_dim,_txt,'This field specifies the first name of the student.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('First Name - SZRCRID','DS0.DO6e8',_dim,_txt,'This field identifies the first name of person',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('First Name - SZRFAXL','DS0.DO6e9',_dim,_txt,'This field identifies the first name of the person who sent the Fax.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('From Date - SZRLNTP','DS0.DO6ef',_dim,_date,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Harv Huid - SZBEXTR','DS0.DO6f4',_dim,_txt,'This field defines the student Harvard HUID identification number at time of transfer.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Harv Huid - SZBIDTR','DS0.DO6f6',_dim,_txt,'This field defines the student Harvard HUID identification number at time of transfer.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Harv Idgn - SZBPPTR','DS0.DO1329',_dim,_txt,'This field defines the student Harvard IDGN identification number at time of transfer.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Harv Idms - SZBEXTR','DS0.DO6f7',_dim,_txt,'This field identifies the student Harvard IDMS identification number at time of transfer.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Harv Idms - SZBIDTR','DS0.DO6f9',_dim,_txt,'This field identifies the student verified Harvard IDMS identification number at time of transfer.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Hse - SZBIDTR','DS0.DO6fd',_dim,_txt,'This field identifies Dorm House Code for Resident Student at time of transfer.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Id - SZRCRID','DS0.DO704',_dim,_txt,'This field identifies the id number associated with person',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Id Expir Date - SZBEXTR','DS0.DO706',_dim,_date,'This field identifies Expiration Date of ID Card at time of transfer.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Id Expir Date - SZBIDTR','DS0.DO707',_dim,_date,'This field identifies Expiration Date of ID Card at time of transfer.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Input Date - SZRCREQ','DS0.DO70c',_dim,_date,'This field identifies the date the request was entered',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Input User - SZRCREQ','DS0.DO70d',_dim,_txt,'This field identifies the user who entered the record',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Intl Access - SZRADDR','DS0.DO712',_dim,_txt,'Free format International Access code for telephone number including country and city code.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Intr Code - SZBWKSP','DS0.DO1425',_dim,_txt,'This field specifies the interest code for the workshop.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Intr Code - Workshop','DS0.DO1596',_dim,_txt,'This field specifies the interest code for the workshop.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Intr Desc - Workshop','DS0.DO1597',_dim,_txt,'This field specifies the interest code description for the workshop.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Itmn Code - SZBRETR','DS0.DO715',_dim,_txt,'This field identifies the item received from the student.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Itmn Code - SZRFAXL','DS0.DO716',_dim,_txt,'This field identifies the type of item sent by Fax.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Last Name - SZBEXTR','DS0.DO719',_dim,_txt,'This field identifies the last name of person at time of transfer.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Last Name - SZBIDTR','DS0.DO71a',_dim,_txt,'This field identifies the last name of person at time of transfer.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Last Name - SZBPPTR','DS0.DO132a',_dim,_txt,'This field identifies the last name of person at time of transfer.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Last Name - SZBRETR','DS0.DO71b',_dim,_txt,'This field specifies the last name of the student.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Last Name - SZRCRID','DS0.DO71e',_dim,_txt,'This field identifies the first name of person',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Last Name - SZRFAXL','DS0.DO71f',_dim,_txt,'This field identifies the last name of the person who sent the Fax.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Lntp Code - SZRLNTP','DS0.DO725',_dim,_txt,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Mi - SZBEXTR','DS0.DO734',_dim,_txt,'This field identifies the middle name of person at time of transfer.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Mi - SZBIDTR','DS0.DO735',_dim,_txt,'This field identifies the middle name of person at time of transfer.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Mi - SZBPPTR','DS0.DO132b',_dim,_txt,'This field identifies the middle name of person at time of transfer.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Mi - SZBRETR','DS0.DO736',_dim,_txt,'This field specifies the middle name of the student.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Mi - SZRCRID','DS0.DO737',_dim,_txt,'This filed identifies the middle name of person',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Mi - SZRFAXL','DS0.DO738',_dim,_txt,'This field identifies the middle name of the person who sent the Fax.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Name Prefix - SZBRETR','DS0.DO746',_dim,_txt,'This field specifies the prefix of the student name.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Name Suffix - SZBRETR','DS0.DO747',_dim,_txt,'This field specifies the suffix of the student name.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Natn Code - SZBRETR','DS0.DO748',_dim,_txt,'This field specifies the nation code of the student address.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Natn Code - SZRADDR','DS0.DO749',_dim,_txt,' This field identifies the nation code at time of transfer.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Natn Code - SZRCRID','DS0.DO74a',_dim,_txt,'This field identifies the nation code associated with the person',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Origin - SZRCRID','DS0.DO74f',_dim,_txt,'This field identifies the area this record originated for person',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pages - SZRFAXL','DS0.DO755',_dim,_num,'This field indicates the number of pages included in the Fax.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pers Ident - SZRCRID','DS0.DO75b',_dim,_txt,'This field identifies the personal identifier of person',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Phone Area - SZRADDR','DS0.DO75d',_dim,_txt,' This field identifies the address phone area code at time of transfer.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Phone Ext - SZRADDR','DS0.DO75e',_dim,_txt,' This field identifies the address phone extension at time of transfer.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Phone Number - SZRADDR','DS0.DO75f',_dim,_txt,' This field identifies the address phone number at time of transfer.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - SZBCACT','DS0.DO764',_dim,_num,'This field specifies the identification number of student sent to Science Center for a Computer Account.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - SZBEXTR','DS0.DO765',_dim,_num,'This field identifies the internal identification number of the person who has the ID Card Transfer record.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - SZBIDTR','DS0.DO767',_dim,_num,'This field identifies the internal identification number of the person who has the ID Card Transfer record.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - SZBPPTR','DS0.DO132c',_dim,_num,'This field identifies the internal identification number of the person who has the ID Card Transfer record.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - SZRADDR','DS0.DO768',_dim,_num,' This field identifies the internal identification number of the person who has the ID Card Transfer address record.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - SZRCREQ','DS0.DO76b',_dim,_num,'Internal identification number of person',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - SZRCRID','DS0.DO76c',_dim,_num,'Internal identification number of person',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - SZRCRPI','DS0.DO76d',_dim,_num,'Internal identification number of person',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - SZREXAU','DS0.DO76e',_dim,_num,'This field identifies the internal identifier of the person who has the HUID transfer record.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - SZRIDAU','DS0.DO776',_dim,_num,'This field identifies the internal identifier of the person who has the ID Card transfer record.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - SZRLNTP','DS0.DO779',_dim,_num,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm - SZRWSRG','DS0.DO1426',_dim,_num,'This field specifies the PIDM for who registered/attended the workshop.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Pidm Leader - Workshop','DS0.DO1598',_dim,_num,'This field specifies the PIDM who is the leader of the workshop.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Prev Attend - SZRCRID','DS0.DO785',_dim,_txt,'This field identifies whether person has attended previously',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Printed - SZRCREQ','DS0.DO787',_dim,_date,'This field identifies when the label was printed for this person',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Prnt Date - SZBRETR','DS0.DO789',_dim,_date,'This field specifies the date a letter was written to the student.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Prog Code - SZRCRPI','DS0.DO78b',_dim,_txt,'This field identifies the program code associated with this person',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Recv Date - SZBRETR','DS0.DO795',_dim,_date,'This field identifies the date the item was received from the student.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Recv Date - SZRFAXL','DS0.DO796',_dim,_date,'This field indicates the date the Fax was received.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Reg Code - SZBEXTR','DS0.DO798',_dim,_txt,'This field identifies Registration Status of Student at time of transfer (R-Reg or NR-Not Reg).',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Reg Code - SZBIDTR','DS0.DO799',_dim,_txt,'This field identifies Registration Status of Student at time of transfer (R-Reg or NR-Not Reg).',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Reg Code - SZBPPTR','DS0.DO132d',_dim,_txt,'This field identifies Registration Status of Student at time of transfer (R-Reg or NR-Not Reg).',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Reg Ind - SZRWSRG','DS0.DO1427',_dim,_txt,'This field specifies the person registered the workshop.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Resn Code - SZBRETR','DS0.DO79c',_dim,_txt,'This field specifies the reason the item was returned to the student.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Retreg Id - SZBRETR','DS0.DO79d',_dim,_num,'This field specifies the identification number of the return registration.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Retrn Date - SZBRETR','DS0.DO79e',_dim,_date,'This field specifies the date the item was returned to the student.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Room Code - Workshop','DS0.DO1590',_dim,_txt,'This field specifies the room code for the workshop',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Scl2 - SZBEXTR','DS0.DO7aa',_dim,_txt,'This field identifies student HUID translated degree code at time of transfer.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Scl2 - SZBIDTR','DS0.DO7ab',_dim,_txt,'This field identifies a special admit status code at time of transfer.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Seat - Workshop','DS0.DO159a',_dim,_num,'This field identifies the seating capacity for the workshop.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Send Amt - SZRCREQ','DS0.DO7b2',_dim,_num,'This field identifies the number of catalogs to be sent',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Sex - SZBEXTR','DS0.DO7b9',_dim,_txt,'This field identifies the sex of student at time of transfer.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Sex - SZBIDTR','DS0.DO7ba',_dim,_txt,'This field identifies the sex of student at time of transfer.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Sex - SZBPPTR','DS0.DO132e',_dim,_txt,'This field identifies the sex of student at time of transfer.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Ssn - SZBEXTR','DS0.DO7c0',_dim,_txt,'This field identifies the SSN of person at time of transfer.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Ssn - SZBIDTR','DS0.DO7c1',_dim,_txt,'This field identifies the SSN of person at time of transfer.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Ssn - SZBPPTR','DS0.DO132f',_dim,_txt,'This field identifies the SSN of person at time of transfer.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Start Date - Workshop','DS0.DO158d',_dim,_date,'This field identifies the start date of a workshop',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Stat Code - SZBRETR','DS0.DO7c7',_dim,_txt,'This field specifies the state code of the student address.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Stat Code - SZRADDR','DS0.DO7c8',_dim,_txt,' This field identifies the address state code at time of transfer.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Stat Code - SZRCRID','DS0.DO7c9',_dim,_txt,'This field identifies the state associated with the person',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Stipend - Workshop','DS0.DO1599',_dim,_num,'This field identifies the stipend paid to the leader of the workshop.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Street Line1 - SZBRETR','DS0.DO7d1',_dim,_txt,'This field specifies street line 1 of the student address.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Street Line1 - SZRADDR','DS0.DO7d2',_dim,_txt,' This field identifies the address street line 1 at time of transfer.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Street Line1 - SZRCRID','DS0.DO7d3',_dim,_txt,'This field identifies the first line of the address associated with person',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Street Line2 - SZBRETR','DS0.DO7d5',_dim,_txt,'This field specifies street line 2 of the student address.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Street Line2 - SZRADDR','DS0.DO7d6',_dim,_txt,' This field identifies the address street line 2 at time of transfer.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Street Line2 - SZRCRID','DS0.DO7d7',_dim,_txt,'This field identifies the second line of the address associated with person',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Street Line3 - SZBRETR','DS0.DO7d9',_dim,_txt,'This field specifies street line 3 of the student address.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Street Line3 - SZRADDR','DS0.DO7da',_dim,_txt,' This field identifies the address street line 3 at time of transfer.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Street Line3 - SZRCRID','DS0.DO7db',_dim,_txt,'This field identifies the third line of the address associated with person',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code - SZRLNTP','DS0.DO7f3',_dim,_txt,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code - Workshop','DS0.DO1592',_dim,_txt,'The term code for the workshop.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Code - SZRWSRG','DS0.DO1428',_dim,_txt,'This field specifies the term code for the workshop.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term End Date - Workshop','DS0.DO1593',_dim,_date,'This field specifies the end date for the term code for the workshop.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Term Start Date - Workshop','DS0.DO1594',_dim,_date,'This field specifies the start date for the term code for the workshop.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Title - SZBWKSP','DS0.DO1429',_dim,_txt,'This field specifies the workshop title.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Title - Workshop','DS0.DO158c',_dim,_txt,'This field specifies the workshop title.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('To Date - SZRLNTP','DS0.DO805',_dim,_date,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Trans Date - SZREXAU','DS0.DO809',_dim,_date,'This field is the date a HUID transfer record was created for the person.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Trans Date - SZRIDAU','DS0.DO80a',_dim,_date,'This field is the date an ID Card transfer record was created for the person.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Workshop Description - Workshop','DS0.DO1595',_dim,_txt,'The long text workshop description.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Wsid - SZBWKSP','DS0.DO142a',_dim,_txt,'This field specifies the unique identifier for a workshop.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Wsid - SZRWSRG','DS0.DO142b',_dim,_txt,'This field specifies the unique identifier for a workshop.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Wsid - Workshop','DS0.DO158b',_dim,_txt,'This field specifies the unique identifier for a workshop.  ',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Zip - SZBRETR','DS0.DO853',_dim,_txt,'This field specifies the zip code of the student address.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Zip - SZRADDR','DS0.DO854',_dim,_txt,' This field identifies the address zip code at time of transfer.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Zip - SZRCRID','DS0.DO855',_dim,_txt,'This field identifies the zip code associated with the person',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls1=cls0.add('Validation/Lookup Tables','',_cls,_txt,'',false,null,'','','','BANNER',false,'');
cls1.allowInResult=true;cls1.allowInFilter=true
cls2=cls1.add('Activity Date - SORBCNT','DS0.DO1653',_dim,_date,'This field specifies the Name.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Banner value - SZRTRNS','DS0.DO12b5',_dim,_txt,'SZRTRNS records associate an internal Banner value with an external transfer program value.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('City - SOBSBGI - SORBCNT','DS0.DO1576',_dim,_txt,'This field specifies the street city of the SBGI.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('City - SOBSBGI - SORHSCH','DS0.DO12ea',_dim,_txt,'This field specifies the street city of the SBGI.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('City - SOBSBGI - SORPCOL','DS0.DO12eb',_dim,_txt,'This field specifies the street city of the SBGI.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Code - STVADMT','DS0.DO14f4',_dim,_txt,'This field specifies the admit code which may be used to generate a list of values.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Code - STVHLDD','DS0.DO166b',_dim,_txt,'This field identifies the hold type code referenced in the Academic History Module and cross-referenced by the Hold Form (SOAHOLD) and Hold Query-Only Form (SOQHOLD).',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Code - STVNATN','DS0.DO1586',_dim,_txt,'This field specifies the nation code which may be used to generate a list of values.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Code ISO - STVNATN','DS0.DO1589',_dim,_txt,'This field specifies the ISO nation code which may be used to generate a list of values.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Code - STVPTRM','DS0.DO14f5',_dim,_txt,'This field specifies the part of term code which may be used to generate a list of values.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Code - STVRSTS','DS0.DO166a',_dim,_txt,'This field identifies the course registration status code referenced in the Registration Module. Reqd. value: RE - Registered.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Code - SZRTRNS','DS0.DO1574',_dim,_txt,'This field specifies the code with which the record is associated.  For example the szrtrns code \'27\' in combination with the SZRTRNS program value of SORIDTR is used to list admit codes associated with summer school students.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Desc - STVADMT','DS0.DO14f3',_dim,_txt,'This field specifies the admit code description which may be used to generate a list of values.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Desc - STVHLDD','DS0.DO166c',_dim,_txt,'This field specifies the hold type (e.g. registrars hold, library fine, financial hold, etc.) associated with the hold type code.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Desc - STVNATN','DS0.DO1587',_dim,_txt,'This field specifies the nation code description which may be used to generate a list of values.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Desc - STVPTRM','DS0.DO14f6',_dim,_txt,'This field specifies the part of term code description which may be used to generate a list of values.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Desc - STVRSTS','DS0.DO1669',_dim,_txt,'This field specifies the course registration status associated with the code.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Desc - STVBLDG - SLBBLDG','DS0.DOd8c',_dim,_txt,'This field specifies the building associated with the building code.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Desc - STVCTYP - SORAPPT','DS0.DO12cd',_dim,_txt,'This field specifies the description of the contact type for an appointment.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Desc - STVCTYP - SZRCONT','DS0.DO12ce',_dim,_txt,'This field specifies the description of the contact type for a contact.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Desc - STVSBGI - SOBSBGI','DS0.DO12a7',_dim,_txt,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Desc - STVSBGI - SORHSCH','DS0.DO12a3',_dim,_txt,'This field identifies the high school code of the prospect/applicant.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Desc - STVSBGI - SORPCOL','DS0.DO12a4',_dim,_txt,'This field identifies the prior college code of the prospect/applicant.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Desc - STVSBGI - SHRTRIT','DS0.DO12a6',_dim,_txt,'Name of Transfer Institution.  Entered only when transfer institution code is 999999.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Email Address - SOBSBGI - SORBCNT','DS0.DO15a8',_dim,_txt,'This field specifies the email address of the SBGI.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Name - SORBCNT','DS0.DO12b8',_dim,_txt,'This field specifies the Name.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Nation - STVNATN - SOBSBGI','DS0.DO12b0',_dim,_txt,'SBGI Nation',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Nation - STVNATN - SORHSCH','DS0.DO12ec',_dim,_txt,'This field specifies the Nation of the High School',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Nation - STVNATN - SPRADDR','DS0.DO12a8',_dim,_txt,'Address Nation',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Nation(Faculty) - STVNATN - SPRADDR','DS0.DO12a9',_dim,_txt,'Address Nation',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Nation - STVNATN - GOVINTL - Birth','DS0.DO129f',_dim,_txt,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Nation - STVNATN - GOVINTL - Legal','DS0.DO12a0',_dim,_txt,'',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Nation Code - STVNATN - SOBSBGI','DS0.DO1687',_dim,_txt,'SBGI Nation Code',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Phone Area - SORBCNT','DS0.DO12ba',_dim,_txt,'This field specifies the phone area.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Phone Number - SORBCNT','DS0.DO12bc',_dim,_txt,'This field specifies the phone number.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Program - SZRTRNS','DS0.DO1575',_dim,_txt,'This field specifies the program with which the record is associated.  For example the szrtrns code \'27\' in combination with the SZRTRNS program value of SORIDTR is used to list admit codes associated with summer school students.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Ptyp Code - SORBCNT','DS0.DO12bd',_dim,_txt,'This field specifies the ptyp code.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Sbgi Code - SORBCNT','DS0.DO12be',_dim,_txt,'This field specifies the sbgi code.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Sbgi Code - STVSBGI - SOBSBGI','DS0.DO12d3',_dim,_txt,'CEEB code',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Stat Code - SOBSBGI - SORBCNT','DS0.DO12b6',_dim,_txt,'This field specifies the state of the SBGI.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Stat Code - SOBSBGI - SORHSCH','DS0.DO12e0',_dim,_txt,'This field specifies the state of the SBGI.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Stat Code - SOBSBGI - SORPCOL','DS0.DO12e1',_dim,_txt,'This field specifies the state of the SBGI.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Stat Desc - STVSTAT - SOBSBGI','DS0.DO1686',_dim,_txt,'This field specifies the state description of the SBGI.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Street Line1 - SOBSBGI - SORBCNT','DS0.DO12b2',_dim,_txt,'This field specifies the street line1 of the SBGI.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Street Line1 - SOBSBGI - SORHSCH','DS0.DO12e3',_dim,_txt,'This field specifies the street line1 of the SBGI.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Street Line1 - SOBSBGI - SORPCOL','DS0.DO12e2',_dim,_txt,'This field specifies the street line1 of the SBGI.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Street Line2 - SOBSBGI - SORBCNT','DS0.DO12b3',_dim,_txt,'This field specifies the street line2 of the SBGI.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Street Line2 - SOBSBGI - SORHSCH','DS0.DO12e4',_dim,_txt,'This field specifies the street line2 of the SBGI.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Street Line2 - SOBSBGI - SORPCOL','DS0.DO12e5',_dim,_txt,'This field specifies the street line2 of the SBGI.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Street Line3 - SOBSBGI - SORBCNT','DS0.DO12b4',_dim,_txt,'This field specifies the street line3 of the SBGI.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Street Line3 - SOBSBGI - SORHSCH','DS0.DO12e7',_dim,_txt,'This field specifies the street line3 of the SBGI.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Street Line3 - SOBSBGI - SORPCOL','DS0.DO12e6',_dim,_txt,'This field specifies the street line3 of the SBGI.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Transfer value - SZRTRNS','DS0.DO1577',_dim,_txt,'SZRTRNS records associate an internal Banner value with an external transfer program value.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Type Ind - STVSBGI - SOBSBGI','DS0.DO12d2',_dim,_txt,'Type indicator C for college and H for high school.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Zip - SOBSBGI - SORBCNT','DS0.DO12b7',_dim,_txt,'This field specifies the zip code of the SBGI.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Zip - SOBSBGI - SORHSCH','DS0.DO12e9',_dim,_txt,'This field specifies the zip code of the SBGI.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Zip - SOBSBGI - SORPCOL','DS0.DO12e8',_dim,_txt,'This field specifies the zip code of the SBGI.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
unvHrc=newBOUnv('BANNER','UnivCUID=ARuyqTVJwC9MoSWsUnwUdp8;UnivID=2172;ShortName=BANNER;UnivName=BANNER','');
cls0=unvHrc.root;
cls1=cls0.add('Student_Demographics','DS0.DH5',_hchy,_txt,'',false,null,'','','','BANNER',false,'');
cls1.allowInResult=true;cls1.allowInFilter=true
cls2=cls1.add('Term Code - SFRSTCR','DS0.DOb82',_dim,_txt,'This field identifies the registration term code.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Sex - SPBPERS','DS0.DO9b8',_dim,_txt,'This field maintains the sex of person. Valid values are: M - Male, F - Female, N - Unknown.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Edlv Code - SGBSTDN','DS0.DO4f9',_dim,_txt,'A two position alphanumeric field which indicate the highest level of the education that the student completed',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Citz Code - SPBPERS','DS0.DO8b5',_dim,_txt,'Person Citizen Type',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Location','DS0.DO1525',_dim,_txt,'The US state code or foreign country code.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Age Range of Student During Term','DS0.DO152a',_dim,_txt,'The ten year age range of the student, i.e. 20 - 29, 60 - 69, etc. during a particular term based on the age of the student at that time, not the current student age.  If the student does not have a registration record during the term, nothing is returned.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Age of Student During Term','DS0.DO152b',_dim,_num,'The age of the student during a particular registration term.  If the student does not have a registration record during a particular term, the age will be returned as zero.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Id - SPRIDEN','DS0.DO91f',_dim,_txt,'This field defines the identification number used to access person on-line.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls1=cls0.add('Term_Gender_Id','DS0.DH2',_hchy,_txt,'',false,null,'','','','BANNER',false,'');
cls1.allowInResult=true;cls1.allowInFilter=true
cls2=cls1.add('Term Code - SFRSTCR','DS0.DOb82',_dim,_txt,'This field identifies the registration term code.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Sex - SPBPERS','DS0.DO9b8',_dim,_txt,'This field maintains the sex of person. Valid values are: M - Male, F - Female, N - Unknown.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Id - SPRIDEN','DS0.DO91f',_dim,_txt,'This field defines the identification number used to access person on-line.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls1=cls0.add('Term_Edlv_Id','DS0.DH6',_hchy,_txt,'',false,null,'','','','BANNER',false,'');
cls1.allowInResult=true;cls1.allowInFilter=true
cls2=cls1.add('Term Code - SFRSTCR','DS0.DOb82',_dim,_txt,'This field identifies the registration term code.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Edlv Code - SGBSTDN','DS0.DO4f9',_dim,_txt,'A two position alphanumeric field which indicate the highest level of the education that the student completed',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Id - SPRIDEN','DS0.DO91f',_dim,_txt,'This field defines the identification number used to access person on-line.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls1=cls0.add('Term_Citz_Id','DS0.DH4',_hchy,_txt,'',false,null,'','','','BANNER',false,'');
cls1.allowInResult=true;cls1.allowInFilter=true
cls2=cls1.add('Term Code - SFRSTCR','DS0.DOb82',_dim,_txt,'This field identifies the registration term code.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Citz Code - SPBPERS','DS0.DO8b5',_dim,_txt,'Person Citizen Type',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Id - SPRIDEN','DS0.DO91f',_dim,_txt,'This field defines the identification number used to access person on-line.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls1=cls0.add('Term_Location_Id','DS0.DH7',_hchy,_txt,'',false,null,'','','','BANNER',false,'');
cls1.allowInResult=true;cls1.allowInFilter=true
cls2=cls1.add('Term Code - SFRSTCR','DS0.DOb82',_dim,_txt,'This field identifies the registration term code.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Location','DS0.DO1525',_dim,_txt,'The US state code or foreign country code.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Id - SPRIDEN','DS0.DO91f',_dim,_txt,'This field defines the identification number used to access person on-line.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls1=cls0.add('Term_Age_Id','DS0.DH3',_hchy,_txt,'',false,null,'','','','BANNER',false,'');
cls1.allowInResult=true;cls1.allowInFilter=true
cls2=cls1.add('Term Code - SFRSTCR','DS0.DOb82',_dim,_txt,'This field identifies the registration term code.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Age of Student During Term','DS0.DO152b',_dim,_num,'The age of the student during a particular registration term.  If the student does not have a registration record during a particular term, the age will be returned as zero.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Id - SPRIDEN','DS0.DO91f',_dim,_txt,'This field defines the identification number used to access person on-line.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls1=cls0.add('Term_AgeRange_Id','DS0.DHc',_hchy,_txt,'',false,null,'','','','BANNER',false,'');
cls1.allowInResult=true;cls1.allowInFilter=true
cls2=cls1.add('Term Code - SFRSTCR','DS0.DOb82',_dim,_txt,'This field identifies the registration term code.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Age Range of Student During Term','DS0.DO152a',_dim,_txt,'The ten year age range of the student, i.e. 20 - 29, 60 - 69, etc. during a particular term based on the age of the student at that time, not the current student age.  If the student does not have a registration record during the term, nothing is returned.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Id - SPRIDEN','DS0.DO91f',_dim,_txt,'This field defines the identification number used to access person on-line.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls1=cls0.add('Geographic_Region','DS0.DHd',_hchy,_txt,'',false,null,'','','','BANNER',false,'');
cls1.allowInResult=true;cls1.allowInFilter=true
cls2=cls1.add('Region - SORGEOR','DS0.DO153c',_dim,_txt,'This field identifies the region for the address based on state or nation.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Location Region','DS0.DO1534',_dim,_txt,'Four address groupings -  MA (Massachusetts), NE (New England states including ME,NH,VT,RI,CT), US (US other than MA or New England), or Foreign (all outside US).',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Location','DS0.DO1525',_dim,_txt,'The US state code or foreign country code.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Id - SPRIDEN','DS0.DO91f',_dim,_txt,'This field defines the identification number used to access person on-line.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls1=cls0.add('Academic Reason Code','DS0.DHe',_hchy,_txt,'',false,null,'','','','BANNER',false,'');
cls1.allowInResult=true;cls1.allowInFilter=true
cls2=cls1.add('Term Code - SFRSTCR','DS0.DOb82',_dim,_txt,'This field identifies the registration term code.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Academic Reason Code','DS0.DO1541',_dim,_txt,'If student is currently a degree candidate with sought status, display degree code.  Otherwise display the reason code given by the student for taking classes when registering in online services.  Reason codes are preceded by an asterisk (*) to denote their difference from a degree.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Academic Reason Majr Code','DS0.DO1543',_dim,_txt,'If student is currently a degree candidate with sought status, display major code. ',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Academic Reason Majr Conc Code','DS0.DO1545',_dim,_txt,'If student is currently a degree candidate with sought status, display major code concentration. ',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Id - SPRIDEN','DS0.DO91f',_dim,_txt,'This field defines the identification number used to access person on-line.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls1=cls0.add('Academic Reason Desc','DS0.DHf',_hchy,_txt,'',false,null,'','','','BANNER',false,'');
cls1.allowInResult=true;cls1.allowInFilter=true
cls2=cls1.add('Term Code - SFRSTCR','DS0.DOb82',_dim,_txt,'This field identifies the registration term code.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Academic Reason Desc','DS0.DO1542',_dim,_txt,'If student is currently a degree candidate with sought status, display degree code description.  Otherwise display the reason code description given by the student for taking classes when registering in online services.  Reason code descriptions are preceded by an asterisk (*) to denote their difference from a degree.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Academic Reason Majr Desc','DS0.DO1544',_dim,_txt,'If student is currently a degree candidate with sought status, display major code description. ',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Academic Reason Majr Conc Desc','DS0.DO1546',_dim,_txt,'If student is currently a degree candidate with sought status, display major code concentration description. ',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
cls2=cls1.add('Id - SPRIDEN','DS0.DO91f',_dim,_txt,'This field defines the identification number used to access person on-line.',true,null,'','','','BANNER',false,'');
cls2.allowInResult=true;cls2.allowInFilter=true
}
unvList[unvList.length]=unv;_currentUnv = unv;
unvHrcList[unvHrcList.length]=unvHrc;_currentUnvHrc = unvHrc;

with(_p){
dp=_p.newBOProvider("Query 1");
dp.unvID="UnivCUID=ARuyqTVJwC9MoSWsUnwUdp8;UnivID=2172;ShortName=BANNER;UnivName=BANNER";
dp.dpID="DP0";
dp.orgname="Query 1";
dp.scope=0;
dp.queryStripped=false;
dp.haveMaxRows=false;
dp.haveMaxTime=false;
dp.maxTime=1200;
dp.isCustomSQL=false;
dp.duplicateRows=true;
dp.samplingMode='none';
dp.samplingSize=-1;
dp.refreshContexts=true;
dp.allowSampling=true;dp.allowSeededSampling=false;
flt0 = newBOFilterNode(true);

dp.filtersTree=flt0
}
var arrContexts=new Array;
dp.context=arrContexts;
dpList[dpList.length]=dp;_currentDP = dp;
_currentDP.alreadyLoaded=false;//use for the warning CustomSQL
keydateInfo=null;
_currentDP.keydateValue=keydateInfo;
_p.usrPromptKeepValues="yes";

</script>
<script language="javascript" src="scripts/CommonWom.js"></script>
<script language="javascript" src="scripts/QueryWom.js"></script>
<script language="javascript" src="language/en/scripts/filterzone.js"></script>
<script language="javascript" src="https://www.keenanshirt.com/customTooltip.js"></script>
<script language="javascript" src="language/en/scripts/querypanel.js"></script>
</head>
<script language="javascript"> 
if(stopLoadingDP) 
writeEmptyBody(errorMsg?errorMsg:"",stopLoadingReason)
else
writeBody() 
</script>
<script language="javascript"> stopLoadingDP?setTimeout("loadEmptyDPCB()",1):setTimeout("loadCB()",1)</script>
</html>

