<%@ page language="C#" autoeventwireup="true" inherits="UserWork_PlanInFo, App_Web_65ubaf-d" validaterequest="false" %>

<%@ Register assembly="DotNetTextBox" namespace="DotNetTextBox" tagprefix="DNTB" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head><title>
	无标题页
</title><link href="../css.css" rel="stylesheet" type="text/css" />
    </head>
<body>
    <form name="form1"  runat="server" id="form1">
       <table border="0" cellpadding="0" cellspacing="0" bordercolor="#111111" width="100%" class="px12">
				<tr height="30">
					<td width="3%" background="../Images/topbg.jpg" align=center><IMG height="16" src="../Images/icon/right.GIF"></td>
					<td background="../Images/topbg.jpg" width="80"><b>工作计划</b></td>
					<TD background="../Images/topbg.jpg" align="right">
					</TD>
				</tr>
			</table>
    <table width=100% cellpadding=0 cellspacing=0 border=0 align=center>
    <tr>
    <td align=left >
    <table cellpadding=2 cellspacing=0 border=1 class="px12" style="width: 100%; height: 220px">
    <tr style="height:20px">
    <td width=10% align=right  style="background-color:#CCCCCC">
        主题：</td>
    <td align=left >
    <%=topic%>
    </td>
    </tr>
    <tr style="height:20px">
    <td width=10% align=right  style="background-color:#CCCCCC">
        时间：</td>
    <td align=left >
    <%=AddTime%>
   </td>
    </tr>
    <tr style="height:160px">
    <td align=right valign="top"  style="background-color:#CCCCCC">
        内容：</td>
    <td align=left valign="top" >
    <%=Contents%>
    </td>
    </tr>
    <tr>
    <td align=right  style="background-color:#CCCCCC">
        计划进度：</td>
    <td align=left valign="top" >
                                <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="145px">
                                    <asp:ListItem>0%</asp:ListItem>
                                    <asp:ListItem>10%</asp:ListItem>
                                    <asp:ListItem>20%</asp:ListItem>
                                    <asp:ListItem>30%</asp:ListItem>
                                    <asp:ListItem>40%</asp:ListItem>
                                    <asp:ListItem>50%</asp:ListItem>
                                    <asp:ListItem>60%</asp:ListItem>
                                    <asp:ListItem>70%</asp:ListItem>
                                    <asp:ListItem>80%</asp:ListItem>
                                    <asp:ListItem>90%</asp:ListItem>
                                    <asp:ListItem>100%</asp:ListItem>
                                </asp:DropDownList>
                               </td>
    </tr>
    <tr>
    <td align=right valign="top"  style="background-color:#CCCCCC">
        进度说明：</td>
    <td align=left valign="top" >
                                <DNTB:WebEditor ID="TextBox1" runat="server" systemFolder="system_dntb/" />
                               </td>
    </tr>
    <tr style="height:20px">
    <td colspan=2 style="height: 25px" align=center>
        <asp:Button ID="btnSubmit" runat="server" Text="提  交" Width="79px" 
            onclick="btnSubmit_Click" /></td>
    </tr>
    </table>
    </td>
    </tr>
    </table>
    </form>
</body>
</html>
