<!--#include file="conn.asp"-->


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>无标题文档</title>
<link href="../inc/Style.css" rel="stylesheet">
</head>

<body>
<form id="form1" name="form1" method="post" action="gonggaosave.asp?action=add">
  <table width="800"  align="center" border="0" cellpadding="0" cellspacing="1" bgcolor="#CCCCCC" >
  <tr bgcolor="#F5F5F5">
    <td width="150" height="25" align="center" bgcolor="#F5F5F5" class="manager_orange_font_12px">公告时间：</td>
    <td>&nbsp; 
      <input name="date" type="text" size="20" maxlength="40" class="manager_input_1" value="<%=date()%>"></td>
  </tr>
      <tr bgcolor="#ffffff">
    <td width="150" height="230" align="center" bgcolor="#ffffff" class="manager_orange_font_12px">公告内容：</td>
    <td><span class="chinese">
      <textarea style="display:none" name="content"><%=Content%></textarea>
			<iframe class="dataInput" id="content" name="content" src="../eWebEditor/ewebeditor.asp?id=content&style=s_blue1" frameborder="0" scrolling="no" width="550" HEIGHT="340"><%=Content%></iframe>    </td>
  </tr>
    <tr bgcolor="#F5F5F5">
    <td height="30" colspan="2" align="center" bgcolor="#F5F5F5" class="manager_orange_font_12px"><span class="chinese">
      <input type="submit" name="Submit1" value="添加" class="logbutton">
      &nbsp;&nbsp;&nbsp;&nbsp;<input type="reset" name="Reset" value="取消" class="logbutton"></td>
    </tr>
  </table>
</form>

</body>
</html>
