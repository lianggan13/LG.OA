<%@ page language="C#" autoeventwireup="true" inherits="CalendarManage_workreport, App_Web_mpbjvgl6" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
    <link href="../css.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            width: 120px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table border="0" cellpadding="0" cellspacing="0" bordercolor="#111111" width="100%">
				<tr height="30">
					<td width="3%" background="../Images/topbg.jpg" align=center><IMG height="16" src="../Images/icon/right.gif"></td>
					<td background="../Images/topbg.jpg" class="style1"><b>我的工作报告</b></td>
					<TD background="../Images/topbg.jpg" align="right">
					</TD>
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
                        runat="server" Height="16px" Width="160px" AutoPostBack="True" 
                                onselectedindexchanged="lstType_SelectedIndexChanged">
                                <asp:ListItem>周报</asp:ListItem>
                                <asp:ListItem>月报</asp:ListItem>
                                <asp:ListItem>季度报</asp:ListItem>
                                <asp:ListItem>半年报</asp:ListItem>
                                <asp:ListItem>年报</asp:ListItem>
                            </asp:DropDownList>
                            </span>
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
                                    <asp:BoundField DataField="reportName" HeaderText="报告名称" />
                                    <asp:BoundField DataField="reportYear" HeaderText="报告年度" />
                                    <asp:BoundField DataField="reportCircle" HeaderText="报告期间" />
                                    <asp:TemplateField HeaderText="查看">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="btnShow" runat="server"  CommandArgument="<%#Bind('id') %>" 
                                                 oncommand="btnShow_Command">查看</asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="修改">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="LinkButton1" runat="server"  
                                                CommandArgument="<%#Bind('id') %>" oncommand="LinkButton1_Command"  >修改</asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="删除">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="LinkButton2" runat="server"  
                                                CommandArgument="<%#Bind('id') %>" oncommand="LinkButton2_Command" OnClientClick="return confirm('确定要删除么？')" >删除</asp:LinkButton>
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
