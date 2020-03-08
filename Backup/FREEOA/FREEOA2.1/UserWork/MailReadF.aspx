<%@ page language="C#" autoeventwireup="true" inherits="MailRead1, App_Web_z73ygct8" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1"><title>
	无标题页
</title>
    <style type="text/css">
        .style1
        {
            height: 22px;
        }
        .style2
        {
            height: 23px;
        }
        .style3
        {
            height: 20px;
        }
    </style>
</head>
<body>
    <form name="form1"  runat="server" id="form1">


      <table border="0" bordercolor="#111111" cellpadding="0" cellspacing="0" 
            width="98%">
            <tr height="30">
                <td align="center" background="../Images/topbg.jpg" style="height: 30px" 
                    width="3%">
                    <img height="16" src="../Images/icon/right.GIF" /></td>
                <td background="../Images/topbg.jpg" style="height: 30px" width="80">
                    <b>查看邮件</b></td>
                <td align="right" background="../Images/topbg.jpg" style="height: 30px">
                </td>
            </tr>
        </table>

    <table cellpadding="1" cellspacing="0" border="1" 
           style="width: 98%; font-size: small;">
    <tr>
    <td width="10%"  align="right" class="style1" bgcolor="#EDEDED">
        收件人：</td>
    <td align="left" class="style1">
    <%=Meetname%>
        </td>
    </tr>

    <tr>
    <td width="10%"  align="right" class="style1" bgcolor="#EDEDED">
        邮件主题：</td>
    <td align="left">  <%=title%></td>
    </tr>
    <tr>
    <td width="10%" align="right" class="style1" bgcolor="#EDEDED">
        发送者：</td>
    <td align="left">  <% =sendname%></td>
    </tr>
    <tr>
    <td width="10%"  align="right" class="style1" bgcolor="#EDEDED">
        发送时间：</td>
    <td align="left" class="style1">  <%=pubdate%></td>
    </tr>
    <tr>
    <td width="10%"  align="right" class="style1" bgcolor="#EDEDED">
    紧急程度：</td>
    <td align="left" class="style1">  <%=type%></td>
    </tr>
    <tr>
    <td width="10%"  align="right" class="style2" bgcolor="#EDEDED">
    附件：</td>
    <td align="left" class="style2">
   <asp:Label ID="LblAcc" runat="server" BackColor="#EDEDED" ></asp:Label>

    </td>
    </tr>
    <tr>
    <td align="right" style="height:200px" bgcolor="#EDEDED">邮件内容：</td>
    <td align="left" style="height:200px; vertical-align:top">
    <%=Contents%>
    
    </td>
    </tr>
    </table>
    <br />
           <table style="width:98%;">
               <tr>
                   <td align="center" class="style3">
                       <input id="btnToOther" type="button" value="转 发"  runat="server"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       <input id="btnBack" type="button" value="返 回"  onclick="history.go(-1);"/></td>
               </tr>
           </table>
</form>
</body>
</html>
