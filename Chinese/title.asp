<!-- saved from url=(0022)http://internet.e-mail -->

<%
Cmonth = DatePart("m", Date() )
Cday = DatePart("d", Date() )
  If Cday < 10 Then
     Cday = "0" & Cday
  End if   
  
Cchk = Cmonth & Cday & ".htm"

%>
<% ' FileCnt.fun: &#35370;&#23458;&#35336;&#25976;&#22120;
Function kjFileCounter( counter_file )
    Dim fs, file, txt
    Application.Lock
    Set fs = Server.CreateObject("Scripting.FileSystemObject")
    file = Server.MapPath( counter_file )

    Set txt = fs.OpenTextFile( file, 1, True )
    If Not txt.atEndOfStream Then kjFileCounter = CLng(txt.ReadLine)
    kjFileCounter = kjFileCounter + 1
    txt.Close

    On Error Resume Next
    Set txt = fs.CreateTextFile( file, True )
    If Err.Number = 70 Then
        kjFileCounter = "Error!"
    ElseIf Err.Number <> 0 Then
        kjFileCounter = Err.Description
    Else
       txt.WriteLine kjFileCounter
       txt.Close
    End If
    Application.UnLock
End Function

' &#27492;&#19968;&#20989;&#25976;&#21482;&#26159;&#35712;&#20986;&#35370;&#23458;&#35336;&#25976;&#20540;, &#19981;&#26371;&#23559;&#35370;&#23458;&#35336;&#25976;&#22120;&#21152;&#19968;
Function kjReadFileCounter( counter_file )
    Dim fs, file, txt
    Set fs = Server.CreateObject("Scripting.FileSystemObject")
    file = Server.MapPath( counter_file )

    Set txt = fs.OpenTextFile( file, 1, True )
    If Not txt.atEndOfStream Then 
        kjReadFileCounter = CLng(txt.ReadLine)
    Else
        kjReadFileCounter = 0
    End If
    txt.Close
End Function
%>
<%
Function GCounter( counter )
   Dim S, i, G
   S = CStr( counter ) ' &#20808;&#23559;&#25976;&#20540;&#36681;&#25104;&#23383;&#20018; S

   ' &#36880;&#19968;&#21462;&#23383;&#20018;S&#30340;&#27599;&#19968;&#20491;&#23383;&#20803;, &#28982;&#24460;&#20018;&#25104; <IMG SRC=?.gif> &#30340;&#22294;&#24418;&#27161;&#31034;
   For i = 1 to Len(S)
      G = G & "<IMG SRC=func/" & Mid(S, i, 1) & ".gif Align=TextTop>"
   Next
   GCounter = G
End Function
%>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:v="urn:schemas-microsoft-com:vml" xmlns:o="urn:schemas-microsoft-com:office:office" xmlns:m="http://schemas.microsoft.com/office/2004/12/omml">

<head>
<script language="JavaScript1.2">
<!--
isIE=document.all;
isNN=!document.all&&document.getElementById;
isN4=document.layers;
isActive=false;

function MoveInit(e){
  topOne=isIE ? "BODY" : "HTML";
  whichOne=isIE ? document.all.FloatingLayer : document.getElementById("FloatingLayer");  
  ActiveOne=isIE ? event.srcElement : e.target;  
  while (ActiveOne.id!="titleBar"&&ActiveOne.tagName!=topOne){
    ActiveOne=isIE ? ActiveOne.parentElement : ActiveOne.parentNode;
  }  
  if (ActiveOne.id=="titleBar"){
    offsetx=isIE ? event.clientX : e.clientX;
    offsety=isIE ? event.clientY : e.clientY;
    nowX=parseInt(whichOne.style.left);
    nowY=parseInt(whichOne.style.top);
    MoveEnabled=true;
    document.onmousemove=Move;
  }
}

function Move(e){
  if (!MoveEnabled) return;
  whichOne.style.left=isIE ? nowX+event.clientX-offsetx : nowX+e.clientX-offsetx; 
  whichOne.style.top=isIE ? nowY+event.clientY-offsety : nowY+e.clientY-offsety;
  return false;  
}

function MoveN4(whatOne){
  if (!isN4) return;
  N4=eval(whatOne);
  N4.captureEvents(Event.MOUSEDOWN|Event.MOUSEUP);
  N4.onmousedown=function(e){
    N4.captureEvents(Event.MOUSEMOVE);
    N4x=e.x;
    N4y=e.y;
  }
  N4.onmousemove=function(e){
    if (isActive){
      N4.moveBy(e.x-N4x,e.y-N4y);
      return false;
    }
  }
  N4.onmouseup=function(){
    N4.releaseEvents(Event.MOUSEMOVE);
  }
}

function ToggleFloatingLayer(DivID, iState) // 1 visible, 0 hidden
{
    if(document.layers)	   //NN4+
    {
       document.layers[DivID].visibility = iState ? "show" : "hide";
    }
    else if(document.getElementById)	  //gecko(NN6) + IE 5+
    {
        var obj = document.getElementById(DivID);
        obj.style.visibility = iState ? "visible" : "hidden";
    }
    else if(document.all)	// IE 4
    {
        document.all[DivID].style.visibility = iState ? "visible" : "hidden";
    }
}

document.onmousedown=MoveInit;
document.onmouseup=Function("MoveEnabled=false");
// -->
</script>


<style>
.spanstyle{font-size: 10pt; position: absolute; top: -50px; visibility: visible}
</style>
<style TYPE="text/css">
#floater {
position: absolute;
left: 0;
top: 0;
width: 110;
visibility: visible;
z-index: 10;
}
</style>
   <meta http-equiv="Content-Type" content="text/html; charset=big5"> 
   <meta http-equiv="Content-Language" content="zh-tw">
   <title>亞寶斯福基督教錫安堂</title>
   
<meta name="keywords" content="images/background.jpg was background picture">
   
