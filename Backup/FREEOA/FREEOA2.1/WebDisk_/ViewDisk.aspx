<%@ page language="C#" autoeventwireup="true" inherits="ViewDisk, App_Web_hfxvji6e" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>网络硬盘</title>
<link href="../css.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
   <table>
        <tr>
            	<td width="3%" background="../Images/topbg.jpg" align=left><IMG height="16" src="../Images/icon/right.GIF"><b>文件属性</b>
					</td>
        </tr>
    </table>
       
    <table cellSpacing="0" align="center" style="width: 553px; height: 370px">
		<tr>
			<td colspan="2"><font class="HeaderText"></font></td>
		</tr>
		<tr style="line-height:2;">
			<td style="width:150" align="right">名称:</td>
			<td style="width: 309px"><asp:textbox id="Name" runat="server" Width="162px" CssClass="InputCss" BackColor="AliceBlue"></asp:textbox>		</td>
		</tr>	
		<tr style="line-height:2;">
			<td style="width:150; height: 26px;" align="right">目录:</td>
			<td style="width: 309px; height: 26px"><asp:textbox id="Dir" runat="server" Width="161px" CssClass="InputCss" BackColor="AliceBlue" ReadOnly="True"></asp:textbox>		</td>
		</tr>	
		<tr style="line-height:2;">
			<td style="width:150" align="right">类型:</td>
			<td style="width: 309px"><asp:textbox id="Type" runat="server" Width="161px" CssClass="InputCss" BackColor="AliceBlue" ReadOnly="True"></asp:textbox>		</td>
		</tr>	
		<tr style="line-height:2;">
			<td style="width:150" align="right">大小:</td>
			<td style="width: 309px"><asp:textbox id="Contain" runat="server" Width="161px" CssClass="InputCss" BackColor="AliceBlue" ReadOnly="True"></asp:textbox>		</td>
		</tr>	
		<tr style="line-height:2;">
			<td style="width:150" align="right">创建时间:</td>
			<td style="width: 309px"><asp:textbox id="CreateDate" runat="server" Width="160px" CssClass="InputCss" BackColor="AliceBlue"></asp:textbox>		</td>
		</tr>		
		<tr style="line-height:2;">
			<td style="width:150" align="right"></TD>
			<TD align="left" style="width: 309px"><FONT face="宋体">&nbsp;<asp:Button ID="ReturnBtn" runat="server" Text="返  回" Width="54px" CssClass="BnCss" OnClick="ReturnBtn_Click" CausesValidation="False" /></FONT></td>
		</tr>
		<tr style="line-height:2;">
			<td style="width:150" width="150" align="right"></TD>
			<TD align="left" style="width: 309px"><FONT face="宋体">&nbsp;</FONT></td>
		</tr>
		<tr>
			<td></td>
		</tr>
		</table>
    </form>
</body>
</html>
