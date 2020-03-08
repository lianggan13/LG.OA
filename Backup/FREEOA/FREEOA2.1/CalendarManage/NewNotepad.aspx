<%@ page language="C#" autoeventwireup="true" inherits="CalendarManage_NewNotepad, App_Web_mpbjvgl6" validaterequest="false" %>

<%@ Register assembly="DotNetTextBox" namespace="DotNetTextBox" tagprefix="DNTB" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head><title>
	无标题页
</title><link href="../css.css" rel="stylesheet" type="text/css" />
  <script type="text/javascript" src="../Celend/popcalendar.js"></script>
    <style type="text/css">
        .style1
        {
            height: 28px;
        }
        #txtTime
        {
            width: 250px;
            height: 20px;
        }
        .style2
        {
            height: 137px;
        }
        </style>
</head>
<body>
    <form name="form1"  runat="server" id="form1">

       <table border="0" cellpadding="0" cellspacing="0" bordercolor="#111111" width="100%">
				<tr height="30">
					<td width="3%" background="../Images/topbg.jpg" align=center><IMG height="16" src="../Images/icon/right.GIF"></td>
					<td background="../Images/topbg.jpg" width="80"><b>我的工作日志</b></td>
					<TD background="../Images/topbg.jpg" align="right">
					</TD>
				</tr>
			</table>
    <table width=75% cellpadding=0 cellspacing=0 border=0 align=center>
    <tr>
    <td height=5></td>
    </tr>
    <tr>
    <td align=center>
    <table width=100% cellpadding=2 cellspacing=1 border=0>
    <tr>
    <td height=21 align=right>日志主题：</td>
    <td align=left><input name="txTitle" type="text" id="txTitle" class="TxCss" 
            style="width:250px; height: 20px;" runat="server" /></td>
    </tr>
    <tr>
    <td align=right class="style1">日志时间：</td>
    <td align=left class="style1">
        <input id="txtTime" type="text" runat="server" onclick="popUpCalendar(this,document.forms[0].txtTime,'yyyy-mm-dd')" />
        </td>
    </tr>
    <tr>
    <td align=right class="style1" valign="top">附件：</td>
    <td align=left class="style1">
        <input name="FileUpload1" type="file" id="FileUpload1" class="TxCss" runat="server" /><input type="submit" name="bnUpload" value="上  传" id="bnUpload" class="BnCss" runat="server" onserverclick="bnUpload_ServerClick" /><asp:Label ID="Label1" runat="server" BackColor="White"
            ForeColor="Red"></asp:Label>
        <br />
              <asp:Panel ID="MyPanel" runat="server" Visible=false>
                <table width="100%">
                    <tr>
                       <td>
                           <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                               CaptionAlign="Left" CellPadding="0" DataKeyNames="Appurtenanceid" 
                               ForeColor="Black" GridLines="None" OnRowDeleting="GridView1_RowDeleting" 
                               ShowHeader="False" Width="485px">
                               <Columns>
                                   <asp:BoundField DataField="AppurtenanceName" HeaderText="文件名" />
                                   <asp:CommandField HeaderText="删除" ShowDeleteButton="True" />
                                   <asp:BoundField DataField="Appurtenanceid" HeaderText="Appurtenanceid" 
                                       Visible="False" />
                               </Columns>
                           </asp:GridView>
                       </td>
                    </tr>
                    
                </table>
              </asp:Panel>
        </td>
    </tr>
    <tr>
    <td align=right class="style2">日志内容：</td>
    <td align=left class="style2"><DNTB:WebEditor ID="txContent" runat="server" systemFolder="system_dntb/" />
    </td>
    </tr>
    <tr>
    <td colspan=2 style="height: 25px" align=center>
        <asp:Button ID="Button1" runat="server" CssClass="BnCss" Text="保　存" OnClick="Button1_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input id="Reset1" type="reset" value="重  置" class="BnCss" /></td>
    </tr>
    </table>
    </td>
    </tr>
    </table>
    
<div>
    &nbsp;</div></form>
</body>
</html>
