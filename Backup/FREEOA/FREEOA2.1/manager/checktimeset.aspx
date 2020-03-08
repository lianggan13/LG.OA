<%@ page language="C#" autoeventwireup="true" inherits="manager_checktimeset, App_Web_npi0lp43" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
    <style type="text/css">
        .style1
        {
            width: 105px;
        }
        .style2
        {
            font-size: small;
            font-weight: bold;
        }
        .style3
        {
            font-size: small;
        }
        .style4
        {
            height: 29px;
            font-size: small;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table border="0" bordercolor="#111111" cellpadding="0" cellspacing="0" 
            class="px12" width="100%">
            <tr height="30">
                <td align="center" background="../Images/topbg.jpg" width="3%">
                    <img height="16" src="../Images/icon/right.GIF" /></td>
                <td background="../Images/topbg.jpg" class="style1">
                    <b>考勤时间设置</b></td>
                <td align="right" background="../Images/topbg.jpg">
                </td>
            </tr>
        </table>
        <table style="width:100%;">
            <tr>
                <td align="center" class="style2">
                                        考勤时间</td>
            </tr>
            <tr>
                <td align="center">
                    <asp:GridView ID="grdCheck" runat="server" AutoGenerateColumns="False" 
                        BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" 
                        CellPadding="3" GridLines="Horizontal" Width="90%" AllowPaging="True" 
                        onpageindexchanging="grdCheck_PageIndexChanging" >
                        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                        <RowStyle BackColor="#E7E7FF" Font-Size="Small" ForeColor="#4A3C8C" />
                        <Columns>
<asp:BoundField DataField="chktimeid" HeaderText="编号" Visible="False"></asp:BoundField>
                            <asp:BoundField DataField="chktimename" HeaderText="名称" />
                            <asp:BoundField DataField="shangtime" HeaderText="上班时间" 
                                DataFormatString="{0:HH:mm:ss}" />
                            <asp:BoundField DataField="xiatime" HeaderText="下班时间" 
                                DataFormatString="{0:HH:mm:ss}" />
                            <asp:TemplateField HeaderText="删除">
                                <ItemTemplate>
                                    <asp:LinkButton ID="lkbtn" runat="server" OnClientClick="return confirm('删除此项需要重新设置绑定到此考勤时间的人员，真的要删除此项么？')" CommandName="<%#Bind('chkTimeID') %>" 
                                        oncommand="lkbtn_Command">删除</asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                        <AlternatingRowStyle BackColor="#F7F7F7" />
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td align="center">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" class="style4">
                    增加考勤时间</td>
            </tr>
            <tr>
                <td align="center">
                    <span class="style2">名&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 称：</span><asp:TextBox 
                        ID="txtName" runat="server" Width="130px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center">
                    <b><span class="style3">上班时间：</span><asp:DropDownList ID="lstHourOn" 
                        runat="server">
                        <asp:ListItem>08</asp:ListItem>
                        <asp:ListItem>09</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>11</asp:ListItem>
                        <asp:ListItem>12</asp:ListItem>
                        <asp:ListItem>13</asp:ListItem>
                        <asp:ListItem>14</asp:ListItem>
                        <asp:ListItem>15</asp:ListItem>
                        <asp:ListItem>16</asp:ListItem>
                        <asp:ListItem>17</asp:ListItem>
                        <asp:ListItem>18</asp:ListItem>
                        <asp:ListItem>19</asp:ListItem>
                        <asp:ListItem>20</asp:ListItem>
                        <asp:ListItem>21</asp:ListItem>
                        <asp:ListItem>22</asp:ListItem>
                        <asp:ListItem>23</asp:ListItem>
                        <asp:ListItem>00</asp:ListItem>
                        <asp:ListItem>01</asp:ListItem>
                        <asp:ListItem>02</asp:ListItem>
                        <asp:ListItem>03</asp:ListItem>
                        <asp:ListItem>04</asp:ListItem>
                        <asp:ListItem>05</asp:ListItem>
                        <asp:ListItem>06</asp:ListItem>
                        <asp:ListItem>07</asp:ListItem>
                    </asp:DropDownList>
&nbsp;<span class="style3">时</span>&nbsp;&nbsp; </b>
                    <asp:DropDownList ID="lstMinOn" runat="server">
                        <asp:ListItem>00</asp:ListItem>
                        <asp:ListItem>05</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>15</asp:ListItem>
                        <asp:ListItem>20</asp:ListItem>
                        <asp:ListItem>25</asp:ListItem>
                        <asp:ListItem>30</asp:ListItem>
                        <asp:ListItem>35</asp:ListItem>
                        <asp:ListItem>40</asp:ListItem>
                        <asp:ListItem>45</asp:ListItem>
                        <asp:ListItem>50</asp:ListItem>
                        <asp:ListItem>55</asp:ListItem>
                        <asp:ListItem>60</asp:ListItem>
                    </asp:DropDownList>
&nbsp;<span class="style2">分</span></td>
            </tr>
            <tr>
                <td align="center">
                    <b><span class="style3">下班时间：<asp:DropDownList ID="lstHourOff" runat="server">
                        <asp:ListItem>17</asp:ListItem>
                        <asp:ListItem>18</asp:ListItem>
                        <asp:ListItem>19</asp:ListItem>
                        <asp:ListItem>20</asp:ListItem>
                        <asp:ListItem>21</asp:ListItem>
                        <asp:ListItem>22</asp:ListItem>
                        <asp:ListItem>23</asp:ListItem>
                        <asp:ListItem>00</asp:ListItem>
                        <asp:ListItem>01</asp:ListItem>
                        <asp:ListItem>02</asp:ListItem>
                        <asp:ListItem>03</asp:ListItem>
                        <asp:ListItem>04</asp:ListItem>
                        <asp:ListItem>05</asp:ListItem>
                        <asp:ListItem>06</asp:ListItem>
                        <asp:ListItem>07</asp:ListItem>
                        <asp:ListItem>08</asp:ListItem>
                        <asp:ListItem>09</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>11</asp:ListItem>
                        <asp:ListItem>12</asp:ListItem>
                        <asp:ListItem>13</asp:ListItem>
                        <asp:ListItem>14</asp:ListItem>
                        <asp:ListItem>15</asp:ListItem>
                        <asp:ListItem>16</asp:ListItem>
                    </asp:DropDownList>
&nbsp;时&nbsp;&nbsp;&nbsp;&nbsp; 
                    <asp:DropDownList ID="lstMinOff" runat="server">
                        <asp:ListItem>00</asp:ListItem>
                        <asp:ListItem>05</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>15</asp:ListItem>
                        <asp:ListItem>20</asp:ListItem>
                        <asp:ListItem>25</asp:ListItem>
                        <asp:ListItem>30</asp:ListItem>
                        <asp:ListItem>35</asp:ListItem>
                        <asp:ListItem>40</asp:ListItem>
                        <asp:ListItem>45</asp:ListItem>
                        <asp:ListItem>50</asp:ListItem>
                        <asp:ListItem>55</asp:ListItem>
                        <asp:ListItem>60</asp:ListItem>
                    </asp:DropDownList>
&nbsp;<span class="style2">分</span></span></b></td>
            </tr>
            <tr>
                <td align="center">
                    <asp:Button ID="Button1" runat="server" Height="22px" Text="提  交" 
                        Width="60px" onclick="Button1_Click" />
                </td>
            </tr>
            <tr>
                <td align="center">
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
