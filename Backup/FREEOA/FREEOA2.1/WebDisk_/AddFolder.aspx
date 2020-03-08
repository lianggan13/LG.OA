<%@ page language="C#" autoeventwireup="true" inherits="AddFolder, App_Web_hfxvji6e" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>网络硬盘</title>
 <link href="../css.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
      <table>
        <tr>
            	<td width="3%" background="../Images/topbg.jpg" align=left><IMG height="16" src="../Images/icon/right.GIF"><b>网络硬盘</b>
					</td>
        </tr>
    </table>
    <table class="GbText"   align="center">
		<tr style="line-height:2;">
			<td style="width:150" align="right">父目录:</td>
			<td><asp:DropDownList ID="DirList" runat="server" Width="170px"></asp:DropDownList></td>
		</tr>	
		<tr style="line-height:2;">
			<td style="width:150" align="right">名称:</td>
			<td><asp:textbox id="Name" runat="server" Width="132px" CssClass="InputCss"></asp:textbox>		
				<asp:RequiredFieldValidator ID="rfN" runat="server" ControlToValidate="Name"
					CssClass="GbText" Display="Dynamic" ErrorMessage="名称不能为空！"></asp:RequiredFieldValidator></td>
		</tr>		
		<tr style="line-height:2;">
			<td style="width:150" width="150" align="right"></TD>
			<TD align="left"><FONT face="宋体">&nbsp;</FONT><asp:Button ID="AddBtn" runat="server" Text="确 定" Width="56px" CssClass="BnCss" OnClick="AddBtn_Click" /><FONT face="宋体">&nbsp;</FONT><asp:Button ID="ReturnBtn" runat="server" Text="返 回" Width="55px" CssClass="BnCss" OnClick="ReturnBtn_Click" CausesValidation="False" /></td>
		</tr>
		<tr>
			<td></td>
		</tr>
    </table>
    </form>
</body>
</html>