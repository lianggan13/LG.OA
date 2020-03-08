<%@ page language="C#" autoeventwireup="true" inherits="UserWork_NewsView, App_Web_z73ygct8" %>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head><title>
	无标题页
</title><link href="../css.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form name="form1" runat="server"  id="form1">

       <table border="0" cellpadding="0" cellspacing="0" bordercolor="#111111" width="100%">
				<tr height="30">
					<td width="3%" background="../Images/topbg.jpg" align=center><IMG height="16" src="../Images/icon/right.GIF"></td>
					<td background="../Images/topbg.jpg" width="80"><b>新闻查看</b></td>
					<TD background="../Images/topbg.jpg" align="right">
					</TD>
				</tr>
			</table>
    <table width=100% cellpadding=0 cellspacing=0 border=0 align=center>
    <tr>
    <td height=20></td>
    </tr>
    <tr>
    <td align="center">
    <table cellpadding=2 cellspacing=0 border=0 style="width: 90%; height: 409px">
    <tr style="height:50px">
    <td align="center" colspan="6" valign="baseline" style="font-size:large">
        <%=Titles%> 
        </td>
    </tr>
    <tr style="height:20px">
    <td height=20 style="width:8%" align=right>所属类别：</td>
    <td align=left >
    <%=TypeId%>
        </td>
    <td align="right">
        发布者：</td>
    <td align=left >
         <%=names%></td>
    <td align="right" >
        发布时间：</td>
    <td align=left >
         <%=Pubdate%></td>
    </tr>
    <tr style="height:180px">
    <td align=right valign="top" >新闻内容：</td>
    <td align=left  colspan="5" valign="top">
    <%=Contents%>
    </td>
    </tr>
    <tr>
    <td height=25 align=right >我要评论：</td>
    <td align=left style="width: 485px" colspan="5">
        &nbsp;<textarea name="txContent" id="txContent" 
            style="height:110px; width:680px;" runat="server"></textarea>&nbsp;<br />
                <asp:CheckBox ID="CheckBox1" runat="server" Text="署名" />
<input type="submit" name="bnSave" value="发  布" id="bnSave" class="BnCss" onserverclick="bnSave_ServerClick" runat="server" />
        &nbsp;&nbsp;&nbsp;    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">查看评论</asp:LinkButton></td>
    </tr>
    </table>
    </td>
    </tr>
    </table>
    


</form>
</body>
</html>
