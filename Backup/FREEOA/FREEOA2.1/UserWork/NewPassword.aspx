<%@ page language="C#" autoeventwireup="true" inherits="UserWork_NewPassword, App_Web_65ubaf-d" %>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1"><title>
	无标题页
</title><link href="../css.css" rel="stylesheet" type="text/css" />
 <script type="text/javascript" src="../Celend/popcalendar.js"></script>

		
</head>
<body>
    <form name="form1" runat="server" id="form1">


       <table border="0" cellpadding="0" cellspacing="0" bordercolor="#111111" width="100%">
				<tr height="30">
					<td width="3%" background="../Images/topbg.jpg" align=center><IMG height="16" src="../Images/icon/right.GIF"></td>
					<td background="../Images/topbg.jpg" width="80"><b>密码修改</b></td>
					<TD background="../Images/topbg.jpg" align="right">
					</TD>
				</tr>
	    </table>
        <table align="center" >
            <tr>
                <td style="width: 100px">
                    原密码：</td>
                <td colspan="2">
                    <asp:TextBox ID="TextBox1" runat="server"  TextMode="Password"></asp:TextBox></td>
            </tr>
            <tr>
                <td >
                    新密码：</td>
                <td style="height: 11px;" colspan="2">
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td s>
                    确认新密码：</td>
                <td colspan="2">
                    <asp:TextBox ID="TextBox3" runat="server" TextMode="Password" ></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2"
                        ControlToValidate="TextBox3" ErrorMessage="*"></asp:CompareValidator></td>
            </tr>
            <tr>
                <td align="center" colspan="3">
                    <asp:Button ID="Button1" runat="server" CssClass="BnCss" OnClick="Button1_Click"
                        Text="确  认" Width="45px" /></td>
            </tr>
        </table>
</form>
</body>
</html>
