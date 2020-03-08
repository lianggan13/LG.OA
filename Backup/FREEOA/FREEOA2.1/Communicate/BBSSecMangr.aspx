<%@ page language="C#" autoeventwireup="true" inherits="Communicate_BBS, App_Web_fto9q-tz" %>

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
                    <asp:Label  ID="lblTit" runat="server" Text="论坛版块管理" Height="25px" Width="118px"></asp:Label>
                </div>
             </div>
           
            <div class="layBody">
              <div class="layData">
                  <table border="0" style="width: 90%; text-align:left">
                      <tr>
                          <td scope="col" style="width: 393px; height: 23px">
                          </td>
                          <td colspan="2" scope="col" style="height: 23px">
                              <asp:Label ID="lblMsg" runat="server" ForeColor="Red" Width="394px"></asp:Label></td>
                      </tr>
                      <tr>
                          <td scope="col" style="width: 393px; height: 23px;">
                              版块名称：</td>
                          <td colspan="2" scope="col" style="height: 23px">
                              <asp:TextBox ID="txtName" runat="server" Width="265px"></asp:TextBox>&nbsp;</td>
                      </tr>
                      <tr>
                          <td style="width: 393px; height: 26px">
                              所属类别：</td>
                          <td style="width: 226px; height: 26px">
                              <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"
                                  Width="170px">
                              </asp:DropDownList>
                          </td>
                          <td style="width: 364px; height: 26px">
                              <asp:Button ID="btnAddCat" runat="server" OnClick="btnAddCat_Click" Text="新建类别" /></td>
                      </tr>
                      <tr>
                          <td style="width: 393px; height: 87px;">
                              &nbsp;版块描述：</td>
                          <td colspan="2" style="height: 87px">
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
