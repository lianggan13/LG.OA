<%@ page language="C#" autoeventwireup="true" inherits="ShowDisk, App_Web_hfxvji6e" %>

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
    <table  align="center" style="width: 815px; height: 288px">
		<tr>
			<td colspan="2" style="line-height:2;">当前目录:<asp:DropDownList ID="DirList" runat="server" Width="231px" AutoPostBack="True" OnSelectedIndexChanged="DirList_SelectedIndexChanged"></asp:DropDownList>&nbsp;<a href="SearchFile.aspx">[搜索文件]</a></td>
		</tr>
		<tr valign="top">
            <td colspan="2">
				<asp:GridView ID="DiskView" runat="server" AutoGenerateColumns="False" CssClass="GbText"
					Width="99%" OnRowCommand="DiskView_RowCommand" OnRowDataBound="DiskView_RowDataBound" OnRowDeleting="DiskView_RowDeleting" DataKeyNames="DirID" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Height="81px">
					<FooterStyle ForeColor="#000066" BackColor="White"></FooterStyle>
					<SelectedRowStyle Font-Bold="True" ForeColor="White" BackColor="#669999" BorderColor="CornflowerBlue" />
					<RowStyle ForeColor="#000066" BorderColor="CornflowerBlue" BorderStyle="Solid" BorderWidth="1px" />
					<HeaderStyle Font-Bold="True" ForeColor="White" CssClass="GbText" BackColor="#006699" HorizontalAlign="Left"></HeaderStyle>
					<Columns>
						<asp:TemplateField HeaderText="选择">
							<ItemTemplate>
								<asp:CheckBox ID="DirCheck" runat="server" Checked="false" />
							</ItemTemplate>
							<ItemStyle HorizontalAlign="Center" />
							<HeaderStyle Width="5%" />
						</asp:TemplateField>
						<asp:TemplateField HeaderText="目录名称">
							<ItemTemplate>
								<a href='<%#FormatHerf((int)DataBinder.Eval(Container.DataItem,"DirID"),(int)DataBinder.Eval(Container.DataItem,"ParentID"),(bool)DataBinder.Eval(Container.DataItem,"Flag"))%>'><%#DataBinder.Eval(Container.DataItem,"Name") %></a>
							</ItemTemplate>
							<ItemStyle HorizontalAlign="Left" />
						    <HeaderStyle Width="15%" />
						</asp:TemplateField>
						<asp:TemplateField  HeaderText="创建时间">
							<ItemTemplate>
								<%# DataBinder.Eval(Container.DataItem,"CreateDate") %>
							</ItemTemplate>
							<ItemStyle HorizontalAlign="Center" />
							<HeaderStyle Width="20%" HorizontalAlign="Center" />
						</asp:TemplateField>
						<asp:TemplateField  HeaderText="目录/文件大小">
							<ItemTemplate>
								<%# (int)DataBinder.Eval(Container.DataItem,"Contain")/1024 %>KB
							</ItemTemplate>
							<ItemStyle HorizontalAlign="Center" />
							<HeaderStyle Width="15%" HorizontalAlign="Center" />
						</asp:TemplateField>					
						<asp:TemplateField HeaderText="下载">
							<ItemTemplate>
								<asp:HyperLink ID="DownBtn"  Target="main" runat="server" ImageUrl="~/WebDisk_/Images/down.gif" Visible='<%# !(bool)DataBinder.Eval(Container.DataItem,"Flag") %>' NavigateUrl='<%# DataBinder.Eval(Container.DataItem,"Url")%>'></asp:HyperLink>&nbsp;&nbsp;&nbsp;
							</ItemTemplate>
							<ItemStyle HorizontalAlign="Center" />
							<HeaderStyle Width="5%" HorizontalAlign="Center" />
						</asp:TemplateField>					
					    <asp:TemplateField HeaderText="操作">
    							<ItemTemplate>
								<a href='<%#(bool)DataBinder.Eval(Container.DataItem,"Flag") == true ? "EditFolder.aspx" : "EditFile.aspx" %>?DirID=<%#DataBinder.Eval(Container.DataItem,"DirID") %>'>编辑</a>&nbsp;&nbsp;&nbsp;																
								<asp:ImageButton ID="DeleteBtn" runat="server" CommandName="delete" Visible='<%# (bool)DataBinder.Eval(Container.DataItem,"Flag") && ((int)DataBinder.Eval(Container.DataItem,"DirCount") + (int)DataBinder.Eval(Container.DataItem,"FileCount")) > 0 ? false : true %>' ImageUrl="~/WebDisk_/Images/delete.gif" AlternateText="删除该数据项" CommandArgument='<%# DataBinder.Eval(Container.DataItem,"DirID") %>' />&nbsp;&nbsp;&nbsp;
								<asp:HyperLink ID="HerfUpload" Text="上载文件" Target="main" runat="server" Visible='<%#(bool)DataBinder.Eval(Container.DataItem,"Flag") %>' NavigateUrl='<%# "UploadFile.aspx?DirID=" + DataBinder.Eval(Container.DataItem,"DirID") %>'></asp:HyperLink>
							</ItemTemplate>
							<ItemStyle HorizontalAlign="Center" />
							<HeaderStyle Width="20%" HorizontalAlign="Center" />
					    </asp:TemplateField>
					</Columns>
					<AlternatingRowStyle BorderColor="CornflowerBlue" BorderStyle="Solid" BorderWidth="1px" />
					<PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
					<EditRowStyle BorderColor="CornflowerBlue" BorderWidth="1px" />
				</asp:GridView>
            </td>
		</tr>
		<tr>
			<td>&nbsp;
            </td>
            <td align="right">
            
            <asp:Button ID="ReturnBtn" runat="server" Text="返 回" Width="55px" CssClass="BnCss" 
                    OnClick="ReturnBtn_Click" Visible="False" />
            
            <asp:Button ID="MoveBtn" runat="server" Text="移 动 到" Width="68px" CssClass="BnCss" 
                    OnClick="MoveBtn_Click" Visible="False" />
                <asp:DropDownList ID="MoveDirList" runat="server" Width="168px" Visible="False"></asp:DropDownList></td>
		</tr>
    </table>
    </form>
 

</body>
</html>
