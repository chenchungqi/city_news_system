<!--#include File="conn.asp"-->
<!--#include File="IsManager.asp"-->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>�����б�</title>
<link href="../inc/Style.css" rel="stylesheet">
</head>

<body>




<table width="100%" border="0" align="center" cellpadding="2" cellspacing="1" class="border">
  <tr class="topbg">
    <td height="22" colspan="2"  align="center"><strong>�� �� �� ��</strong></td>
  </tr>
  <tr class="tdbg">
    <td width="70" height="30" ><strong>����������</strong></td>
    <td>&nbsp;<a href="news.asp">������ҳ</a>&nbsp;|&nbsp;<a href=NewsAdd.asp class="manager_link_3">��������</a>&nbsp;|</td>
  </tr>
</table>

<table class="border" border="0" cellspacing="1" width="100%" cellpadding="0">
  <tr class="title" height="22">
    <td width="44" align="center"  height="22"><strong>ID</strong></td>
    <td width="463" align="center" ><strong>���±���</strong></td>
    <td width="74" align="center" ><strong>����</strong></td>
    <td width="74" align="center" ><strong>��Դ</strong></td>
    <td width="62" align="center" ><strong>�Ƿ��ȵ�</strong></td>
    <td width="64" align="center" ><strong>��������</strong></td>
    <td width="184" align="center" ><strong>����</strong></td>
  </tr>
            <% on error resume next
     set rs=server.createobject("adodb.recordset")
	sql="select * from Article order by date desc"
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
    <td>&nbsp;&nbsp;<a href="../Newscenter_list.asp?newsid=<%=rs("newsid")%>" target="_blank" class="manager_link_2"><%=rs("title")%></a></td>
    <td width="74" align="center"><%=rs("author")%></td>
    <td width="74" align="center"><%=rs("source")%></td>
    <td width="62" align="center"><%
	If rs("hot")=1 Then
		Response.Write("��")
	Else
		Response.Write("��")
	End If
	%></td>
    <td width="64" align="center"><%=rs("date")%></td>
    <td width="184" align="center"><a href="NewsEdit.asp?id=<%=rs("id")%>&lanmuid=<%=rs("lanmuid")%>" class="manager_link_2">[�޸�]</a> <a href="NewsDelt.asp?id=<%=rs("id")%>" class="manager_link_2">[ɾ��]</a>
      <% if rs("state")=1 then %>
      <a href="newscheck.asp?action=pass&id=<%=rs("id")%>">[ͨ�����]</a>
        <%else%>
        <a href="newscheck.asp?action=unpass&id=<%=rs("id")%>">[δ���]</a>
    <%End If%>	</td>
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
'If rs.PageCount > 1 Then
'	Response.Write("��ҳ��")
'	For i = 1 to rs.PageCount
'		Response.Write("[<a href='StudentList_Edit.asp?page="& i &"'>")
'		Response.Write( ""& i & "</a>]&nbsp;")
'	Next
'End If
%></td>
  </tr>
</table>
</body>
</html>