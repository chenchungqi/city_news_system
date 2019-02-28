<!--#include File="conn.asp"-->
<!--#include File="IsManager.asp"-->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>无标题文档</title>
</head>

<body>
<%
Dim StrAction,cid,check
'得到动作参数，如果为ADD则表示创建课程，如果为UPDATE则表示更改课程
StrAction = Trim(Request("action"))
newsid = Trim(Request.QueryString("id"))
If StrAction="unpass" Then
	conn.Execute("UPDATE Article SET state = 1 WHERE id = "&newsid&"")
Else
	conn.Execute("UPDATE Article SET state = 0 WHERE id = "&newsid&"")
End If
response.Write "<script LANGUAGE='javascript'>alert('审核新闻成功!');history.go(-1);</script>"
%>

</body>

</html>
