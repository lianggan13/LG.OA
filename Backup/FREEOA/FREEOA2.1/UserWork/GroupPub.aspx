<%@ page language="C#" autoeventwireup="true" inherits="UserWork_GroupPub, App_Web_dpkitv6r" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head><title>
	无标题页
</title><link href="../css.css" rel="stylesheet" type="text/css" /></head>
<body>
    <form name="form1"  runat="server" onsubmit="javascript:return WebForm_OnSubmit();" id="form1">
<div>
</div>



       <table border="0" cellpadding="0" cellspacing="0" bordercolor="#111111" width="100%" class="px12">
				<tr height="30">
					<td width="3%" background="../Images/topbg.jpg" align=center><IMG height="16" src="../Images/icon/right.GIF"></td>
					<td background="../Images/topbg.jpg" width="80"><b>联系人分组</b></td>
					<TD background="../Images/topbg.jpg" align="right">
					</TD>
				</tr>
			</table>
        <script type="text/javascript">

</script>

    <table width=55% cellpadding=0 cellspacing=0 border=0 align=center>
    <tr>
    <td colspan="2" height="30"></td>
    </tr>
    <tr>
    <td width=15% height=25 align=right>分组名称：</td>
    <td align=left><input name="txName" type="text" id="txName" class="TxCss" style="width:350px;" runat="server" /><span id="RequiredFieldValidator1" style="color:Red;display:none;"></span>&nbsp;
        
    </td>
    </tr>
    <tr>
    <td colspan=2 style="height: 25px" align=center><input type="submit" name="bnSave" value="保 存"  id="bnSave" class="BnCss" onserverclick="bnSave_ServerClick" runat="server" /></td>
    </tr>
    </table>




<div>
    &nbsp;</div>

        

</form>
</body>
</html>
