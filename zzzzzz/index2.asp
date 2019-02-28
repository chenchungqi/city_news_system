<!--#include virtual="inc/conn.asp"-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB2312" />
<link href="inc/css.css" rel="stylesheet" type="text/css" />
<%
Set rs=server.createobject("adodb.recordset")
	 sql="select * from Article where state=1"
     rs.open sql,conn,1,3
%>



<title>新闻首页</title>
</head>

<body>
<%
i=1
Do While Not RS.EOF

%>
<table width="800" border="1" align="center">
  <tr>
    <td colspan="3" align="center">&nbsp;</td>
  </tr>
  <tr>
    <td width="49"><%=i%></td>
    <td width="575"><a href="shownews.asp?id=<%=rs("id")%>"><%=rs("title")%></a></td>
    <td width="154"><%=rs("date")%></td>
  </tr>
  <tr>
    <td colspan="3">&nbsp;</td>
  </tr>
</table>
<%
RS.MoveNext
i=i+1
    Loop
%>
<table width="80%" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td width="33%">&nbsp;</td>
    <td width="56%">&nbsp;</td>
    <td width="11%"><a href="Newscenter.asp">more</a></td>
  </tr>
</table>

</body>
</html>
<%
    rs.Close
    Set rs = Nothing
    Conn.Close
    Set Conn = Nothing
 %>
