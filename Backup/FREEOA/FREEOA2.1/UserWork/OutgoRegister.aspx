<%@ page language="C#" autoeventwireup="true" inherits="UserWork_OutgoRegister, App_Web_65ubaf-d" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head><title>
	无标题页
</title><link href="../css.css" rel="stylesheet" type="text/css" />
<link href="../BasicLayout.css" rel="stylesheet" type="text/css" />

</head>
<body>
    <form name="form1" runat="server" id="form1">
<div>

</div>

       <table border="0" cellpadding="0" cellspacing="0" bordercolor="#111111" width="100%">
				<tr height="30">
					<td width="3%" background="../Images/topbg.jpg" align=center style="height: 30px"><IMG height="16" src="../Images/icon/right.GIF"></td>
					<td background="../Images/topbg.jpg" width="80" style="height: 30px"><b>外出登记</b></td>
					<TD background="../Images/topbg.jpg" align="right" style="height: 30px">
					</TD>
				</tr>
			</table>
    <table width=100% cellpadding=0 cellspacing=0 border=0 align=center>
    <tr>
    <td style="height: 20px"></td>
    </tr>
    <tr>
    <td align="center">
    <table width="60%" cellpadding=0 cellspacing=0 border=0>
    <tr>
    <td height=25 align="right" style="width: 25%">
    外出时间：
    </td>
    <td align="left"><select name="dlFHour" id="dlFHour" size="1" runat="server">
	<option value="0">0</option>
	<option value="1">1</option>
	<option value="2">2</option>
	<option value="3">3</option>
	<option value="4">4</option>
	<option value="5">5</option>
	<option value="6">6</option>
	<option value="7">7</option>
	<option value="8">8</option>
	<option value="9">9</option>
	<option value="10">10</option>
	<option value="11">11</option>
	<option value="12">12</option>
	<option value="13">13</option>
	<option value="14">14</option>
	<option value="15">15</option>
	<option value="16">16</option>
	<option value="17">17</option>
	<option value="18">18</option>
	<option value="19">19</option>
	<option value="20">20</option>
	<option value="21">21</option>
	<option value="22">22</option>
	<option value="23">23</option>
</select>时
						<select name="dlFMinute" id="dlFMinute" size="1" runat="server">
	<option value="0">0</option>
	<option value="5">5</option>
	<option value="10">10</option>
	<option value="15">15</option>
	<option value="20">20</option>
	<option value="25">25</option>
	<option value="30">30</option>
	<option value="35">35</option>
	<option value="40">40</option>
	<option value="45">45</option>
	<option value="50">50</option>
	<option value="55">55</option>
</select>分
						&nbsp;&nbsp;到
						<select name="dlTHour" id="dlTHour" size="1" runat="server">
	<option value="0">0</option>
	<option value="1">1</option>
	<option value="2">2</option>
	<option value="3">3</option>
	<option value="4">4</option>
	<option value="5">5</option>
	<option value="6">6</option>
	<option value="7">7</option>
	<option value="8">8</option>
	<option value="9">9</option>
	<option value="10">10</option>
	<option value="11">11</option>
	<option value="12">12</option>
	<option value="13">13</option>
	<option value="14">14</option>
	<option value="15">15</option>
	<option value="16">16</option>
	<option value="17">17</option>
	<option value="18">18</option>
	<option value="19">19</option>
	<option value="20">20</option>
	<option value="21">21</option>
	<option value="22">22</option>
	<option value="23">23</option>
</select>时
						<select name="dlTMinute" id="dlTMinute" size="1" runat="server">
	<option value="0">0</option>
	<option value="5">5</option>
	<option value="10">10</option>
	<option value="15">15</option>
	<option value="20">20</option>
	<option value="25">25</option>
	<option value="30">30</option>
	<option value="35">35</option>
	<option value="40">40</option>
	<option value="45">45</option>
	<option value="50">50</option>
	<option value="55">55</option>
</select>分
    </td>
    </tr>
    <tr>
    <td align="right" style="width: 25%">
    外出事由：
    </td>
    <td align="left">
        <textarea name="txContent" rows="2" cols="20" id="txContent" class="TxCss" style="height:250px;width:400px;" runat="server"></textarea></td>
    </tr>
    <tr>
    <td colspan=2 align="center" height=25>
        <input type="submit" name="bnSave" value="确  定" id="bnSave" class="BnCss" onserverclick="bnSave_ServerClick" runat="server"/></td>
    </tr>
    </table>
    </td>
    </tr>
    </table>
    
<div>
    &nbsp;</div></form>
</body>
</html>
