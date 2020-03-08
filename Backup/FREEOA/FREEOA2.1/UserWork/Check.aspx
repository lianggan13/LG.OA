<%@ page language="C#" autoeventwireup="true" inherits="UserWork_Check, App_Web_z73ygct8" enableeventvalidation="false" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>Default</title>

		<LINK href="../BasicLayout.css" type="text/css" rel="stylesheet">

		
	</HEAD>
	<body leftmargin="0" topmargin="0" >
		<form id="Form1"  runat="server">
			<table border="0" cellpadding="0" cellspacing="0" style="BORDER-COLLAPSE: collapse" bordercolor="#111111"
				width="100%" height="1">
				<tr height="30">
					<td width="3%" bgcolor="#c0d9e6" class="GbText" background="../Images/treetopbg.jpg"><font color="#006699" size="3"><img src="../Images/icon/right.GIF" width="16" height="16"></font></td>
					<td bgcolor="#c0d9e6" class="GbText" background="../../Images/treetopbg.jpg"><b>我的考勤</b></td>
				</tr>
			</table>
			<TABLE id="Table1" style="HEIGHT: 258px" cellSpacing="1" cellPadding="1" width="100%" border="0"
				class="gbtext">
				<TR>
					<TD align="center" height="40">
                        &nbsp;<asp:Button id="btnCheckAttendance" runat="server" CssClass="buttoncss" Width="80px" OnClick="btnCheckAttendance_Click" Text="上 班 登 记" OnDisposed="btnCheckAttendance_Disposed"></asp:Button>
                        <asp:Button ID="Button3" runat="server" CssClass="buttoncss"  Text="下 班 登 记" Width="80px" OnClick="Button3_Click" /></TD>
				</TR>
				<TR>
					<TD align="center" style="height: 165px">
                        <asp:Label id="Label1" runat="server">考勤信息</asp:Label>
                        <asp:GridView ID="GridView1" runat="server"  AutoGenerateColumns="False"  
                            style="font-size: 9pt" 
                            BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" 
                            CellPadding="3" Width="942px" GridLines="Horizontal" 
                            AllowPaging="True" onpageindexchanging="GridView1_PageIndexChanging">
                            <Columns>
                                <asp:BoundField DataField="CheckDate" HeaderText="日期" />
                                <asp:BoundField DataField="type" HeaderText="考勤类型" />
                                <asp:BoundField DataField="Ondutytime" HeaderText="上班时间" />
                                <asp:BoundField DataField="OffdutyTime" HeaderText="下班时间" />
                                <asp:BoundField DataField="OnDutyState" HeaderText="上班状态" />
                                <asp:BoundField DataField="OffDutyState" HeaderText="下班状态" />
                                <asp:BoundField DataField="OnDutyWhys" HeaderText="上班备注" />
                                <asp:BoundField DataField="OffWhys" HeaderText="下班备注" />
                                <asp:BoundField DataField="otherwhys" HeaderText="其他备注" />
                                <asp:BoundField DataField="username" HeaderText="UserName" Visible="False" />
                                <asp:BoundField DataField="OndutyId" HeaderText="OndutyId" Visible="False" />
                            </Columns>
                            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                            <RowStyle ForeColor="#4A3C8C" BackColor="#E7E7FF" />
                            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                            <AlternatingRowStyle BackColor="#F7F7F7" />
                        </asp:GridView>
                   </TD>
				</TR>
				<tr>
				    <td align="center"> <asp:Button ID="btnExcel" runat="server" Font-Size="X-Small" Height="22px" 
                                    onclick="btnExcel_Click" Text="导出为EXCEL" /></td>
				</tr>
                 <span id="MySpan" runat="server">
                <tr>
                    <td align="center">
                           
                                <asp:Label ID="Label2" runat="server" Text="上班备注信息"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td align="center">
                        <asp:TextBox ID="TextBox1" runat="server" Height="119px" TextMode="MultiLine" Width="237px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td align="center">
                        <asp:Button ID="Button1" CssClass="buttoncss" runat="server" OnClick="Button1_Click" Text="确　定" Width="56px" />&nbsp;<asp:Button
                            ID="Button2"  CssClass="buttoncss" runat="server" Text="取　消" OnClick="Button2_Click" /></td>
                </tr>
                </span>
                 <span id="MySpan1" runat="server" visible="false">
                <tr>
                    <td align="center">
                           
                                <asp:Label ID="Label3" runat="server" Text="下班备注信息"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td align="center">
                        <asp:TextBox ID="TextBox2" runat="server" Height="119px" TextMode="MultiLine" Width="237px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td align="center">
                        <asp:Button ID="Button4" CssClass="buttoncss" runat="server"  Text="确　定" Width="56px" OnClick="Button4_Click"  />&nbsp;<asp:Button
                            ID="Button5"  CssClass="buttoncss" runat="server" Text="取　消" OnClick="Button5_Click" /></td>
                </tr>
                </span>
			</TABLE>
		</form>
	</body>
</HTML>
