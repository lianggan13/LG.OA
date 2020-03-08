<%@ page language="C#" autoeventwireup="true" inherits="note_addnote, App_Web_ll1ijfc2" validaterequest="false" %>

<%@ Register assembly="DotNetTextBox" namespace="DotNetTextBox" tagprefix="DNTB" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
    <style type="text/css">
        .style1
        {
            width: 20%;
            height: 39px;
            font-size: small;
        }
        .style2
        {
            height: 39px;
        }
        .style3
        {
            height: 39px;
            width: 562px;
        }
        .style4
        {
            width: 562px;
        }
        .style5
        {
            font-size: small;
        }
        .style6
        {
            height: 36px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table border="0" cellpadding="0" cellspacing="0" bordercolor="#111111" width="100%">
		<tr height="30">
			<td width="3%" background="../Images/topbg.jpg" align=center><IMG height="16" src="../Images/icon/right.GIF"></td>
			<td background="../Images/topbg.jpg" width="80"><b>添加公告</b></td>
			<TD background="../Images/topbg.jpg" align="right">
			</TD>
		</tr>
		
	</table>
	        <table style="width:100%;">
                <tr>
                    <td align="right" class="style1">
                        公告标题：</td>
                    <td align="left" class="style3">
                        <asp:TextBox ID="txtTitle" runat="server" Width="413px"></asp:TextBox>
                    </td>
                    <td class="style2">
                        </td>
                </tr>
                <tr>
                    <td align="right" style="width:20%;" valign="top">
                        <span class="style5">公告内容</span>：</td>
                    <td align="left" class="style4">
                        <DNTB:WebEditor ID="WebEditor1" runat="server" systemFolder="system_dntb/" />
                    </td>
                    <td align="center">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td align="right" colspan="2" >
                        &nbsp;</td>
                    <td align="center">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td align="center" colspan="3" >
                        <span class="style5">上传附件：</span><asp:FileUpload ID="FileUpload1" 
                            runat="server" Width="189px" />
&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button1" runat="server" Height="22px" onclick="Button1_Click" 
                            Text="上 传" Width="82px" />
                    </td>
                </tr>
                <tr>
                    <td align="center" colspan="3">
                        <asp:Label ID="Label1" runat="server" ForeColor="#CC0000"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td align="center" colspan="3" class="style6">
                        <asp:Button ID="btnSubmit" runat="server" onclick="btnSubmit_Click" Text="提 交" 
                            Width="69px" />
                    </td>
                </tr>
                <tr>
                    <td align="center" colspan="3">
                        &nbsp;</td>
                </tr>
            </table>
	<br />
    </div>
    </form>
</body>
</html>
