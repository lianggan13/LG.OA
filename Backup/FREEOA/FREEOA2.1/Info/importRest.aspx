<%@ page language="C#" autoeventwireup="true" inherits="Info_importRest, App_Web_wy4mt_ds" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
      <link href="../css.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table align="center" width="100%">
            <tr height="30">
                <td align="left" background="../Images/topbg.jpg" style="height: 30px" 
                    width="3%">
                    <img height="16" src="../Images/icon/right.GIF" /><b>员工信息导入</b>
                </td>
            </tr>
        </table>
        <table cellpadding="2px" width="100%">
            <tr style="height:35px">
                <td style="width:20%">
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td align="right">
                    请选择导入的EXCEL文件：</td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnImport" runat="server" Height="22px" Text="导入" 
                        Width="60px" onclick="btnImport_Click" />
                </td>
            </tr>
            <tr>
                <td align="right">
                    &nbsp;</td>
                <td>
                    注意：EXCEL文件必须符合以下规则：<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1、没有合并单元格<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2、没有空格<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3、日期格式为2010-10-10<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4、清除所有字体格式<br />
                    <br />
                    <a href="moban/moban.xls">点击此处</a>可下载EXCEL模板，填充人员信息后导入</td>
            </tr>
            <tr>
                <td align="right">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
