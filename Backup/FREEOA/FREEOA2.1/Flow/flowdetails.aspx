<%@ page language="C#" autoeventwireup="true" inherits="Flow_flowdetails, App_Web_i0ssc6n9" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
    <style type="text/css">
        .style1
        {
            width: 92px;
        }
        .style2
        {
            font-size: small;
            background-color: #CCCCCC;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table border="0" bordercolor="#111111" cellpadding="0" cellspacing="0" 
            width="100%">
            <tr height="30">
                <td align="center" background="../Images/topbg.jpg" width="3%">
                    <img height="16" src="../Images/icon/right.GIF" /></td>
                <td background="../Images/topbg.jpg" class="style1">
                    <b>工作流详细</b></td>
                <td align="right" background="../Images/topbg.jpg">
                </td>
            </tr>
        </table>
    
        <table style="width:95%; font-size: small;" border="1" cellpadding="2" 
            cellspacing="0">
            <tr>
                <td align="right" style="width:10%" class="style2">
                    工作流名称：</td>
                <td align="left">
                    <%=title %>&nbsp;</td>
            </tr>
            <tr>
                <td align="right" class="style2">
                    起草人：</td>
                <td align="left">
                    <%=name %>&nbsp;</td>
            </tr>
            <tr>
                <td align="right" class="style2">
                    起草时间：</td>
                <td align="left">
                    <%=time %>&nbsp;</td>
            </tr>
            <tr>
                <td align="right" class="style2">
                    紧急程度：</td>
                <td align="left">
                    <%=isUrgent %> &nbsp;</td>
            </tr>
            <tr>
                <td align="right" class="style2">
                    时间限制：</td>
                <td align="left">
                    <%=timeLimit %>&nbsp;</td>
            </tr>
            <tr>
                <td align="right" class="style2">
                    附件：</td>
                <td align="left">
                    <%=att %>&nbsp;</td>
            </tr>
            <tr>
                <td align="right" class="style2">
                    正文：</td>
                <td align="left">
                    <%=content %>&nbsp;</td>
            </tr>
                        <tr>
                <td align="right" class="style2">
                    流程说明：</td>
                <td align="left">
                    <%=TypeDesc %>&nbsp;</td>
            </tr>
            <tr>
                <td align="right" class="style2">
                    审批流程：</td>
                <td align="left">
                    <%=authorInfo%>&nbsp;</td>
            </tr>
            </table>
    
    </div>
    </form>
</body>
</html>
