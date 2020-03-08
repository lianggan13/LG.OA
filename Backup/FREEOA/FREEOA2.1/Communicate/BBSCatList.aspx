<%@ page language="C#" autoeventwireup="true" inherits="Communicate_BBSCatMangr, App_Web_2yi7hpnw" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>论坛大类维护</title>
    
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <link href="../css.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
   
    <div class="layTable">
            <div class="layHead">
                    <img class="ico1" runat="server" src="~/Images/icon/right.gif" alt="像页面的标志"/> 
                <div class="labelTit">
                    <asp:Label  ID="lblTit" runat="server" Text="论坛大类列表" Height="25px" Width="118px"></asp:Label>
                </div>
             </div>
           
            <div class="layBody">
            
                <div class="layData">
                
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White"
                        BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" Height="71px"
                         Width="798px" OnRowEditing="GridView1_RowEditing" 
                        OnRowCreated="GridView1_RowCreated" OnRowDeleting="GridView1_RowDeleting" 
                        GridLines="Horizontal">
                        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                        <RowStyle ForeColor="#4A3C8C" BackColor="#E7E7FF" />
                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                        <Columns>
                            <asp:BoundField DataField="name" HeaderText="大类名称" />
                            <asp:BoundField DataField="depict" HeaderText="大类描述" />
                            <asp:CommandField HeaderText="修改" ShowEditButton="True" UpdateText="修改" EditText="修改">
                                <ItemStyle HorizontalAlign="Center" Wrap="False" />
                            </asp:CommandField>
                            <asp:CommandField HeaderText="删除" ShowDeleteButton="True">
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:CommandField>
                        </Columns>
                        <AlternatingRowStyle BackColor="#F7F7F7" />
                    </asp:GridView>
              
              </div>
              
              <div class="layButton">
                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Communicate/Images/buttonAddCat.gif" OnClick="ImageButton1_Click" />
              </div>
            </div>
        </div>
   
    </form>
</body>
</html>
