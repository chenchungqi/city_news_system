<!--#include file="inc/conn.asp"-->

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<%	 
Set rs6=server.createobject("adodb.recordset")
	 sql6="select top 1 * from gonggao order by date desc"
     rs6.open sql6,conn,1,3	

Set rs5=server.createobject("adodb.recordset")
	 sql5="select top 5 * from Article order by readtime desc "
     rs5.open sql5,conn,1,3	
	 %>

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
	background-image: url(images/%E6%9C%AA%E6%A0%87%E9%A2%98-66.jpg);
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
#main #zhuyao {
	height: 740px;
	width: 745px;
	float: right;
	background-image: url(images/zhuyaokuang.jpg);
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


.style1 {
	FONT-SIZE: 12px; FONT-FAMILY: "����"
}
.style2 {
	FONT-WEIGHT: bold; COLOR: #ff6633; FONT-FAMILY: "����"
}
.style3 {
	COLOR: #ff0000
}
.style4 {
	COLOR: #009900
}
a img {border:0}
.STYLE6 {
	font-size: 18px;
	font-weight: bold;
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
<LINK href="inc/style.css" type=text/css rel=stylesheet>
<div id="header">
  <div id="logo"></div>
</div>
<div id="nav">
  <div id="nav1">
    <div id="nav2">
      <ul>
        <li><a href="newscenter.asp?lanmuid=1">����</a></li>
        <li><a href="newscenter.asp?lanmuid=3">����</a></li>
        <li><a href="newscenter.asp?lanmuid=2">�Ϻ�</a></li>
        <li><a href="newscenter.asp?lanmuid=4">����</a></li>
        <li><a href="newscenter.asp?lanmuid=5">���</a></li>
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
   
      </span><%=rs6("Content")%>
           </marquee>
           </div>
    </div>
    <div class="right1">
      <h2>�ȵ����� </h2>
       
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
        <h2>��������</h2>
      </div>
      <table width="100%" border="0" cellpadding="0" cellspacing="0" id="yqlj">
        <tr>
          <td><a href="http://www.163.com/">163--����</a></td>
        </tr>
        <tr>
          <td><a href="http://www.sohu.com/">sohu--�Ѻ�</a></td>
        </tr>
                 <tr>
          <td><a href="http://www.sohu.com/">xinwen--�й�������</a></td>
        </tr>       
      </table>
    </div>
  </div>
  <div id="zhuyao">
  
  
  
  <table width="700" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <TD width=1 background="images/left_bg.jpg"></TD>
    <TD width=700><table width="700" border="0" cellspacing="0" cellpadding="0" align="center" background="images/top.jpg" height="70">

</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="15"></td>
  </tr>
</table>

<TABLE height=20 cellSpacing=0 cellPadding=0 width=700 align=center border=0><!--DWLayoutTable-->
  <TBODY>
  <TR>
    <TD vAlign=top width=15 height=500>
      <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0><!--DWLayoutTable-->
        <TBODY>
        <TR>
          <TD width=15 height=500>&nbsp;</TD></TR></TBODY></TABLE></TD>
		  
    <TD vAlign=top width=5><!--DWLayoutEmptyCell-->&nbsp;</TD>
    <TD vAlign=top width=15>
      <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0><!--DWLayoutTable-->
        <TBODY>
        <TR>
          <TD width=15 height=450>&nbsp;</TD></TR></TBODY></TABLE></TD>
    <TD vAlign=top width=650><table width="88%"  border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="12" height="46" background="images/subMenuTopleft.gif">&nbsp;</td>
        <td width="619" valign="middle" background="images/subMenuTopbg.gif"><table width="100%"  border="0" cellpadding="0" cellspacing="0" >
            <tr>
              <td width="7%" height="25" >&nbsp;</td>
              <td width="82%" align="center"><span class="STYLE6">����֪ͨ</span> </td>
              <td width="11%" valign="middle"><a href="Newscenter.asp" target="_blank"></a></td>
            </tr>
        </table></td>
        <td width="10" background="images/subMenuTopRight.gif">&nbsp;</td>
      </tr>
      <tr>
        <td background="images/subMenuMiddleLeft.gif">&nbsp;</td>
        <td height="120" valign="top">
            <%
     set rs=server.createobject("adodb.recordset")
	 lanmuid=request.QueryString("lanmuid")
	sql="select * from Article where lanmuid="&lanmuid&""
     rs.open sql,conn,1,1
	'����ÿҳ��ʾ��¼����
	rs.PageSize=4
	'���ò���ȡҳ�����page
	iPage=CLng(Request("page"))
	If iPage <= 0 Then
		iPage = 1
	End If
	If iPage > rs.PageCount Then
		iPage = rs.PageCount
	End If
	rs.AbsolutePage = iPage
	RowCount = rs.PageSize
	'������ʾ�γ̱���Ϣ
	Do While Not rs.EOF And RowCount > 0
		
		%>


            <table width="100%" border="0" cellspacing="0" cellpadding="0" height="25">
              <tr>
                <td width="5%"><img src="images/newleft.gif" width="10" height="7"></td>
                <td width="81%"><a href="shownews.asp?id=<%=rs("id")%>" class="index_link_4" target="_blank"><%=rs("title")%></a>&nbsp;&nbsp;
                    
					<% if rs("hot")=1 then %>
                  <img src="images/hot.gif" width="26" height="10"></td>
                <% else %>
                <td width="0"></td>
                <% end if %>
                <td width="14%"><%=rs("date")%></td>
              </tr>
            </table>
<%
	rs.MoveNext()
	'����ÿҳ��ʾ�Ŀγ̵�����
	RowCount = RowCount - 1
	Loop
'End If
%>
        </td>
        <td background="images/subMenuMiddleRight.gif">&nbsp;</td>
      </tr>
      <tr>
        <td height="9" background="images/subMenuBottomLeft.gif"></td>
        <td background="images/subMenuBottomBg.gif"></td>
        <td background="images/subMenuBottomRight.gif"></td>
      </tr>
    </table>
      <table width="99%" border="0" cellspacing="0" cellpadding="0" >
        <tr>
          <td align="center"><div class="black_font_12px">
             <%
Response.Write("�� "+cstr(iPage)+" ҳ/�� "+cstr(rs.pagecount)+" ҳ��")
If iPage = 1 Then
	Response.Write("��ҳ����һҳ")
Else
	Response.Write("<a href='Newscenter.asp?page=1&lanmuid="&lanmuid&"'>��ҳ</a>��<a href='Newscenter.asp?lanmuid="&lanmuid&"&page="+cstr(iPage-1)+"'>��һҳ</a>")
End If
	Response.Write("&nbsp;&nbsp;")
If iPage = rs.PageCount Then
	Response.Write("��һҳ��βҳ")
Else
	Response.Write("<a href='Newscenter.asp?lanmuid="&lanmuid&"&page="+cstr(iPage+1)+"'>��һҳ</a>��<a href='Newscenter.asp?page="+cstr(rs.PageCount)+"&lanmuid="&lanmuid&"'>βҳ</a>")
End If
	Response.Write("&nbsp;&nbsp;")
If rs.PageCount > 1 Then
	Response.Write("��ҳ��")
	For i = 1 to rs.PageCount
		Response.Write("[<a href='Newscenter.asp?page="& i &"&lanmuid="&lanmuid&"'>")
		Response.Write( ""& i & "</a>]&nbsp;")
	Next
End If
%>
          </div></td>
        </tr>
      </table></TD>
  </TR>
  </TBODY>
</TABLE>    </TD>
    <TD width=1 background="images/left_bg.jpg"></TD>
  </tr>
</table>
  
  
  
  
  
  </div>
</div> 
<div id="bnav">made by chenchuangqi in May.2018</div>
<%
'-----------�Ͽ����ݿ�����-------------

rs.close
set rs=nothing
Conn.close
Set Conn=nothing



 
%>
</body>
</html>