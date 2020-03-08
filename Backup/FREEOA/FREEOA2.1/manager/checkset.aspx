<%@ page language="C#" autoeventwireup="true" inherits="manager_checkset, App_Web_npi0lp43" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
    <style type="text/css">
        .style1
        {
            font-size: small;
            font-weight: bold;
        }
        .style2
        {
            width: 366px;
            font-size: small;
        }
        .style3
        {
            font-size: small;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table border="0" bordercolor="#111111" cellpadding="0" cellspacing="0" 
            class="px12" width="100%">
            <tr height="30">
                <td align="center" background="../Images/topbg.jpg" width="3%">
                    <img height="16" src="../Images/icon/right.GIF" /></td>
                <td background="../Images/topbg.jpg" width="80">
                    <b>考勤设置</b></td>
                <td align="right" background="../Images/topbg.jpg">
                </td>
            </tr>
        </table>
        <table style="width:100%;">
            <tr>
                <td align="center" colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" class="style1" colspan="2">
                    考勤设置</td>
            </tr>
            <tr align="left">
                <td align="right" class="style2">
                    考勤时间：</td>
                <td align="left">
                    <asp:DropDownList ID="lstChecktime" runat="server" AutoPostBack="True" 
                        Height="16px" onselectedindexchanged="lstChecktime_SelectedIndexChanged" 
                        style="font-size: small" Width="360px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td align="right" class="style3">
                    绑定人员：</td>
                <td align="left">
                    <asp:CheckBoxList ID="lstPeople" runat="server" Height="20px" 
                        style="font-size: small" Width="176px">
                    </asp:CheckBoxList>
                </td>
            </tr>
            <tr>
                <td align="center" colspan="2">
                    <asp:Button ID="btnRevise" runat="server" Height="22px" Text="修改考勤设置" 
                        onclick="btnRevise_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnNoSet" runat="server" Height="22px" Text="查看未设置人员" 
                        onclick="btnNoSet_Click" />
                </td>
            </tr>
            <tr>
                <td align="center" colspan="2">
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
