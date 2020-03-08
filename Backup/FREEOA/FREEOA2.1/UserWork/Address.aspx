<%@ page language="C#" autoeventwireup="true" inherits="UserWork_Address, App_Web_65ubaf-d" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

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
					<td width="3%" background="../Images/topbg.jpg" align=left style="height: 30px"><IMG height="16" src="../Images/icon/right.GIF"><b>员工通讯录</b>
					</td>
		
				</tr>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></td>
            </tr>
            <tr>
                <td align="center">
                    请输入员工姓名：<asp:TextBox ID="TextBox1" runat="server" Width="116px"></asp:TextBox>&nbsp;
                    所在部门：<asp:DropDownList ID="DropDownList1" runat="server" Width="126px">
                    </asp:DropDownList>
                    <asp:Button ID="Button1" runat="server"  CssClass="BnCss" Text="查　询" OnClick="Button1_Click1" /></td>
            </tr>
            <tr>
                <td align="center">
                    <asp:GridView ID="GridView1" runat="server" Height="71px" Width="798px" 
                        BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" 
                        CellPadding="3" AutoGenerateColumns="False" DataKeyNames="Employeeid" 
                        OnSelectedIndexChanging="GridView1_SelectedIndexChanging" 
                        OnRowDataBound="GridView1_RowDataBound1" OnRowDeleting="GridView1_RowDeleting1" 
                        OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" 
                        GridLines="Horizontal"  >
                        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                        <RowStyle ForeColor="#4A3C8C" BackColor="#E7E7FF" />
                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                        <Columns>
                            <asp:BoundField DataField="name" HeaderText="员工姓名" />
                            <asp:BoundField DataField="Branch" HeaderText="职位" />
                            <asp:BoundField DataField="sex" HeaderText="性别" />
                            <asp:BoundField DataField="Birthday" HeaderText="生日" />
                            <asp:BoundField DataField="movePhone" HeaderText="电话" />
                            <asp:CommandField EditText="查看" HeaderText="查看" SelectText="查看" ShowSelectButton="True" />
                        </Columns>
                        <AlternatingRowStyle BackColor="#F7F7F7" />
                    </asp:GridView>
                
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
