<%@ page language="C#" autoeventwireup="true" inherits="New_RemarkInfo, App_Web_tuylcjo8" %>

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
					<td width="3%" background="../Images/topbg.jpg" align="center"><IMG height="16" src="../Images/icon/right.GIF"></td>
					<td background="../Images/topbg.jpg" width="80"><b>新闻评论</b></td>
					<TD background="../Images/topbg.jpg" align="right">
					</TD>
				</tr>
			</table>
			<table width=100% cellpadding=0 cellspacing=0 border=0 align=center>
	<tr>
    <td style="height: 20px">
    
    </td>
    </tr>
    <tr>
        <td align="center">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4"
                ForeColor="#333333" GridLines="None" Width="75%">
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <Columns>
                    <asp:TemplateField HeaderText="发布者">
                        <ItemTemplate>
                            <asp:Label ID="lblUser" runat="server"><%# getUser(DataBinder.Eval(Container.DataItem,"UserID").ToString()) %></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="Content" HeaderText="评论内容" />
                    <asp:BoundField DataField="Pubdate" HeaderText="评论时间" />
                </Columns>
                <RowStyle BackColor="#EFF3FB" />
                <EditRowStyle BackColor="#2461BF" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <AlternatingRowStyle BackColor="White" />
            </asp:GridView>
        </td>
    </tr>
    <tr>
        <td align="center">
            <asp:Label ID="lblCount" runat="server" Text="Label"></asp:Label>
            &nbsp; &nbsp; &nbsp;
            <asp:Button ID="btnReturn" runat="server" class="BnCss" Text="返回"  /></td>
    </tr>
    </table>
    </form>
</body>
</html>
