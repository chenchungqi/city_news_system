<!--#include file="conn.asp"-->
<!--#include File="IsManager.asp"-->
<%
id=request.QueryString("id")
Response.Write(id)
title=trim(request("title"))
hot=trim(request("hot"))
content=trim(request("content"))
author=trim(trim(request("author")))
source=trim(trim(request("source")))
date_1=trim(request("date"))
state=trim(request("state"))
lanmuid=trim(request("lanmuid"))

if request("action")="add" then	
	set rs=server.createobject("adodb.recordset")
	sql="select * from Article" 
	rs.open sql,conn,1,3

	rs.addnew
		rs("title")=title
		rs("hot")=hot
		rs("content")=content
		rs("author")=author
		rs("source")=source
		rs("date")=date_1
		rs("state")=state
		rs("lanmuid")=lanmuid
	rs.update
	rs.close
	set rs=nothing
	response.write "<script language=javascript>alert('添加新闻成功!');location.href('News.asp');</script>"
	
	

elseif request("action")="edit" then
	set rs=server.createobject("adodb.recordset")
	sql="select * from Article where id="&id&""
	rs.open sql,conn,3,3	
		rs("title")=title
		rs("hot")=hot
		rs("content")=content
		rs("author")=author
		rs("source")=source
		rs("date")=date_1
		rs("state")=state
		rs("lanmuid")=lanmuid		
	rs.update
	rs.close
	set rs=nothing
	response.write "<script language=javascript>alert('修改新闻成功!');location.href('News.asp');</script>"
end if
%>
