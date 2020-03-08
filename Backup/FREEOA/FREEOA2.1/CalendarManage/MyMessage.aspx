<%@ page language="C#" autoeventwireup="true" inherits="CalendarManage_MyMessage, App_Web_mpbjvgl6" %>


<HTML>
	<HEAD>
		<title></title>
		<LINK href="../BasicLayout.css" type="text/css" rel="stylesheet">

	    <style type="text/css">
            .style1
            {
                width: 203px;
                height: 84px;
            }
        </style>

	</HEAD>
	<body style="background-color: white">
		<form id="Form1"  runat="server">
				
								
													<TABLE id="Table4" style="HEIGHT: 258px; width: 113%; font-size: 9pt;" cellSpacing="1" cellPadding="0" border="0">
														<TR>
															<TD class="box" style="PADDING-RIGHT: 20px; PADDING-LEFT: 20px; PADDING-BOTTOM: 0px; PADDING-TOP: 20px; height: 284px;" vAlign="top" width="100%">
                                                                &nbsp;&nbsp;
                                                                <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="我 的 通 讯 录" Width="99px"></asp:Label>

																<HR style="WIDTH: 100%; HEIGHT: 2px" SIZE="2">
																<asp:Label ID="My" runat="server" Width="178px"></asp:Label>
																<TABLE id="Table6" style="WIDTH: 100%; HEIGHT: 20px; font-size: 9pt;" cellSpacing="1" cellPadding="1" border="0">
																	<TR>
																		<TD noWrap style="height: 25px; width: 606px;" align="left">
                                                                            &nbsp;输入查询条件(姓名):<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>&nbsp;
                                                    <asp:Button ID="Button1" CssClass="buttoncss" runat="server" Text="查 询" Width="60px" /></TD>
																		<TD noWrap align="left" style="height: 25px">
                                                                            &nbsp;
																			<asp:linkbutton id="cmdAdd" runat="server" CssClass="td" Font-Size="X-Small" OnClick="cmdAdd_Click"  ><img src="../img/add.gif" border="0" align="absmiddle">添加...</asp:linkbutton></TD>
																	</TR>
																</TABLE>
																<TABLE id="Table7" style="WIDTH: 100%; HEIGHT: 107px" cellSpacing="0" 
                                                                    cellPadding="0" border="0">
                                                                    <tr>
																<td align="center">
																<asp:GridView ID="GridView1" runat="server" Height="113px" Width="90%" AutoGenerateColumns="False" 
                                                                                            DataKeyNames="MessageID" OnRowDataBound="GridView1_RowDataBound" 
                                                                                            OnRowDeleting="GridView1_RowDeleting" 
                                                                                            OnRowCancelingEdit="GridView1_RowCancelingEdit" 
                                                                                            OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" 
                                                                                            style="font-size: 9pt" BackColor="White" BorderColor="#E7E7FF" 
                                                                                            BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal">
                                                        <RowStyle  CssClass="textcenter" BackColor="#E7E7FF" ForeColor="#4A3C8C"/>
                                                        <FooterStyle CssClass="headcenter" BackColor="#B5C7DE" ForeColor="#4A3C8C"></FooterStyle>
                                                        <Columns>
                                                            <asp:BoundField DataField="Name" HeaderText="姓名" />
                                                            <asp:BoundField DataField="email" HeaderText="邮件" />
                                                            <asp:BoundField DataField="address" HeaderText="地址" />
                                                            <asp:BoundField DataField="phone" HeaderText="电话" />
                                                            <asp:BoundField DataField="eest" HeaderText="其他" />
                                                            <asp:CommandField HeaderText="更新" ShowEditButton="True" />
                                                            <asp:CommandField HeaderText="删除" ShowDeleteButton="True" />
                                                            <asp:BoundField DataField="MessageID" HeaderText="MessageID" Visible="False" />
                                                        </Columns>
                                                              <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                                                              <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                              <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                              <AlternatingRowStyle BackColor="#F7F7F7" />
                                                    </asp:GridView>
                                                    </td>
                                                    </tr>
																</TABLE>
		</form>
	</body>
</HTML>
