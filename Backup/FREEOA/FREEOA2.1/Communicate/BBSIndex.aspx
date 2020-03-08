<%@ page language="C#" autoeventwireup="true" inherits="Communicate_bbs, App_Web_2yi7hpnw" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
   
		<link href="StyleSheet.css"  type="text/css" rel="stylesheet" />
    
</head>
<body>
    <form id="form1" runat="server">

         <div class="layTable" style="left: 0px; top: 0px">
            
             <div class="layHead">
                    <img class="ico1" runat="server" src="~/Images/icon/right.gif" alt="像页面的标志"/> 
                <div class="labelTit">
                    <asp:Label  ID="lblTit" runat="server" Text="内部论坛" Height="25px" Width="118px"></asp:Label>
                </div>
             </div>
            
            <div class="layBody2">
                <table id="bbs_tb" align="left" width="100%" cellspacing="0" cellpadding="0">
                    <tr>
                        <td id="bbs_tb_top" style="height: 23px">
                        </td>
                    </tr>
                 <tr>
                     <td>
                        <asp:GridView ID="GridView1" Width="100%" runat="server" AutoGenerateColumns="False" ShowHeader="False" OnRowCreated="GridView1_RowCreated" BorderColor="#C0C0FF" BorderStyle="Solid">
                             <Columns>
                                 <asp:TemplateField>
                                     <ItemTemplate>
                                         <table border="0" cellpadding="0" cellspacing="0" style="width: 100%;">
                                             <tr id="bbs_tb_cata" >
                                                 <td scope="col">
                                                     <asp:Image ID="imgCat" runat="server" ImageUrl="~/Communicate/Images/1.gif" />
                                                     <asp:Label ID="lblCata" runat="server"><%#DataBinder.Eval(Container.DataItem,"name") %></asp:Label>&nbsp;</td>
                                             </tr>
                                             <tr>
                                                 <td rowspan="4">
                                                     <asp:GridView ID="GridView2" runat="server" Width="100%" AutoGenerateColumns="False" ShowHeader="False" BorderStyle="Solid" BorderColor="#C0C0FF" BorderWidth="1px" OnRowCreated="GridView2_RowCreated">
                                                         <Columns>
                                                             <asp:TemplateField>
                                                                 <ItemTemplate>
                                                                     
                                                                     <table  cellpadding="0" cellspacing="0" style="width: 100%;">
                                                                         <tr>
                                                                             <td rowspan="4" style="width: 5%;">
                                                                                 <asp:Image ID="imgSec" runat="server" ImageUrl="~/Communicate/Images/bbs_isnews.gif" />&nbsp;</td>
                                                                             <td  style="width: 65%; height: 18px;">
                                                                                 <asp:Image ID="Image1" runat="server" ImageUrl="~/Communicate/Images/52.gif" ToolTip="版块名,点击进入该版块" />
                                                                                 &nbsp;<asp:LinkButton ID="lblSec" runat="server" Font-Bold="False" ForeColor="InactiveCaption" Font-Underline="False"><%# DataBinder.Eval(Container.DataItem,"sename") %></asp:LinkButton></td>
                                                                             <td style="width: 30%; height: 18px;">
                                                     主题：<asp:Label ID="lblTitle" runat="server"></asp:Label></td>
                                                                         </tr>
                                                                         <tr>
                                                                             <td rowspan="2">
                                                                                 <asp:Image ID="Image2" runat="server" ImageUrl="~/Communicate/Images/depict.gif" ToolTip="版块说明" />
                                                                                 <asp:Label ID="lblDep" runat="server">
                                                                                 <%#DataBinder.Eval(Container.DataItem,"depict") %>
                                                                                 </asp:Label>&nbsp;</td>
                                                                             <td >
                                                     作者：<asp:Label ID="lblAuthor" runat="server"></asp:Label></td>
                                                                         </tr>
                                                                         <tr>
                                                                             <td>
                                                     时间：<asp:Label ID="lblDate" runat="server"></asp:Label></td>
                                                                         </tr>
                                                                         <tr style="background-color:#F2F8FF;">
                                                                             <td>
                                                     版主：<asp:Label ID="lblSecMst" runat="server"></asp:Label>&nbsp;</td>
                                                                             <td>
                                                     主题数：<asp:Label ID="lblTopicC" runat="server"><%#DataBinder.Eval(Container.DataItem,"topicCount") %></asp:Label></td>
                                                                         </tr>
                                                                     </table>
                                                                     <itemstyle horizontalalign="Left" verticalalign="Middle" />
                                                                 </ItemTemplate>
                                                             </asp:TemplateField>
                                                         </Columns>
                                                         <RowStyle BorderColor="#C0C0FF" BorderStyle="Solid" />
                                                     </asp:GridView>
                                                 </td>
                                             </tr>
                                             
                                         </table>
                                     </ItemTemplate>
                                     <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                 </asp:TemplateField>
                             </Columns>
                         </asp:GridView>
                     </td>
            </tr>
            <tr>
               <td id="bbs_tb_bottom" style="height: 17px">
               </td>
            </tr>
        </table>
                
            </div>
        </div>
   
   
    </form>
</body>
</html>
