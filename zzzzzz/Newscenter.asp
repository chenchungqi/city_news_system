<!--#include file="inc/Conn.asp"-->

<HTML><HEAD><TITLE>浙江大学城市学院毕业设计(论文)管理系统</TITLE>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<META content="MSHTML 6.00.3790.2920" name=GENERATOR>
<style type="text/css">
<!--

.style1 {
	FONT-SIZE: 12px; FONT-FAMILY: "宋体"
}
.style2 {
	FONT-WEIGHT: bold; COLOR: #ff6633; FONT-FAMILY: "宋体"
}
.style3 {
	COLOR: #ff0000
}
.style4 {
	COLOR: #009900
}
a img {border:0}
.STYLE5 {COLOR: #ff0000; font-weight: bold; }
-->
</style>

</HEAD>
<BODY bgColor=#ffffff leftMargin=0 topMargin=0>
<LINK href="inc/style.css" type=text/css rel=stylesheet>

<table width="760" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <TD width=1 background="images/left_bg.jpg"></TD>
    <TD width=758><table width="758" border="0" cellspacing="0" cellpadding="0" align="center" background="images/top.jpg" height="70">

</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="15"></td>
  </tr>
</table>

<TABLE height=20 cellSpacing=0 cellPadding=0 width=758 align=center border=0><!--DWLayoutTable-->
  <TBODY>
  <TR>
    <TD vAlign=top width=15 height=500>
      <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0><!--DWLayoutTable-->
        <TBODY>
        <TR>
          <TD width=15 height=500>&nbsp;</TD></TR></TBODY></TABLE></TD>
		  
    <TD vAlign=top width=5><!--DWLayoutEmptyCell-->&nbsp;</TD>
    <TD vAlign=top width=15>
      <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0><!--DWLayoutTable-->
        <TBODY>
        <TR>
          <TD width=15 height=450>&nbsp;</TD></TR></TBODY></TABLE></TD>
    <TD vAlign=top width=700><table width="99%"  border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="13" height="46" background="images/subMenuTopleft.gif">&nbsp;</td>
        <td valign="middle" background="images/subMenuTopbg.gif"><table width="100%"  border="0" cellpadding="0" cellspacing="0" >
            <tr>
              <td width="7%" height="25" >&nbsp;</td>
              <td width="82%" align="center">最新通知 </td>
              <td width="11%" valign="middle"><a href="Newscenter.asp" target="_blank"></a></td>
            </tr>
        </table></td>
        <td width="13" background="images/subMenuTopRight.gif">&nbsp;</td>
      </tr>
      <tr>
        <td background="images/subMenuMiddleLeft.gif">&nbsp;</td>
        <td height="120" valign="top">
            <%
     set rs=server.createobject("adodb.recordset")
	 lanmuid=request("lanmuid")
	sql="select * from Article where lanmuid="&lanmuid&""
     rs.open sql,conn,1,1
	'设置每页显示记录数量
	rs.PageSize=10
	'设置并读取页码参数page
	iPage=CLng(Request("page"))
	If iPage <= 0 Then
		iPage = 1
	End If
	If iPage > rs.PageCount Then
		iPage = rs.PageCount
	End If
	rs.AbsolutePage = iPage
	RowCount = rs.PageSize
	'依次显示课程表信息
	Do While Not rs.EOF And RowCount > 0
		
		%>


            <table width="100%" border="0" cellspacing="0" cellpadding="0" height="25">
              <tr>
                <td width="5%"><img src="images/newleft.gif" width="10" height="7"></td>
                <td width="81%"><a href="shownews.asp?id=<%=rs("id")%>" class="index_link_4" target="_blank"><%=rs("title")%></a>&nbsp;&nbsp;
                    <% if rs("hot")=true then %>
                  <img src="images/hot.gif" width="26" height="10"></td>
                <% else %>
                <td width="0"></td>
                <% end if %>
                <td width="14%"><%=rs("date")%></td>
              </tr>
            </table>
<%
	rs.MoveNext()
	'控制每页显示的课程的数量
	RowCount = RowCount - 1
	Loop
'End If
%>
        </td>
        <td background="images/subMenuMiddleRight.gif">&nbsp;</td>
      </tr>
      <tr>
        <td height="9" background="images/subMenuBottomLeft.gif"></td>
        <td background="images/subMenuBottomBg.gif"></td>
        <td background="images/subMenuBottomRight.gif"></td>
      </tr>
    </table>
      <table width="99%" border="0" cellspacing="0" cellpadding="0" >
        <tr>
          <td align="center"><div class="black_font_12px">
             <%
Response.Write("第 "+cstr(iPage)+" 页/总 "+cstr(rs.pagecount)+" 页　")
If iPage = 1 Then
	Response.Write("首页　上一页")
Else
	Response.Write("<a href='Newscenter.asp?page=1&lanmuid='"&lanmuid&"''>首页</a>　<a href='Newscenter.asp?lanmuid="&lanmuid&"&page="+cstr(iPage-1)+"'>上一页</a>")
End If
	Response.Write("&nbsp;&nbsp;")
If iPage = rs.PageCount Then
	Response.Write("下一页　尾页")
Else
	Response.Write("<a href='Newscenter.asp?lanmuid="&lanmuid&"&page="+cstr(iPage+1)+"'>下一页</a>　<a href='Newscenter.asp?page="+cstr(rs.PageCount)+"'>尾页</a>")
End If
	Response.Write("&nbsp;&nbsp;")
If rs.PageCount > 1 Then
	Response.Write("分页：")
	For i = 1 to rs.PageCount
		Response.Write("[<a href='Newscenter.asp?page="& i &"'>")
		Response.Write( ""& i & "</a>]&nbsp;")
	Next
End If
%>
          </div></td>
        </tr>
      </table></TD>
  </TR>
  </TBODY>
</TABLE>
<TABLE height=78 cellSpacing=0 cellPadding=0 width=758 align=center border=0><!--DWLayoutTable-->
  <TBODY>
  <TR>
    <TD height="1" vAlign=top bgcolor="#0066FF"></TD>
    </TR>
  <TR align=middle>
    <TD height=76>版权所有 （@）浙江大学城市学院计算分院<BR>
      地址:浙江大学城市学院湖州街51号 理工4号楼 
      E-mail：yuxy@zucc.edu.cn<BR>
      联系人:俞雪永 联系电话：0571－88018443 QQ：361255728 </TD>
  </TR></TBODY></TABLE></TD>
    <TD width=1 background="images/left_bg.jpg"></TD>
  </tr>
</table>
<%
'-----------断开数据库连接-------------

rs.close
set rs=nothing
Conn.close
Set Conn=nothing



 
%>
</BODY>
</HTML>
