<%@ page language="C#" autoeventwireup="true" inherits="power_power, App_Web_7unqlmw-" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
    <style type="text/css">
        .style1
        {
            height: 33px;
        }
        .style2
        {
            height: 9px;
        }
        .style3
        {
            height: 50px;
        }
        .style4
        {
            font-size: small;
        }
    </style>
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
                <td background="../Images/topbg.jpg" class="style1">
                    <b>权限分配</b></td>
                <td align="right" background="../Images/topbg.jpg" style="height: 30px">
                </td>
            </tr>
        </table>
    
    </div>
<table style="width:100%; height: 445px;" align="center">
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr align="center">
        <td colspan="3">
            <span class="style4">选择部门</span>：<asp:DropDownList ID="listBranch" runat="server" AutoPostBack="True" 
                onselectedindexchanged="listBranch_SelectedIndexChanged" Width="150px">
            </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="style4">选择人员</span>：<asp:DropDownList ID="listname" 
                runat="server" AutoPostBack="True" 
                onselectedindexchanged="listname_SelectedIndexChanged" Width="150px">
            </asp:DropDownList>
                </td>
    </tr>
    <tr>
        <td align="center" style="width:35%">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
        <td align="left" style="width:12%">
            &nbsp;</td>
        <td align="left">
            &nbsp;</td>
    </tr>
    <tr>
        <td align="center">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
        <td align="left">
            <asp:CheckBox ID="chkNotice" runat="server" Text="公告管理" Font-Size="Small" />
        </td>
        <td align="left">
            <asp:LinkButton ID="btnNotice" runat="server" Font-Size="Small" 
                onclick="btnNotice_Click">查询拥有此权限的人员</asp:LinkButton>
        </td>
    </tr>
    <tr>
        <td align="center">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
        <td align="left">
            <asp:CheckBox ID="chkNews" runat="server" Text="新闻管理" Font-Size="Small" />
        </td>
        <td align="left">
            <asp:LinkButton ID="btnNews" runat="server" Font-Size="Small" 
                onclick="btnNews_Click">查询拥有此权限的人员</asp:LinkButton>
        </td>
    </tr>
    <tr>
        <td align="center">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
        <td align="left">
            <asp:CheckBox ID="chkDeptmanage" runat="server" Text="部门管理" Font-Size="Small" />
        </td>
        <td align="left">
            <asp:LinkButton ID="btnDeptManage" runat="server" Font-Size="Small" 
                onclick="btnDeptManage_Click">查询拥有此权限的人员</asp:LinkButton>
        </td>
    </tr>
    <tr>
        <td align="center">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
        <td align="left">
            <asp:CheckBox ID="chkEmployee" runat="server" Text="员工管理" Font-Size="Small" />
        </td>
        <td align="left">
            <asp:LinkButton ID="btnEmployee" runat="server" Font-Size="Small" 
                onclick="btnEmployee_Click">查询拥有此权限的人员</asp:LinkButton>
        </td>
    </tr>
    <tr>
        <td align="center">
            &nbsp;</td>
        <td align="left">
            <asp:CheckBox ID="chkQuery" runat="server" Text="查询管理" Font-Size="Small"  />
        </td>
        <td align="left">
            <asp:LinkButton ID="btnQuery" runat="server" Font-Size="Small" 
                onclick="btnQuery_Click">查询拥有此权限的人员</asp:LinkButton>
        </td>
    </tr>
    <tr>
        <td align="center">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
        <td align="left">
            <asp:CheckBox ID="chkAttendence" runat="server" Text="考勤管理" Font-Size="Small" />
        </td>
        <td align="left">
            <asp:LinkButton ID="btnAttendence" runat="server" Font-Size="Small" 
                onclick="btnAttendence_Click">查询拥有此权限的人员</asp:LinkButton>
        </td>
    </tr>
    <tr>
        <td align="center">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
        <td align="left">
            <asp:CheckBox ID="chkSuggest" runat="server" Text="投诉建议" Font-Size="Small" />
        </td>
        <td align="left">
            <asp:LinkButton ID="btnSuggest" runat="server" Font-Size="Small" 
                onclick="btnSuggest_Click">查询拥有此权限的人员</asp:LinkButton>
        </td>
    </tr>
    <tr>
        <td align="center">
            &nbsp;</td>
        <td align="left">
            <asp:CheckBox ID="chkCar" runat="server" Text="车辆管理" Font-Size="Small" />
        </td>
        <td align="left">
            <asp:LinkButton ID="btnCar" runat="server" Font-Size="Small" 
                onclick="btnCar_Click">查询拥有此权限的人员</asp:LinkButton>
        </td>
    </tr>
    <tr>
        <td align="center">
            &nbsp;</td>
        <td align="left">
            <asp:CheckBox ID="chkMeetingroom" runat="server" Text="会议室管理" 
                Font-Size="Small" />
        </td>
        <td align="left">
            <asp:LinkButton ID="btnMeetingroom" runat="server" Font-Size="Small" 
                onclick="btnMeetingroom_Click">查询拥有此权限的人员</asp:LinkButton>
        </td>
    </tr>
    <tr>
        <td align="center">
            &nbsp;</td>
        <td align="left">
            <asp:CheckBox ID="chkManager" runat="server" Text="经理层管理" Font-Size="Small" />
        </td>
        <td align="left">
            <asp:LinkButton ID="btnManager" runat="server" Font-Size="Small" 
                onclick="btnManager_Click">查询拥有此权限的人员</asp:LinkButton>
        </td>
    </tr>
    <tr>
        <td align="center">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
        <td align="left">
            <asp:CheckBox ID="chkLogin" runat="server" Text="登陆信息" Font-Size="Small" />
        </td>
        <td align="left">
            <asp:LinkButton ID="btnLogin" runat="server" Font-Size="Small" 
                onclick="btnLogin_Click">查询拥有此权限的人员</asp:LinkButton>
        </td>
    </tr>
    <tr>
        <td align="center">
            &nbsp;</td>
        <td align="left">
            <asp:CheckBox ID="chkSalary" runat="server" Text="工资条管理" Font-Size="Small" />
        </td>
        <td align="left">
            <asp:LinkButton ID="btnSalary" runat="server" Font-Size="Small" 
                onclick="btnSalary_Click">查询拥有此权限的人员</asp:LinkButton>
        </td>
    </tr>
    <tr>
        <td align="center">
            &nbsp;</td>
        <td align="left">
            <asp:CheckBox ID="chkFile" runat="server" Text="文件管理" Font-Size="Small" />
        </td>
        <td align="left">
            <asp:LinkButton ID="btnFileManage" runat="server" Font-Size="Small" 
                onclick="btnFileManage_Click">查询拥有此权限的人员</asp:LinkButton>
        </td>
    </tr>
    <tr>
        <td align="center">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
        <td align="left">
            <asp:CheckBox ID="chkPower" runat="server" Text="权限分配" Font-Size="Small" />
        </td>
        <td align="left">
            <asp:LinkButton ID="btnPower" runat="server" Font-Size="Small" 
                onclick="btnPower_Click">查询拥有此权限的人员</asp:LinkButton>
        </td>
    </tr>
    <tr>
        <td align="center">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
        <td align="left">
            <asp:CheckBox ID="chkBBS" runat="server" Text="论坛管理" Font-Size="Small" />
        </td>
        <td align="left">
            <asp:LinkButton ID="btnBBS" runat="server" Font-Size="Small" 
                onclick="btnBBS_Click">查询拥有此权限的人员</asp:LinkButton>
        </td>
    </tr>
    <tr>
        <td align="center">
            &nbsp;</td>
        <td align="left">
            <asp:CheckBox ID="chkOnline" runat="server" Text="查看在线人员" Font-Size="Small" />
        </td>
        <td align="left">
            <asp:LinkButton ID="btnOnline" runat="server" Font-Size="Small" 
                onclick="btnOnline_Click">查询拥有此权限的人员</asp:LinkButton>
        </td>
    </tr>
    <tr>
        <td colspan="3" align="center" class="style3">
            <asp:Button ID="btnRevise" runat="server" Text="修  改" 
                onclick="btnRevise_Click" />
        </td>
    </tr>
    <tr>
        <td colspan="3" align="center">
            <asp:Label ID="lblTitle" runat="server" Font-Size="Small" ForeColor="#CC0000"></asp:Label>
        </td>
    </tr>
    <tr>
        <td colspan="3" align="center" class="style2">
            <asp:GridView ID="grdAllname" runat="server" CellPadding="3" 
                GridLines="Horizontal" AutoGenerateColumns="False" BackColor="White" 
                BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" Font-Size="Small" 
                Width="446px">
                <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                <AlternatingRowStyle BackColor="#F7F7F7" />
                <Columns>
                    <asp:BoundField DataField="branch" HeaderText="部门" />
                    <asp:BoundField DataField="name" HeaderText="姓名" />
                </Columns>
            </asp:GridView>
        </td>
    </tr>
    <tr>
        <td colspan="3" align="center" class="style2">
            &nbsp;</td>
    </tr>
</table>
    </form>
</body>
</html>
