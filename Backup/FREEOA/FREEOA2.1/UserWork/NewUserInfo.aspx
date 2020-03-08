<%@ page language="C#" autoeventwireup="true" inherits="UserWork_NewUserInfo, App_Web_dpkitv6r" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>无标题页</title>
    <link href="../css.css" type="text/css" rel="stylesheet" />

</head>
<body>
    <form id="form1" runat="server">
    
    <div style="font-size: 9pt">
    <table border="0" cellpadding="0" cellspacing="0" bordercolor="#111111" width="100%">
				<tr height="30">
					<td width="3%" background="../Images/topbg.jpg" align=center style="height: 30px"><IMG height="16" src="../Images/icon/right.GIF"></td>
					<td background="../Images/topbg.jpg" width="80" style="height: 30px"><b>
                        <asp:Label ID="Label2" runat="server" Text="添加员工"></asp:Label></b></td>
					<TD background="../Images/topbg.jpg" align="right" style="height: 30px">
					</TD>
				</tr>
			</table>
        <table align="center" style="width: 560px; height: 513px" >
       
     
            <tr>
                <td >
                    姓名：</td>
                <td s>
                    <asp:TextBox ID="name" runat="server"></asp:TextBox></td>
                <td style="width: 75px">
                    性别：</td>
                <td s>
                    <asp:DropDownList ID="sex" runat="server" Width="75px">
                        <asp:ListItem>男</asp:ListItem>
                        <asp:ListItem>女</asp:ListItem>
                    </asp:DropDownList></td>
            </tr>
            <tr>
                <td >
                    婚姻：</td>
                <td >
                    <asp:DropDownList ID="Marry" runat="server" Width="79px">
                        <asp:ListItem>已婚</asp:ListItem>
                        <asp:ListItem>未婚</asp:ListItem>
                        <asp:ListItem>离异</asp:ListItem>
                    </asp:DropDownList></td>
                <td >
                    生日：</td>
                <td >
                    <asp:TextBox ID="Birthday" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>
                    身高：</td>
                <td >
                    <asp:TextBox ID="Stature" runat="server"></asp:TextBox></td>
                <td >
                    体重：</td>
                <td >
                    <asp:TextBox ID="Avoirdupois" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 79px; height: 26px;">
                    证件类型</td>
                <td style="width: 100px; height: 26px;">
                    <asp:DropDownList ID="cardtype" runat="server" Width="75px">
                        <asp:ListItem>身份证</asp:ListItem>
                        <asp:ListItem>军官证</asp:ListItem>
                        <asp:ListItem>其他</asp:ListItem>
                    </asp:DropDownList></td>
                <td style="width: 75px; height: 26px;">
                    证件号：</td>
                <td style="height: 26px" >
                    <asp:TextBox ID="cardid" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 79px">
                    政治面貌：</td>
                <td style="width: 100px">
                    <asp:TextBox ID="Speciality" runat="server"></asp:TextBox></td>
                <td style="width: 75px">
                    所属部门：</td>
                <td>
                    <asp:DropDownList ID="Branch" runat="server" Width="120px">
                    </asp:DropDownList></td>
            </tr>
            <tr>
                <td >
                    办公电话：</td>
                <td >
                    <asp:TextBox ID="workPhone" runat="server"></asp:TextBox></td>
                <td >
                    移动电话：</td>
                <td >
                    <asp:TextBox ID="movePhone" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td >
                    家庭电话：</td>
                <td >
                    <asp:TextBox ID="HomePhone" runat="server"></asp:TextBox></td>
                <td style="width: 75px">
                    小灵通：</td>
                <td >
                    <asp:TextBox ID="xiaolingtong" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td >
                    家庭地址：</td>
                <td >
                    <asp:TextBox ID="Homeaddress" runat="server"></asp:TextBox></td>
                <td >
                    邮编：</td>
                <td >
                    <asp:TextBox ID="Post" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td >
                    主页：</td>
                <td >
                    <asp:TextBox ID="url" runat="server"></asp:TextBox></td>
                <td >
                    电子邮箱：</td>
                <td >
                    <asp:TextBox ID="Email" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td >
                    QQ：</td>
                <td>
                    <asp:TextBox ID="qq" runat="server"></asp:TextBox></td>
                <td style="width: 75px">
                    Msn：</td>
                <td s>
                    <asp:TextBox ID="msn" runat="server"></asp:TextBox></td>
            </tr>
         
            <tr>
                <td colspan="4" >
                    </td>
            </tr>
            <tr>
                <td align="center" colspan="4">
                    &nbsp;<asp:Button ID="Button3"  CssClass="BnCss" runat="server" Text="修  改" Width="53px" OnClick="Button3_Click" />
                  &nbsp;&nbsp;  <a href="#" onclick="history.go(-1);">返回</a>
                    </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
