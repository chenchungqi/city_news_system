<!--#include file="conn.asp"-->

<% 
id=request.QueryString("id")
Response.Write(id)
date_1=trim(request("date"))
Content=trim(request("Content"))

if request("action")="add" then	
	set rs=server.createobject("adodb.recordset")
	sql="select * from gonggao" 
	rs.open sql,conn,1,3
	
	rs.addnew
		rs("date")=date_1
		rs("Content")=Content
	rs.update
	rs.close
	set rs=nothing
	response.write "<script language=javascript>alert('添加成功！');location.href('gonggao.asp');</script>"

elseif request("action")="edit" then
	set rs=server.createobject("adodb.recordset")
	sql="select * from gonggao where id="&id&""
	rs.open sql,conn,3,3	
		rs("date")=date
		rs("Content")=Content	
	rs.update
	rs.close
	set rs=nothing
	response.write "<script language=javascript>alert('修改成功!');location.href('gonggao.asp');</script>"
end if	
 %>
