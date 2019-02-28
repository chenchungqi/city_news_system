<!--#include file="inc/conn.asp"-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB2312" />
<%
Set rs=server.createobject("adodb.recordset")
id = Trim(Request("id"))
	 sql = "Select * From Article Where id ="&id&" "
     rs.open sql,conn,1,3
	 

Set rs6=server.createobject("adodb.recordset")
	 sql6="select top 1 * from gonggao order by date desc"
     rs6.open sql6,conn,1,3	

Set rs5=server.createobject("adodb.recordset")
	 sql5="select top 5 * from Article order by readtime desc "
     rs5.open sql5,conn,1,3
%>



<title>无标题文档</title>
<style type="text/css">
body {
	margin: 0px;
	padding: 0px;
}
#header {
	background-color: #D4D0C8;
	background-image: url(images/header.jpg);
	background-repeat: no-repeat;
	height: 150px;
	width: 1000px;
	margin-top: 0px;
	margin-right: auto;
	margin-bottom: 0px;
	margin-left: auto;
}
#header #logo {
	font-family: "黑体";
	font-size: 24px;
	line-height: 40px;
	color: #311D15;
	height: 40px;
	width: 200px;
	padding-top: 40px;
	padding-left: 110px;
}
.big {
	font-size: 36px;
}
#nav {
	height: 60px;
	width: 1000px;
	background-color: #000;
	margin-top: 0px;
	margin-right: auto;
	margin-bottom: 0px;
	margin-left: auto;
}
#nav #nav1 {
	height: 60px;
	width: 1000px;
	margin-top: 0px;
	margin-right: auto;
	margin-bottom: 0px;
	margin-left: auto;
}
#nav #nav1 #nav2 {
	float: left;
	height: 60px;
	width: 600px;
}
#nav #nav1 #nav2 ul li {
	float: left;
	height: 60px;
	width: 100px;
	list-style-type: none;
	border-right-width: 1px;
	border-right-style: solid;
	border-right-color: #5A3324;
}
#nav #nav1 #nav2 ul {
	margin: 0px;
	padding: 0px;
}
#nav #nav1 #nav2 a {
	font-family: "黑体";
	font-size: 18px;
	line-height: 60px;
	font-weight: bolder;
	color: #FFF;
	text-decoration: none;
	text-align: center;
	display: block;
	height: 60px;
	width: 100px;
}
#nav #nav1 #nav2 a:hover {
	color: #F90;
	background-color: rgba(255,255,255,0.2);
}
#nav #nav1 #date {
	float: left;
	height: 60px;
	width: 250px;
	font-size: 16px;
	line-height: 60px;
	color: #FFF;
}
#nav #nav1 #cart {
	float: right;
	height: 60px;
	width: 100px;
	padding-top: 0px;
	padding-right: 0px;
	padding-bottom: 0px;
	padding-left: 0px;
}
#nav #nav1 #cart a {
	font-family: "黑体";
	font-size: 18px;
	line-height: 50px;
	color: #FFF;
	text-decoration: none;
	display: block;
	height: 60px;
	width: 100px;
	padding: 0px;
}
#nav #nav1 #cart a:hover {
	line-height: 40px;
	color: #F90;
	background-position: 10px 10px;
}
#main {
	width: 1000px;
	margin-top: 0px;
	margin-right: auto;
	margin-bottom: 0px;
	margin-left: auto;
}
#main #mleft {
	height: 800px;
	width: 245px;
	float: left;
	border: 1px solid #FFF;
}
#main .left1  {
	background-image: url(images/%E6%9C%AA%E6%A0%87%E9%A2%98-3.jpg);
	height: 300px;
	width: 240px;
}
#main .left1 #wzgg  {
	margin-left: 70px;
	font-size: 18px;
	font-family: "微软雅黑";
	padding-top: 20px;
	font-weight: bold;
	margin-top: 5px;
}
#main .left1 #gonggao  {
	height: 200px;
	width: 200px;
	margin-left: 20px;
	font-size: 18px;
	font-family: "楷体";
	margin-top: 5px;
}
#main #mmiddle {
	float: left;
	height: 810px;
	width: 495px;
	border: 1px double #FFF;
}
#main .mid2 {
	background-image: url(images/%E6%9C%AA%E6%A0%87%E9%A2%98-6.jpg);
	height: 240px;
	width: 240px;
	font-family: "微软雅黑";
	font-size: 14px;
	font-weight: bold;
}
#yqlj {
	padding-left: 40px;
	padding-top: 25px;
	font-size: 16px;
	line-height: 30px;
	font-family: "华文新魏";
}
.content {
	font-family: "微软雅黑";
	font-size: 14px;
	margin: 0px;
	padding: 0px;
}
#hangzhou2 {
}
h2 {
	font-family: "楷体";
	font-size: 24px;
	font-weight: bold;
	text-align: center;
	padding-top: 20px;
	padding-right: 0px;
	padding-bottom: 0px;
	padding-left: 0px;
	margin: 0px;
}
#shanghai2 {
}
#chongqing2 {
}
#main #mmiddle .mid {
	background-image: url(images/%E6%9C%AA%E6%A0%87%E9%A2%98-5.jpg);
	height: 260px;
	width: 495px;
	margin-bottom: 10px;
	margin-top: 5px;
}
#main #mright {
	float: left;
	height: 800px;
	width: 245px;
	border: 1px solid #FFF;
	margin-left: 5px;
}
#main .right1 {
	background-image: url(images/%E6%9C%AA%E6%A0%87%E9%A2%98-66.jpg);
	height: 245px;
	width: 245px;
	margin-top: 5px;
	font-family: "微软雅黑";
	font-size: 14px;
	margin-left: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	padding-top: 0px;
	padding-right: 0px;
	padding-bottom: 0px;
	padding-left: 0px;
	background-repeat: no-repeat;
}
#main #zhuyao {
	height: 740px;
	width: 753px;
	float: right;
	background-image: url(images/zhuyaokuang%E5%89%AF%E6%9C%AC.jpg);
	background-repeat: no-repeat;
	padding-top: 70px;
	padding-right: 0px;
	padding-bottom: 0px;
	padding-left: 0px;
	margin-top: 1px;
	margin-right: 0px;
	margin-bottom: 0px;
	margin-left: 0px;
}
#form1 #dlguang {
	padding-left: 25px;
	padding-right: 0px;
	margin: 0px;
	padding-top: 20px;
	padding-bottom: 0px;
	font-size: 16px;
	line-height: 30px;
}
#beijing {
	margin-left: 25px;
	margin-right: 25px;
	margin-top: 10px;
}
#shanggan {
	margin-right: 25px;
	margin-left: 25px;
	font-family: "微软雅黑";
	font-size: 14px;
	margin-bottom: 0px;
	margin-top: 5px;
	padding-bottom: 100px;
	padding-top: 0px;
	padding-right: 0px;
	padding-left: 0px;
}
#weixin {
	padding-left: 50px;
	padding-top: 30px;
}
#bnav {
	background-color: #000;
	height: 30px;
	width: 1000px;
	margin-top: 0px;
	margin-right: auto;
	margin-bottom: 0px;
	margin-left: auto;
	clear: both;
	font-size: 16px;
	color: #FFF;
	font-family: "楷体";
	line-height: 24px;
	text-align: center;
}
.STYLE1 {font-size: 16px}
</style>