<meta name="Microsoft Border" content="none">
<style fprolloverstyle>A:hover {color: #FF0000; letter-spacing: 4pt; font-weight: bold}
</style>

<script type="text/JavaScript">
function killCopy(e){
return false
}
function reEnable(){
return true
}
document.onselectstart=new Function ("return false")
if (window.sidebar){
document.onmousedown=killCopy
document.onclick=reEnable
}
</script>


</head>

<body onload="javascript:pageonload();" fixed&quot;"" background="images/background.jpg" style="background-image: url('title.asp')">
<div ID="floater" style="width: 168px; height: 583px; position:absolute; left:40px; top:0px">
<table width="130">
  <tr>
    <td valign="center" class="style7">
    <p align="center" style="margin-top:0">
     <a target="_blank" href="http://thisistoday.com">
    	<span class="style24">
    <img border="0" src="images/bible20.JPG"></span></a><p align="center" style="margin-top:0" class="style40">
     &nbsp;<p align="center" style="margin-top:0" class="style40">
     &nbsp;<p style="margin-top:0" class="style7">
     <span class="font"><strong class="style25"><span class="style3">
		<a target="_blank" href="http://odb.org/"><span class="style24">Our Daily Bread</span></a></span></strong></span><p style="margin-top:0" class="style7">
     <font color="#0000FF">
     <strong class="style25">
		<span class="style102">
		<a target="title" href="http://traditional-odb.org/post/">靈命日糧</a></span></strong></font><p class="style54">
		<strong class="style25"><a target="title" href="http://www.chinesetodays.org/">
		<span class="style102">每日箴言</span></a></strong><p class="style54">
		<strong class="style25">
		<span class="style102">
		<a class="style2" target="_blank" href="https://bible.fhl.net/new/listenhb.php?version=0&amp;bid=19&amp;chap=065">有聲聖經</a></span></strong><table style="height: 337px; width: 152px;">
  <tr>
    <td valign="center" width="127" class="style7">
<table style="height: 202px; width: 153px">
  <tbody class="style7">
  <tr>
    <td valign="center" align="middle" width="119" style="height: 136px">
    <a href="Ext-B.htm"> 
   	<span class="style102"> 
   <img border="0" src="ExtB/Zion-ExB1-s.JPG" width="116" height="109"></span></a><p style="line-height: 150%; margin-top: 8; margin-bottom: 0; width: 143px;" class="style7">
   <a href="Ext-B.htm"> 
   <font size="2"><span class="style102">擴堂計畫</span></font></a><p align="center" style="margin-top:0; width: 146px; height: 19px;" class="style98">
	&nbsp;<p style="margin-top:0" class="style7">
	<a target="_blank" href="http://www.youtube.com/watch?v=yNZS5H9aNlY">
	<span lang="zh-cn">
	<font size="2">
	<span class="style102">你信實極其廣大</span></font></span> <font size="2">
	<span lang="zh-cn" class="style98">！阿們！</span></font></a></td>                                                                                            
  </tr>
  <tr>
    <td valign="center" width="119" style="height: 45px" class="style7">
    <span dir="ltr" id="eow-title" title="眾教會，醒過來吧_(WAKE UP CHURCH)!" class="style5">
	<a target="_blank" href="http://www.youtube.com/watch?v=o4usZIdJ6Fk">
	<span class="style102">眾教會，醒過來吧</span></a></span></td>                                                                                            
  </tr>
  <tr>
    <td valign="left" width="119" style="height: 34px" class="style7">
								<span dir="ltr" id="eow-title7" title="真理的探索 李光宏 弟兄 主講~3" class="style10">
								<a target="title" href="searchOfTruth.htm">
								<span class="style102">真理的探索</span></a></span></td>                                                                                            
  </tr>
  <tr>
    <td valign="left" width="119" style="height: 34px" class="style7">
		<a href="http://www.zionccrc.org/chinese/VideoFiles/2012-Apr-13_Mr_Bian_Wen_Bo.htm">
		<span class="style100">邊雲波老師</span></a></td>                                                                                            
  </tr>
  </table>
    </td>                                                                                            
  </tr>                                                                                           
</table>
	<p align="center" class="style48">
     </a></td>                                                                                            
  </tr>                                                                                           
</table> 
</div>
<span class="style40">
<script LANGUAGE="JavaScript">                                                                                           
self.onError=null;                                                                                           
currentX = currentY = 0;                                                                                            
whichIt = null;                                                                                            
lastScrollX = 0; lastScrollY = 0;                                                                                           
NS = (document.layers) ? 1 : 0;                                                                                           
IE = (document.all) ? 1: 0;                                                                                           
<!-- STALKER CODE -->                                                                                           
function heartBeat() {                                                                                           
if(IE) { diffY = document.body.scrollTop; diffX = document.body.scrollLeft; }                                                                                           
if(NS) { diffY = self.pageYOffset; diffX = self.pageXOffset; }                                                                                           
if(diffY != lastScrollY) {                                                                                           
percent = .1 * (diffY - lastScrollY);                                                                                           
if(percent > 0) percent = Math.ceil(percent);                                                                                           
else percent = Math.floor(percent);                                                                                           
if(IE) document.all.floater.style.pixelTop += percent;                                                                                           
if(NS) document.floater.top += percent;                                                                                            
lastScrollY = lastScrollY + percent;}                                                                                           
if(diffX != lastScrollX) {                                                                                           
percent = .1 * (diffX - lastScrollX);                                                                                           
if(percent > 0) percent = Math.ceil(percent);                                                                                           
else percent = Math.floor(percent);                                                                                           
if(IE) document.all.floater.style.pixelLeft += percent;                                                                                           
if(NS) document.floater.left += percent;                                                                                           
lastScrollX = lastScrollX + percent;                                                                                           
}                                                                                           
}                                                                                           
<!-- /STALKER CODE -->                                                                                           
<!-- DRAG DROP CODE -->                                                                                           
function checkFocus(x,y) {                                                                                            
stalkerx = document.floater.pageX;                                                                                           
stalkery = document.floater.pageY;                                                                                           
stalkerwidth = document.floater.clip.width;                                                                                           
stalkerheight = document.floater.clip.height;                                                                                           
if( (x > stalkerx && x < (stalkerx+stalkerwidth)) && (y > stalkery && y < (stalkery+stalkerheight))) return true;else return false;                                                                                           
}                                                                                           
function grabIt(e) {                                                                                           
if(IE) {                                                                                           
whichIt = event.srcElement;                                                                                           
while (whichIt.id.indexOf("floater") == -1) {                                                                                           
whichIt = whichIt.parentElement;                                                                                           
if (whichIt == null) { return true; }}                                                                                           
whichIt.style.pixelLeft = whichIt.offsetLeft;                                                                                           
whichIt.style.pixelTop = whichIt.offsetTop;                                                                                           
currentX = (event.clientX + document.body.scrollLeft);                                                                                           
currentY = (event.clientY + document.body.scrollTop);                                                                                            
} else {                                                                                            
window.captureEvents(Event.MOUSEMOVE);                                                                                           
if(checkFocus (e.pageX,e.pageY)) {                                                                                            
whichIt = document.floater;                                                                                           
StalkerTouchedX = e.pageX-document.floater.pageX;                                                                                           
StalkerTouchedY = e.pageY-document.floater.pageY;}                                                                                            
}                                                                                           
return true;                                                                                           
}                                                                                           
function moveIt(e) {                                                                                           
if (whichIt == null) { return false; }                                                                                           
if(IE) {                                                                                           
newX = (event.clientX + document.body.scrollLeft);                                                                                           
newY = (event.clientY + document.body.scrollTop);                                                                                           
distanceX = (newX - currentX); distanceY = (newY - currentY);                                                                                           
currentX = newX; currentY = newY;                                                                                           
whichIt.style.pixelLeft += distanceX;                                                                                           
whichIt.style.pixelTop += distanceY;                                                                                           
if(whichIt.style.pixelTop < document.body.scrollTop) whichIt.style.pixelTop = document.body.scrollTop;                                                                                           
if(whichIt.style.pixelLeft < document.body.scrollLeft) whichIt.style.pixelLeft = document.body.scrollLeft;                                                                                           
if(whichIt.style.pixelLeft > document.body.offsetWidth - document.body.scrollLeft - whichIt.style.pixelWidth - 20) whichIt.style.pixelLeft = document.body.offsetWidth - whichIt.style.pixelWidth - 20;                                                                                           
if(whichIt.style.pixelTop > document.body.offsetHeight + document.body.scrollTop - whichIt.style.pixelHeight - 5) whichIt.style.pixelTop = document.body.offsetHeight + document.body.scrollTop - whichIt.style.pixelHeight - 5;                                                                                           
event.returnValue = false;                                                                                           
} else {                                                                                            
whichIt.moveTo(e.pageX-StalkerTouchedX,e.pageY-StalkerTouchedY);                                                                                           
if(whichIt.left < 0+self.pageXOffset) whichIt.left = 0+self.pageXOffset;                                                                                           
if(whichIt.top < 0+self.pageYOffset) whichIt.top = 0+self.pageYOffset;                                                                                           
if( (whichIt.left + whichIt.clip.width) >= (window.innerWidth+self.pageXOffset-17)) whichIt.left = ((window.innerWidth+self.pageXOffset)-whichIt.clip.width)-17;                                                                                           
if( (whichIt.top + whichIt.clip.height) >= (window.innerHeight+self.pageYOffset-17)) whichIt.top = ((window.innerHeight+self.pageYOffset)-whichIt.clip.height)-17;                                                                                           
return false;                                                                                           
}                                                                                           
return false;                                                                                           
}                                                                                           
function dropIt() {                                                                                           
whichIt = null;                                                                                           
if(NS) window.releaseEvents (Event.MOUSEMOVE);                                                                                           
return true;}                                                                                           
<!-- DRAG DROP CODE -->                                                                                           
if(NS) {                                                                                           
window.captureEvents(Event.MOUSEUP|Event.MOUSEDOWN);                                                                                           
window.onmousedown = grabIt;                                                                                           
window.onmousemove = moveIt;                                                                                           
window.onmouseup = dropIt;                                                                                           
}                                                                                           
if(IE) {                                                                                           
document.onmousedown = grabIt;                                                                                           
document.onmousemove = moveIt;                                                                                           
document.onmouseup = dropIt;                                                                                           
}                                                                                           
if(NS || IE) action = window.setInterval("heartBeat()",1);                                                                                           
</script> 
                                                                                                 
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
                                                                                                                                                                                                                                                                                                                                                                                                                                                 
</span> 
                                                                                                 
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
                                                                                                                                                                                                                                                                                                                                                                                                                                                 
<div align="center" style="width: 1200px; height:568px ">                                                                                           
 <span class="style40">                                                                                           
 <%                                                                                         
If Session("ChkFirst")=0 then                                                                                         
   Session("ChkFirst")=Session("ChkFirst")+1                                                                                         
%></span> <span class="style40">                                                                        

 <font Size="2" color="#333333"><br>                                                                              
</font>

                                                                                         
 <%                                                                                         
end if                                                                                         
%></span>                                                                                            
<table BORDER="0" CELLPADDING="2" WIDTH="507" height="114">                                                                                           
                                                                                                                                    
<tr>                                                                                                                                                                                                                      
<td width="1159" height="1" class="style40">                                                                                                                                                                                                                                      
  &nbsp;</td>                                                                                                                                                                                                                                                                                                                                                                                                                                              
<td width="1159" height="1">                                                                                                                                                                                                                                      
  <p align="center" style="margin-bottom: 0"><span class="style40">&nbsp;</span><font face="&#27161;&#26999;&#39636;" color="#000080" size="4">
  <span class="style98">
  <u>
  因為耶和華揀選了錫安，願意當作自己的居所</u> </span> </font>
	<span class="style98">(詩132:13 )</span><span class="style40">                                                                                                                                                                                                                                                                                                                     
                                                                                                                                                                                                                                                                                                                                                                                                                                                
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
  </span>                                                                                                                                                                                                                                                                                                                     
                                                                                                                                                                                                                                                                                                                                                                                                                                                
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
  <div align="center">                                                                                                                                                                                                                                                                                                                                                                                                                           
<p style="margin-right: 0; margin-top: 0; margin-bottom: 0"><blink>
<font color="#FF0000">
<span class="style40">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></font><font color="#FF6600"><span class="style40">
</span> </font>
<font color="#FF0000" class="style40">

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01//EN"
   "http://www.w3.org/TR/html4/strict.dtd"><style type="text/css">
body {
     background-image:url(images/background.jpg);
     background-color:#fff;
 }
#container {
     position:relative;
     width:724px;
     height:74px;
     overflow:hidden;
     border:2px double #000;
     background-color:#fff;
     margin:1px auto 0 auto;
 }
