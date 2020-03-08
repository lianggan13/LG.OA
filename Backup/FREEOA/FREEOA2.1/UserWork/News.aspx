<%@ page language="C#" autoeventwireup="true" inherits="UserWork_News, App_Web_z73ygct8" %>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head><title>
	无标题页
</title><link href="../css.css" rel="stylesheet" type="text/css" />

</head>
<body>
    <form name="form1" runat="server" id="form1">


       <table border="0" cellpadding="0" cellspacing="0" bordercolor="#111111" width="100%">
				<tr height="30">
					<td width="3%" background="../Images/topbg.jpg" align=center><IMG height="16" src="../Images/icon/right.GIF"></td>
					<td background="../Images/topbg.jpg" width="80"><b>新闻列表</b></td>
					<TD background="../Images/topbg.jpg" align="right">
					</TD>
				</tr>
			</table>
    <table width=100% cellpadding=0 cellspacing=0 border=0 align=center>
    <tr>
    <td style="height: 10px">
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></td>
    </tr>
    <tr>
    <td align=center>
    <table width=75% cellpadding=0 cellspacing=0 border=0>  
    <tr>
    <td align=right style="height: 26px">
    新闻类别： <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="106px">
        </asp:DropDownList>
        &nbsp; &nbsp; &nbsp;&nbsp;</td>
        </tr>
    </table>
    </td>
    </tr>
    <tr>
    <td align=center>    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White"
            BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
            Width="888px" DataKeyNames="NewsID" OnRowEditing="GridView1_RowEditing" 
            GridLines="Horizontal">
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <Columns>
                <asp:BoundField DataField="title" HeaderText="新闻标题" />
                    <asp:BoundField DataField="Type" HeaderText="新闻类别" />
                <asp:BoundField DataField="pubdate" HeaderText="发布时间" />
                <asp:CommandField EditText="查看" HeaderText="查看" ShowEditButton="True" />
            </Columns>
            <RowStyle ForeColor="#4A3C8C" BackColor="#E7E7FF" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <AlternatingRowStyle BackColor="#F7F7F7" />
        </asp:GridView>
    </td>
    </tr>
    </table>
    
</form>
</body>
</html>
