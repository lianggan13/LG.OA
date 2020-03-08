<%@ page language="C#" autoeventwireup="true" inherits="Communicate_Images_BBSListView, App_Web_2yi7hpnw" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>帖子列表</title>
    
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    
</head>
<body>
    <form id="form1" runat="server">
            
            <div class="layTable" style="top: 0px">
            
             <div class="layHead">
                    <img id="Img1" class="ico1" runat="server" src="~/Images/icon/right.gif" alt="图标"/> 
                <div class="labelTit">
                    <asp:Label  ID="lblTit" runat="server" Text="帖子列表" Height="25px" Width="118px"></asp:Label>
                </div>
             </div>
            
            <div class="layBody">
                <div style="text-align:left">

                    <table cellpadding="0" cellspacing="5">
                        <tr>
                            <td style="width: auto">
                                <asp:Image ID="imgSecTip" runat="server" ImageUrl="~/Communicate/Images/52.gif" /></td>
                            <td style="width: auto">
                                <asp:Label ID="lblSec" runat="server" Width="143px" ForeColor="Chocolate"></asp:Label></td>
                            <td style="width: auto">
                                <asp:Image ID="imgTipCount" runat="server" ImageUrl="~/Communicate/Images/moderator.gif" /></td>
                            <td style="width: auto">
                                <asp:Label ID="lblTopCount" runat="server"></asp:Label></td>
                            <td style="width: auto">
                                <asp:Label ID="lblTip" runat="server"></asp:Label></td>
                            <td style="width:69px">
                                <asp:Label ID="lblSecMst" runat="server"></asp:Label></td>
                        </tr>
                    </table>

                </div>
                <div class="layData">
                
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White"
                        BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Height="71px"
                         Width="798px" OnRowCreated="GridView1_RowCreated" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing">
                        <FooterStyle BackColor="White" ForeColor="#000066" />
                        <RowStyle ForeColor="#000066" />
                        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                        <Columns>
                            <asp:TemplateField HeaderText="状态">
                                <ItemTemplate>
                                    <asp:Image ID="imgFlag" runat="server" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:HyperLinkField DataNavigateUrlFields="id" DataNavigateUrlFormatString="BBSTopicView.aspx?topId={0}"
                                DataTextField="title" HeaderText="主题" />
                            <asp:BoundField DataField="name" HeaderText="作者" />
                            <asp:BoundField DataField="sendTime" HeaderText="发布时间" />
                            <asp:BoundField DataField="lastReplyUser" HeaderText="最后回复" />
                            <asp:BoundField DataField="lastReplyTime" HeaderText="最后回复时间" />
                            <asp:TemplateField HeaderText="回复/浏览">
                                <ItemTemplate>
                                    <asp:Label ID="lblRate" runat="server"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:CommandField HeaderText="修改" ShowEditButton="True" UpdateText="修改" 
                                EditText="修改" ButtonType="Image" 
                                EditImageUrl="~/Communicate/Images/Edit001.gif" Visible="False">
                                <ItemStyle HorizontalAlign="Center" Wrap="False" />
                            </asp:CommandField>
                            <asp:CommandField HeaderText="删除" ShowDeleteButton="True" ButtonType="Image" 
                                DeleteImageUrl="~/Communicate/Images/del.gif" Visible="False">
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:CommandField>
                        </Columns>
                        <AlternatingRowStyle BackColor="InactiveCaptionText" />
                    </asp:GridView>
              
              </div>
                <div class="layButton" style="left: 0px; top: 0px">
                    <ul>
                        <li>
                            <asp:ImageButton ID="imbAddTop" runat="server" ImageUrl="~/Communicate/Images/buttonAddTop.gif" OnClick="imbAddTop_Click" />
                        </li>
                        <li>
                            <asp:ImageButton ID="imbBack" runat="server" ImageUrl="~/Communicate/Images/buttonBack.gif"
                                OnClick="imbBack_Click" />
                        </li>
                    </ul>
                </div>
              
              
            </div>
            
        </div>
            
    </form>
</body>
</html>
