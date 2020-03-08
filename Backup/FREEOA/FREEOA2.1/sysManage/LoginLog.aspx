<%@ page language="C#" autoeventwireup="true" inherits="sysManage_LoginLog, App_Web_c0qvfpcc" enableeventvalidation="false" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>

    
    </title>
        <link href="../css.css" rel="stylesheet" type="text/css" />
    
    <style type="text/css">
		    body{font-size: 12px;cursor: default;font-family: 宋体;}
		</style>
</head>
<body leftMargin="0" topMargin="0" MS_POSITIONING="GridLayout">
    <form id="form1" runat="server">
    <table width="100%" >
				<tr height="30">
					<td width="3%" background="../Images/topbg.jpg" align=center style="height: 30px"><IMG height="16" src="../Images/icon/right.GIF"></td>
					<td background="../Images/topbg.jpg" width="80" style="height: 30px"><b>登录信息</b></td>
					<td background="../Images/topbg.jpg" align="right" style="height: 30px">
					</td>
				</tr>
	</table>
    <div>
        
        <table>
 
            <tr>
                <td  align="right" style="width: 982px">
                    <asp:CheckBox ID="chkAll" runat="server" Text="选择当前页的所有信息" AutoPostBack="True" OnCheckedChanged="chkAll_CheckedChanged" />
                    <asp:Button ID="btnDel" runat="server" Text="删 除" Width="57px" OnClick="btnDel_Click" CssClass="BnCss" />
                    &nbsp;
                    &nbsp;</td>
            </tr>
            <tr>
                <td  style="height: 24px; width: 982px;" align="center">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        Style="position: relative; left: 0px;" Width="90%" DataKeyNames="LoginID" 
                        CellPadding="3" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" 
                        BorderWidth="1px" Height="145px" GridLines="Horizontal">
            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:CheckBox ID="chkDo" runat="server" Style="position: relative; left: 2px; top: 2px;" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="number" HeaderText="序号" />
                <asp:BoundField DataField="UserName" HeaderText="用户账号" />
                <asp:BoundField DataField="LoginTime" HeaderText="登录时间" />
                <asp:BoundField DataField="IP" HeaderText="登录地址" />
                <asp:BoundField DataField="State" HeaderText="原因" />
            </Columns>
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <RowStyle ForeColor="#4A3C8C" BackColor="#E7E7FF" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <AlternatingRowStyle BackColor="#F7F7F7" />
        </asp:GridView>
                </td>
            </tr>
            <tr>
                <td style="height: 13px; width: 982px;" align="center">
                    <webdiyer:AspNetPager ID="AspNetPager1" runat="server" CustomInfoHTML="第<font color='red'><b>%CurrentPageIndex%</b></font>页  共:%PageCount%页&nbsp; %StartRecordIndex%-%EndRecordIndex%"
                                                                                            CustomInfoTextAlign="Center" FirstPageText="【首页】" Height="25px" HorizontalAlign="Center"
                                                                                            InputBoxStyle="width:19px" LastPageText="【尾页】" NextPageText="【下页】 " 
                                                                                            PrevPageText="【前页】 " ShowCustomInfoSection="Left" ShowInputBox="Always" ShowNavigationToolTip="True"
                                                                                            Width="500px" OnPageChanged="AspNetPager1_PageChanged" CssClass="">
                    </webdiyer:AspNetPager>
                </td>
            </tr>
            <tr>
                <td style="height: 13px; width: 982px;" align="center">
                    <asp:Button ID="btnExcel" runat="server" Height="22px" onclick="btnExcel_Click" 
                        Text="导出为EXCEL" Visible="False" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
