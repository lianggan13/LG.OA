<%@ page language="C#" autoeventwireup="true" inherits="sysManage_checkonline, App_Web_c0qvfpcc" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table style="width: 100%; height: 21px" >
				<tr height="30">
					<td width="3%" background="../Images/topbg.jpg" align=center style="height: 30px"><IMG height="16" src="../Images/icon/right.GIF"></td>
					<td background="../Images/topbg.jpg" width="80" style="height: 30px"><b>在线用户</b></td>
					<td background="../Images/topbg.jpg" align="right" style="height: 30px; width: 532px;">
					</td>
				</tr>
	</table>
        <table style="width:100%;">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Font-Size="Small" ForeColor="#CC0000"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" colspan="3">
                    在线用户</td>
            </tr>
            <tr>
                <td align="center" colspan="3">
                    <asp:ListBox ID="lstOnline" runat="server" Height="260px" Width="600px">
                    </asp:ListBox>
                </td>
            </tr>
            <tr>
                <td align="center" colspan="3">
                    <asp:Button ID="btnFresh" runat="server" onclick="btnFresh_Click" Text="刷 新" 
                        Width="66px" />
                </td>
            </tr>
        </table>
        <br />
        <br />
    </div>
    </form>
</body>
</html>
