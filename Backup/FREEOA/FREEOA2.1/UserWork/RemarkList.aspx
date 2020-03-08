<%@ page language="C#" autoeventwireup="true" inherits="UserWork_RemarkList, App_Web_dpkitv6r" %>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head><title>
	无标题页
</title><link href="../css.css" rel="stylesheet" type="text/css" /></head>
<body>
    <form name="form1"  runat="server" id="form1">

       <table border="0" cellpadding="0" cellspacing="0" bordercolor="#111111" width="100%">
				<tr height="30">
					<td width="3%" background="../Images/topbg.jpg" align=center><IMG height="16" src="../Images/icon/right.GIF"></td>
					<td background="../Images/topbg.jpg" width="80"><b>新闻评论</b></td>
					<TD background="../Images/topbg.jpg" align="right">
					</TD>
				</tr>
			</table>
    <table width=80% cellpadding=0 cellspacing=0 border=0 align=center>
    <tr>
    <td height=10></td>
    </tr>
    <tr>
    <td align=left style="height: 171px">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White"
                BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                Width="808px" GridLines="Horizontal">
                <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                <Columns>
                    <asp:BoundField DataField="name" HeaderText="发布者"   ItemStyle-Width="15%">
<ItemStyle Width="15%"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="Pubdate" HeaderText="时间" ItemStyle-Width="20%">
<ItemStyle Width="20%"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="Content" HeaderText="评论内容" ItemStyle-Width="65%" 
                        ItemStyle-HorizontalAlign="Left">
<ItemStyle HorizontalAlign="Left" Width="65%"></ItemStyle>
                    </asp:BoundField>
                </Columns>
                <RowStyle ForeColor="#4A3C8C" BackColor="#E7E7FF" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" 
                    HorizontalAlign="Center" />
                <AlternatingRowStyle BackColor="#F7F7F7" />
            </asp:GridView>
            &nbsp;</div>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></td>
    </tr>
    <tr>
    <td align="center" style="height: 19px">
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">返　回</asp:LinkButton>&nbsp;</td>
    </tr>
    </table>
    </form>
</body>
</html>
