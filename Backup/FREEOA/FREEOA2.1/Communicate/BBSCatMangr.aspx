<%@ page language="C#" autoeventwireup="true" inherits="Communicate_BBSAddCata, App_Web_2yi7hpnw" %>

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
                    <asp:Label  ID="lblTit" runat="server" Text="论坛大类管理" Height="25px" Width="118px"></asp:Label>
                </div>
             </div>
           
            <div class="layBody">
              <div class="layData">
                  <table border="0" style="width: 80%; text-align:left">
                      <tr>
                          <td scope="col" style="width: 80px; height: 23px">
                          </td>
                          <td scope="col" style="width: 364px; height: 23px">
                              <asp:Label ID="lblMsg" runat="server" ForeColor="Red" Width="394px"></asp:Label></td>
                      </tr>
                      <tr>
                          <td scope="col" style="width: 80px; height: 23px;">
                              大类名称：</td>
                          <td scope="col" style="width: 364px; height: 23px;">
                              <asp:TextBox ID="txtName" runat="server" Width="265px"></asp:TextBox>&nbsp;</td>
                      </tr>
                      <tr>
                          <td style="width: 80px; height: 87px;">
                              &nbsp;大类描述：</td>
                          <td style="height: 87px; width: 364px;">
                              <asp:TextBox ID="txtDepict" runat="server" Height="129px" TextMode="MultiLine" Width="385px"></asp:TextBox>&nbsp;</td>
                      </tr>
                  </table>
               </div>
      
              <div class="layButton">
                 <ul>
                     <li><asp:ImageButton ID="imbSave" runat="server" ImageUrl="~/Communicate/Images/buttonSave.gif" OnClick="imbSave_Click" /></li>
                    <li><asp:ImageButton ID="imbBack" runat="server" ImageUrl="~/Communicate/Images/buttonBack.gif" OnClick="imbBack_Click" /></li>
                </ul>

              </div>
                
            </div>
      </div>
        
    </form>
</body>
</html>
