<%@ page language="C#" autoeventwireup="true" inherits="sysManage_NewManage, App_Web_tuylcjo8" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
    <link href="../css.css" rel="stylesheet" type="text/css" />
   <script type="text/javascript" src="../Celend/popcalendar.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <table border="0" cellpadding="0" cellspacing="0" bordercolor="#111111" width="100%" class="px12">
		<tr height="30">
			<td width="3%" background="../Images/topbg.jpg" align=center><IMG height="16" src="../Images/icon/right.GIF"></td>
			<td background="../Images/topbg.jpg" width="80"><b>新闻管理</b></td>
			<td background="../Images/topbg.jpg" align="right"></td>
		</tr>
	</table>
    <table width=100% cellpadding=0 cellspacing=0 border=0 align=center>
    <tr>
    <td style="height: 20px">
    
    </td>
    </tr>
    <tr>
                <td  align="center">
                    <asp:CheckBox ID="chkAll" runat="server" Text="选择当前页的所有信息" AutoPostBack="True" OnCheckedChanged="chkAll_CheckedChanged" />
                    &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;<asp:Button ID="btnDel" runat="server" class="BnCss" Text="删除" OnClick="btnDel_Click" /></td>
            </tr>
            <tr>
                <td  style="height: 24px" align="center">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        Style="position: relative;" Width="90%" CellPadding="3" DataKeyNames="NewsID" 
                        GridLines="Horizontal" BackColor="White" BorderColor="#E7E7FF" 
                        BorderStyle="None" BorderWidth="1px">
            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:CheckBox ID="chkDo" runat="server" Style="position: relative; left: 2px; top: 2px;" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="number" HeaderText="序号" />
                <asp:BoundField DataField="Title" HeaderText="新闻标题" />
                <asp:TemplateField HeaderText="新闻类型">
                    <ItemTemplate>
                        <asp:Label ID="lblType" runat="server"><%# getType(DataBinder.Eval(Container.DataItem,"TypeId").ToString())%></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="发布人">
                    <ItemTemplate>
                        <asp:Label ID="lblUser" runat="server"><%# getUser(DataBinder.Eval(Container.DataItem,"UserID").ToString())%></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="Pubdate" HeaderText="发布时间" />
            </Columns>
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <AlternatingRowStyle BackColor="#F7F7F7" />
        </asp:GridView>
                </td>
            </tr>
            <tr>
                <td style="height: 13px" align="center">
                    <webdiyer:AspNetPager ID="AspNetPager1" runat="server" CustomInfoHTML="第<font color='red'><b>%CurrentPageIndex%</b></font>页  共:%PageCount%页&nbsp; %StartRecordIndex%-%EndRecordIndex%"
                                                                                            CustomInfoTextAlign="Center" FirstPageText="【首页】" Height="25px" HorizontalAlign="Center"
                                                                                            InputBoxStyle="width:19px" LastPageText="【尾页】" NextPageText="【下页】 " 
                                                                                            PrevPageText="【前页】 " ShowCustomInfoSection="Left" ShowInputBox="Always" ShowNavigationToolTip="True"
                                                                                            Width="500px" OnPageChanged="AspNetPager1_PageChanged">
                    </webdiyer:AspNetPager>
                </td>
            </tr>
    </table> 
    </form>
</body>
</html>
