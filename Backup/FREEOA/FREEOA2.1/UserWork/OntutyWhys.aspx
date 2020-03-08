<%@ page language="C#" autoeventwireup="true" inherits="UserWork_OntutyWhys, App_Web_65ubaf-d" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
</head>
<body style="font-size: 9pt">
    <form id="form1" runat="server">
    <div>
        <table align="center">
            <tr>
                <td align="center" colspan="3">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="Red"
                        Text="迟到原因"></asp:Label></td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:TextBox ID="TextBox1" runat="server" Height="157px" TextMode="MultiLine" Width="247px"></asp:TextBox></td>
            </tr>
            <tr>
                <td align="center" colspan="3">
                    <asp:Button ID="Button1" runat="server" Text="提  交" OnClick="Button1_Click" /></td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
