<%@ page language="C#" autoeventwireup="true" inherits="notice_noticemanage, App_Web_ll1ijfc2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>无标题页</title>
    <style type="text/css">
        .style1
        {
            height: 27px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table border="0" cellpadding="0" cellspacing="0" bordercolor="#111111" width="100%">
		<tr height="30">
			<td width="3%" background="../Images/topbg.jpg" align=center><IMG height="16" src="../Images/icon/right.GIF"></td>
			<td background="../Images/topbg.jpg" width="80"><b>公告管理</b></td>
			<TD background="../Images/topbg.jpg" align="right">
			</TD>
		</tr>
	</table>
        <table style="width:100%;">
            <tr>
                <td align="center">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" class="style1">
                    <b>公告列表</b></td>
            </tr>
            <tr>
                <td align="center">
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                        AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" 
                        BorderStyle="None" BorderWidth="1px" CellPadding="3" Font-Size="Small" 
                        GridLines="Horizontal" onpageindexchanging="GridView1_PageIndexChanging" 
                        style="margin-top: 7px" Width="90%">
                        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                        <Columns>
                            <asp:BoundField DataField="title" HeaderText="标题" />
                            <asp:BoundField DataField="username" HeaderText="发布者" />
                            <asp:BoundField DataField="addtime" DataFormatString="{0:yyyy-MM-dd}" 
                                HeaderText="发布时间" />
                            <asp:TemplateField HeaderText="查看">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" runat="server" oncommand="LinkButton1_Command" CommandName=<%#Bind('id') %>>查看</asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="删除">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton2" runat="server" oncommand="LinkButton2_Command" CommandName="<%#Bind('id') %>" OnClientClick="return confirm('确定要删除该条公告么？')">删除</asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                        <AlternatingRowStyle BackColor="#F7F7F7" />
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td align="center">
                    &nbsp;</td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>