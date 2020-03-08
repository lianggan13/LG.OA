<%@ page language="C#" autoeventwireup="true" inherits="Info_Branch, App_Web_wy4mt_ds" %>


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
					<td width="3%" background="../Images/topbg.jpg" align=left><IMG height="16" src="../Images/icon/right.GIF"><b>部门管理</b>
					</td>
		
				</tr>
            <tr>
                <td>
                    </td>
            </tr>
            <tr>
                <td align="center" style="height: 153px">
                    <asp:GridView ID="GridView1" runat="server" Height="71px" Width="90%" 
                        BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" 
                        CellPadding="3" AutoGenerateColumns="False"  DataKeyNames="Dutyid" 
                        OnRowCancelingEdit="GridView1_RowCancelingEdit" 
                        OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" 
                         OnRowDeleting="GridView1_RowDeleting" 
                        GridLines="Horizontal"  >
                        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                        <RowStyle ForeColor="#4A3C8C" BackColor="#E7E7FF" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
           
                        <Columns>
                            <asp:BoundField DataField="Branch" HeaderText="部门名称" />
                            <asp:BoundField DataField="addtime" HeaderText="创建日期" ReadOnly="True" />
                            <asp:CommandField HeaderText="修改" EditText="修改" ShowEditButton="True" UpdateText="修改" />
                            <asp:CommandField HeaderText="删除" ShowDeleteButton="True" />
                             <asp:BoundField DataField="Dutyid" HeaderText="Dutyid" Visible="False" />
                         </Columns>
                    
                        <AlternatingRowStyle BackColor="#F7F7F7" />
                    
                    </asp:GridView>
                    <asp:Button ID="Button1" runat="server" Text="新建部门" 　class="BnCss" OnClick="Button1_Click" /></td>
            </tr>
             <span id="Myspan" runat="server">
            <tr>
                <td align="center">
                   
                        <asp:Label ID="Label1" runat="server" Text="部门名称："></asp:Label>
                        <asp:TextBox ID="TextBox1" runat="server" Height="19px" Width="204px"></asp:TextBox>
                    <asp:Button ID="Button2" runat="server"  class="BnCss" Text="保存" OnClick="Button2_Click" Width="50px" /></td>
            </tr>
            <Tr>
                <td align="center" style="height: 22px">
                    &nbsp;</td>
            </Tr>
            </span>
        </table>
    </div>
    </form>
</body>
</html>
