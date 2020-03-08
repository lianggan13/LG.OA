<%@ page language="C#" autoeventwireup="true" inherits="car_manage, App_Web_57g-_lwi" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
    <style type="text/css">
        .style1
        {
            height: 38px;
        }
        .style2
        {
            height: 54px;
        }
    </style>
    <script language="javascript" type="text/javascript"></script>
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
                    <b>车辆管理</b></td>
                <td align="right" background="../Images/topbg.jpg" style="height: 30px">
                </td>
            </tr>
        </table>
    
        <br />
        <table style="width:100%;">
            <tr>
                <td align="center" class="style1">
                    <b>车辆管理</b></td>
            </tr>
            <tr>
                <td align="center">
                    <asp:GridView ID="grdCar" runat="server" AutoGenerateColumns="False" 
                        BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" 
                        CellPadding="3" GridLines="Horizontal" Width="90%" 
                        Font-Size="Small" >
                        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                        <Columns>
                            <asp:BoundField DataField="carname" HeaderText="车辆名称" >
                                <ControlStyle Font-Size="Smaller" />
                            </asp:BoundField>
                            <asp:BoundField DataField="carcard" HeaderText="车牌号" />
                            <asp:BoundField DataField="cartype" HeaderText="车辆类型" />
                            <asp:TemplateField HeaderText="删除">
                                <ItemTemplate>
                                    &nbsp;<asp:LinkButton ID="LinkButton1" runat="server" Font-Size="Small"  OnClientClick="return confirm('确定要删除该条记录么？');" 
                                        oncommand="LinkButton1_Command1" CommandArgument=<%#Eval("id") %>>删除</asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                        <EmptyDataTemplate>
                            <asp:Label ID="Label1" runat="server" Text="没有车辆"></asp:Label>
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
                <td align="center" class="style1">
                    <b>增加车辆</b></td>
            </tr>
            <tr>
                <td align="center">
                    车辆名称：<asp:TextBox ID="txtCarName" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 车牌号：<asp:TextBox ID="txtCarCard" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 车辆类型：<asp:TextBox ID="txtCarType" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center" class="style2">
                    <asp:Button ID="btnSubmit" runat="server" onclick="btnSubmit_Click" 
                        Text="提 交" />
                </td>
            </tr>
            <tr>
                <td align="center">
                    &nbsp;</td>
            </tr>
        </table>
        <br />
        <br />
        <br />
    
    </div>
    </form>
   
</body>
</html>