#div1 {
     position:absolute;
     left:0px;
     top:0px;
     width:724px;
     height:106px;
 }
#div2 {
     position:absolute;
     left:724px;
     top:0px;
     width:724px;
     height:106px;
 }
img {
     border:1px solid #000;
     margin:1px;
     float:left;
 }
#message759928524 {
	POSITION: relative; PADDING-BOTTOM: 0.8em; MARGIN: 1em 0pt; PADDING-LEFT: 0pt; PADDING-RIGHT: 0pt; COLOR: #000; PADDING-TOP: 0.8em
}
#dvPageContent .mttextarea {
	FONT-FAMILY: Arial; FONT-SIZE: 13px
}
.style2 {
				color: #000000;
}
.style3 {
				font-size: 11pt;
}
.style5 {
				text-decoration: blink;
				font-size: small;
}
.style6 {
				font-size: x-small;
}
.style7 {
				text-align: left;
}
.style9 {
				text-align: center;
}
.style10 {
				font-size: small;
}
.style12 {
				text-decoration: none;
}
.style24 {
				color: #000000;
				font-family: SimHei;
}
.style25 {
				font-weight: normal;
}
.bd {font-size: 14px; }
.style33 {
				text-align: left;
				color: #000000;
				}
.style34 {
				text-align: right;
}
.style35 {
				font-size: medium;
}
.style38 {
				font-size: large;
}
a {
				color: #000000;
}
.style40 {
				font-family: SimHei;
}
.style41 {
				font-size: small;
				font-family: Verdana;
}
.style42 {
				font-size: medium;
				font-family: Verdana;
}
.style43 {
				text-align: right;
				font-family: Verdana;
}
.style44 {
				text-align: left;
				font-family: Verdana;
}
.style45 {
				text-align: center;
				font-family: Verdana;
}
.style47 {
				font-size: small;
				font-family: SimHei;
}
.style48 {
				font-family: Verdana;
				margin-top: 0;
				margin-bottom: 0;
}
.style49 {
				text-align: left;
				font-family: Verdana;
				font-size: 7.5pt;
				padding-top: 4px;
}
.style50 {
				text-align: right;
				font-family: Verdana;
				font-size: 7.5pt;
				padding-top: 4px;
}
.style51 {
				font-family: Verdana;
				font-weight: normal;
}
.style52 {
				word-spacing: 0;
				text-indent: 0;
				font-family: Verdana;
				margin-left: 20;
				margin-right: 0;
				margin-top: 0;
				margin-bottom: 2;
}
.style54 {
				font-size: 11pt;
				margin-top: 0;
				margin-bottom: 0;
				text-align: left;
}
.style56 {
				font-size: medium;
				color: #000000;
				}
.style98 {
				font-family: SimHei;
}
.style99 {
				text-align: left;
				font-family: SimHei;
}
.style100 {
				font-size: small;
				color: #000000;
				font-family: SimHei;
}
.style101 {
				font-size: medium;
				color: #0000FF;
				font-family: SimHei;
}
.style102 {
				color: #000000;
				font-family: SimHei;
}
.style103 {
				font-family: SimHei;
				color: #800080;
				font-size: medium;
}
.style104 {
				font-size: medium;
				font-family: SimHei;
}
.style105 {
				font-family: SimHei;
				color: #800080;
}
.style106 {
				font-weight: bold;
}
</style><script type="text/javascript">
  var m=0;
  var n=724;
  var speed=20;
function scrollPics() {
     document.getElementById('div1').style.left=m+'px';
     document.getElementById('div2').style.left=n+'px';
   m--;
   n--;
if(m==-724) {
   m=724;
 }
if(n==-724) {
   n=724;
 }
setTimeout('scrollPics()',speed);
 } 
window.onload=function() {
   scrollPics();
 }
</script></font></blink>
<div id="container">

<div id="div1" style="position: absolute; left: 0px; top: -1px; width:729px; height:74px">
<span class="style40">
<a href="http://www.zionccrc.org/chinese/photos/image/2015_Jul_1_ChurchPinicatHarrisonHotSprings/index.html" target="title">
<img src="http://www.zionccrc.org/chinese/photos/image/MarqeePix/1-picnic2015.jpg" alt="" border="0" width="99" height="70"></a></span>
<span class="style40">
<a href="http://www.zionccrc.org/chinese/VideoFiles/2015%20Jun%2021%20FathersDay_skits.htm" target="title">
<img src="http://www.zionccrc.org/chinese/photos/image/MarqeePix/2-Daniel2015.jpg" alt="" border="0" width="99" height="70"></a></span>
<span class="style40">
<a href="http://www.zionccrc.org/chinese/photos/image/2015_EasterBaptism/index.html" target="title">
<img src="http://www.zionccrc.org/chinese/photos/image/MarqeePix/3-Baptism%202015.jpg" alt="" border="0" width="99" height="70"></a></span>
<span class="style40">
<a href="2015%20GoodFri_GraceChen.htm" target="title">
<img src="http://www.zionccrc.org/chinese/photos/image/MarqeePix/4-GraceChen.png" alt="" border="0" width="99" height="70"></a></span>
<span class="style40">
<a href="VideoFiles/2015%20Chinese%20New%20Yr.htm" target="title">
<img src="http://www.zionccrc.org/chinese/photos/image/MarqeePix/5-CNY2015.jpg" alt="" border="0"width="99" height="70"></a></span>
<span class="style40">
<a href="http://www.zionccrc.org/chinese/photos/image/2015_Feb1922ChineseNewYearCelebration/index.html" target="title">
<img src="http://www.zionccrc.org/chinese/photos/image/MarqeePix/6-CNY2015pix.jpg" alt="" border="0" width="99' height="70"></a></span>
<span class="style40">
<a href="VideoFiles/2014%20Dec%2019%20Christmas%20videos.htm" target="title">
<img src="http://www.zionccrc.org/chinese/photos/image/MarqeePix/7-Christmas2014.jpg" alt="" border="0" width="102"height="70"></a></span>
</div>

<div id="div2" style="position: absolute; left: 724px; top: -1px; height:74px; width: 733px;">
<span class="style40">
<a href="http://www.zionccrc.org/chinese/photos/image/2014_Dec19Christmasbaptism/index.html" target="title">
<img src="http://www.zionccrc.org/chinese/photos/image/MarqeePix/8-Baptism.jpg" alt="" border="0" width="99" height="70"></a></span>
<span class="style40">
<a href="http://www.zionccrc.org/chinese/VideoFiles/2014%20Revival-The%20End%20time%20is%20near-vid.htm" target="title">
<img src="http://www.zionccrc.org/chinese/photos/image/MarqeePix/9-JohnFung2014.png" alt="" border="0" width="99" height="70"></a></span>
<span class="style40">
<a href="VideoFiles/2014_Oct1113RetreatatCampSqueah.htm" target="title">
<img src="http://www.zionccrc.org/chinese/photos/image/MarqeePix/10-retreat%202014.jpg" alt="" border="0" width="99" height="70"></a></span>
<span class="style40">
<a href="http://www.zionccrc.org/chinese/photos/image/2014_Oct1113RetreatatCampSqueah/index.html" target="title">
<img src="http://www.zionccrc.org/chinese/photos/image/MarqeePix/11-retreat2014pix.jpg" alt="" border="0" width="99" height="70"></a></span>
<span class="style40">
<a href="VideoFiles/2014%20Sep%205%20Mid%20Autumn%20Fest.htm" target="title">
<img src="http://www.zionccrc.org/chinese/photos/image/MarqeePix/12-moonFest2014.jpg" alt="" border="0" width="99" height="70"></a></span>
<span class="style40">
<a href="http://www.zionccrc.org/chinese/photos/image/SundayWorshipatGardnerPark2014Aug10/index.html" target="title">
<img src="http://www.zionccrc.org/chinese/photos/image/MarqeePix/13-worship2014.jpg" alt="" border="0" width="99" height="70"></a></span>
<span class="style40">
<a href="http://www.zionccrc.org/chinese/photos/image/CanadaDaypicnic2014Jul1/index.html" target="title">
<img src="http://www.zionccrc.org/chinese/photos/image/MarqeePix/14_picnic2014.jpg" alt="CNY 2015" border="0" height="70" width="102"></a></span>
</div>

