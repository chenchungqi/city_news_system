<!--#include File="conn.asp"-->
<!--#include File="IsManager.asp"-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>�����б�</title>
<link href="../inc/Style.css" rel="stylesheet">
</head>

<body>

<table width="100%" border="0" align="center" cellpadding="2" cellspacing="1" class="border">
  <tr class="topbg">
    <td height="22" colspan="2"  align="center"><strong>�������</strong></td>
  </tr>
  <tr class="tdbg">
    <td width="70" height="30" ><strong>��������</strong></td>
    <td>&nbsp;<a href="gonggao.asp">������ҳ</a>&nbsp;|&nbsp;<a href=gonggaoadd.asp class="manager_link_3">��ӹ���</a>&nbsp;|</td>
  </tr>
</table>

<table class="border" border="0" cellspacing="1" width="100%" cellpadding="0">
  <tr class="title" height="22">
    <td width="44" align="center"  height="22"><strong>ID</strong></td>
    <td width="463" align="center" ><strong>��������</strong></td>
    <td width="74" align="center" ><strong>����</strong></td>

    <td width="184" align="center" ><strong>����</strong></td>
  </tr>
            <% on error resume next
     set rs=server.createobject("adodb.recordset")
	sql="select * from gonggao order by id desc"
     rs.open sql,conn,1,1
	'����ÿҳ��ʾ��¼����
	rs.PageSize=15
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
		n = n + 1
		'If n Mod 2 = 0 Then
			'Response.Write("<tr bgcolor='#F6F6F6' height='24'>")
		'End If
		'If n Mod 2 = 1 Then
			'Response.Write("<tr bgcolor='#ECECEC' height='24'>")
		'End If
%>
  <tr class="tdbg" onMouseOut="this.style.backgroundColor=''" onMouseOver="this.style.backgroundColor='#BFDFFF'" height="25">
    <td width="44" align="center"><%=n%></td>
    <td>&nbsp;&nbsp;<a href="../Newscenter_list.asp?newsid=<%=rs("newsid")%>" target="_blank" class="manager_link_2"><%=rs("Content")%></a></td>
    <td width="74" align="center"><%=rs("date")%></td>

    <td width="184" align="center"><a href="gonggaoedit.asp?id=<%=rs("id")%>" class="manager_link_2">[�޸�]</a> <a href="gonggaodel.asp?id=<%=rs("id")%>" class="manager_link_2">[ɾ��]</a>
	</td>
  </tr>
<%
	rs.MoveNext()
	'����ÿҳ��ʾ�Ŀγ̵�����
	RowCount = RowCount - 1
	Loop
'End If
%>  
</table>

<table class="border" border="0" cellspacing="1" width="100%" cellpadding="0">
  <tr class="tdbg" onMouseOut="this.style.backgroundColor=''" onMouseOver="this.style.backgroundColor='#BFDFFF'" height="25" align="right">
    <td height="20"><%
Response.Write("�� "+cstr(iPage)+" ҳ/�� "+cstr(rs.pagecount)+" ҳ��")
If iPage = 1 Then
	Response.Write("��ҳ����һҳ")
Else
	Response.Write("<a href='News.asp?page=1'>��ҳ</a>��<a href='News.asp?page="+cstr(iPage-1)+"'>��һҳ</a>")
End If
	Response.Write("&nbsp;&nbsp;")
If iPage = rs.PageCount Then
	Response.Write("��һҳ��βҳ")
Else
	Response.Write("<a href='News.asp?page="+cstr(iPage+1)+"'>��һҳ</a>��<a href='News.asp?page="+cstr(rs.PageCount)+"'>βҳ</a>")
End If
	Response.Write("&nbsp;&nbsp;")


%></td>
  </tr>
</table>

</body>
</html>
