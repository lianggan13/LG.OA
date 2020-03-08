<%@ page language="C#" autoeventwireup="true" inherits="UserWork_MailSend, App_Web_dpkitv6r" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
    <link href="../css.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="Form1" runat="server">
    <INPUT id=hide type=hidden value="<%=passValue()%>">
    <INPUT id=hide1 type=hidden value="<%=passText()%>">
    <div>
        <table style="position: relative" align="center">
            <tr>
                <td style="width: 100px">
                </td>
                <td style="width: 37px">
                </td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    部门：<asp:DropDownList ID="DropDownList1" runat="server" Width="103px" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                    </asp:DropDownList></td>
                <td colspan="2">
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    人员：</td>
                <td style="width: 37px">
                </td>
                <td style="width: 100px">
                    已选人员</td>
            </tr>
            <tr>
                <td style="width: 100px; height: 72px;">
                    <asp:ListBox ID="ListBox1" runat="server" Height="241px" Width="146px"></asp:ListBox></td>
                <td style="width: 37px; height: 72px;">
                
                <table align="center" style="width: 10px; height: 217px">
                    <tr>
                        <td>
                            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/sel1.gif" OnClick="ImageButton1_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Images/sel2.gif" OnClick="ImageButton2_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/Images/sel3.gif" OnClick="ImageButton3_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/Images/sel4.gif" OnClick="ImageButton4_Click" />
                        </td>
                    </tr>
                </table>
                </td>
                <td style="width: 100px; height: 72px;">
                    <asp:ListBox ID="ListBox2" runat="server" Height="241px" Width="146px"></asp:ListBox></td>
            </tr>
            <tr>
                <td style="height: 18px;" align="center" colspan="3">
                    	<BUTTON id="ok" class="BnCss" onclick="javascript:Ok();" type="button">
                            确 定</BUTTON>
                    <asp:Button ID="Button2" runat="server" CssClass="BnCss" Text="取 消" OnClick="Button2_Click" Width="36px" Height="21px" /></td>
            </tr>
            <tr>
                <td style="width: 100px">
                </td>
                <td style="width: 37px">
                </td>
                <td style="width: 100px">
                </td>
            </tr>
        </table>
        
    </div>
    </form>
</body>
	<SCRIPT language="javascript">
	function Ok() 
	{
		window.close();
		opener.document.all.txtOtherMan.value = window.Form1.hide1.value;
		opener.document.all.UserNames.value=window.Form1.hide.value;
	}
    	function Cancel() 
	{
    		window.close();
   	 }
</SCRIPT>
</html>
