<%@ page language="C#" autoeventwireup="true" inherits="notice_viewnotice, App_Web_ll1ijfc2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>

    <style type="text/css">
        .style1
        {
            font-size: small;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table border="0" cellpadding="0" cellspacing="0" bordercolor="#111111" width="100%">
		<tr height="30">
			<td width="3%" background="../Images/topbg.jpg" align=center><IMG height="16" src="../Images/icon/right.GIF"></td>
			<td background="../Images/topbg.jpg" width="80"><b>查看公告</b></td>
			<TD background="../Images/topbg.jpg" align="right">
			</TD>
		</tr>
	</table>
        <table style="width:100%;">
            <tr>
                <td align="center"  style="height:45px" colspan="6">
                    <%=title %></td>
            </tr>
            <tr>
                <td style="width:20%" align="right" class="style1">
                    发 布 人：</td>
                <td align="left" style="width:15%" class="style1">
                    <%=username %></td>
                <td style="width:15%" class="style1">
                    </td>
                <td align="right" style="width:15%" class="style1">
                    发布时间：</td>
                <td style="width:15%">
                    <%=addtime %></td>
                <td style="width:20%">
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td align="left" style="font-size: small">
                    </td>
                <td>
                    &nbsp;</td>
                <td align="right">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr  style="height:100px">
                <td class="style1" align="right" valign="top">
                    <span lang="zh-cn">公告内容：</span></td>
                <td align="left" class="style1" colspan="4" valign="top">
                   <%=content %> </td>
                <td class="style1">
                    </td>
            </tr>
            <tr>
                <td align="right">
                    <asp:Label ID="Label1" runat="server" Visible="False" Font-Size="Small"></asp:Label>
                    </td>
                <td colspan="4">
                    <span class="style1"><%=att %>
                    </span></td>
                <td>
                    </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="6" align="center">
                    <input id="Button1" type="button" value="返  回"  onclick="history.go(-1);"/></td>
            </tr>
            <tr align="center">
                <td colspan="2">
                    &nbsp;</td>
                <td colspan="2">
                    &nbsp;</td>
                <td colspan="2">
                    &nbsp;</td>
            </tr>
        </table>
        <br />
        <br />
    </div>
    </form>
</body>
</html>