<script type="text/javascript">
function showtime(){
	var oDate=new Date();
	var year=oDate.getFullYear();
	var month=oDate.getMonth()+1;
	var date=oDate.getDate();
	var hours=oDate.getHours();
	var minutes=oDate.getMinutes();
	var seconds=oDate.getSeconds();

	
	var str="";
	str=year+"."+month+"."+date+". "+"  ";
	if(hours<12) str+="   Good morining！ ";
		else if(hours<17) str+="   Good afternoon！";
		else 
			str+="   Good evening！";
	
	document.getElementById("date").innerHTML=str;
	
	var itimer=setTimeout("showtime()",1000);
	
	}

</script>

</head>

<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" onLoad="showtime()">
<LINK href="inc/style.css" type=text/css rel=stylesheet>
<table width="1100" align="center">
<tr>
<td>
<div id="header">
  <div id="logo"></div>
</div>
<div id="nav">
  <div id="nav1">
    <div id="nav2">
      <ul>
        <li><a href="newscenter.asp?lanmuid=1">北京</a></li>
        <li><a href="newscenter.asp?lanmuid=3">杭州</a></li>
        <li><a href="newscenter.asp?lanmuid=2">上海</a></li>
        <li><a href="newscenter.asp?lanmuid=4">重庆</a></li>
        <li><a href="newscenter.asp?lanmuid=5">香港</a></li>
      </ul>
    </div>
    <div id="date">date2</div>
    <div id="cart"><a href="tougao.asp">来信投稿</a></div>
  </div>
