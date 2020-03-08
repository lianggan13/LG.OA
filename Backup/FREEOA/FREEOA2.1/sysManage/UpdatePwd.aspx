<%@ page language="C#" autoeventwireup="true" inherits="sysManage_UpdatePwd, App_Web_c0qvfpcc" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
   <title></title>
    <style type="text/css">
		    body{font-size: 12px;cursor: default;font-family: 宋体;}
		    
	</style>
	<link href="../css.css" rel="stylesheet" type="text/css" />

</head>
<body>
    <form id="form1" runat="server">
    <table border="0" cellpadding="0" cellspacing="0" bordercolor="#111111" width="100%">
		<tr height="30">
			<td width="3%" background="../Images/topbg.jpg" align=center style="height: 30px"><IMG height="16" src="../Images/icon/right.GIF"></td>
			<td background="../Images/topbg.jpg" width="80" style="height: 30px"><b>修改密码</b></td>
			<TD background="../Images/topbg.jpg" align="right" style="height: 30px">
			</TD>
		</tr>
	</table>
        <table align="center" border="0" cellpadding="1" cellspacing="0" style="width: 35%">
        <tr>
            <td style="width: 86px; height: 14px" ></td>
        </tr>
        <tr>
            <td  align="center" style="width: 86px; height: 32px">
                旧 密 码：</td>
            <td  style="height: 32px">
                <asp:TextBox ID="txtOldPwd" runat="server" TextMode="Password"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="center" style="width: 86px; height: 31px">
                新 密 码：</td>
            <td  style="height: 31px">
                <asp:TextBox ID="txtNewPwd" runat="server" align="center" TextMode="Password"></asp:TextBox></td>
        </tr>
        <tr>
            <td  align="center" style="width: 86px; height: 31px">
                确认密码：</td>
            <td  style="height: 31px">
                <asp:TextBox ID="txtAffirm" runat="server" align="center" TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="新密码与确认密码不一致" ControlToCompare="txtNewPwd" ControlToValidate="txtAffirm">*</asp:CompareValidator></td>
        </tr>
        <tr>
            <td colspan="2" align="center" style="height: 46px">
                <asp:Button ID="Button1" runat="server" Text="修 改" OnClick="Button1_Click" CssClass="BnCss" />
                &nbsp; &nbsp;
                <asp:Button ID="Button2" runat="server" Text="取消" OnClick="Button2_Click" CssClass="BnCss" /></td>
        </tr>
        </table>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True"
            ShowSummary="False" Style="left: 382px; position: relative; top: 15px" Width="118px" />
    </form>
</body>
</html>
