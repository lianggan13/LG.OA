<%@ page language="C#" autoeventwireup="true" inherits="UserWork_InfoView, App_Web_dpkitv6r" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1"><title>
	无标题页
</title><link href="../css.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form name="form1"  runat="server" id="form1">

     
   

      <asp:Repeater ID="Repeater1" runat="server"><ItemTemplate>
      
      
            
            
    

       <table border="0" cellpadding="0" cellspacing="0" bordercolor="#111111" width="100%" class="px12">
				<tr height="30">
					<td width="3%" background="../Images/topbg.jpg" align=center><IMG height="16" src="../Images/icon/right.GIF"></td>
					<td background="../Images/topbg.jpg" width="80"><b>查看联系人</b></td>
					<TD background="../Images/topbg.jpg" align="right">
					</TD>
				</tr>
			</table>
    <table width=100% cellpadding=0 cellspacing=0 border=0 align=center>
    <tr>
    <td height=5>


    
    </td>
    </tr>
    <tr>
    <td align=center>
    <table width=90% cellpadding=2 cellspacing=1 border=0 class="px12">
   <tr>
   <td width=15% height="22" align=right>姓名：</td>
   <td width=35% align=left>
   <%#Eval("name") %>
   </td>
   <td width=15% align=right>性别：</td>
   <td width=35% align=left>
       <%#Eval("sex") %>
       </td>
   </tr>
   <tr>
   <td width=15% height="22" align=right>
       婚姻状态：</td>
   <td width=35% align=left>
   <%#Eval("Marry")%>
       </td>
   <td width=15% align=right>生日：</td>
   <td width=35% align=left>
   <%#Eval("Birthday")%>
       </td>
   </tr>
   <tr>
   <td width=15% height="22" align=right>所属分组：</td>
   <td align="left"><%#Eval("Consort")%>
       </td>   
   </tr>
   <tr>
   <td width=15% height="22" align=right>所在国家：</td>
   <td width=35% align=left>
     <%#Eval("Country")%>
       </td>
   <td width=15% align=right>所在省市：</td>
   <td width=35% align=left>
         <%#Eval("Province")%><%#Eval("City")%></td>
   </tr>
   <tr>
   <td width=15% height="22" align=right>公司名称：</td>
   <td width=35% align=left>  <%#Eval("OrgName") %>
       </td>
   <td width=15% align=right>公司邮编：</td>
   <td width=35% align=left>  <%#Eval("OrgPost") %>
       </td>
   </tr>
   <tr>
   <td width=15% height="22" align=right>公司地址：</td>
   <td colspan=3 align=left>  <%#Eval("OrgAddress") %>
       </td>
   </tr>
   <tr>
   <td width=15% height="22" align=right>公司电话：</td>
   <td width=35% align=left>  <%#Eval("OrgPost") %>
       </td>
   <td width=15% align=right>公司传真：</td>
   <td width=35% align=left>  <%#Eval("OrgTel") %>
       </td>
   </tr>
   <tr>
   <td width=15% height="22" align=right>公司网址：</td>
   <td width=35% align=left>  <%#Eval("Url") %>
       </td>
   <td width=15% align=right>Email：</td>
   <td width=35% align=left>  <%#Eval("Email") %>
       </td>
   </tr>
   <tr>
   <td width=15% height="22" align=right>所在部门：</td>
   <td width=35% align=left>  <%#Eval("Department") %>
       </td>
   <td width=15% align=right>职务：</td>
   <td width=35% align=left>  <%#Eval("Duty") %>
       </td>
   </tr>
   <tr>
   <td width=15% height="22" align=right>家庭地址：</td>
   <td width=35% align=left>  <%#Eval("sex") %>
       </td>
   <td width=15% align=right>家庭邮编：</td>
   <td width=35% align=left>  <%#Eval("HomePost") %>
       </td>
   </tr>
   <tr>
   <td width=15% height="22" align=right>家庭电话：</td>
   <td width=35% align=left>  <%#Eval("HomeAddress") %>
       </td>
   <td width=15% align=right>移动电话：</td>
   <td width=35% align=left>  <%#Eval("Mobile") %>
       </td>
   </tr>
   <tr>
   <td width=15% height="22" align=right>QQ：</td>
   <td width=35% align=left>  <%#Eval("QQ") %>
       </td>
   <td width=15% align=right>MSN：</td>
   <td width=35% align=left>  <%#Eval("Msn") %>
       </td>
   </tr>
   <tr>
   <td width=15% height="22" align=right>简介：</td>
   <td colspan=3 align=left>  <%#Eval("Intro")%>
       </td>
   </tr>
   <tr>
   <td colspan=4 align=center>
      <a href="#" onclick="history.go(-1);">返回</a>
       </td>
   </tr>
    </table>
    </td>
    </tr>
    </table>
        
   </ItemTemplate>
     
        </asp:Repeater>
</form>
</body>
</html>