</div>
                                                                                                                                                                                                                                                                                                                                                                                                                                              
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
<span class="style47">
<marquee scrollAmount="2" hspace="30" vspace="14"
scrollDelay="29" loop="100" width="588" height="18" border="1" style="font-size: 12 pt">"感謝主，在主奇妙的恩典下進入第三十六個年頭，路徑都滴上脂油，您可以點選以上的系列照片或影片觀看，並歡迎大家一齊參加聚會， 與我們同頌主恩.....</marquee></span></div>                                                                                                                                                                                                                                                                                                                                                                                                                                              
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
  </td>                                                                                                                                                                                                                                                                                                                                                                                                                                              
</tr>                                                                                                                                                                                                                                                                                                                                                                                                                                              
</table>                                                                                                                                                                                                                                                                                                                                                                                                                                          


  <table BORDER="0" style="width: 1218px; height: 535px;">                                                                                                                                                                                                                                                                                                                                                                                                                                             
<tr>                                                                                       
<td style="width: 85px; height: 5px;">                                                                                       
                                                                                             
</td>                                                                                                                                                                                                                                                                                                                                                                                                                                          
                                                                                                                                                                                                                                                                                                                                                                                                                                          
<td style="width: 85px; height: 5px;">                                                                                       
                                                                                             
</td>                                                                                                                                                                                                                                                                                                                                                                                                                                          
                                                                                                                                                                                                                                                                                                                                                                                                                                          
<td style="width: 59px; height: 5px;">                                                                                       
                                                                                             
</td>                                                                                                                                                                                                                                                                                                                                                                                                                                          
                                                                                                                                                                                                                                                                                                                                                                                                                                          
<td style="height: 5px; width: 263px;">                                                                                       
                                                                                             

<span class="style40">                                                                                       
                                                                                             

<input type="button" onClick="ToggleFloatingLayer('FloatingLayer',1);" value="顯示報告"></span>
<span class="style40">

<!-- To Hide The Layer -->
<input type="button" onClick="ToggleFloatingLayer('FloatingLayer',0);" value="隱藏報告">
</span>
</td>                                                                                                                                                                                                                                                                                                                                                                                                                                          
                                                                                                                                                                                                                                                                                                                                                                                                                                          
<td style="height: 5px; width: 245px;">                                                                                       
                                                                                             

<span class="style40">                                                                                       
                                                                                             

<!-- start of freefind search box html -->
</span>
<table cellpadding=0 cellspacing=0 border=0 align="right" >
<tr>
	<td  colspan=2 style="font-family: Arial, Helvetica, sans-serif; font-size: 7.5pt;">
		<form style="margin:0px; margin-top:4px;" action="http://search.freefind.com/find.html" method="get" accept-charset="utf-8" target="_self">
		<span class="style40">
		<input type="hidden" name="si" value="5130164">
		<input type="hidden" name="pid" value="r">
		<input type="hidden" name="n" value="0">
		<input type="hidden" name="_charset_" value="">
		<input type="hidden" name="bcd" value="&#247;">
		<input type="text" name="query" size="15"></span> 
		<strong> 
		<span class="style40"> 
		<input type="submit" value="搜尋"></span></strong><span class="style40">
		</span>
		</form>
	</td>
</tr>
<tr>
	<td class="style49">
		<a style="text-decoration:none; color:gray;" href="http://www.freefind.com" >
		site search 
		by
		<span style="color: #606060;">freefind</span></a>
	</td>

	<td class="style50">
		<a href="http://search.freefind.com/find.html?si=5130164&amp;pid=a">
		advanced</a>
	</td>
</tr>
</table>
<!-- end of freefind search box html -->                                                                                       
                                                                                             
<span class="style40">&nbsp;</span></td>                                                                                                                                                                                                                                                                                                                                                                                                                                          
                                                                                                                                                                                                                                                                                                                                                                                                                                          
<td style="height: 5px;">                                                                                       
                                                                                             
</td>                                                                                                                                                                                                                                                                                                                                                                                                                                          
                                                                                                                                                                                                                                                                                                                                                                                                                                          
 <td rowspan="13" class="style7"> 
     
	<div class="style7" style="width: 283px">
	<span class="style10"><span lang="en-ca" class="style40">&nbsp;</span></span><span lang="zh-cn" class="style98"><span class="style35"><strong>本月經訓:</strong></span></span><span lang="en-ca"><span class="style35"><strong class="style25"><span class="style98"> 
					 <b>詩篇 65:9 </b><table border="0" cellspacing="5" style="width: 97%">
					<tr>
					<td width="90%" class="style35">
					<span class="style106">你眷顧地、降下透雨、使地大得肥美． 神的河滿了水．你這澆灌了 地、好為人預備五穀。</span><strong> </strong></td>
					</tr>
	</table>
	<p style="width: 282px"><strong class="style25">
	<span class="style101">
	<a class="style12" href="https://www.wordproject.org/bibles/big5/19/65.htm#0">有聲聖經廣東話</a>&nbsp;
	<a class="style12" href="https://www.wordproject.org/bibles/gb/19/65.htm#0">有聲聖經國語</a></span></strong></p>
	<p class="style7">
		<font color="#FF6600"><span lang="en-ca" class="style98">&nbsp;&nbsp;&nbsp;</span></font></span><span class="style103"><strong>亞寶斯福基督教錫安堂</strong></span></p>
	<span class="style6">	
	<p class="style40">
	<img border="0" src="images/Zion-p.JPG" width="269" height="202" ></p>
	<p style="margin-top: 0; margin-bottom: 0" class="style45">
    <a href="ChineseSchool.htm" target="_blank"><font color="#008080" size="2"> 
	&nbsp;</font></a></p>
	<p style="margin-top: 0; margin-bottom: 0" class="style44">
    &nbsp;</p>
	<p style="margin-top: 0; margin-bottom: 0" class="style44">
    &nbsp;</p>
	<p style="margin-top: 0; margin-bottom: 0" class="style44">
    &nbsp;</p>
	<p style="margin-top: 0; margin-bottom: 0" class="style44">
    &nbsp;</p>
	<p style="margin-top: 0; margin-bottom: 0" class="style44">
    &nbsp;</p>
	<p style="margin-top: 0; margin-bottom: 0" class="style44">
    &nbsp;</p>
	<p style="margin-top: 0; margin-bottom: 0" class="style44">
    &nbsp;</p>
	<p style="margin-top: 0; margin-bottom: 0" class="style44">
    &nbsp;</p>
	<p style="margin-top: 0; margin-bottom: 0" class="style44">
    &nbsp;</p>
	<p style="margin-top: 0; margin-bottom: 0" class="style44">
    &nbsp;</p>
	<p style="margin-top: 0; margin-bottom: 0" class="style44">
    &nbsp;</p>
	<a href="ChineseSchool.htm" target="_blank"><span class="style40"><img border="0" src="images/ChineseSchool.jpg"></span></a><p style="margin-top: 0; margin-bottom: 0" class="style7">
    <span class="style40"><a target="title" href="ChineseSchool.htm">
	<font color="#000000" size="2">錫安堂中文學校</font></a></span></p>
	<p style="margin-top: 0; margin-bottom: 0" class="style7">
    &nbsp;<span class="style105"><font size="2">每逢星期四晚上七時至九時</font></span></p>
    </td>                                                                                      
                                                                                                                                                                                                                                                                                                                                                                                                                                          
 <td align="center" rowspan="13"> 
     
		<p class="style40">
		&nbsp;</p>
		</td>                                                                                      
                                                                                                                                                                                                                                                                                                                                                                                                                                          
<tr>                                                                                       
<td style="height: 4px; width: 85px;" class="style44">                                                                                       
                                                                                             
