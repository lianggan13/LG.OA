<%@ page language="C#" autoeventwireup="true" inherits="Tools_Calculate, App_Web_hhks44zk" %>

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
					<td width="3%" background="../Images/topbg.jpg" align=left><IMG height="16" src="../Images/icon/right.GIF"><b>实用工具</b>
					</td>
		
				</tr>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label></td>
            </tr>
            <tr>
                <td align="center">
                    <asp:GridView ID="GridView1" runat="server" Height="71px" Width="609px" 
                        BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" 
                        CellPadding="3" AutoGenerateColumns="False"  DataKeyNames="toolid" 
                        OnRowEditing="GridView1_RowEditing1" OnRowDataBound="GridView1_RowDataBound" 
                        OnRowDeleting="GridView1_RowDeleting" GridLines="Horizontal"  RowStyle-HorizontalAlign="Center" >
                        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                        <RowStyle ForeColor="#4A3C8C" BackColor="#E7E7FF" />
                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
           
                        <Columns>
                            <asp:BoundField DataField="toolname" HeaderText="工具名称"  />
                            <asp:CommandField EditText="使用" HeaderText="使用" ShowEditButton="True" />
                            <asp:CommandField HeaderText="删除" ShowDeleteButton="True" />
                         </Columns>
                    
                        <AlternatingRowStyle BackColor="#F7F7F7" />
                    
                    </asp:GridView>
                  
                    <asp:Button ID="Button1" runat="server" Text="上传工具" 　class="BnCss" OnClick="Button1_Click"  /></td>
            </tr>
             <asp:Panel ID="Mypanel" runat="server" Visible="false">
            <tr>
                <td align="center" style="height: 26px">
                    工具名称：<asp:TextBox ID="TextBox1" runat="server" Height="20px" Width="124px"></asp:TextBox>
                    上传附件：<asp:FileUpload ID="FileUpload1" runat="server" />
                    <asp:Button ID="Button2" runat="server" CssClass="BnCss" Text="上　传" OnClick="Button2_Click1" /></td>
            </tr>
            </asp:Panel>
            <tr>
           
                <td align="center">
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
