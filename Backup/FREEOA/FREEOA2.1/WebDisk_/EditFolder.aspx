<%@ page language="C#" autoeventwireup="true" inherits="EditFolder, App_Web_hfxvji6e" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>网络硬盘</title>
    <link rel="Stylesheet" href="ASPNET2.0BaseCss.css" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
     <table border="0" cellpadding="0" cellspacing="0" bordercolor="#111111" width="100%" class="px12">
				<tr height="30">
					<td width="3%" background="../Images/topbg.jpg" align=center><IMG height="16" src="../Images/icon/right.GIF"></td>
					<td background="../Images/topbg.jpg" width="80"><b>修改文件名</b></td>
					<TD background="../Images/topbg.jpg" align="right">
					</TD>
				</tr>
			</table>
    <table class="GbText"  borderColor="#93bee2" cellSpacing="0"  align="center">
		
		<tr style="line-height:2;">
			<td style="width:150; height: 31px;" align="right">名称:</td>
			<td style="height: 31px"><asp:textbox id="Name" runat="server" Width="127px" Height="15px"></asp:textbox>		
				<asp:RequiredFieldValidator ID="rfN" runat="server" ControlToValidate="Name"
					CssClass="GbText" Display="Dynamic" ErrorMessage="名称不能为空！"></asp:RequiredFieldValidator></td>
		</tr>		
		<tr style="line-height:2;">
			<td style="width:150" align="right"></TD>
			<TD align="left"><FONT face="宋体">&nbsp;<asp:Button ID="EditBtn" runat="server" Text="确  定" Width="58px" CssClass="ButtonCss" OnClick="EditBtn_Click" />
                <asp:Button ID="ReturnBtn" runat="server" Text="返  回" Width="53px" CssClass="ButtonCss" OnClick="ReturnBtn_Click" CausesValidation="False" /></FONT></td>
		</tr>
		<tr style="line-height:2;">
			<td style="width:150" width="150" align="right"></TD>
			<TD align="left"><FONT face="宋体">&nbsp;</FONT><FONT face="宋体">&nbsp;</FONT></td>
		</tr>
		<tr>
			<td></td>
		</tr>
    </table>
    </form>
</body>
</html>