&nbsp;</td>                                                                                                                                                                                                                                                                                                                                                                                                                                          
                                                                                                                                                                                                                                                                                                                                                                                                                                          
<td style="height: 4px; width: 85px;" class="style44">                                                                                       
                                                                                             
&nbsp;</td>                                                                                                                                                                                                                                                                                                                                                                                                                                          
                                                                                                                                                                                                                                                                                                                                                                                                                                          
<td style="height: 4px; width: 59px;" class="style44">                                                                                       
                                                                                             
&nbsp;</td>                                                                                                                                                                                                                                                                                                                                                                                                                                          
                                                                                                                                                                                                                                                                                                                                                                                                                                          
<td style="height: 4px; " class="style9" colspan="2">                                                                                       
                                                                                             
<font size="4" color="#800080">
                                                                                             
<span lang="ZH-TW" style="font-weight: 400" class="style40">
 <!-- Start Floating Layer -->
<div id="FloatingLayer" style="position:absolute;width:242px; left:399px; top:287px; visibility:visible; border:solid 1px #FF6600; height: 178px;">
    <div id="titleBar" style="cursor:move; width:109%; position:relative; border-bottom:solid 1px #FF6600; background-color:#FF9933; left: 0px; top: 0px; height: 37px;" class="style7">
        <div id="title" style="margin-right:30px; padding-left:3px;" class="style7">
									<font color="#000000">
            <span lang="zh-cn" class="style38">請按&#8213;下以下報告</span></font></div>
        </span>                                                                                       
                                                                                             
<span lang="ZH-TW" style="font-family: DFKai-SB; font-weight: 400">
        <div id="closeX" style="cursor:hand; position:absolute; right:-6px; top:0px; width: 36px;" class="style7">
            <a href="#" onClick="ToggleFloatingLayer('FloatingLayer',0);return false"  style="text-decoration:none">
			<font color="#333333">
			<span class="style104"><strong>X</strong></span></font></a></span><span lang="ZH-TW" style="font-weight: 400" class="style40"><span class="style35"><strong>
			</strong>
        </div>
    </div>
    <div id="floatingContent" style="padding:3px; background-color:#CCCCCC; color:#333333; width: 262px; height: 206px;" class="style7">
        <div class="style7">
      
        <!-- place your HTML content here-->
				
		<br>
		</span>
     
		<font color="#008080">
	<a target="title" href="ChurchActivities.htm" class="style12">
	<span class="style56">-教會活動</span></a></font><span class="style35"><br>
	<br>
	</span><span style="font-weight: 400" class="style40">
		<span lang="en-us">-<a target="title" href="http://www.zionccrc.org/chinese/VideoFiles/2017 Chinese New Yr.htm">2017 慶祝農&#27508;新年</a></span><br>
		<br>
	<span lang="zh-cn" class="style35">
		<a target="title" href="http://www.zionccrc.org/chinese/photos/image/2016_Dec16ChristmasHotpot/index.html">
		-2016 聖誕火鍋宴</a></span></span></strong><span lang="ZH-TW" style="font-weight: 400" class="style40"><br>                                                                      
		
		<br>
	<span lang="zh-cn" class="style35">
		<a target="title" href="http://www.zionccrc.org/chinese/VideoFiles/2016 Dec 23 Christmas Play.htm">
		-2016 聖誕話劇</a></span><br>
		<br>
                                                                                             
</span>                                                                                       
                                                                                             
		</div>
	</div>
</div>

</span>                                                                                       
                                                                                             
<span lang="ZH-TW" style="font-weight: 400" class="style40">                                                                                       
                                                                                             
<span lang="ZH-TW" style="font-weight: 400" class="style40"><span lang="ZH-TW" style="font-weight: 400" class="style40">
<!-- End Floating layer -->

</span>                                                                                       
                                                                                             
</span>                                                                                       
                                                                                             
</span>                                                                                       
                                                                                             
</font>                                                                                       
                                                                                             
<span lang="ZH-TW" style="font-weight: 400" class="style40">                                                                                       
                                                                                             
<span lang="ZH-TW" style="font-weight: 400" class="style40">                                                                                       
                                                                                             
<span lang="ZH-TW" style="font-family: DFKai-SB; font-weight: 400">
                                                                                             
<span lang="ZH-TW" class="style42">

<strong>教會聚會時間</strong></span></span></td>                                                                                                                                                                                                                                                                                                                                                                                                                                          
                                                                                                                                                                                                                                                                                                                                                                                                                                          
<td style="height: 4px; " class="style43">                                                                                       
                                                                                             
&nbsp;</td>                                                                                                                                                                                                                                                                                                                                                                                                                                          
                                                                                                                                                                                                                                                                                                                                                                                                                                          
 <tr>                                                                                       
<td style="height: 4px; width: 85px;" class="style7">                                                                                       
                                                                                             
</td>                                                                                                                                                                                                                                                                                                                                                                                                                                          
                                                                                                                                                                                                                                                                                                                                                                                                                                          
<td style="height: 4px; width: 85px;" class="style7">                                                                                       
                                                                                             
</td>                                                                                                                                                                                                                                                                                                                                                                                                                                          
                                                                                                                                                                                                                                                                                                                                                                                                                                          
<td style="height: 4px; width: 59px;" class="style7">                                                                                       
                                                                                             
</td>                                                                                                                                                                                                                                                                                                                                                                                                                                          
                                                                                                                                                                                                                                                                                                                                                                                                                                          
<td style="height: 4px; width: 263px;" class="style99">                                                                                       
                                                                                             
