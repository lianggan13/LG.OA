<%@ page language="C#" autoeventwireup="true" inherits="suggest_addsuggest, App_Web_2pqgt10b" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table border="0" bordercolor="#111111" cellpadding="0" cellspacing="0" 
            width="100%">
            <tr height="30">
                <td align="center" background="../Images/topbg.jpg" style="height: 30px" 
                    width="3%">
                    <img height="16" src="../Images/icon/right.GIF" /></td>
                <td background="../Images/topbg.jpg" class="style1">
                    <b>投诉建议</b></td>
                <td align="right" background="../Images/topbg.jpg" style="height: 30px">
                </td>
            </tr>
        </table>
        <table style="width:100%;">
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center">
                    <asp:TextBox ID="TextBox1" runat="server" Height="160px" TextMode="MultiLine" 
                        Width="550px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center">
                    <asp:CheckBox ID="CheckBox1" runat="server" Font-Size="Small" Text="匿名" />
&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" Height="20px" onclick="Button1_Click" 
                        style="margin-top: 0px" Text="提 交" />
                </td>
            </tr>
            <tr>
                <td align="center">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center">
                    &nbsp;</td>
            </tr>
        </table>
        <br />
    </div>
    </form>
</body>
</html>
