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
<link href="../inc/Style.css" rel="stylesheet">
</head>

<body>



<table class="border" border="0" cellspacing="1" width="100%" cellpadding="0">
        <tr class="title" height="22">
          <td  height="22" colspan="3" align="center"><strong>确 定 删 除 吗？</strong></td>
        </tr>
        <tr class="tdbg" onMouseOut="this.style.backgroundColor=''" onMouseOver="this.style.backgroundColor='#BFDFFF'" height="25">
          <td width="231" align="right"><span class="manager_black_font_12px"><strong> ID 号</strong></span>：&nbsp;</td>
          <td width="763" align="left"><span class="manager_black_font_12px">&nbsp;&nbsp;<%=rs("id")%></span></td>
        </tr>
        <tr class="tdbg" onMouseOut="this.style.backgroundColor=''" onMouseOver="this.style.backgroundColor='#BFDFFF'" height="25">
          <td width="231" align="right"><span class="manager_black_font_12px"><strong><strong>栏目序号</strong></strong></span>：&nbsp;</td>
          <td width="763" align="left"><span class="manager_black_font_12px">&nbsp;&nbsp;<%=rs("lanmuid")%></span></td>
        </tr>
        <tr class="tdbg" onMouseOut="this.style.backgroundColor=''" onMouseOver="this.style.backgroundColor='#BFDFFF'" height="25">
          <td width="231" align="right"><span class="manager_black_font_12px"><strong><strong>栏目名称</strong></strong></span>：&nbsp;</td>
          <td width="763" align="left"><span class="manager_black_font_12px">&nbsp;&nbsp;<%=rs("lanmu")%></span></td>
        </tr>
        <tr class="tdbg" onMouseOut="this.style.backgroundColor=''" onMouseOver="this.style.backgroundColor='#BFDFFF'" height="25">
          <td colspan="2" align="center"><input type="button" value="删 除" onClick="location.href('lanmudelcheck.asp?id=<%=trim(request.QueryString("id"))%>');" class="logbutton">            &nbsp;<span class="manager_black_font_12px">&nbsp;&nbsp;
            <input type="button" value="取 消" onClick="history.back(-1);" class="logbutton">
          </span></td>
        </tr>
      </table>
<%
rs.close
set rs=nothing
%>

</body>
</html>
