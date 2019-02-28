<!--#include file="conn.asp"-->

<% 
id=request.QueryString("id")
Response.Write(id)
lanmuid=trim(request("lanmuid"))
lanmu=trim(request("lanmu"))

if request("action")="add" then	
	set rs=server.createobject("adodb.recordset")
	sql="select * from lanmu" 
	rs.open sql,conn,1,3
	
	rs.addnew
		rs("lanmuid")=lanmuid
		rs("lanmu")=lanmu	
	rs.update
	rs.close
	set rs=nothing
	response.write "<script language=javascript>alert('添加成功！');location.href('lanmu.asp');</script>"

elseif request("action")="edit" then
	set rs=server.createobject("adodb.recordset")
	sql="select * from lanmu where id="&id&""
	rs.open sql,conn,3,3	
		rs("lanmuid")=lanmuid
		rs("lanmu")=lanmu		
	rs.update
	rs.close
	set rs=nothing
	response.write "<script language=javascript>alert('修改成功!');location.href('lanmu.asp');</script>"
end if	
 %>
