<%@ page language="C#" autoeventwireup="true" inherits="sysManage_NewsInfo, App_Web_tuylcjo8" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
    <link href="../css.css" rel="stylesheet" type="text/css" />
   <script type="text/javascript" src="../Celend/popcalendar.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <table border="0" cellpadding="0" cellspacing="0" bordercolor="#111111" width="100%" class="px12">
				<tr height="30">
					<td width="3%" background="../Images/topbg.jpg" align="center"><IMG height="16" src="../Images/icon/right.GIF"></td>
					<td background="../Images/topbg.jpg" width="80"><b>新闻列表</b></td>
					<TD background="../Images/topbg.jpg" align="right">
					</TD>
				</tr>
			</table>
	<table width=100% cellpadding=0 cellspacing=0 border=0 align=center>
	<tr>
    <td style="height: 50px">
    
    </td>
    </tr>
    <tr>
    <td align=center style="height: 245px">
    <table cellpadding=2 cellspacing=1 border=0 class="px12" style="width: 100%">
    <tr>
        <td align="right" style="width: 194px"> 新闻类别：</td>
        <td align="left"><asp:DropDownList ID="drpNewType" runat="server"></asp:DropDownList>
        &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; 标题关键字：
        <asp:TextBox ID="txtTitle" runat="server"></asp:TextBox></td></tr>
    <tr style="height: 20px">
        <td  align="right" style="width: 194px; height: 20px;">发布时间：</td>
        <td align="left" style="height: 20px">
        <asp:TextBox ID="TextBox1" runat="server" Width="110px" CssClass="TxCss" Height="17px"></asp:TextBox>    
   <img id="Image_blqx1" style="CURSOR: hand; width: 23px; height: 15px;" onclick="popUpCalendar(this,document.forms[0].TextBox1,'yyyy-mm-dd')" src="../Celend/Images/calendar.gif" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
                ErrorMessage="请输入开始时间">*</asp:RequiredFieldValidator>
            到
        <asp:TextBox ID="TextBox2" runat="server" Width="106px" CssClass="TxCss" Height="17px"></asp:TextBox>   
     <img id="Img1" style="CURSOR: hand; width: 23px; height: 15px;" onclick="popUpCalendar(this,document.forms[0].TextBox2,'yyyy-mm-dd')" src="../Celend/Images/calendar.gif" />&nbsp;&nbsp;<asp:RequiredFieldValidator
         ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="请输入结束时间">*</asp:RequiredFieldValidator>
            &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp;
        共<asp:Label ID="lblCount" runat="server" Text="Label"></asp:Label>条记录 &nbsp;
        &nbsp;
        <asp:Button ID="btnSel" runat="server" class="BnCss" Text="查询" OnClick="btnSel_Click" /></td></tr>
    <tr><td colspan="2" style="height: 164px">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            CellPadding="3" GridLines="Horizontal" Width="777px" BackColor="White" 
            BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px">
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <Columns>
                <asp:BoundField DataField="Title" HeaderText="新闻标题" />
                <asp:TemplateField HeaderText="新闻类别">
                    <ItemTemplate>
                        <asp:Label ID="lblType" runat="server"><%# getType(DataBinder.Eval(Container.DataItem,"TypeId").ToString())%></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="Pubdate" HeaderText="发布时间" />
                <asp:TemplateField HeaderText="查看">
                    <ItemTemplate>
                        <a href="../UserWork/NewsView.aspx?id=<%# DataBinder.Eval(Container.DataItem,"NewsID") %>">查看</a>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <AlternatingRowStyle BackColor="#F7F7F7" />
        </asp:GridView>
    </td></tr>
    </table>
        <webdiyer:aspnetpager id="AspNetPager1" runat="server" custominfohtml="第<font color='red'><b>%CurrentPageIndex%</b></font>页  共:%PageCount%页&nbsp; %StartRecordIndex%-%EndRecordIndex%"
                        custominfotextalign="Center" firstpagetext="【首页】" lastpagetext="【尾页】" nextpagetext="【下页】"
                        onpagechanged="AspNetPager1_PageChanged" prevpagetext="【前页】" showcustominfosection="Left"
                        showinputbox="Always" style="position: relative" width="669px"></webdiyer:aspnetpager>
                
    
	</table>
	
	
    </form>
</body>
</html>
