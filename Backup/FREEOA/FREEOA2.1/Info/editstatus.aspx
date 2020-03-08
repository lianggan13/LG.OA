<%@ page language="C#" autoeventwireup="true" inherits="Info_editstatus, App_Web_wy4mt_ds" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
    <link href="../css.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table align="center" width="100%">
            <tr height="30">
                <td align="left" background="../Images/topbg.jpg" style="height: 30px" 
                    width="3%">
                    <img height="16" src="../Images/icon/right.GIF" /><b>员工信息状态</b>
                </td>
            </tr>
 
        </table>
        <table width="100%" cellpadding="2px" >
            <tr>
                <td style="width:20%">
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td align="right">
                    当前状态：</td>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="right">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="一键全部可编辑" Width="120px" 
                        onclick="Button1_Click" />
                </td>
            </tr>
            <tr>
                <td align="right">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button2" runat="server" Text="一键全部不可编辑" Width="118px" 
                        onclick="Button2_Click" />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
