<%@ page language="C#" autoeventwireup="true" inherits="Login, App_Web_dw6csvel" %>

<script runat="server">

    protected void Button1_Click(object sender, EventArgs e)
    {

    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head><title>
	融智OA办公自动化系统
</title><link href="css.css" type="text/css" rel="stylesheet" />
 
</head>
<body>
    <form name="form1"  runat="server" id="form1">


    <table width="100%" height="99%" border="0" cellpadding="0" cellspacing="0">
  <tr>

    <td align="center" valign="middle" ><table height="100%"  border="0" 
            cellpadding="0" cellspacing="0" style="width: 100%">
      <tr>
        <td width="100%" height="584" align="center" valign="top" style=" background-image:url(images\02.jpg)">
        <table width="100%"  border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td style="height: 180px">&nbsp;</td>
            <td style="height: 180px">&nbsp;</td>
            <td style="height: 180px">&nbsp;</td>
          </tr>
          <tr>
            <td width="242" style="height: 213px">&nbsp;</td>
            <td width="520"  style=" height:213px; " >
            <table width="100%"  border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td style="width: 172px; height: 25px">&nbsp;</td>
                <td style="height: 25px; width: 265px;">&nbsp;</td>
                <td width="17%" style="height: 25px">&nbsp;</td>
              </tr>
              <tr>
                <td height="138" style="width: 172px">&nbsp;</td>
                <td align="left" valign="top" style="width: 265px">
                <table width="262" style=" height:93px"  border="0" cellpadding="0" cellspacing="0">
                    <tr>
                      <td align="right" valign="bottom" style="height: 60px; width: 113px;">用户名：</td>
                      <td valign="bottom" style="height: 60px">
                          &nbsp;<asp:TextBox ID="username" runat="server" Width="153px"></asp:TextBox></td>
                      <td width="73" rowspan="2" align="center">
                                                    &nbsp;
                          <!--img src="images/06_3.gif" width="41" height="39"-->
                          </td>
                    </tr>
                    <tr>
                      <td align="right" valign="middle" style="height: 60px; width: 113px;">密　码：</td>
                      <td  style="height: 60px">
                          &nbsp;<asp:TextBox ID="password" runat="server" Width="153px" TextMode="Password"></asp:TextBox></td>
                      </tr>
                      <tr>
                        <td colspan=3 align="center">
                          <asp:Button ID="Button1" runat="server" Height="25px" OnClick="Button1_Click" 
                                Text="登  录" Width="89px" />
                        </td>
                      </tr>
                    
                </table>
                   <a href="../../img/add_small.gif" target="_blank"></a>
                </td>
                <td>&nbsp;</td>
              </tr>
            </table></td>
            <td style="height: 213px">&nbsp;</td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td>&nbsp;
            </td>
            <td height="100">&nbsp;</td>
          </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
</table>
    </form>
</body>
</html>
