<%@ page language="C#" autoeventwireup="true" inherits="manager_reportRead, App_Web_npi0lp43" %>

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
                    <img height="16" src="../Images/icon/right.GIF" /><b>工作报告</b>
                </td>
            </tr>
        </table>
        		<table width=100%>
		    <tr>
		        <td style="width:15%">
		            <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
		        </td>
		        <td>
		        </td>
		        <td style="width:15%">
		        </td>
		    </tr>
		    <tr>
		        <td >
		            </td>
		        <td>
		            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                        <span  style="font-size:small">报告类型：</span>
                            <span  style="font-size:small">
                            <asp:DropDownList ID="lstType" 
                        runat="server" Height="18px" Width="150px" AutoPostBack="True" 
                                onselectedindexchanged="lstType_SelectedIndexChanged" >
                                <asp:ListItem>周报</asp:ListItem>
                                <asp:ListItem>月报</asp:ListItem>
                                <asp:ListItem>季度报</asp:ListItem>
                                <asp:ListItem>半年报</asp:ListItem>
                                <asp:ListItem>年报</asp:ListItem>
                            </asp:DropDownList>
                            &nbsp;&nbsp;&nbsp;&nbsp;</span>
                        </ContentTemplate>
                    </asp:UpdatePanel>
		        </td>
		        <td>
		        </td>
		    </tr>
		    		    <tr>
		        <td >
		        </td>
		        <td align="center">
		            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                        <ContentTemplate>
                            <asp:GridView ID="grdReport" runat="server" AutoGenerateColumns="False" 
                        BackColor="White" BorderColor="#E7E7FF" 
    BorderStyle="None" BorderWidth="1px" 
                        CellPadding="3" GridLines="Horizontal" Width="100%" AllowPaging="True" 
                                onpageindexchanging="grdReport_PageIndexChanging" PageSize="15">
                                <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                                <RowStyle BackColor="#E7E7FF" Font-Size="Small" ForeColor="#4A3C8C" />
                                <Columns>
                                    <asp:BoundField DataField="name" HeaderText="姓名" />
                                    <asp:BoundField DataField="reportName" HeaderText="报告名称" />
                                    <asp:BoundField DataField="reportYear" HeaderText="报告年度" />
                                    <asp:BoundField DataField="reportCircle" HeaderText="报告期间" />
                                    <asp:TemplateField HeaderText="查看">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="btnShow" runat="server"  CommandArgument="<%#Bind('id') %>" 
                                                oncommand="btnShow_Command">查看</asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                                <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" Font-Size="Small" 
                            ForeColor="#F7F7F7" />
                                <AlternatingRowStyle BackColor="#F7F7F7" />
                            </asp:GridView>
                        </ContentTemplate>
                        <Triggers>
                            <asp:AsyncPostBackTrigger ControlID="lstType" 
                                EventName="SelectedIndexChanged" />
                        </Triggers>
                    </asp:UpdatePanel>
		        </td>
		        <td>
		        </td>
		    </tr>
		    		    <tr>
		        <td >
		        </td>
		        <td>
		        </td>
		        <td>
		        </td>
		    </tr>
		    		    <tr>
		        <td >
		        </td>
		        <td>
		        </td>
		        <td>
		        </td>
		    </tr>
		    		    <tr>
		        <td >
		        </td>
		        <td>
		        </td>
		        <td>
		        </td>
		    </tr>
		</table>	
    </div>
    </form>
</body>
</html>
