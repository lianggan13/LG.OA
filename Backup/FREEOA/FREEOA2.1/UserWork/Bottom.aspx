<%@ page language="C#" autoeventwireup="true" inherits="UserWork_Bottom, App_Web_dpkitv6r" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1"><title>
	�ޱ���ҳ
</title>
<link href="../css.css" rel="stylesheet" type="text/css" />

		<script language="javascript" src="../Js/calendar.js" type="text/javascript">
        </script>
</head>
<body>
    <form name="form1"  runat="server" id="form1">
<div>
</div>

    <table border="0" cellpadding="0" cellspacing="0" bordercolor="#111111" width="100%">
				<tr height="30">
					<td width="3%" background="../Images/topbg.jpg" align=center><IMG height="16" src="../Images/icon/right.GIF"></td>
					<td background="../Images/topbg.jpg" width="80"><b>�ռ���</b></td>
					<TD background="../Images/topbg.jpg" align="right">
					</TD>
				</tr>
			</table>
    <table width=100% cellpadding=0 cellspacing=0 border=0 align=center>
    <tr>
    <td height=10></td>
    </tr>
    <tr>
    <td align=center style="height: 246px" valign=top>
    <table width=100% cellpadding=2 cellspacing=1 border=0>
    <tr>
    <td align=left valign=top>
    <table width=100% cellpadding=0 cellspacing=0 border=0>
    <tr>
    <td align=center style="height: 25px">
        &nbsp;&nbsp; ����ʱ�䣺<input id="txtSdate" name="txFDate" class="TxCss" 
            type="text" value="" onfocus="setday(this)" readonly  runat="server" />
        &nbsp;
        ��&nbsp;
        <input id="txtEdate" name="txTDate" class="TxCss" type="text" value="" 
            onfocus="setday(this)" readonly  runat="server" />
        &nbsp;
        &nbsp;
        &nbsp;&nbsp;
        <asp:Button ID="btnQuery" runat="server" Height="20px" onclick="btnQuery_Click" 
            Text="��ѯ" />
                                    </td>
    </tr>
    </table>
    </td>
    </tr>
    <tr>
    <td align=left>
        <div align="center">
            <asp:GridView ID="grdMail" runat="server" BackColor="White" BorderColor="#E7E7FF"
                BorderStyle="None" BorderWidth="1px" CellPadding="3" Width="90%" 
                AutoGenerateColumns="False" AllowPaging="True" 
                GridLines="Horizontal" onpageindexchanging="grdMail_PageIndexChanging" >
                <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                <RowStyle ForeColor="#4A3C8C" BackColor="#E7E7FF" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                <Columns>
                    <asp:BoundField DataField="name" HeaderText="������" />
                    <asp:BoundField DataField="Title" HeaderText="�ʼ�����" />
                 
               
                    <asp:BoundField DataField="type" HeaderText="��Ҫ�̶�" />
                    <asp:BoundField DataField="Pubdate" HeaderText="����ʱ��" />
                    <asp:BoundField DataField="status" HeaderText="�Ƿ��Ķ�" />
                    <asp:BoundField DataField="sid" HeaderText="sid" Visible="False" />

                    
                    <asp:TemplateField HeaderText="�鿴">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" 
                                CommandArgument="<%#Bind('sid') %>" oncommand="LinkButton1_Command">�鿴</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="ɾ��">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton2" runat="server" 
                                CommandArgument="<%#Bind('sid') %>" oncommand="LinkButton2_Command" OnClientClick="return confirm('ȷ��Ҫɾ���˷��ʼ�ô��')">ɾ��</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>

                    
                </Columns>
                <AlternatingRowStyle BackColor="#F7F7F7" />
            </asp:GridView>
            &nbsp;</div>
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