<span lang="ZH-TW" style="font-size:10.0pt;" class="style98">
主日崇拜 </span>
<span lang="EN-CA" style="font-size: 10.0pt; " class="style98">(</span><span lang="ZH-TW" style="font-size:10.0pt;" class="style98">國、粵</span><span style="font-size: 10.0pt; " class="style98">/</span><span style="font-size: 10.0pt; "><span lang="ZH-TW" class="style98">英</span></span><span lang="ZH-TW" style="font-size:10.0pt;" class="style98">語</span><span style="font-size:10.0pt;" class="style98">&nbsp;&nbsp;<br>
</span></td>                                                                                                                                                                                                                                                                                                                                                                                                                                          
                                                                                                                                                                                                                                                                                                                                                                                                                                          
<td style="height: 4px; width: 245px;" class="style34">                                                                                       
                                                                                             
<span lang="ZH-TW" style="font-size: 10.0pt; " class="style98">
主日</span><span lang="EN-CA" style="font-size: 10.0pt; " class="style98"> 
10:30am</span></td>                                                                                                                                                                                                                                                                                                                                                                                                                                          
                                                                                                                                                                                                                                                                                                                                                                                                                                          
<td style="height: 4px; " class="style34">                                                                                       
                                                                                             
</td>                                                                                                                                                                                                                                                                                                                                                                                                                                          
                                                                                                                                                                                                                                                                                                                                                                                                                                          
 <tr>                                                                                       
<td style="height: 27px; width: 85px;" class="style44">                                                                                       
                                                                                             
</td>                                                                                                                                                                                                                                                                                                                                                                                                                                          
                                                                                                                                                                                                                                                                                                                                                                                                                                          
<td style="height: 27px; width: 85px;" class="style44">                                                                                       
                                                                                             
</td>                                                                                                                                                                                                                                                                                                                                                                                                                                          
                                                                                                                                                                                                                                                                                                                                                                                                                                          
<td style="height: 27px; width: 59px;" class="style44">                                                                                       
                                                                                             
</td>                                                                                                                                                                                                                                                                                                                                                                                                                                          
                                                                                                                                                                                                                                                                                                                                                                                                                                          
<td style="height: 27px; width: 263px;" class="style99">                                                                                       
                                                                                             
<span lang="ZH-TW" style="font-size:10.0pt;" class="style98">
兒童崇拜 </span>
<span lang="EN-CA" style="font-size: 10.0pt; " class="style98">(</span><span lang="ZH-TW" style="font-size: 10.0pt; " class="style98">英語</span><span style="font-size:10.0pt;
" class="style98">)</span></td>                                                                                                                                                                                                                                                                                                                                                                                                                                          
                                                                                                                                                                                                                                                                                                                                                                                                                                          
<td style="height: 27px; width: 245px;" class="style34">                                                                                       
                                                                                           
<span lang="ZH-TW" style="font-size: 10.0pt; " class="style98">
主日</span><span lang="EN-CA" style="font-size: 10.0pt; " class="style98"> 
10:30am</span></td>                                                                                                                                                                                                                                                                                                                                                                                                                                          
                                                                                                                                                                                                                                                                                                                                                                                                                                          
<td style="height: 27px; " class="style43">                                                                                       
                                                                                             
</td>                                                                                                                                                                                                                                                                                                                                                                                                                                          
                                                                                                                                                                                                                                                                                                                                                                                                                                          
 <tr>                                                                                       
<td style="height: 18px; width: 85px;" class="style7">                                                                                       
                                                                                             
</td>                                                                                                                                                                                                                                                                                                                                                                                                                                          
                                                                                                                                                                                                                                                                                                                                                                                                                                          
<td style="height: 18px; width: 85px;" class="style7">                                                                                       
                                                                                             
</td>                                                                                                                                                                                                                                                                                                                                                                                                                                          
                                                                                                                                                                                                                                                                                                                                                                                                                                          
<td style="height: 18px; width: 59px;" class="style7">                                                                                       
                                                                                             
</td>                                                                                                                                                                                                                                                                                                                                                                                                                                          
                                                                                                                                                                                                                                                                                                                                                                                                                                          
<td style="height: 18px; width: 263px;" class="style99">                                                                                       
                                                                                             
<span lang="ZH-TW" style="font-size:10.0pt;" class="style98">
主日學 </span>
<span lang="EN-CA" style="font-size: 10.0pt; " class="style98">(</span><span lang="ZH-TW" style="font-size:10.0pt;" class="style98">國、粵、英語</span><span style="font-size:10.0pt;" class="style98">)&nbsp;<br>
</span></td>                                                                                                                                                                                                                                                                                                                                                                                                                                          
                                                                                                                                                                                                                                                                                                                                                                                                                                          
<td style="height: 18px; width: 245px;" class="style34">                                                                                       
                                                                                             
<span style="font-size:10.0pt;" class="style98">&nbsp;</span><span style="font-size:10.0pt;"><span lang="ZH-TW" class="style98">主日</span></span><span lang="EN-CA" style="font-size: 10.0pt; " class="style98"> 
9:15am</span></td>                                                                                                                                                                                                                                                                                                                                                                                                                                          
                                                                                                                                                                                                                                                                                                                                                                                                                                          
<td style="height: 18px; " class="style34">                                                                                       
                                                                                             
</td>                                                                                                                                                                                                                                                                                                                                                                                                                                          
                                                                                                                                                                                                                                                                                                                                                                                                                                          
 <tr>                                                                                       
<td style="height: 14px; width: 85px;" class="style7">                                                                                       
                                                                                             
</td>                                                                                                                                                                                                                                                                                                                                                                                                                                          
                                                                                                                                                                                                                                                                                                                                                                                                                                          
<td style="height: 14px; width: 85px;" class="style7">                                                                                       
                                                                                             
</td>                                                                                                                                                                                                                                                                                                                                                                                                                                          
                                                                                                                                                                                                                                                                                                                                                                                                                                          
<td style="height: 14px; width: 59px;" class="style7">                                                                                       
                                                                                             
</td>                                                                                                                                                                                                                                                                                                                                                                                                                                          
                                                                                                                                                                                                                                                                                                                                                                                                                                          
<td style="height: 14px; width: 263px;" class="style99">                                                                                       
                                                                                             
<span lang="ZH-TW" style="font-size:10.0pt;" class="style98">
禱告會</span></td>                                                                                                                                                                                                                                                                                                                                                                                                                                          
                                                                                                                                                                                                                                                                                                                                                                                                                                          
<td style="height: 14px; width: 245px;" class="style34">                                                                                       
                                                                                             
<span lang="ZH-TW" style="font-size: 10.0pt; " class="style98">
每週二</span><span lang="EN-CA" style="font-size: 10.0pt; " class="style98"> 
8:00pm</span></td>                                                                                                                                                                                                                                                                                                                                                                                                                                          
                                                                                                                                                                                                                                                                                                                                                                                                                                          
<td style="height: 14px; " class="style34">                                                                                       
                                                                                             
</td>                                                                                                                                                                                                                                                                                                                                                                                                                                          
                                                                                                                                                                                                                                                                                                                                                                                                                                          
 <tr>                                                                                       
<td height="331" style="height: 14px; width: 85px;" class="style44">                                                                                       
                                                                                             
&nbsp;</td>                                                                                                                                                                                                                                                                                                                                                                                                                                          
                                                                                                                                                                                                                                                                                                                                                                                                                                          
<td height="331" style="height: 14px; width: 85px;" class="style44">                                                                                       
                                                                                             
&nbsp;</td>                                                                                                                                                                                                                                                                                                                                                                                                                                          
                                                                                                                                                                                                                                                                                                                                                                                                                                          
<td height="331" style="height: 14px; width: 59px;" class="style44">                                                                                       
                                                                                             
&nbsp;</td>                                                                                                                                                                                                                                                                                                                                                                                                                                          
                                                                                                                                                                                                                                                                                                                                                                                                                                          
<td height="331" style="height: 14px; width: 263px;" class="style99">                                                                                       
                                                                                             
<span lang="ZH-TW" style="font-size:10.0pt;" class="style98">
成人英語團契</span><span style="font-size:10.0pt;" class="style98">&nbsp; </span></td>                                                                                                                                                                                                                                                                                                                                                                                                                                          
                                                                                                                                                                                                                                                                                                                                                                                                                                          
<td height="331" style="height: 14px; width: 245px;" class="style34">                                                                                       
                                                                                             
<span style="font-size:10.0pt;" class="style98">&nbsp;</span><span style="font-size:10.0pt;"><span lang="ZH-TW" class="style98">每隔一週星期三</span></span><span lang="EN-CA" style="font-size: 10.0pt; " class="style98"> 
8:00pm</span></td>                                                                                                                                                                                                                                                                                                                                                                                                                                          
                                                                                                                                                                                                                                                                                                                                                                                                                                          
<td height="331" style="height: 27px; " class="style43">                                                                                       
                                                                                             
&nbsp;</td>                                                                                                                                                                                                                                                                                                                                                                                                                                          
                                                                                                                                                                                                                                                                                                                                                                                                                                          
 <tr>                                                                                       
<td style="height: 27px; width: 85px;" class="style7">                                                                                       
                                                                                             
</td>                                                                                                                                                                                                                                                                                                                                                                                                                                          
                                                                                                                                                                                                                                                                                                                                                                                                                                          
<td style="height: 27px; width: 85px;" class="style7">                                                                                       
                                                                                             
</td>                                                                                                                                                                                                                                                                                                                                                                                                                                          
                                                                                                                                                                                                                                                                                                                                                                                                                                          
<td style="height: 27px; width: 59px;" class="style7">                                                                                       
                                                                                             
</td>                                                                                                                                                                                                                                                                                                                                                                                                                                          
                                                                                                                                                                                                                                                                                                                                                                                                                                          
<td style="height: 27px; width: 263px;" class="style99">                                                                                       
                                                                                             
<span lang="ZH-TW" style="font-size:10.0pt;" class="style98">
國語團契 </span>
<span lang="EN-CA" style="font-size: 10.0pt; " class="style98">(</span><span lang="ZH-TW" style="font-size:10.0pt;" class="style98">國語</span><span style="font-size:10.0pt;" class="style98">)&nbsp;</span></td>                                                                                                                                                                                                                                                                                                                                                                                                                                          
                                                                                                                                                                                                                                                                                                                                                                                                                                          
<td style="height: 27px; width: 245px;" class="style34">                                                                                       
                                                                                             
<span style="font-size:10.0pt;" class="style98"><span lang="en-ca">&nbsp;</span><span lang="ZH-TW"> 
每月第二及第四個星五</span><span lang="en-ca"> </span>7:30</span><span lang="EN-CA" style="font-size: 10.0pt; " class="style98">pm</span></td>                                                                                                                                                                                                                                                                                                                                                                                                                                          
                                                                                                                                                                                                                                                                                                                                                                                                                                          
<td style="height: 27px; " class="style34">                                                                                       
                                                                                             
</td>                                                                                                                                                                                                                                                                                                                                                                                                                                          
                                                                                                                                                                                                                                                                                                                                                                                                                                          
 <tr>                                                                                       
<td height="331" style="height: 14px; width: 85px;" class="style44">                                                                                       
                                                                                             
&nbsp;</td>                                                                                                                                                                                                                                                                                                                                                                                                                                          
                                                                                                                                                                                                                                                                                                                                                                                                                                          
<td height="331" style="height: 14px; width: 85px;" class="style44">                                                                                       
                                                                                             
&nbsp;</td>                                                                                                                                                                                                                                                                                                                                                                                                                                          
                                                                                                                                                                                                                                                                                                                                                                                                                                          
<td height="331" style="height: 14px; width: 59px;" class="style44">                                                                                       
                                                                                             
&nbsp;</td>                                                                                                                                                                                                                                                                                                                                                                                                                                          
                                                                                                                                                                                                                                                                                                                                                                                                                                          
<td height="331" style="height: 14px; width: 263px;" class="style99">                                                                                       
                                                                                             
<span lang="ZH-TW" style="font-size:10.0pt;" class="style98">
以斯拉小組 </span>
<span lang="EN-CA" style="font-size: 10.0pt; " class="style98">(</span><span lang="ZH-TW" style="font-size: 10.0pt; " class="style98">粵語</span><span style="font-size:10.0pt;
" class="style98">)</span><span style="font-size:10.0pt;
"><span lang="en-ca" class="style98">&nbsp;&nbsp;
</span></span><span style="font-size:10.0pt;
font-family:&quot;PMingLiU&quot;,&quot;serif&quot;">
<span style="font-size:10.0pt;
" class="style98">&nbsp;&nbsp;</span></span></td>                                                                                                                                                                                                                                                                                                                                                                                                                                          
                                                                                                                                                                                                                                                                                                                                                                                                                                          
<td height="331" style="height: 14px; width: 245px;" class="style34">                                                                                       
                                                                                             
<span style="font-size:10.0pt;
" class="style98">&nbsp;<span lang="ZH-TW">每月第二及第四個星期五</span><span lang="en-ca">
</span></span><span lang="EN-CA" style="font-size: 10.0pt; " class="style98">
8:00pm</span></td>                                                                                                                                                                                                                                                                                                                                                                                                                                          
                                                                                                                                                                                                                                                                                                                                                                                                                                          
<td height="331" style="height: 27px; " class="style43">                                                                                       
                                                                                             
&nbsp;</td>                                                                                                                                                                                                                                                                                                                                                                                                                                          
                                                                                                                                                                                                                                                                                                                                                                                                                                          
 <tr>                                                                                       
<td height="331" style="height: 14px; width: 85px;" class="style44">                                                                                       
                                                                                             
&nbsp;</td>                                                                                                                                                                                                                                                                                                                                                                                                                                          
                                                                                                                                                                                                                                                                                                                                                                                                                                          
<td height="331" style="height: 14px; width: 85px;" class="style44">                                                                                       
                                                                                             
&nbsp;</td>                                                                                                                                                                                                                                                                                                                                                                                                                                          
                                                                                                                                                                                                                                                                                                                                                                                                                                          
<td height="331" style="height: 14px; width: 59px;" class="style44">                                                                                       
                                                                                             
&nbsp;</td>                                                                                                                                                                                                                                                                                                                                                                                                                                          
                                                                                                                                                                                                                                                                                                                                                                                                                                          
<td height="331" style="height: 14px; width: 263px;" class="style99">                                                                                       
                                                                                             
<span lang="ZH-TW" style="font-size:10.0pt;" class="style98">
雅歌小組 </span>
<span lang="EN-CA" style="font-size: 10.0pt; " class="style98">(</span><span lang="ZH-TW" style="font-size: 10.0pt; " class="style98">普通話</span><span style="font-size:10.0pt;" class="style98">)&nbsp;</span></td>                                                                                                                                                                                                                                                                                                                                                                                                                                          
                                                                                                                                                                                                                                                                                                                                                                                                                                          
<td height="331" style="height: 14px; width: 245px;" class="style34">                                                                                       
                                                                                             
<span style="font-size:10.0pt;" class="style98"><span lang="en-ca">&nbsp;</span><span lang="ZH-TW">每月第一及第三個星期五</span><span lang="en-ca"> </span>7:30</span><span lang="EN-CA" style="font-size: 10.0pt; " class="style98">pm</span></td>                                                                                                                                                                                                                                                                                                                                                                                                                                          
                                                                                                                                                                                                                                                                                                                                                                                                                                          
<td height="331" style="height: 27px; " class="style43">                                                                                       
                                                                                             
&nbsp;</td>                                                                                                                                                                                                                                                                                                                                                                                                                                          
                                                                                                                                                                                                                                                                                                                                                                                                                                          
 <tr>                                                                                       
<td height="331" style="height: 14px; width: 85px;" class="style44">                                                                                       
                                                                                             
&nbsp;</td>                                                                                                                                                                                                                                                                                                                                                                                                                                          
                                                                                                                                                                                                                                                                                                                                                                                                                                          
<td height="331" style="height: 14px; width: 85px;" class="style44">                                                                                       
                                                                                             
&nbsp;</td>                                                                                                                                                                                                                                                                                                                                                                                                                                          
                                                                                                                                                                                                                                                                                                                                                                                                                                          
<td height="331" style="height: 14px; width: 59px;" class="style44">                                                                                       
                                                                                             
&nbsp;</td>                                                                                                                                                                                                                                                                                                                                                                                                                                          
                                                                                                                                                                                                                                                                                                                                                                                                                                          
<td height="331" style="height: 14px; width: 263px;" class="style99">                                                                                       
                                                                                             
<span lang="ZH-TW" style="font-size:10.0pt;" class="style98">
英語少年團契</span><span style="font-size:10.0pt;" class="style98">&nbsp;</span></td>                                                                                                                                                                                                                                                                                                                                                                                                                                          
                                                                                                                                                                                                                                                                                                                                                                                                                                          
<td height="331" style="height: 14px; width: 245px;" class="style34">                                                                                       
                                                                                             
<span style="font-size:10.0pt;" class="style98"><span lang="ZH-TW">每月第</span><span lang="zh-cn">二</span><span lang="ZH-TW">及第</span><span lang="zh-cn">四</span><span lang="ZH-TW">個星期五</span><span lang="en-ca"> </span>
7:30</span><span lang="EN-CA" style="font-size: 10.0pt; " class="style98">pm</span></td>                                                                                                                                                                                                                                                                                                                                                                                                                                          
                                                                                                                                                                                                                                                                                                                                                                                                                                          
<td height="331" style="height: 27px; " class="style43">                                                                                       
                                                                                             
&nbsp;</td>                                                                                                                                                                                                                                                                                                                                                                                                                                          
                                                                                                                                                                                                                                                                                                                                                                                                                                          
 <tr>                                                                                       
<td height="331" style="height: 14px; width: 85px;" class="style44">                                                                                       
                                                                                             
&nbsp;</td>                                                                                                                                                                                                                                                                                                                                                                                                                                          
                                                                                                                                                                                                                                                                                                                                                                                                                                          
<td height="331" style="height: 14px; width: 85px;" class="style44">                                                                                       
                                                                                             
&nbsp;</td>                                                                                                                                                                                                                                                                                                                                                                                                                                          
                                                                                                                                                                                                                                                                                                                                                                                                                                          
<td height="331" style="height: 14px; width: 59px;" class="style44">                                                                                       
                                                                                             
&nbsp;</td>                                                                                                                                                                                                                                                                                                                                                                                                                                          
                                                                                                                                                                                                                                                                                                                                                                                                                                          
<td height="331" style="height: 14px; width: 263px;" class="style99">                                                                                       
                                                                                             
<span lang="ZH-TW" style="font-size:10.0pt;" class="style98">
學生團契 </span>
<span lang="EN-CA" style="font-size: 10.0pt; " class="style98">(</span><span lang="ZH-TW" style="font-size:10.0pt;" class="style98">國、粵、英語</span><span style="font-size:10.0pt;" class="style98">)</span></td>                                                                                                                                                                                                                                                                                                                                                                                                                                          
                                                                                                                                                                                                                                                                                                                                                                                                                                          
<td height="331" style="height: 14px; width: 245px;" class="style34">                                                                                       
                                                                                             
<span lang="en-ca" style="font-size: 10.0pt; " class="style98">&nbsp;
</span>
<span lang="ZH-TW" style="font-size: 10.0pt; " class="style98">每月</span><span style="font-size:10.0pt;" class="style98"><span lang="ZH-TW">逢星期五</span><span lang="en-ca"> </span>
7:30</span><span lang="EN-CA" style="font-size: 10.0pt; " class="style98">pm</span></td>                                                                                                                                                                                                                                                                                                                                                                                                                                          
                                                                                                                                                                                                                                                                                                                                                                                                                                          
<td height="331" style="height: 27px; " class="style43">                                                                                       
                                                                                             
&nbsp;</td>                                                                                                                                                                                                                                                                                                                                                                                                                                          
                                                                                                                                                                                                                                                                                                                                                                                                                                          
 <tr>                                                                                       
<td height="331" style="height: 14px; width: 85px;" class="style44">                                                                                       
                                                                                             
&nbsp;</td>                                                                                                                                                                                                                                                                                                                                                                                                                                          
                                                                                                                                                                                                                                                                                                                                                                                                                                          
<td height="331" style="height: 14px; width: 85px;" class="style44">                                                                                       
                                                                                             
&nbsp;</td>                                                                                                                                                                                                                                                                                                                                                                                                                                          
                                                                                                                                                                                                                                                                                                                                                                                                                                          
<td height="331" style="height: 14px; width: 59px;" class="style44">                                                                                       
                                                                                             
&nbsp;</td>                                                                                                                                                                                                                                                                                                                                                                                                                                          
                                                                                                                                                                                                                                                                                                                                                                                                                                          
<td height="331" style="height: 14px; width: 263px;" class="style99">                                                                                       
                                                                                             
<span lang="ZH-TW" style="font-size:10.0pt;" class="style98">
中文學校</span></td>                                                                                                                                                                                                                                                                                                                                                                                                                                          
                                                                                                                                                                                                                                                                                                                                                                                                                                          
<td height="331" style="height: 14px; width: 245px;" class="style34">                                                                                       
                                                                                             
<span style="font-size:10.0pt;" class="style98"> <span lang="ZH-TW">每週四</span><span lang="en-ca">
</span></span><span lang="EN-CA" style="font-size: 10.0pt; " class="style98">
7:00-9:00pm</span></td>                                                                                                                                                                                                                                                                                                                                                                                                                                          
                                                                                                                                                                                                                                                                                                                                                                                                                                          
<td height="331" style="height: 27px; " class="style43">                                                                                       
                                                                                             
&nbsp;</td>                                                                                                                                                                                                                                                                                                                                                                                                                                          
                                                                                                                                                                                                                                                                                                                                                                                                                                          
 </table>
                                                                                                                                                                                                                                                                                                                                                                                                                                                    
<div align="center" style="width: 475; height: 19">                                                                                                                                                                                                                                                                                                                                                                                                                                                                   
                                                                                             
<font size="4" color="#008000">                                                                     
                                                                     
<span class="style40">                                                                     
                                                                     
<br>
<br>
<br>
                                                                     
</span>
                                                                     
</div> 
                             
                                        
<TABLE align=center style="width: 580px; height: 226px">
<tr>
<TH style="width: 34px; height: 23px;" class="style51">&nbsp;</TH>
<TD style="height: 23px; width: 569px;" class="style40">                                                                                                                          
                                                                                                           
&nbsp;</TD></TR>
<TH style="width: 34px; height: 23px;" class="style51">　</TH>
<TD style="height: 23px; width: 569px;">                                                                                                                          
                                                                                                           
<font size="4">                                                                                                                          
                                                                                                           
<p align="center" style="word-spacing: 0; text-indent: 0; margin-left: 20; margin-right: 0; margin-top: 0; margin-bottom: 2" class="style98">
    <font size="4">亞寶斯福基督教錫安堂</font></p>                                                                                                                                                                                                                                         
                                                                                                           
<p align="center" style="word-spacing: 0; text-indent: 0; margin-left: 20; margin-right: 0; margin-top: 0; margin-bottom: 2" class="style40">
Zion Chinese Christian Reformed Church</p>                                                                                                                                                                                                                                         
</font>                                                                                                                          
                                                                                                           
<font size="5">                                                                                                                          
                                                                                                           
<p align="center" style="word-spacing: 0; text-indent: 0; margin-left: 20; margin-right: 0; margin-top: 0; margin-bottom: 2" class="style40">
　</p>                                                                                                                                                                                                                                         
</font>                                                                                                                          
                                                                                                           
<p align="left" style="word-spacing: 0; text-indent: 0; margin-left: 20; margin-right: 0; margin-top: 0; margin-bottom: 2">
<span class="style40">地　　　址:                                                                                                                          
</span>                                                                                                                          
<span class="style40">                                                                                                                          
                                                                                                           
<font class="style2">&nbsp;35199 DeLair Road, Abbotsford, B.C., Canada V3G 2E2</font></span></p>                                                                                                                                                                                                                       
<p align="left" class="style52">
<span class="style40">辦公室電話:</span>&nbsp;&nbsp; (604)852-9354</p>                                                                                                                                                                                                                          
<p align="left" style="word-spacing: 0; text-indent: 0; margin-left: 20; margin-right: 0; margin-top: 0; margin-bottom: 2">
<span class="style40">牧　　　者:&nbsp; </span>
<font class="style2"><span class="style40">Pastor</span><span lang="en-ca" class="style40"> Joseph Chen</span><span class="style40">&nbsp;</span></font><span class="style40"><strong class="style2">陳于志牧師</strong></span></p>
<p align="left" style="word-spacing: 0; text-indent: 0; margin-left: 20; margin-right: 0; margin-top: 0; margin-bottom: 2">
<span class="style40">顧<span lang="en-us"> </span>問<span lang="en-us"> </span>牧師<span lang="en-ca" class="style40">:&nbsp;&nbsp;</span><font class="style2">Rev. Alvin Beukema</font></span></p>
<p align="left" style="word-spacing: 0; text-indent: 0; margin-left: 20; margin-right: 0; margin-top: 0; margin-bottom: 2">
網<span class="style40"><font size="4">　　 站:</font></span><span lang="EN-US" class="style40"><font size="4">&nbsp;
<a target="_blank" style="text-decoration: underline; text-underline: single; " href="http://www.zionccrc.org">
<span class="style2">http://www.zionccrc.org</span></a></font></span></p>                                                                                                                                                                                                                          
                                                                                                                                                                                                                         
<p align="left" style="word-spacing: 0; text-indent: 0; margin-left: 20; margin-right: 0; margin-top: 0; margin-bottom: 2">
<span class="style40">傳<span lang="en-us"> </span>真<span lang="en-us"> </span>號碼</span>:<span lang="en-us">
</span>&nbsp;<span class="style24"><span lang="en-us"> </span>(604)852-9354</span></p>
<p align="left" style="word-spacing: 0; text-indent: 0; margin-left: 20; margin-right: 0; margin-top: 0; margin-bottom: 2" class="style40">
&nbsp;</p>
<p align="left" style="word-spacing: 0; text-indent: 0; margin-left: 20; margin-right: 0; margin-top: 0; margin-bottom: 2">
<span class="style40">教<span lang="en-us"> </span>會<span lang="en-us"> </span>電郵</span><span class="style41">：<span lang="en-us">&nbsp;&nbsp;
</span></span><font size="4" color="#008000"><span class="style40"><a href="mailto:zionchinesecrc@yahoo.com"><span style="text-decoration: underline" lang="en-us" class="style2">zionchinesecrc@yahoo.com</span></a></span></p>
</font>
<p align="left" style="word-spacing: 0; text-indent: 0; margin-left: 20; margin-right: 0; margin-top: 0; margin-bottom: 2">
<span class="style2">任何信仰上的問題都歡迎您的來信</span></p>
</TD></TR>
<TH height="33" style="width: 34px" class="style51">　</TH>
<td height="33" style="width: 569px">
<span lang="en-us" class="style40">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
________________________________________________________</span></TD>


</table>
 <div class="style7">
 <span class="style24">您是本站第</span> </div>
	<div class="style33">
<span class="style40">
<!-- Start of StatCounter Code for Default Guide -->
<script type="text/javascript">
var sc_project=5037249; 
var sc_invisible=0; 
var sc_security="f2b3f9ad"; 
var scJsHost = (("https:" == document.location.protocol) ?
"https://secure." : "http://www.");
document.write("<sc"+"ript type='text/javascript' src='" +
scJsHost+
"statcounter.com/counter/counter.js'></"+"script>");
</script>
</div>
<noscript>
	<div class="style7">
<div class="statcounter"><a title="web analytics"
href="http://statcounter.com/" target="_blank"><img
class="statcounter"
src="http://c.statcounter.com/5037249/0/f2b3f9ad/0/"
alt="web analytics"></a></div></div>
	</noscript>
				<div class="style7">
<!-- End of StatCounter Code for Default Guide -->
                                                                                                                                                                                                                                                                                                                                                                                                                                                          
<span class="style2">位貴賓</span></div>
				<span lang="en-ca" class="style2"><span class="style41">2014 
	</span></span>
	<span class="style2"><span class="style10"><span class="style40">Copyright &copy; 
	</span> <span lang="en-ca" class="style40">
	www.zionccrc.org</span><span class="style40"> All rights reserved.<a href="http://songsofpraise.org"><img src="http://songsofpraise.org/banner/sopbutn.gif" border=0 width=90 height=30 style="float: right"></a></span></span></span><p class="style40"><a href="http://www.alldaytalk.com/" target=_blank>
<font class="style2">本網站由泰爾斯科技(TieUs Technology Corporation)贊助</font></a>                                      
	
<p class="style43">&nbsp;</p>
<p class="style40">&nbsp;</p>

</body>