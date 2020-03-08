<%@ page language="C#" autoeventwireup="true" inherits="sysManage_sysTitleChange, App_Web_c0qvfpcc" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table style="width: 100%" border="0" cellpadding="0" cellspacing="0" >
				<tr height="30">
					<td width="3%" background="../Images/topbg.jpg" align="center"  ><IMG height="16" src="../Images/icon/right.GIF"></td>
					<td background="../Images/topbg.jpg" ><b>更改系统名称</b></td>
				</tr>
	</table>
	<table width="100%" align="right">
	    <tr>
	        <td style="width:15%">
	        </td>
	        <td>
	        </td>
	    </tr>
	    <tr>
	        <td align="right" style="font-size: small">
	            系统名称：</td>
	        <td>
	            <asp:TextBox ID="TextBox1" runat="server" Height="22px" Width="350px"></asp:TextBox>
	        </td>
	    </tr>
	    <tr>
	        <td>
	        </td>
	        <td>
	        </td>
	    </tr>
	     <tr>
	        <td>
	        </td>
	        <td>
	            <asp:Button ID="btnSave" runat="server" onclick="btnSave_Click" Text="确 定" 
                    Width="100px" />
	        </td>
	    </tr>
	</table>
    </div>
    </form>
</body>
</html>
