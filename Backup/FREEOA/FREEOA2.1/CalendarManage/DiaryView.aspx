<%@ page language="C#" autoeventwireup="true" inherits="CalendarManage_DiaryView, App_Web_mpbjvgl6" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head><title>
	无标题页
</title><link href="../css.css" rel="stylesheet" type="text/css" />
        <style type="text/css">
            .style1
            {
                height: 149px;
            }
            .style3
            {
                height: 120px;
            }
            .style4
            {
                height: 30px;
            }
            .style5
            {
                height: 120px;
                background-color: #CCCCCC;
            }
            .style6
            {
                height: 30px;
                background-color: #CCCCCC;
            }
            .style7
            {
                height: 120px;
                background-color: #CCCCCC;
            }
            .style8
            {
                background-color: #CCCCCC;
            }
        </style>
</head>
<body>
    <form id="form1" runat="server">
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUJMjM3MDgxODEzZGTPplC8pR7kv8hXbQyFjXlc4NTcug==" />

       <table border="0" cellpadding="0" cellspacing="0" bordercolor="#111111" width="100%">
				<tr height="30">
					<td width="3%" background="../Images/topbg.jpg" align=center><IMG height="16" src="../Images/icon/right.GIF"></td>
					<td background="../Images/topbg.jpg" width="80"><b>我的日记</b></td>
					<TD background="../Images/topbg.jpg" align="right">
					</TD>
				</tr>
			</table>
    <table cellpadding=0 cellspacing=0 border=1 align="left"
    style="width: 95%;">

    <tr>
    <td width=10% height=25 align=right class="style8">日志主题：</td>
    <td align=left>
    
        <%=title %>&nbsp;</td>
    </tr>
    <tr>
    <td height=25 align=right class="style8">提交时间：</td>
    <td align=left>

        <%=addtime %>&nbsp;</td>
    </tr>
    <tr>
    <td height=25 align=right class="style8">归属时间：</td>
    <td align=left>
       <%=whichday %> &nbsp;</td>
    
    </tr>
    <tr>
    <td height=25 align=right class="style8">附件：</td>
    <td align=left><%=att %>
        &nbsp;</td>
    
    </tr>
    <tr>
    <td align=right class="style7" valign="top">日志内容：</td>
    <td align=left class="style3" valign="top">
    
        <%=message %>&nbsp;</td>
    
    </tr>
    <tr>
    <td align=right class="style6">批复人：</td>
    <td align=left class="style4">
        <%=whoRe %>&nbsp;</td>
    
    </tr>
    <tr>
    <td align=right class="style6">批复时间：</td>
    <td align=left class="style4">
        <%=reTime %> &nbsp;</td>
    
    </tr>
    <tr>
    <td align=right class="style5" valign="top">批复：</td>
    <td align=left class="style1" valign="top">
        <%=reply %>&nbsp;</td>
    
    </tr>
    <tr>
    <td align="center" colspan="2">
        <input id="Button1" type="button" value="返  回"  onclick=history.go(-1) /></td>
    
    </tr>
    </table>
    
    
    
    </form>
</body>
</html>
