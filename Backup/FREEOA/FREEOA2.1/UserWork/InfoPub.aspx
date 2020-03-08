<%@ page language="C#" autoeventwireup="true" inherits="UserWork_InfoPub, App_Web_dpkitv6r" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head><title>
	无标题页
</title><link href="../css.css" rel="stylesheet" type="text/css" />
    <script language="javascript" src="../../js/cal_layers.js"></script>
		<script language="javascript" src="../../js/cal_menu.js"></script>
		<script language="javascript" src="../../js/cal_pop.js"></script>
</head>
<body>
    <form name="form1"  runat="server"  id="form1">
<div>



       <table border="0" cellpadding="0" cellspacing="0" bordercolor="#111111" width="100%" class="px12">
				<tr height="30">
					<td width="3%" background="../Images/topbg.jpg" align=center><IMG height="16" src="../Images/icon/right.GIF"></td>
					<td background="../Images/topbg.jpg" width="80"><b><asp:Label runat="server" ID="Label1" Text="添加联系人" ></asp:Label></b></td>
					<TD background="../Images/topbg.jpg" align="right">
					</TD>
				</tr>
			</table>
    <table width=100% cellpadding=0 cellspacing=0 border=0 align=center>
    <tr>
    <td height="20">


    
    </td>
    </tr>
    <tr>
    <td align=center>
    <table width=90% cellpadding=2 cellspacing=1 border=0 class="px12">
   <tr>
   <td width=15% height="22" align=right>姓名：</td>
   <td width=35% align=left>
       <asp:TextBox ID="Name" runat="server"></asp:TextBox><span id="RequiredFieldValidator1" style="color:Red;display:none;"></span></td>
   <td width=15% align=right>性别：</td>
   <td width=35% align=left>
       <asp:DropDownList ID="Sex" runat="server">
           <asp:ListItem>男</asp:ListItem>
           <asp:ListItem>女</asp:ListItem>
       </asp:DropDownList></td>
   </tr>
   <tr>
   <td width=15% height="22" align=right>
       婚姻状态：</td>
   <td width=35% align=left>
       <asp:DropDownList ID="Marry" runat="server">
           <asp:ListItem>未婚</asp:ListItem>
           <asp:ListItem>已婚</asp:ListItem>
           <asp:ListItem>离异</asp:ListItem>
       </asp:DropDownList></td>
   <td width=15% align=right>生日：</td>
   <td width=35% align=left>
       <asp:TextBox ID="Birthday" runat="server" Width="200px"></asp:TextBox></td>
   </tr>
   <tr>
   <td width=15% height="22" align=right>所属分组：</td>
   <td align="left">
       <asp:DropDownList ID="Consort" runat="server">
       </asp:DropDownList></td>   
   </tr>
   <tr>
   <td width=15% height="22" align=right>所在国家：</td>
   <td width=35% align=left>
       <asp:TextBox ID="Country" runat="server" Width="219px"></asp:TextBox></td>
   <td width=15% align=right>所在省市：</td>
   <td width=35% align=left>
       <asp:TextBox ID="Province" runat="server" Width="87px"></asp:TextBox>省&nbsp;
       <asp:TextBox ID="City" runat="server" Width="140px"></asp:TextBox>市</td>
   </tr>
   <tr>
   <td width=15% height="22" align=right>公司名称：</td>
   <td width=35% align=left>
       <asp:TextBox ID="OrgName" runat="server" Width="219px"></asp:TextBox></td>
   <td width=15% align=right>公司邮编：</td>
   <td width=35% align=left>
       <asp:TextBox ID="OrgPost" runat="server" Width="200px"></asp:TextBox></td>
   </tr>
   <tr>
   <td width=15% height="22" align=right>公司地址：</td>
   <td colspan=3 align=left>
       <asp:TextBox ID="OrgAddress" runat="server" Width="600px"></asp:TextBox></td>
   </tr>
   <tr>
   <td width=15% height="22" align=right>公司电话：</td>
   <td width=35% align=left>
       <asp:TextBox ID="OrgTel" runat="server" Width="219px"></asp:TextBox></td>
   <td width=15% align=right>公司传真：</td>
   <td width=35% align=left>
       <asp:TextBox ID="OrgFax" runat="server" Width="200px"></asp:TextBox></td>
   </tr>
   <tr>
   <td width=15% height="22" align=right>公司网址：</td>
   <td width=35% align=left>
       <asp:TextBox ID="Url" runat="server" Width="217px"></asp:TextBox></td>
   <td width=15% align=right>Email：</td>
   <td width=35% align=left>
       <asp:TextBox ID="Email" runat="server" Width="200px"></asp:TextBox></td>
   </tr>
   <tr>
   <td width=15% height="22" align=right>所在部门：</td>
   <td width=35% align=left>
       <asp:TextBox ID="Department" runat="server" Width="219px"></asp:TextBox></td>
   <td width=15% align=right>职务：</td>
   <td width=35% align=left>
       <asp:TextBox ID="Duty" runat="server" Width="200px"></asp:TextBox></td>
   </tr>
   <tr>
   <td width=15% align=right style="height: 27px">家庭地址：</td>
   <td width=35% align=left style="height: 27px">
       <asp:TextBox ID="HomeAddress" runat="server" Width="219px"></asp:TextBox></td>
   <td width=15% align=right style="height: 27px">家庭邮编：</td>
   <td width=35% align=left style="height: 27px">
       <asp:TextBox ID="HomePost" runat="server" Width="200px"></asp:TextBox></td>
   </tr>
   <tr>
   <td width=15% align=right style="height: 52px">家庭电话：</td>
   <td width=35% align=left style="height: 52px">
       <asp:TextBox ID="HomeTel" runat="server" Width="219px"></asp:TextBox></td>
   <td width=15% align=right style="height: 52px">移动电话：</td>
   <td width=35% align=left style="height: 52px">
       <asp:TextBox ID="Mobile" runat="server" Width="200px"></asp:TextBox></td>
   </tr>
   <tr>
   <td width=15% height="22" align=right>QQ：</td>
   <td width=35% align=left>
       <asp:TextBox ID="QQ" runat="server" Width="219px"></asp:TextBox></td>
   <td width=15% align=right>MSN：</td>
   <td width=35% align=left>
       <asp:TextBox ID="Msn" runat="server" Width="200px"></asp:TextBox></td>
   </tr>
   <tr>
   <td width=15% height="22" align=right>简介：</td>
   <td colspan=3 align=left>
       <asp:TextBox ID="Intro" runat="server" Height="49px" TextMode="MultiLine" Width="613px"></asp:TextBox></td>
   </tr>
   <tr>
   <td colspan=4 align=center>
       <input type="submit" name="bnSave" value="保  存"  class="BnCss" id="Submit1" onserverclick="Submit1_ServerClick" runat="server" style="width: 49px; height: 21px" />
       <asp:Button ID="Button1" runat="server" 　class="BnCss"　Height="21px" Text="修  改" Width="52px" OnClick="Button1_Click" Visible="False" />
       <asp:Button ID="Button2" runat="server" CssClass="BnCss" Text="返  回" OnClick="Button2_Click" Width="50px" /></td>
   </tr>
    </table>
    </td>
    </tr>
    </table>
    


        

</form>
</body>
</html>
