<%@ page language="C#" autoeventwireup="true" inherits="CalendarManage_Notepad, App_Web_mpbjvgl6" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head><title>
	无标题页
</title><link href="../css.css" rel="stylesheet" type="text/css" />
  <script type="text/javascript" src="../Celend/popcalendar.js"></script>


</head>
<body>
    <form name="form1"  runat="server" id="form1">
<div>
    

    <table border="0" cellpadding="0" cellspacing="0" bordercolor="#111111" width="100%">
				<tr height="30">
					<td width="3%" background="../Images/topbg.jpg" align=center><IMG height="16" src="../../Images/icon/right.gif"></td>
					<td background="../Images/topbg.jpg" width="80"><b>我的日志</b></td>
					<TD background="../Images/topbg.jpg" align="right">
					</TD>
				</tr>
			</table>
			<table width=100% cellpadding=2 cellspacing=1 border=0>
    <tr>
    <td align=center valign=top style="height: 45px">
    <table width=100% cellpadding=0 cellspacing=0 border=0>
    <tr>
    <td align=center style="height: 25px">
        </td>
    </tr>
    </table>
           发布时间： &nbsp;   <asp:TextBox ID="TextBox1" runat="server" Width="110px" CssClass="TxCss" Height="17px"></asp:TextBox>    
   <img id="Image_blqx1" style="CURSOR: hand; width: 23px; height: 15px;" onclick="popUpCalendar(this,document.forms[0].TextBox1,'yyyy-mm-dd')" src="../Celend/Images/calendar.gif" />到
        <asp:TextBox ID="TextBox2" runat="server" Width="106px" CssClass="TxCss" Height="17px"></asp:TextBox>   
     <img id="Img1" style="CURSOR: hand; width: 23px; height: 15px;" onclick="popUpCalendar(this,document.forms[0].TextBox2,'yyyy-mm-dd')" src="../Celend/Images/calendar.gif" />
       <input type="submit" name="bnQuery" value="查  询" id="bnQuery" class="BnCss" onclick="return bnQuery_onclick()" onserverclick="bnQuery_ServerClick" runat="server" />
        &nbsp;&nbsp;</td>
    </tr>
    <tr>
    <td align=center style="height: 108px">
       
            <asp:GridView ID="grdDiary" runat="server" AutoGenerateColumns="False" 
                Width="849px" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" 
                BorderWidth="1px" CellPadding="3" AllowPaging="True" 
                GridLines="Horizontal" onpageindexchanging="grdDiary_PageIndexChanging">
                <Columns>
                    <asp:BoundField DataField="WhichDay"   HeaderText="日志归属时间" 
                        DataFormatString="{0:yyyy年MM月dd日}" />
                    <asp:BoundField DataField="Title" HeaderText="日志主题" />
                    <asp:BoundField DataField="addtime" HeaderText="提交时间" />
                    <asp:TemplateField HeaderText="查看">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" 
                                CommandArgument="<%#Bind('id') %>" oncommand="LinkButton1_Command">查看</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="删除">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton2" runat="server" 
                                CommandArgument="<%#Bind('id') %>" oncommand="LinkButton2_Command" OnClientClick="return confirm('确定要删除么？')">删除</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                <RowStyle ForeColor="#4A3C8C" BackColor="#E7E7FF" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                <AlternatingRowStyle BackColor="#F7F7F7" />
            </asp:GridView>
            &nbsp;</div>
    </td>
    </tr>
    </table>
    
<div>
    &nbsp;</div></form>
<p>
    &nbsp;</p>
</body>
</html>
