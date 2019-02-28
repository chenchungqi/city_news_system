<!--#include file="conn.asp"-->
<%
set rs=server.createobject("adodb.recordset")
sql="select * from lanmu where id="&trim(request.QueryString("id"))&""
rs.open sql,conn,1,1

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>无标题文档</title>
</head>

<body>

<form id="form1" name="form1" method="post" action="lanmusave.asp?action=edit&id=<%=rs("id")%>">
  <table width="800"  align="center" border="0" cellpadding="0" cellspacing="1" bgcolor="#CCCCCC" >
  <tr bgcolor="#F5F5F5">
    <td width="150" height="25" align="center" bgcolor="#F5F5F5" class="manager_orange_font_12px">栏目序号：</td>
    <td>&nbsp; 
      <input name="lanmuid" type="text" class="manager_input_1" value="<%=rs("lanmuid")%>" size="15" maxlength="20" ></td>
  </tr>
      <tr bgcolor="#F5F5F5">
    <td width="150" height="25" align="center" bgcolor="#F5F5F5" class="manager_orange_font_12px">栏目名称：</td>
    <td>&nbsp; 
      <input name="lanmu" type="text" class="manager_input_1" value="<%=rs("lanmu")%>" size="30" maxlength="40" ></td>
  </tr>
    <tr bgcolor="#F5F5F5">
    <td height="30" colspan="2" align="center" bgcolor="#F5F5F5" class="manager_orange_font_12px"><span class="chinese">
      <input type="submit" name="Submit1" value="修改栏目" class="logbutton">
      &nbsp;&nbsp;&nbsp;&nbsp;<input type="reset" name="Reset" value="重置" class="logbutton"></td>
    </tr>
  </table>
</form>


</body>
</html>
