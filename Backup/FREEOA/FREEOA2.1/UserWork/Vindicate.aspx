<%@ page language="C#" autoeventwireup="true" inherits="UserWork_Vindicate, App_Web_dpkitv6r" %>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>

<head id="Head1" runat="server">
    <title>无标题页</title>
    <link href="../css.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            font-size: medium;
            font-weight: bold;
        }
    </style>
</head>
<body style="font-size: 9pt" >
    <form id="form1" runat="server">
    <div>
        <table align="center" width="100%">
        <tr height="30">
					<td width="3%" background="../Images/topbg.jpg" align=left style="height: 30px; font-size: 9pt;"><IMG height="16" src="../Images/icon/right.GIF"><span 
                            class="style1">联系人列表</span>
					</td>
		
				</tr>
				<tr>
				  <td align=center style="height: 25px; font-size: 9pt;">
        联系人分组：<asp:DropDownList ID="DropDownList1" runat="server" Height="19px" Width="95px">
                      </asp:DropDownList>
                      &nbsp;&nbsp;
        联系人姓名：<input name="txName" type="text" id="txName" class="TxCss" style="width:114px; height: 16px;" runat="server" />        
        <asp:Button ID="Button1" runat="server" Text="查 询"  class="BnCss" OnClick="Button1_Click" />
              
                  </td>
				</tr>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Label" style="font-size: 9pt"></asp:Label></td>
            </tr>
            <tr>
                <td align="center">
                    <asp:GridView ID="GridView1" runat="server" Height="71px" Width="798px" 
                        BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" 
                        CellPadding="3"  DataKeyNames="Sid" AutoGenerateColumns="False"  
                        OnRowDataBound="GridView1_RowDataBound" OnRowDeleting="GridView1_RowDeleting" 
                        style="font-size: 9pt" OnRowEditing="GridView1_RowEditing" 
                        OnSelectedIndexChanging="GridView1_SelectedIndexChanging" 
                        GridLines="Horizontal" >
                        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                        <RowStyle ForeColor="#4A3C8C" BackColor="#E7E7FF" />
                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                        <Columns>
                           <asp:BoundField DataField="name" HeaderText="姓名" />
                    <asp:BoundField DataField="Sex" HeaderText="性别" />
                    <asp:BoundField DataField="OrgName" HeaderText="公司名称" />
                    <asp:BoundField DataField="Mobile" HeaderText="手机" />
                    <asp:BoundField DataField="OrgTel" HeaderText="公司电话" />
                    <asp:CommandField HeaderText="查看" SelectText="查看" ShowSelectButton="True" />
                    <asp:CommandField EditText="修改" HeaderText="修改" ShowEditButton="True"  />
                    <asp:CommandField HeaderText="删除" ShowDeleteButton="True" />
                        </Columns>
                        <AlternatingRowStyle BackColor="#F7F7F7" />
                    </asp:GridView>
                
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
