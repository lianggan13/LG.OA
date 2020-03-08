<%@ page language="C#" autoeventwireup="true" inherits="UserWork_PlanManage, App_Web_dpkitv6r" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1"><title>
	无标题页
</title><link href="../css.css" rel="stylesheet" type="text/css" />
   <script type="text/javascript" src="../Celend/popcalendar.js"></script>


</head>
<body>
    <form name="form1"  runat="server" id="form1">


       <table border="0" cellpadding="0" cellspacing="0" bordercolor="#111111" width="100%">
				<tr height="30">
					<td width="3%" background="../Images/topbg.jpg" align=center><IMG height="16" src="../Images/icon/right.GIF"></td>
					<td background="../Images/topbg.jpg" width="80"><b>工作计划列表</b></td>
					<TD background="../Images/topbg.jpg" align="right">
					</TD>
				</tr>
			</table>
    <table width=100% cellpadding=0 cellspacing=0 border=0 align=center>
    <tr>
    <td style="height: 10px">
        &nbsp;</td>
    </tr>
    <tr>
    <td align=center>
    <table width=75% cellpadding=0 cellspacing=0 border=0>  
        <tr>
        <td align=center height="26">
         发布时间： &nbsp;   <asp:TextBox ID="TextBox1" runat="server" Width="110px" CssClass="TxCss" Height="17px"></asp:TextBox>    
   <img id="Image_blqx1" style="CURSOR: hand; width: 23px; height: 15px;" onclick="popUpCalendar(this,document.forms[0].TextBox1,'yyyy-mm-dd')" src="../Celend/Images/calendar.gif" />到
        <asp:TextBox ID="TextBox2" runat="server" Width="106px" CssClass="TxCss" Height="17px"></asp:TextBox>   
     <img id="Img1" style="CURSOR: hand; width: 23px; height: 15px;" onclick="popUpCalendar(this,document.forms[0].TextBox2,'yyyy-mm-dd')" src="../Celend/Images/calendar.gif" />
       <input type="submit" name="bnQuery" value="查  询" id="bnQuery" class="BnCss" onclick="return bnQuery_onclick()" onserverclick="bnQuery_ServerClick" runat="server" />
        &nbsp;&nbsp;</td>
        </tr>
    </table>
    </td>
    </tr>
    <tr>
    <td align=center>    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White"
            BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
            Width="832px" OnSelectedIndexChanging="GridView1_SelectedIndexChanging" 
            DataKeyNames="PlanID" OnRowEditing="GridView1_RowEditing" 
            OnRowDataBound="GridView1_RowDataBound" OnRowDeleting="GridView1_RowDeleting" 
            GridLines="Horizontal">
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <Columns>
                <asp:BoundField DataField="topic" HeaderText="计划主题" />
                <asp:BoundField DataField="AddTime" HeaderText="添加时间" />
                <asp:CommandField HeaderText="查看" SelectText="查看" ShowSelectButton="True" />
                <asp:CommandField EditText="修改" HeaderText="修改" ShowEditButton="True" />
                <asp:CommandField HeaderText="删除" ShowDeleteButton="True" />
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
    
<div>
    &nbsp;</div></form>
</body>
</html>