</div>
<div id="main">
  <div id="mleft">
    <div class="left1">
      <div id="wzgg"> 网站公告 </div>
      <div id="gonggao"> <span class="text">
        <marquee direction="up" scrollamount="1" height="180 width="180"" onMouseOver="stop()" onMouseOut="start()">
   
      </span><%=rs6("Content")%>
           </marquee>
           </div>
    </div>
    <div class="right1">
      <h2>热点新闻 </h2>
       
        <%
		i=1
		Do While Not RS5.EOF

		%>
        <table width="96%%" border="0" align="center" cellpadding="0" cellspacing="0">
        <% If Len(rs5("title"))>10 Then %>
          <tr>
            <td width="9%"><img src="images/admin_top_open.gif" width="25" height="25" align="right" /></td>
            <td width="75%"><a href="shownews.asp?id=<%=rs5("id")%>"><%=left(rs5("title"),10)%>.....</a></td>

          </tr>
         <% Else %>
          <tr>
            <td width="9%"><img src="images/admin_top_open.gif" width="25" height="25" align="right" /></td>
            <td width="75%"><a href="shownews.asp?id=<%=rs5("id")%>"><%=rs5("title")%></a></td>
 
          </tr>
          <% End If %>         
         
         
          <tr>
            <td height="3" colspan="3"></td>
          </tr>
        </table>
      	<%
		RS5.MoveNext
		i=i+1
    	Loop
		%>  
 
 
 
 
    </div>
    <div class="mid2">
      <div align="center">
        <h2>友情链接</h2>
      </div>
      <table width="100%" border="0" cellpadding="0" cellspacing="0" id="yqlj">
        <tr>
          <td><a href="http://www.163.com/">163--网易</a></td>
        </tr>
        <tr>
          <td><a href="http://www.sohu.com/">sohu--搜狐</a></td>
        </tr>
                 <tr>
          <td><a href="http://www.sohu.com/">xinwen--中国新闻网</a></td>
        </tr>       
      </table>
    </div>
  </div>
  <div id="zhuyao">

<table width="600" border="1" align="center">
<tr>
&nbsp;
</tr>
  <tr>
    <td colspan="3" align="center"><span class="STYLE1"><%=rs("title")%></span></td>
  </tr>
  <tr>
    <td><%=rs("readtime")%></td>
    <td><%=rs("date")%></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td colspan="3"><%=rs("Content")%></td>
  </tr>
</table>

  </div>
</div> 
<div id="bnav">made by chenchuangqi in May.2018</div>
</td>
</tr>
</table>
</body>
</html>
<%  
	readtime=rs("readtime")
	sql1 = "update Article set readtime="& readtime &"+1 Where id ="& id &" "
	conn.Execute(sql1)
    rs.Close
    Set rs = Nothing
    Conn.Close
    Set Conn = Nothing
 %>
