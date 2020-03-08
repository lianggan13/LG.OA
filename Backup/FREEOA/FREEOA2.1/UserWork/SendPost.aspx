<%@ page language="C#" autoeventwireup="true" inherits="UserWork_SendPost, App_Web_dpkitv6r" validaterequest="false" %>

<%@ Register assembly="DotNetTextBox" namespace="DotNetTextBox" tagprefix="DNTB" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head><title>
	无标题页
</title><link href="../css.css" rel="stylesheet" type="text/css" />
<link href="../StyleSheet.css" rel="stylesheet" type="text/css" />

</head>
<body>
    <form name="form1"  runat="server" id="form1" enctype="multipart/form-data">


        <input type="hidden" id="UserNames" runat="server" />
       <table border="0" cellpadding="0" cellspacing="0" bordercolor="#111111" width="100%">
				<tr height="30">
					<td width="3%" background="../Images/topbg.jpg" align=center><IMG height="16" src="../Images/icon/right.GIF"></td>
					<td background="../Images/topbg.jpg" width="80"><b>发送邮件</b></td>
					<TD background="../Images/topbg.jpg" align="right">
					</TD>
				</tr>
			</table>
    <table width=100% cellpadding=0 cellspacing=0 border=0 align=center>
    <tr>
    <td style="height: 2px"></td>
    </tr>
    <tr>
    <td align=center>
    <table cellpadding=1 cellspacing=1 border=0 style="width: 75%; height: 352px">
    <tr>
        <td height="20">
        
        </td>
    </tr>
    <tr>
    <td width=15% height=20 align=right>
        收件人：</td>
    <td align=left style="width: 505px"><input id="txtOtherMan" name="txtOtherMan"readonly value="" type="text" class="TxCss" size="83" runat="server" />&nbsp;&nbsp;
	<button id="cmdScheOMan"  class="BnCss" onclick="javascript:otherman();" type="button" runat="server">选择</button>
        
        </td>
    </tr>
    <tr>
    <td width=15% height=20 align=right>
        邮件主题：</td>
    <td align=left style="width: 505px"><input name="txTitle" type="text" id="txTitle" class="TxCss" style="width:492px;" runat="server" /></td>
    </tr>
    <tr>
    <td height=20 align=right>紧急程度：</td>
    <td align=left style="width: 505px">
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>一般</asp:ListItem>
            <asp:ListItem>紧急</asp:ListItem>
        </asp:DropDownList></td>
    </tr>
    <tr>
    <td height=20 align=right>内容附件：</td>
    <td align=left style="width: 505px">
        <input name="FileUpload1" type="file" id="FileUpload1" class="TxCss" runat="server" />&nbsp;
        <input type="submit" name="bnUpload" value="上  传" id="bnUpload" class="BnCss" runat="server" onserverclick="bnUpload_ServerClick" onclick="return bnUpload_onclick()" />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<asp:Label ID="Label1" runat="server" BackColor="White"
            ForeColor="Red"></asp:Label></td>
    </tr>
        <tr>
            <td align="right">
            </td>
            <td align="left">
              <asp:Panel ID="MyPanel" runat="server" Visible=false>
                <table width="100%">
                    <tr>
                       <td>
                           <asp:GridView ID="GridView1" runat="server" DataKeyNames="Appurtenanceid" AutoGenerateColumns="False" CaptionAlign="Left" CellPadding="0" ForeColor="Black" GridLines="None" OnRowDeleting="GridView1_RowDeleting" ShowHeader="False" Width="485px">
                               <Columns>
                                   <asp:BoundField DataField="AppurtenanceName" HeaderText="文件名" />
                                   <asp:CommandField HeaderText="删除" ShowDeleteButton="True" />
                                   <asp:BoundField DataField="Appurtenanceid" HeaderText="Appurtenanceid" Visible="False" />
                               </Columns>
                           </asp:GridView>
                       </td>
                    </tr>
                    
                </table>
              </asp:Panel>
                </td>
        </tr>
    <tr>
    <td align=right>邮件内容：</td>
    <td align=left style="width: 505px">
        <DNTB:WebEditor ID="txContent" runat="server" systemFolder="system_dntb/" /></td>
    </tr>
    <tr>
    <td colspan=2 style="height: 20px" align=center><input type="submit" name="bnSend" value="发  送"  id="bnSend" class="BnCss" runat="server" onserverclick="bnSend_ServerClick" onclick="return bnSend_onclick()" />
        &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;
        <input type="submit" name="bnSave" value="保存到草稿箱"  id="bnSave" class="BnCss" runat="server" onserverclick="bnSave_ServerClick" />
        &nbsp; &nbsp;&nbsp;
        <input id="Reset1" type="reset" value="重 置" class="BnCss" runat="server" />
        </td>
    </tr>
    </table>
    </td>
    </tr>
    </table>
    
<div>

	
</div>


</form>

</body>
	<SCRIPT language="javascript">
	function otherman() 
	{
    window.open("MailSend.aspx",null,"height=350,width=400,directories = no,status=no,toolbar=no,menubar=no,location=no,titlebar = no,scrollbars = no");
    }
function bnSend_onclick() {

}

function bnUpload_onclick() {

}

		</SCRIPT>
</html>
