<%@ page language="C#" autoeventwireup="true" inherits="sysManage_OperationLog, App_Web_c0qvfpcc" enableeventvalidation="false" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
            <link href="../css.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
		    body{font-size: 12px;cursor: default;font-family: 宋体;}
		</style>
</head>
<body>
    <form id="form1" runat="server">
    <table style="width: 981px; height: 21px" >
				<tr height="30">
					<td width="3%" background="../Images/topbg.jpg" align=center style="height: 30px"><IMG height="16" src="../Images/icon/right.GIF"></td>
					<td background="../Images/topbg.jpg" width="80" style="height: 30px"><b>操作信息</b></td>
					<td background="../Images/topbg.jpg" align="right" style="height: 30px; width: 532px;">
					</td>
				</tr>
	</table>
 <table  width="100%">
        
            <tr>
                <td align="right">
                    <asp:CheckBox ID="chkAll" runat="server" AutoPostBack="True" OnCheckedChanged="chkAll_CheckedChanged"
                        Text="选择当前页的所有信息" />
                    &nbsp; &nbsp;<asp:Button ID="btnDel" runat="server" Text="删 除" Width="60px" OnClick="btnDel_Click" CssClass="BnCss" />
                    &nbsp; &nbsp;&nbsp;</td>
            </tr>
            <tr>
                <td style="height: 24px" align="center">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        Style="position: relative" Width="90%" DataKeyNames="WorkLogId" 
                        CellPadding="3" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" 
                        BorderWidth="1px" GridLines="Horizontal">
                        <Columns>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:CheckBox ID="chkDo" runat="server" Style="left: 2px; position: relative; top: 2px" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="number" HeaderText="序号" />
                            <asp:BoundField DataField="WorkLogId" HeaderText="用户编号" />
                            <asp:BoundField DataField="UserName" HeaderText="用户姓名" />
                            <asp:BoundField DataField="WorkTime" HeaderText="操作时间" />
                            <asp:BoundField DataField="WorkInfo" HeaderText="操作描述" />
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
                <td style="height: 13px" align="center">
                    <webdiyer:aspnetpager id="AspNetPager1" runat="server" custominfohtml="第<font color='red'><b>%CurrentPageIndex%</b></font>页  共:%PageCount%页&nbsp; %StartRecordIndex%-%EndRecordIndex%"
                        custominfotextalign="Center" firstpagetext="【首页】" lastpagetext="【尾页】" nextpagetext="【下页】"
                        onpagechanged="AspNetPager1_PageChanged" prevpagetext="【前页】" showcustominfosection="Left"
                        showinputbox="Always" style="position: relative" width="500px"></webdiyer:aspnetpager>
                </td>
            </tr>
            <tr>
                <td style="height: 13px" align="center">
                    <asp:Button ID="btnExcel" runat="server" Height="22px" onclick="btnExcel_Click" 
                        Text="导出为EXCEL" />
                </td>
            </tr>
        </table>
        &nbsp;&nbsp;
    
    </div>
    </form>
</body>
</html>
