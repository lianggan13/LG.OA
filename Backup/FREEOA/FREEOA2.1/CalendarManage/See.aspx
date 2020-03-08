<%@ page language="C#" autoeventwireup="true" inherits="CalendarManage_See, App_Web_mpbjvgl6" %>


<html xmlns="http://www.w3.org/1999/xhtml" >
<head><title>
	无标题页
</title><link href="../css.css" rel="stylesheet" type="text/css" />
 <script type="text/javascript" src="../Celend/popcalendar.js"></script>
</head>

<body>
    <form name="form1"  runat="server" id="form1">
<div>

</div>



       <table border="0" cellpadding="0" cellspacing="0" bordercolor="#111111" width="100%" class="px12">
				<tr height="30">
					<td width="3%" background="../Images/topbg.jpg" align=center><IMG height="16" src="../Images/icon/right.GIF"></td>
					<td background="../Images/topbg.jpg" width="80"><b>日程查看</b></td>
					<TD background="../Images/topbg.jpg" align="right">
					</TD>
				</tr>
			</table>


    <table width=100% cellpadding=0 cellspacing=0 border=0 align=center>
    <tr>
    <td height=25>
    
    </td>
    </tr>
    <tr>
    <td align=center>
    <table width=80% cellpadding=2 cellspacing=1 border=0 class="px12">
    <tr>
    <td width=12% height=25 align=right>
        时间：</td>
    <td align=left>
         <asp:TextBox ID="TextBox2" runat="server" Width="114px" CssClass="TxCss" Height="21px"></asp:TextBox>    
   <img id="Image_blqx1" style="CURSOR: hand; width: 23px; height: 15px;" onclick="popUpCalendar(this,document.forms[0].TextBox2,'yyyy-mm-dd')" src="../Celend/Images/calendar.gif" /></td>
    </tr>
    <tr>
    <td width=12% height=25 align=right>
        概要：</td>
    <td align=left><input name="txName" type="text" id="txName" class="TxCss" style="width:450px; height: 23px;" runat="server" />
        <span id="RequiredFieldValidator1" style="color:Red;display:none;"></span>
        
    </td>
    </tr>
    <tr>
    <td height=25 align=right>
        详细：</td>
    <td align=left><textarea name="txDes" rows="2" cols="20" id="txDes" class="TxCss" style="height:100px;width:450px;" runat="server"></textarea></td>
    </tr>
    <tr>
    <td colspan=2 style="height: 25px" align=center><input type="submit" name="bnSave" value="修 改" id="bnSave" class="BnCss" runat="server" onserverclick="bnSave_ServerClick" />
        &nbsp; &nbsp; <a href="#" onclick="history.go(-1);">返回</a>
    </td>
    </tr>
    </table>
    </td>
    </tr>
    </table>





</form>
</body>
</html>
