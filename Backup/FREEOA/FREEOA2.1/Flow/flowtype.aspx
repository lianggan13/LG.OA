<%@ page language="C#" autoeventwireup="true" inherits="Flow_flowtype, App_Web_i0ssc6n9" validaterequest="false" %>

<%@ Register assembly="DotNetTextBox" namespace="DotNetTextBox" tagprefix="DNTB" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
    <style type="text/css">
        .style1
        {
            font-size: small;
        }
        .style2
        {
            width: 650px;
        }
        .style3
        {
            font-size: small;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table border="0" cellpadding="0" cellspacing="0" bordercolor="#111111" width="100%">
		<tr height="30">
			<td width="3%" background="../Images/topbg.jpg" align=center><IMG height="16" src="../Images/icon/right.GIF"></td>
			<td background="../Images/topbg.jpg" class="style1"><b>工作流类型管理</b></td>
			<TD background="../Images/topbg.jpg" align="right">
			</TD>
		</tr>
	</table>
	



    <table style="width:100%;  cellpadding="0" cellspacing="0">
        <tr style="height:20px">
            <td>
            </td>
            <td align="center">
            </td>
            <td>
            </td>
        </tr>
                <tr>
            <td>
            </td>
            <td align="center" class="style3">
                工作流类型</td>
            <td>
            </td>
        </tr>
                <tr>
            <td>
            </td>
            <td align="center">
                <asp:GridView ID="grdFlowType" runat="server" AutoGenerateColumns="False" 
                    BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="3" GridLines="Horizontal" AllowPaging="True" PageSize="6" 
                    HeaderStyle-Font-Size=Small Width="600px" EmptyDataText="没有工作流类型数据，请添加" Font-Size="Small" >
                    <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                    <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                    <Columns>
                        <asp:BoundField HeaderText="工作流名称" ItemStyle-Width="100px" 
                            DataField="TypeName"   >
<ItemStyle Width="100px"></ItemStyle>
                        </asp:BoundField>
                        <asp:TemplateField HeaderText="工作流说明" ItemStyle-HorizontalAlign="Left">
                            <ItemTemplate>
                                <%#Eval("TypeDesc") %>
                            </ItemTemplate>

<ItemStyle HorizontalAlign="Left"></ItemStyle>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="修改" ItemStyle-Width="60px" Visible="False">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server">修改</asp:LinkButton>
                            </ItemTemplate>

<ItemStyle Width="60px"></ItemStyle>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="删除" ItemStyle-Width="60px" >
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton2" runat="server" 
                                    CommandArgument="<%#Bind('TypeID') %>" oncommand="LinkButton2_Command" OnClientClick="return confirm('确定要删除么？')">删除</asp:LinkButton>
                            </ItemTemplate>

<ItemStyle Width="60px"></ItemStyle>
                        </asp:TemplateField>
                    </Columns>
                    <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" 
                        Font-Size="Small" />
                    <AlternatingRowStyle BackColor="#F7F7F7" />
                </asp:GridView>
            </td>
            <td>
            </td>
        </tr>
                <tr style="height:20px">
            <td>
            </td>
            <td align="center">
            </td>
            <td>
            </td>
        </tr>
                <tr>
            <td>
            </td>
            <td align="center" class="style3">
                增加工作流</td>
            <td>
            </td>
        </tr>
                <tr>
            <td>
            </td>
            <td align="center">
                <table align="center" class="style2">
                    <tr>
                        <td style="width:65px" class="style1">
                            名称：</td>
                        <td align="left">
                            <asp:TextBox ID="txtName" runat="server" Width="330px"></asp:TextBox>
                                </td>
                    </tr>
                    <tr>
                        <td valign="top" class="style1">
                            说明：</td>
                        <td align="left">
                            <DNTB:WebEditor ID="WebEditor1" runat="server" systemFolder="system_dntb/" Width=555px /></td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Button ID="btnSubmit" runat="server" Text="提 交" Width="80px" 
                                onclick="btnSubmit_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="btnClear" runat="server" Text="清 空" Width="80px" />
                        </td>
                    </tr>
                </table>
            </td>
            <td>
            </td>
        </tr>
                <tr>
            <td>
            </td>
            <td align="center">
            </td>
            <td>
            </td>
        </tr>
                <tr>
            <td>
            </td>
            <td>
            </td>
            <td>
            </td>
        </tr>
                <tr>
            <td>
            </td>
            <td>
            </td>
            <td>
            </td>
        </tr>
                <tr>
            <td>
            </td>
            <td>
            </td>
            <td>
            </td>
                    <tr>
            <td>
            </td>
            <td>
            </td>
            <td>
            </td>
        </tr>
                <tr>
            <td>
            </td>
            <td>
            </td>
            <td>
            </td>
        </tr>
                <tr>
            <td>
            </td>
            <td>
            </td>
            <td>
            </td>
        </tr>
        </tr>
    </table>
    <br />

    
    </div>
    </form>
</body>
</html>
