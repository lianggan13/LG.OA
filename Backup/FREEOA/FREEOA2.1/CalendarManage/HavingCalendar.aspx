<%@ page language="C#" autoeventwireup="true" inherits="CalendarManage_HavingCalendar, App_Web_mpbjvgl6" %>

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
					<td width="3%" background="../Images/topbg.jpg" align=left><IMG height="16" src="../Images/icon/right.GIF"><strong>日程安排</strong></td>
		
				</tr>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></td>
            </tr>
            <tr>
                <td align="center">
                    <asp:GridView ID="GridView1" runat="server" Height="71px" Width="798px" 
                        BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" 
                        CellPadding="3" AutoGenerateColumns="False" DataKeyNames="CalendarID" 
                        OnRowDataBound="GridView1_RowDataBound2" OnRowDeleting="GridView1_RowDeleting2" 
                        OnRowEditing="GridView1_RowEditing1" GridLines="Horizontal"  >
                        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                        <RowStyle ForeColor="#4A3C8C" BackColor="#E7E7FF" />
                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                        <Columns>
                            <asp:BoundField DataField="AddTime" HeaderText="日期" />
                            <asp:BoundField DataField="Motif" HeaderText="摘要" />
                            <asp:TemplateField HeaderText="查看" ShowHeader="False">
                                <EditItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update"
                                        Text="更新"></asp:LinkButton>
                                    <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel"
                                        Text="取消"></asp:LinkButton>
                                </EditItemTemplate>
                                <ItemTemplate>
                                   <a href="See.aspx?id=<%#Eval("CalendarID") %>"  target="main">
                                   查看
                                   </a>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:CommandField HeaderText="删除" ShowDeleteButton="True" />
                            <asp:BoundField DataField="CalendarID" HeaderText="CalendarID" Visible="False" />
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
