<%@ page language="C#" autoeventwireup="true" inherits="Info_AddRest, App_Web_wy4mt_ds" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
    <link href="../css.css" type="text/css" rel="stylesheet" />

    <style type="text/css">
        .style1
        {
            height: 20px;
            width: 72px;
        }
        .style2
        {
            width: 72px;
        }
        .style3
        {
            height: 26px;
            width: 72px;
        }
    </style>

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
       
        <asp:Panel ID="MyPanel" runat="server" Visible="true">
        
        
        
            <tr>
                <td >
                    用户名：</td>
                <td >
                    <asp:TextBox ID="username" runat="server"></asp:TextBox></td>
                <td >
                    用户密码：</td>
                <td style="width: 100px">
                    <asp:TextBox ID="TextBox1" runat="server" ReadOnly="True">(默认密码123456)</asp:TextBox></td>
            </tr>
            </asp:Panel>
            <tr>
                <td class="style2" >
                    姓名：</td>
                <td s>
                    <asp:TextBox ID="name" runat="server"></asp:TextBox></td>
                <td style="width: 75px">
                    性别：</td>
                <td s>
                    <asp:DropDownList ID="sex" runat="server" Width="128px" Height="19px">
                        <asp:ListItem>男</asp:ListItem>
                        <asp:ListItem>女</asp:ListItem>
                    </asp:DropDownList></td>
            </tr>
            <tr>
                <td class="style2" >
                    婚姻：</td>
                <td >
                    <asp:DropDownList ID="Marry" runat="server" Width="123px" Height="16px">
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
                <td class="style2">
                    身高：</td>
                <td >
                    <asp:TextBox ID="Stature" runat="server"></asp:TextBox></td>
                <td >
                    体重：</td>
                <td >
                    <asp:TextBox ID="Avoirdupois" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="style3">
                    证件类型</td>
                <td style="width: 100px; height: 26px;">
                    <asp:DropDownList ID="cardtype" runat="server" Width="125px" Height="16px">
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
                <td class="style2">
                    政治面貌：</td>
                <td style="width: 100px">
                    <asp:TextBox ID="Speciality" runat="server"></asp:TextBox></td>
                <td style="width: 75px">
                    所属部门：</td>
                <td>
                    <asp:DropDownList ID="Branch" runat="server" Width="126px" Height="16px">
                    </asp:DropDownList></td>
            </tr>
            <tr>
                <td class="style2" >
                    办公电话：</td>
                <td >
                    <asp:TextBox ID="workPhone" runat="server"></asp:TextBox></td>
                <td >
                    移动电话：</td>
                <td >
                    <asp:TextBox ID="movePhone" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="style2" >
                    家庭电话：</td>
                <td >
                    <asp:TextBox ID="HomePhone" runat="server"></asp:TextBox></td>
                <td style="width: 75px">
                    小灵通：</td>
                <td >
                    <asp:TextBox ID="xiaolingtong" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="style2" >
                    家庭地址：</td>
                <td >
                    <asp:TextBox ID="Homeaddress" runat="server"></asp:TextBox></td>
                <td >
                    邮编：</td>
                <td >
                    <asp:TextBox ID="Post" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="style2" >
                    主页：</td>
                <td >
                    <asp:TextBox ID="url" runat="server"></asp:TextBox></td>
                <td >
                    邮箱：</td>
                <td >
                    <asp:TextBox ID="Email" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="style2" >
                    QQ：</td>
                <td>
                    <asp:TextBox ID="qq" runat="server"></asp:TextBox></td>
                <td style="width: 75px">
                    Msn：</td>
                <td s>
                    <asp:TextBox ID="msn" runat="server"></asp:TextBox></td>
            </tr>
            <asp:Panel ID="MyPanel2" runat="server" >
               <tr>
                <td>
                    上传照片：</td>
                <td colspan="3" s="">
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                    <asp:Button ID="button2" runat="server" Text="上　传" CssClass="BnCss" OnClick="button2_Click" />
                    <asp:Label ID="Label1" runat="server"></asp:Label></td>
            </tr>
            
            </asp:Panel>
            <tr>
                <td colspan="4" align="center" >
                    员工是否可编辑：<asp:DropDownList ID="lstIfEdit" runat="server" Height="16px" 
                        Width="117px">
                        <asp:ListItem Value="0">不可编辑</asp:ListItem>
                        <asp:ListItem Value="1">可编辑</asp:ListItem>
                    </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
            </tr>
            <tr>
                <td align="center" colspan="4">
                    <asp:Button ID="Button1"   CssClass="BnCss" runat="server" Text="添   加" Width="54px" OnClick="Button1_Click" />
                    <asp:Button ID="Button3"  CssClass="BnCss" runat="server" Text="修  改" Visible="False" Width="53px" OnClick="Button3_Click" />
                    <asp:Button ID="Button4" CssClass="BnCss" runat="server" Text="退  出" OnClick="Button4_Click" Width="50px" /></td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
