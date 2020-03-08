<%@ page language="C#" autoeventwireup="true" inherits="car_allapply, App_Web_57g-_lwi" %>

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
                <td align="center" background="../Images/topbg.jpg" style="height: 30px" 
                    width="3%">
                    <img height="16" src="../Images/icon/right.GIF" /></td>
                <td background="../Images/topbg.jpg" style="height: 30px" width="80">
                    <b>申请查询</b></td>
                <td align="right" background="../Images/topbg.jpg" style="height: 30px">
                </td>
            </tr>
        </table>
        <table style="width:100%;">
            <tr>
                <td align="center">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center">
                    <b>我的所有申请</b></td>
            </tr>
            <tr>
                <td align="center">
                    <asp:GridView ID="grdCar" runat="server" 
                        BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" 
                        CellPadding="3" GridLines="Horizontal" 
                        onrowdatabound="grdCar_RowDataBound" AutoGenerateColumns="False" 
                        AllowPaging="True" onpageindexchanging="grdCar_PageIndexChanging" 
                        Font-Size="Small"  Width="90%">
                        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                        <Columns>
                            <asp:TemplateField HeaderText="车辆名称">
                                <ItemTemplate>
                                    <asp:Label ID="lblName" runat="server" Text="<%#Bind('whichCar') %>"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="开始时间">
                                <ItemTemplate>
                                    <asp:Label ID="lblStarttime" runat="server" Text="<%#Bind('startTime') %>"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="结束时间">
                                <ItemTemplate>
                                    <asp:Label ID="lblEndtime" runat="server" Text="<%#Bind('endTime') %>"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="申请原因">
                                <ItemTemplate>
                                    <asp:Label ID="lblReason" runat="server" Text="<%#Bind('reason') %>"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="状态">
                                <ItemTemplate>
                                    <asp:Label ID="lblStatus" runat="server" Text="<%#Bind('status') %>" ></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="删除">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" runat="server" oncommand="LinkButton1_Command" 
                                      CommandName="<%#Bind('status') %>" CommandArgument="<%#Bind('id') %>" OnClientClick="return confirm('确定要删除此项记录么？')">删除</asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                        <EmptyDataTemplate>
                            没有申请
                        </EmptyDataTemplate>
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
            <tr>
                <td align="center">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center">
                    &nbsp;</td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        <br />
    </div>
    </form>
</body>
</html>
