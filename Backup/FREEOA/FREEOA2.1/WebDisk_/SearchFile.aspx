<%@ page language="C#" autoeventwireup="true" inherits="SearchFile, App_Web_hfxvji6e" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>网络硬盘</title>
<link href="../css.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <table>
        <tr>
            	<td width="3%" background="../Images/topbg.jpg" align=left><IMG height="16" src="../Images/icon/right.GIF"><b>网络硬盘</b>
					</td>
        </tr>
    </table>
    <table   align="center">
		<tr>
			<td colspan="2"><hr style="font-size: 1pt;" /></td>
		</tr>		
		<tr style="line-height:2;">
			<td style="width:150" align="right">目录:</td>
			<td><asp:DropDownList ID="DirList" runat="server" Width="155px"></asp:DropDownList></td>
		</tr>	
		<tr style="line-height:2;">
			<td style="width:150" align="right">文件名称关键字:</td>
			<td><asp:textbox id="Name" runat="server" Width="146px" CssClass="InputCss"></asp:textbox>		
				<asp:RequiredFieldValidator ID="rfN" runat="server" ControlToValidate="Name"
					CssClass="GbText" Display="Dynamic" ErrorMessage="关键字不能为空！"></asp:RequiredFieldValidator></td>
		</tr>		
		<tr style="line-height:2;">
			<td style="width:150" width="150" align="right"></TD>
			<TD align="left"><FONT face="宋体">&nbsp;</FONT><asp:Button ID="SearchBtn" runat="server" Text="搜 索" Width="46px" CssClass="BnCss" OnClick="SearchBtn_Click" /><FONT face="宋体">&nbsp;</FONT><asp:Button ID="ReturnBtn" runat="server" Text="返 回" Width="46px" CssClass="BnCss" OnClick="ReturnBtn_Click" CausesValidation="False" /></td>
		</tr>
		<tr>
			<td colspan="2">
                &nbsp;</td>
		</tr>
    </table>
				<asp:GridView ID="FileView" runat="server" AutoGenerateColumns="False" Width="99%" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
					<FooterStyle ForeColor="#000066" BackColor="White"></FooterStyle>
					<SelectedRowStyle Font-Bold="True" ForeColor="White" BackColor="#669999" BorderColor="CornflowerBlue" />
					<RowStyle ForeColor="#000066" BorderColor="CornflowerBlue" BorderStyle="Solid" BorderWidth="1px" />
					<HeaderStyle Font-Bold="True" ForeColor="White" CssClass="GbText" BackColor="#006699" HorizontalAlign="Left"></HeaderStyle>
					<Columns>						
						<asp:TemplateField HeaderText="目录名称">
							<ItemTemplate>
								<asp:Image ID="FlagImage" runat="server" ImageUrl='<%#FormatImageUrl((bool)DataBinder.Eval(Container.DataItem,"Flag"),DataBinder.Eval(Container.DataItem,"Type").ToString()) %>' />&nbsp;
								<a href='<%#FormatHerf((int)DataBinder.Eval(Container.DataItem,"DirID"),(int)DataBinder.Eval(Container.DataItem,"ParentID"),(bool)DataBinder.Eval(Container.DataItem,"Flag"))%>'><%#DataBinder.Eval(Container.DataItem,"Name") %></a>
							</ItemTemplate>
							<ItemStyle HorizontalAlign="Left" />
							<HeaderStyle Width="20%" />
						</asp:TemplateField>
						<asp:TemplateField  HeaderText="创建时间">
							<ItemTemplate>
								<%# DataBinder.Eval(Container.DataItem,"CreateDate") %>
							</ItemTemplate>
							<ItemStyle HorizontalAlign="Center" />
							<HeaderStyle Width="15%" HorizontalAlign="Center" />
						</asp:TemplateField>
						<asp:TemplateField  HeaderText="目录/文件大小">
							<ItemTemplate>
								<%# (int)DataBinder.Eval(Container.DataItem,"Contain")/1024 %>KB
							</ItemTemplate>
							<ItemStyle HorizontalAlign="Center" />
							<HeaderStyle Width="15%" HorizontalAlign="Center" />
						</asp:TemplateField>	
					</Columns>
					<AlternatingRowStyle BorderColor="CornflowerBlue" BorderStyle="Solid" BorderWidth="1px" />
					<PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
					<EditRowStyle BorderColor="CornflowerBlue" BorderWidth="1px" />
				</asp:GridView>
    </form>
</body>
</html>
