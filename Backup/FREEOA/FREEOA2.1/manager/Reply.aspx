<%@ page language="C#" autoeventwireup="true" inherits="CalendarManage_DiaryView, App_Web_npi0lp43" %>


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
                vertical-align:top
            }
            .style4
            {
                height: 149px;
                background-color: #CCCCCC;
            }
            .style5
            {
                height: 120px;
                background-color: #CCCCCC;
            }
            .style6
            {
                background-color: #CCCCCC;
            }
            .style7
            {
                height: 8px;
                background-color: #CCCCCC;
            }
            .style8
            {
                height: 8px;
                vertical-align: top;
            }
            </style>
</head>
<body>
    <form id="form1" runat="server">

       <table border="0" cellpadding="0" cellspacing="0" bordercolor="#111111" width="100%">
				<tr height="30">
					<td width="3%" background="../Images/topbg.jpg" align=center><IMG height="16" src="../Images/icon/right.GIF"></td>
					<td background="../Images/topbg.jpg" width="80"><b>日志批复</b></td>
					<TD background="../Images/topbg.jpg" align="right">
					    =</TD>
				</tr>
			</table>
    <table cellpadding=0 cellspacing=0 border=1 align="left"
    style="width: 95%;">

    <tr>
    <td width=10% height=25 align=right class="style6">日志主题：</td>
    <td align=left valign="top">
    
        <%=title %>&nbsp;</td>
    </tr>
    <tr>
    <td height=25 align=right class="style6">提交时间：</td>
    <td align=left>

        <%=addtime %> &nbsp;</td>
    </tr>
    <tr>
    <td height=25 align=right class="style6">归属时间：</td>
    <td align=left>
        <%=whichDay %> &nbsp;</td>
    
    </tr>
    <tr>
    <td align=right class="style7" valign="top">附件：</td>
    <td align=left class="style8"><%=att %>&nbsp;
    
                   </td>
    
    </tr>
    <tr>
    <td align=right class="style5" valign="top">日志内容：</td>
    <td align=left class="style3">
    
        <%=message %> &nbsp;</td>
    
    </tr>
    <tr>
    <td align=right class="style4" valign="top">批复：</td>
    <td align=left class="style1">
        <asp:TextBox ID="txtReply" runat="server" Height="200px" Width="600px" 
            TextMode="MultiLine"></asp:TextBox>
            </td>
    
    </tr>
    <tr>
    <td align="center" colspan="2">
        <asp:Button ID="txtReplySubmit" runat="server" Text="提交批复" 
            onclick="txtReplySubmit_Click" />
        </td>
    
    </tr>
    </table>
    
    
    
    </form>
</body>
</html>
