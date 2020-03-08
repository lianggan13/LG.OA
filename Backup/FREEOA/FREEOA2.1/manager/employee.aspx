<%@ page language="C#" autoeventwireup="true" inherits="manager_employee, App_Web_npi0lp43" enableeventvalidation="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table align="center" width="100%">
            <tr height="30">
                <td align="left" background="../Images/topbg.jpg" style="height: 30px" 
                    width="3%">
                    <img height="16" src="../Images/icon/right.GIF" /><b>员工列表</b>
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
                    <b>部门员工信息</b></td>
            </tr>
            <tr>
                <td align="center" colspan="3">
                    <asp:GridView ID="grdEmp" runat="server" AutoGenerateColumns="False" 
                        BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" 
                        CellPadding="3" Font-Size="Small" GridLines="Horizontal" 
                        Width="98%" AllowPaging="True" 
                        onpageindexchanging="grdEmp_PageIndexChanging">
                        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                        <Columns>
                            <asp:BoundField DataField="Name" HeaderText="姓名" />
                            <asp:BoundField DataField="username" HeaderText="账号" />
                            <asp:BoundField DataField="sex" HeaderText="性别" />
                            <asp:BoundField DataField="Birthday " HeaderText="出生日期" />
                            <asp:BoundField DataField="Speciality" HeaderText="政治面貌" />
                            <asp:BoundField DataField="Homeaddress" HeaderText="家庭住址" />
                            <asp:BoundField DataField="workPhone" HeaderText="工作电话" />
                            <asp:BoundField DataField="movePhone" HeaderText="手机" />
                            <asp:BoundField DataField="homePhone" HeaderText="家庭电话" />
                            <asp:BoundField DataField="xiaolingtong" HeaderText="小灵通" />
                            <asp:BoundField DataField="Email" HeaderText="Email" />
                            <asp:BoundField DataField="qq" HeaderText="QQ" />
                            <asp:BoundField DataField="msn" HeaderText="MSN" />
                        </Columns>
                        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                        <AlternatingRowStyle BackColor="#F7F7F7" />
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td align="center" colspan="3">
                    <asp:Button ID="btnExcel" runat="server" Height="22px" onclick="btnExcel_Click" 
                        Text="导出为EXCEL" />
                </td>
            </tr>
            <tr>
                <td align="center" colspan="3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" colspan="3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" colspan="3">
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
