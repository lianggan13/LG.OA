<%@ page language="C#" autoeventwireup="true" inherits="Flow_authored, App_Web_i0ssc6n9" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table border="0" bordercolor="#111111" cellpadding="0" cellspacing="0" 
            width="100%">
            <tr height="30">
                <td align="center" background="../Images/topbg.jpg" width="3%">
                    <img height="16" src="../Images/icon/right.GIF" /></td>
                <td background="../Images/topbg.jpg" class="style1">
                    <b>工作流详细</b></td>
                <td align="right" background="../Images/topbg.jpg">
                </td>
            </tr>
        </table>
        <table style="width:100%;">
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" colspan="3">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" 
                        CellPadding="3" Font-Size="Small" GridLines="Horizontal" Width="90%" 
                        AllowPaging="True" onpageindexchanging="GridView1_PageIndexChanging" 
                        onrowdatabound="GridView1_RowDataBound">
                        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                        <Columns>
                            <asp:BoundField DataField="title" HeaderText="工作流名称" />
                            <asp:BoundField DataField="branch" HeaderText="申请部门" />
                            <asp:BoundField DataField="name" HeaderText="申请人" />
                            <asp:BoundField DataField="pubdate" HeaderText="申请时间" />
                            <asp:BoundField DataField="isend" HeaderText="是否结束" />
                            <asp:TemplateField HeaderText="查看">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" runat="server" oncommand="LinkButton1_Command" CommandName="<%#Bind('flowid') %>">查看</asp:LinkButton>
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
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
