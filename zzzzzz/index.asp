<!--#include file="inc/conn.asp"-->
<%
Set rs=server.createobject("adodb.recordset")
	 sql="select top 5 * from Article where lanmuid=1"
     rs.open sql,conn,1,3
	 
Set rs2=server.createobject("adodb.recordset")
	 sql2="select top 5 * from Article where lanmuid=2"
     rs2.open sql2,conn,1,3
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link href="inc/css.css" rel="stylesheet" type="text/css" />
<title>��ҳ</title>
<style type="text/css">
body {
	margin: 0px;
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
	font-family: "����";
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
	font-family: "����";
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
	font-family: "����";
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
	font-family: "΢���ź�";
	padding-top: 20px;
	font-weight: bold;
	margin-top: 5px;
}
#main .left1 #gonggao  {
	height: 200px;
	width: 200px;
	margin-left: 20px;
	font-size: 18px;
	font-family: "����";
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
	font-family: "΢���ź�";
	font-size: 14px;
	font-weight: bold;
}
#yqlj {
	padding-left: 40px;
	padding-top: 25px;
	font-size: 16px;
	line-height: 30px;
	font-family: "������κ";
}
.content {
	font-family: "΢���ź�";
	font-size: 14px;
	margin: 0px;
	padding: 0px;
}
#hangzhou2 {
}
h2 {
	font-family: "����";
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
	background-image: url(images/%E6%9C%AA%E6%A0%87%E9%A2%98-6.jpg);
	height: 245px;
	width: 245px;
	margin-top: 5px;
	font-family: "΢���ź�";
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
	font-family: "΢���ź�";
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
	font-family: "����";
	line-height: 24px;
	text-align: center;
}
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
	if(hours<12) str+="   Good morining�� ";
		else if(hours<17) str+="   Good afternoon��";
		else 
			str+="   Good evening��";
	
	document.getElementById("date").innerHTML=str;
	
	var itimer=setTimeout("showtime()",1000);
	
	}

</script>

</head>


<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" onload="showtime()">

<embed src='Karen O - The Moon Song (Studio Version Duet).mp3' loop="false" aotostart="true" mastersound="mastersound" hidden="true" width="0" height="0"></embed>

<div id="header">
  <div id="logo"></div>
</div>
<div id="nav">
  <div id="nav1">
    <div id="nav2">
      <ul>
        <li><a href="beijing.html">����</a></li>
        <li><a href="hangzhou.html">����</a></li>
        <li><a href="shanghai.html">�Ϻ�</a></li>
        <li><a href="chongqing.html">����</a></li>
        <li><a href="xianggan.html">���</a></li>
      </ul>
    </div>
    <div id="date">date2</div>
    <div id="cart"><a href="tougao.asp">����Ͷ��</a></div>
  </div>
</div>
<div id="main">
  <div id="mleft">
    <div class="left1">
      <div id="wzgg"> ��վ���� </div>
      <div id="gonggao"> <span class="text">
        <marquee direction="up" scrollamount="1" height="180 width="180"" onMouseOver="stop()" onMouseOut="start()">
        </marquee>
      </span>ffffff</div>
    </div>
    <div class="right1">
      <h2>��Ա��½ </h2>
      <form id="form1" name="form1" method="post" action="">
        <table width="240" border="0" cellpadding="0" cellspacing="0" id="dlguang">
          <tr>
            <td width="33%">�û�����</td>
            <td width="67%"><label for="textfield"></label>
              <input type="text" name="textfield" id="textfield"  size="10"/></td>
          </tr>
          <tr>
            <td width="33%">���룺</td>
            <td width="67%"><label for="textfield2"></label>
              <input type="password" name="textfield2" id="textfield2" size="10" /></td>
          </tr>
        </table>
      </form>
    </div>
    <div class="mid2">
      <div align="center">
        <h2>��������</h2>
      </div>
      <table width="100%" border="0" cellpadding="0" cellspacing="0" id="yqlj">
        <tr>
          <td><a href="http://www.163.com/">163--����</a></td>
        </tr>
        <tr>
          <td><a href="http://www.sohu.com/">sohu--�Ѻ�</a></td>
        </tr>
      </table>
    </div>
  </div>
  <div id="mmiddle">
    <div class="mid">
      <div id="hangzhou">
        <h2>����</h2>
      </div>
      <div class="content" id="hangzhou2">
        <table width="100%%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td>&nbsp;</td>
          </tr>
        </table>
        
        <%
		i=1
		Do While Not RS.EOF

		%>
        <table width="96%%" border="0" align="center" cellpadding="0" cellspacing="0">
          <tr>
            <td width="9%"><img src="images/admin_top_open.gif" width="25" height="25" align="right" /></td>
            <td width="75%"><a href="shownews.asp?id=<%=rs("id")%>"><%=rs("title")%></a></td>
            <td width="16%"><%=rs("date")%></td>
          </tr>
          <tr>
            <td height="3" colspan="3"></td>
          </tr>
        </table>
      	<%
		RS.MoveNext
		i=i+1
    	Loop
		%>  
        
      </div>
    </div>
    <div class="mid">
      <div id="shanghai">
        <h2>�Ϻ�</h2>
      </div>
      <div class="content" id="shanghai2">
        <table width="100%%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td>&nbsp;</td>
          </tr>
        </table>
        
        <%
		i=1
		Do While Not RS2.EOF

		%>
        <table width="96%%" border="0" align="center" cellpadding="0" cellspacing="0">
          <tr>
            <td width="9%"><img src="images/admin_top_open.gif" width="25" height="25" align="right" /></td>
            <td width="75%"><a href="shownews.asp?id=<%=rs2("id")%>"><%=rs2("title")%></a></td>
            <td width="16%"><%=rs2("date")%></td>
          </tr>
          <tr>
            <td height="3" colspan="3"></td>
          </tr>
        </table>
      	<%
		RS2.MoveNext
		i=i+1
    	Loop
		%>  
        
      
      </div>
    </div>
    <div class="mid">
      <div id="chongqing">
        <h2>����</h2>
      </div>
      <div class="content" id="chongqing2">
        <table width="100%%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td>&nbsp;</td>
          </tr>
        </table>
        
        <%
		i=1
		Do While Not RS.EOF

		%>
        <table width="96%%" border="0" align="center" cellpadding="0" cellspacing="0">
          <tr>
            <td width="9%"><img src="images/admin_top_open.gif" width="25" height="25" align="right" /></td>
            <td width="75%"><a href="shownews.asp?id=<%=rs("id")%>"><%=rs("title")%></a></td>
            <td width="16%"><%=rs("date")%></td>
          </tr>
          <tr>
            <td height="3" colspan="3"></td>
          </tr>
        </table>
      	<%
		RS.MoveNext
		i=i+1
    	Loop
		%>  
        
     
    </div>
    </div>
  </div>
  <div id="mright">
    <div class="right1">
      <h2>����</h2>
      <div id="beijing">fffff</div>
    </div>
    <div class="left1">
      <h2>���</h2>
      <div id="shanggan">fffff</div>
    </div>
    <div class="mid2"><img src="images/΢��ͼƬ_20180112184941.jpg" name="weixin" width="150" height="151" id="weixin" />
      <p align="center">&nbsp;</p>
    </div>
  </div>
</div> 
<div id="bnav">made by chenchuangqi in May.2018</div>

</body>
</html>
