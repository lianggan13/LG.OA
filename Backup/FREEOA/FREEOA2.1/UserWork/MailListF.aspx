<%@ page language="C#" autoeventwireup="true" inherits="UserWork_MailListF, App_Web_z73ygct8" %>

<html xmlns="http://www.w3.org/1999/xhtml" >

<head id="Head1"><title>
	无标题页
</title>
<link href="../css.css" rel="stylesheet" type="text/css" />
 <script language="javascript" src="../Js/calendar.js" type="text/javascript"></script>
</head>
<body>
    <form name="form1"  runat="server" id="form1">
    <table border="0" cellpadding="0" cellspacing="0" bordercolor="#111111" width="100%">
				<tr height="30">
					<td width="3%" background="../Images/topbg.jpg" align=center><IMG height="16" src="../Images/icon/right.GIF"></td>
					<td background="../Images/topbg.jpg" width="80"><b>发件箱</b></td>
					<TD background="../Images/topbg.jpg" align="right">
					</TD>
				</tr>
    </table>
    <table width="100%" cellpadding=0 cellspacing=0 border=0 align="center">
    <tr>
    <td style="height: 10px"></td>
    </tr>
    <tr>
    <td align="center" style="height: 246px" valign="top">
    <table width=100% cellpadding=2 cellspacing=1 border=0>
    <tr>
    <td align=left valign=top>
    <table width=100% cellpadding=0 cellspacing=0 border=0>
    <tr>
    <td align=center style="height: 25px">
        &nbsp;&nbsp; 发送时间：<input id="txFDate" name="txFDate" class="TxCss" type="text" value="" onfocus="setday(this)"  runat="server" />
        &nbsp;
        到&nbsp;
        <input id="txTDate" name="txTDate" class="TxCss" type="text" value="" onfocus="setday(this)"   runat="server" />
        &nbsp;
        &nbsp;
        <asp:Label ID="Label1" runat="server"></asp:Label>
        <input type="submit" name="bnQuery" value="查  询" id="bnQuery" class="BnCss"  runat="server" onserverclick="bnQuery_ServerClick" /></td>
    </tr>
    </table>
    </td>
    </tr>
    <tr>
    <td align="left">
        <div align="center">
            <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#E7E7FF"
                BorderStyle="None" BorderWidth="1px" CellPadding="3" Width="90%" 
                AutoGenerateColumns="False" DataKeyNames="sid" 
                OnRowEditing="GridView1_RowEditing" OnRowDataBound="GridView1_RowDataBound" 
                OnRowDeleting="GridView1_RowDeleting" AllowPaging="True" 
                GridLines="Horizontal" onselectedindexchanging="GridView1_SelectedIndexChanging" 
                style="margin-top: 0px">
                <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                <RowStyle ForeColor="#4A3C8C" BackColor="#E7E7FF" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                <Columns>
                    <asp:BoundField DataField="Title" HeaderText="邮件主题" />
                    <asp:BoundField DataField="type" HeaderText="重要程度" />
                    <asp:BoundField DataField="Pubdate" HeaderText="发送时间" />
                    <asp:CommandField EditText="查看" HeaderText="查看" ShowEditButton="True" />
                    <asp:CommandField HeaderText="删除" ShowDeleteButton="True" />
                    <asp:BoundField DataField="sid" HeaderText="sid" Visible="False" />
                </Columns>
                <AlternatingRowStyle BackColor="#F7F7F7" />
            </asp:GridView></div>
    </td>
    </tr>
    </table>
    </td>
    </tr>
    </table>
    
<div>
    &nbsp;</div></form>
</body>
</html>

