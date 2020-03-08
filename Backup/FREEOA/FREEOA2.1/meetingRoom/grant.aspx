<%@ page language="C#" autoeventwireup="true" inherits="meetingRoom_grant, App_Web_svdbyrwf" enableeventvalidation="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
    <style type="text/css">
        .style1
        {
            height: 30px;
            width: 126px;
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
                    <b>会议室申请审批</b></td>
                <td align="right" background="../Images/topbg.jpg" style="height: 30px">
                </td>
            </tr>
        </table>
    
        <br />
        <table style="width:100%;">
            <tr>
                <td align="center" colspan="3">
                    <b>会议室申请列表</b></td>
            </tr>
            <tr>
                <td align="center" style="width:15%" >
                    &nbsp;</td>
                <td align="right" style="width:70%">
                    状态：<asp:DropDownList ID="listStatus" runat="server" AutoPostBack="True" 
                        onselectedindexchanged="listStatus_SelectedIndexChanged" 
                        style="margin-left: 0px">
                        <asp:ListItem Value="0','1','2">全部</asp:ListItem>
                        <asp:ListItem Value="0">未批准</asp:ListItem>
                        <asp:ListItem Value="1">已批准</asp:ListItem>
                        <asp:ListItem Value="2">已拒绝</asp:ListItem>
                    </asp:DropDownList>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
                <td align="center" style="width:15%">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" colspan="3">
                    <asp:GridView ID="grdMeetingroom" runat="server" BackColor="White" 
                        BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                        GridLines="Horizontal" AllowPaging="True" 
                        AutoGenerateColumns="False" 
                        onpageindexchanging="grdMeetingroom_PageIndexChanging" 
                        Width="90%" Font-Size="Small" onrowdatabound="grdMeetingroom_RowDataBound">
                        <PagerSettings FirstPageText="第一页" LastPageText="最后一页" 
                            NextPageImageUrl="~/Images/icon/next.gif" NextPageText="下一页" 
                            PreviousPageImageUrl="~/Images/icon/prev.gif" PreviousPageText="上一页" />
                        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                        <Columns>
                            <asp:BoundField DataField="branch" HeaderText="部门" />
                            <asp:BoundField DataField="name" HeaderText="姓名" />
                            <asp:BoundField DataField="meetingroomname" HeaderText="会议室名称" />
                            <asp:BoundField DataField="starttime" HeaderText="开始时间" />
                            <asp:BoundField DataField="endtime" HeaderText="结束时间" />
                            <asp:BoundField DataField="reason" HeaderText="申请原因" />
                            <asp:BoundField DataField="status" HeaderText="状态" />
                            <asp:TemplateField HeaderText="同意">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton2" runat="server" oncommand="LinkButton2_Command" CommandArgument="<%#Bind('id') %>">同意</asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="拒绝">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton3" runat="server" oncommand="LinkButton3_Command" CommandArgument="<%#Bind('id') %>">拒绝</asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="删除">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" runat="server" 
                                        CommandArgument="<%#Bind('id') %>" oncommand="LinkButton1_Command" OnClientClick="return confirm('确定要删除此项记录么？')">删除</asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                        <EmptyDataTemplate>
                            没有数据
                        </EmptyDataTemplate>
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
            <tr>
                <td align="center" colspan="3">
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
