<%@ page language="C#" autoeventwireup="true" inherits="manager_attendance, App_Web_wy4mt_ds" enableeventvalidation="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table border="0" bordercolor="#111111" cellpadding="0" cellspacing="0" 
            width="100%" >
            <tr height="30">
                <td align="center" background="../Images/topbg.jpg" width="3%">
                    <img height="16" src="../Images/icon/right.GIF" /></td>
                <td background="../Images/topbg.jpg" width="120">
                    <b>部门考勤查询</b></td>
                <td align="right" background="../Images/topbg.jpg">
                </td>
            </tr>
        </table>
        <br />
        <table style="width:100%;">
            <tr>
                <td align="center" colspan="3">
                    <b>部门考勤查询</b></td>
            </tr>
            <tr>
                <td style=" width:10%">
                    &nbsp;</td>
                <td align="right" style=" width:80%">
                    <asp:CheckBox ID="chkBranch" runat="server" Font-Size="Small" Text="按部门" />
                    <asp:DropDownList ID="lstBranch" runat="server" Height="16px">
                    </asp:DropDownList>
&nbsp;
                    <asp:CheckBox ID="chkMonth" runat="server" Font-Size="Small" Text="按时间" />
                    <asp:DropDownList ID="lstMonth" runat="server" 
                        Height="16px">
                    </asp:DropDownList>
                &nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" Height="20px" Text="查 询" 
                        onclick="Button1_Click" />
                </td>
                <td style=" width:10%">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" colspan="3" runat="server">
                    <asp:GridView ID="grdAttendence" runat="server" AutoGenerateColumns="False" 
                        BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" 
                        CellPadding="3" GridLines="Horizontal" Width="90%" 
                        AllowPaging="True" Font-Size="Small" 
                        onpageindexchanging="grdAttendence_PageIndexChanging">
                        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                        <Columns>
                            <asp:BoundField DataField="name" HeaderText="姓名" />
                            <asp:BoundField DataField="checkdate" HeaderText="登记时间" />
                            <asp:BoundField DataField="type" HeaderText="考勤类型" />
                            <asp:BoundField DataField="ondutytime" HeaderText="上班时间" />
                            <asp:BoundField DataField="offdutytime" HeaderText="下班时间" />
                            <asp:BoundField DataField="ondutystate" HeaderText="上班状态" />
                            <asp:BoundField DataField="offdutystate" HeaderText="下班状态" />
                            <asp:BoundField DataField="ondutywhys" HeaderText="上班说明" />
                            <asp:BoundField DataField="offwhys" HeaderText="下班说明" />
                            <asp:BoundField DataField="otherwhys" HeaderText="其他说明" />
                        </Columns>
                        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" 
                            Font-Size="Small" />
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
        </table>
        <br />
    
    </div>
    </form>
</body>
</html>
