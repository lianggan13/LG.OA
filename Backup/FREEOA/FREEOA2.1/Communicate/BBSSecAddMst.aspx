<%@ page language="C#" autoeventwireup="true" inherits="Communicate_BBSSecAddMst, App_Web_2yi7hpnw" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    
</head>
<body>
    <form id="form1" runat="server">


<div class="layTable">
            <div class="layHead">
                    <img id="Img1" class="ico1" runat="server" src="~/Images/icon/right.gif" alt="像页面的标志"/> 
                <div class="labelTit">
                    <asp:Label  ID="lblTit" runat="server" Text="设定版主" Height="25px" Width="118px"></asp:Label>
                </div>
             </div>
           
            <div class="layBody">
            
                <div class="layData" >
                    &nbsp;<table style="text-align:left; width: 81%; height: 91px;">
                        <tr>
                            <td colspan="4" style="height: 25px">
                                <asp:Image ID="Image1" runat="server" ImageUrl="~/Communicate/Images/52.gif" /><asp:Label ID="lblSec" runat="server" Width="272px" ForeColor="Chocolate">当前版块：</asp:Label></td>
                        </tr>
                        <tr>
                            <td style="width: 44px; height: 33px;">
                                <asp:Label ID="Label1" runat="server" Text="版主：" Width="40px"></asp:Label></td>
                            <td colspan="2" style="height: 33px">
                                <input id="txtOtherMan" runat="server" class="TxCss" name="txtOtherMan" readonly="readonly"
                                    style="width: 279px" type="text" />
                                <button id="cmdScheOMan" runat="server" onclick="javascript:window.open('../UserWork/MailSend.aspx',null,'height=350,width=400,no');" type="button">选择</button></td>
                            <td style="width: 100px; height: 33px;">
                                </td>
                        </tr>
                        <tr>
                            <td style="width: 44px">
                            </td>
                            <td colspan="2">
                            </td>
                            <td style="width: 100px">
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 44px; height: 33px;">
                            </td>
                            <td style="height: 33px;" colspan="2">
                                &nbsp;<asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Communicate/Images/buttonSave.gif"
                                    OnClick="ImageButton1_Click" />
                                &nbsp; &nbsp;&nbsp;
                                <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Communicate/Images/buttonBack.gif"
                                    OnClick="ImageButton2_Click1" /></td>
                            <td style="width: 100px; height: 33px;">
                            </td>
                        </tr>
                    </table>
              
              </div>
            </div>
        </div>


    </form>
</body>
</html>
