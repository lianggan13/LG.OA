<%@ page language="C#" autoeventwireup="true" inherits="query_upsalary, App_Web__liammil" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
    <style type="text/css">
        .style1
        {
            height: 30px;
            width: 87px;
        }
        .style2
        {
        }
        .style5
        {
            font-size: small;
        }
        .style6
        {
            font-size: small;
            color: #FF0000;
        }
        </style>
        
        

</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table border="0" bordercolor="#111111" cellpadding="0" cellspacing="0" 
            width="100%">
            <tr height="30">
                <td align="center" background="../Images/topbg.jpg" style="height: 30px" 
                    width="3%">
                    <img height="16" src="../Images/icon/right.GIF" /></td>
                <td background="../Images/topbg.jpg" class="style1">
                    <b>工资条上传</b></td>
                <td align="right" background="../Images/topbg.jpg" style="height: 30px">
                </td>
            </tr>
        </table>
    
    </div>
    <table style="width:100%; text-align:center ">
        <tr style="height:50px">
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr style="height:30px">
            <td>
                &nbsp;</td>
            <td>
            <strong>
                已上传工资条管理</strong></td>
            <td>
                &nbsp;</td>
        </tr>
        <tr style="height:30px">
            <td>
                &nbsp;</td>
            <td>
                <span class="style5">已上传工资条</span>：<asp:DropDownList ID="listFilename" runat="server" Width="250">
                </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnDel" runat="server" Text="删 除" onclick="btnDel_Click" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr style="height:50px">
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr style="height:30px">
            <td>
                &nbsp;</td>
            <td class="style2" align="center">
                <strong>工资条上传</strong></td>
            <td>
                &nbsp;</td>
        </tr>
        <tr style="height:30px">
            <td>
                &nbsp;</td>
            <td class="style5" align="center">
                选择年份：<asp:DropDownList ID="listYear" runat="server" Height="16px" 
                    style="margin-left: 0px" Width="125px">
                    <asp:ListItem>2005年</asp:ListItem>
                    <asp:ListItem>2006年</asp:ListItem>
                    <asp:ListItem>2007年</asp:ListItem>
                    <asp:ListItem>2008年</asp:ListItem>
                    <asp:ListItem>2009年</asp:ListItem>
                    <asp:ListItem>2010年</asp:ListItem>
                    <asp:ListItem>2011年</asp:ListItem>
                    <asp:ListItem>2012年</asp:ListItem>
                    <asp:ListItem>2013年</asp:ListItem>
                    <asp:ListItem>2014年</asp:ListItem>
                    <asp:ListItem>2015年</asp:ListItem>
                </asp:DropDownList>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                选择月份：<asp:DropDownList ID="listMonth" runat="server" Width="125px">
                    <asp:ListItem>一月</asp:ListItem>
                    <asp:ListItem>二月</asp:ListItem>
                    <asp:ListItem>三月</asp:ListItem>
                    <asp:ListItem>四月</asp:ListItem>
                    <asp:ListItem>五月</asp:ListItem>
                    <asp:ListItem>六月</asp:ListItem>
                    <asp:ListItem>七月</asp:ListItem>
                    <asp:ListItem>八月</asp:ListItem>
                    <asp:ListItem>九月</asp:ListItem>
                    <asp:ListItem>十月</asp:ListItem>
                    <asp:ListItem>十一月</asp:ListItem>
                    <asp:ListItem>十二月</asp:ListItem>
                </asp:DropDownList>
            &nbsp;
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr style="height:30px">
            <td>
                &nbsp;</td>
            <td class="style5" align="center">
                工资条上传：<asp:FileUpload ID="FileUpload" runat="server" />
            &nbsp;
                <asp:Button ID="btnUp" runat="server" onclick="btnUp_Click" Text="上 传" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr style="height:30px">
            <td>
                &nbsp;</td>
            <td class="style6" align="center">
                注意：上传的EXCEL文件格式必须符合规范！<a href=note.htm target=_"blank">点击这里</a>查看规范</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    </form>
</body>
</html>
