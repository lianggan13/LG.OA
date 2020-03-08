<%@ page language="C#" autoeventwireup="true" inherits="UserWork_MyGrouping, App_Web_dpkitv6r" %>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>无标题页</title>
    <link href="../css.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table align="center" width="100%">
        <tr height="30">
					<td width="3%" background="../Images/topbg.jpg" align=left><IMG height="16" src="../Images/icon/right.GIF"><b>联系人分组</b>
					</td>
		
				</tr>
            <tr>
                <td>
                    </td>
            </tr>
            <tr>
                <td align="center">
                    <asp:GridView ID="GridView1" runat="server" Height="71px" Width="609px" 
                        BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" 
                        CellPadding="3" AutoGenerateColumns="False" 
                        OnRowDataBound="GridView1_RowDataBound" OnRowDeleting="GridView1_RowDeleting1" 
                        DataKeyNames="groupingid" Font-Size="Small" GridLines="Horizontal"  >
                        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                        <RowStyle ForeColor="#4A3C8C" BackColor="#E7E7FF" />
                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
           
                        <Columns>
                            <asp:BoundField DataField="Type" HeaderText="分组名称" ItemStyle-HorizontalAlign="Center" />
                            <asp:CommandField HeaderText="删除" ShowDeleteButton="True" ItemStyle-HorizontalAlign="Center" />
                             <asp:BoundField DataField="groupingid" HeaderText="groupingid" Visible="False" />
                         </Columns>
                    
                        <AlternatingRowStyle BackColor="#F7F7F7" />
                    
                    </asp:GridView>
                    <asp:Button ID="Button1" runat="server" Text="新建分组" 　class="BnCss" OnClick="Button1_Click" /></td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
