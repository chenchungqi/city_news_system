<!--#include File="conn.asp"-->
<!--#include File="IsManager.asp"-->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>�ޱ����ĵ�</title>
</head>

<body>
<%
Dim StrAction,cid,check
'�õ��������������ΪADD���ʾ�����γ̣����ΪUPDATE���ʾ���Ŀγ�
StrAction = Trim(Request("action"))
newsid = Trim(Request.QueryString("id"))
If StrAction="unpass" Then
	conn.Execute("UPDATE Article SET state = 1 WHERE id = "&newsid&"")
Else
	conn.Execute("UPDATE Article SET state = 0 WHERE id = "&newsid&"")
End If
response.Write "<script LANGUAGE='javascript'>alert('������ųɹ�!');history.go(-1);</script>"
%>

</body>

</html>
