<%@ page language="C#" autoeventwireup="true" inherits="meetingRoom_manage, App_Web_svdbyrwf" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
    <style type="text/css">
        .style1
        {
            height: 30px;
            width: 98px;
        }
        .style2
        {
            height: 54px;
        }
        .style4
        {
            height: 38px;
            font-weight: bold;
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
                <td background="../Images/topbg.jpg" class="style1">
                    <b>会议室管理</b></td>
                <td align="right" background="../Images/topbg.jpg" style="height: 30px">
                </td>
            </tr>
        </table>
    
        <br />
        <table style="width:100%;">
            <tr>
                <td align="center" class="style4" >
                    会议室管理</td>
            </tr>
            <tr>
                <td align="center">
                    <asp:GridView ID="grdMeetingroom" runat="server" AutoGenerateColumns="False" 
                        BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" 
                        CellPadding="3" GridLines="Horizontal" Width="90%" Font-Size="Small" 
                        AllowPaging="True" onpageindexchanging="grdMeetingroom_PageIndexChanging">
                        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C"  />
                        <Columns>
                            <asp:BoundField HeaderText="会议室名称" DataField="meetingroomname" />
                            <asp:BoundField HeaderText="房间号" DataField="meetingroomNo" />
                            <asp:BoundField HeaderText="会议室类型" DataField="meetingroomtype" />
                            <asp:TemplateField HeaderText="删除">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" runat="server" oncommand="LinkButton1_Command" CommandArgument=<%#Eval("id") %>
                                     OnClientClick="return confirm('删除该会议室不会删除该会议室的申请记录，确定要删除么？');">删除</asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                        <EmptyDataTemplate>
                            <asp:Label ID="Label1" runat="server" Text="没有会议室信息"></asp:Label>
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
                <td align="center" class="style4" >
                    增加会议室</td>
            </tr>
            <tr>
                <td align="center">
                    会议室名称：<asp:TextBox ID="txtMeetingroomname" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 房间号：<asp:TextBox ID="txtMeetingroomNo" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 会议室类型：<asp:TextBox ID="txtMeetingroomtype" 
                        runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center" class="style2">
                    <asp:Button ID="btnSubmit" runat="server" Text="提 交" 
                        onclick="btnSubmit_Click" />
                </td>
            </tr>
            <tr>
                <td align="center">
                    &nbsp;</td>
            </tr>
        </table>
        <br />
    
    </div>
    </form>

</body>
</html>
