<%@ page language="C#" autoeventwireup="true" inherits="Info_AllInfo, App_Web_wy4mt_ds" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
    <style type="text/css">
        .style1
        {
            width: 600px;
            height:500px;
            font-size:small;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
   
    
        <table border="0" bordercolor="#111111" cellpadding="0" cellspacing="0" 
            width="100%">
            <tr height="30">
                <td align="center" background="../Images/topbg.jpg" width="3%">
                    <img height="16" src="../Images/icon/right.GIF" /></td>
                <td background="../Images/topbg.jpg" width="80">
                    <b>员工信息</b></td>
            </tr>
        </table>
        <table align="center" class="style1">
            <tr>
                <td style="width:100px">
                    &nbsp;</td>
                <td style="width:200px">
                    &nbsp;</td>
                <td style="width:100px">
                    &nbsp;</td>
                <td style="width:200px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right">
                    姓名：</td>
                <td>
                    <%=name %>&nbsp;</td>
                <td align="right">
                    性别：</td>
                <td>
                    <%=sex %>&nbsp;</td>
            </tr>
            <tr>
                <td align="right">
                    所属部门：</td>
                <td>
                    <%=Branch %>&nbsp;</td>
                <td align="right">
                    政治面貌：</td>
                <td>
                    <%=mm %>&nbsp;</td>
            </tr>
            <tr>
                <td align="right">
                    办公电话：</td>
                <td>
                    <%=workPhone %>&nbsp;</td>
                <td align="right">
                    移动电话：</td>
                <td>
                    <%=movePhone %>&nbsp;</td>
            </tr>
            <tr>
                <td align="right">
                    个人主页：</td>
                <td>
                    <%=url %>&nbsp;</td>
                <td align="right">
                    电子邮箱：</td>
                <td>
                    <%=Email %>&nbsp;</td>
            </tr>
            <tr>
                <td align="right">
                    QQ账号：</td>
                <td>
                    <%=qq %>&nbsp;</td>
                <td align="right">
                    MSN账号：</td>
                <td>
                    <%=msn %>&nbsp;</td>
            </tr>
            <tr>
                <td align="right">
                    婚姻状况：</td>
                <td>
                    <%=marriage %>&nbsp;</td>
                <td align="right">
                    出生日期：</td>
                <td>
                    <%=birthday %>&nbsp;</td>
            </tr>
            <tr>
                <td align="right">
                    身高：</td>
                <td>
                    <%=height %>&nbsp;</td>
                <td align="right">
                    体重：</td>
                <td>
                    <%=weight %>&nbsp;</td>
            </tr>
            <tr>
                <td align="right">
                    证件类型：</td>
                <td>
                    <%=card %>&nbsp;</td>
                <td align="right">
                    证件号：</td>
                <td>
                    <%=cardnum %>&nbsp;</td>
            </tr>
            <tr>
                <td align="right">
                    住址：</td>
                <td>
                    <%=address %>&nbsp;</td>
                <td align="right">
                    邮编：</td>
                <td>
                    <%=post %>&nbsp;</td>
            </tr>
            <tr>
                <td align="right">
                    家庭电话：</td>
                <td>
                    <%=homephone %>&nbsp;</td>
                <td align="right">
                    小灵通</td>
                <td>
                    <%=xiaolingtong %>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            </table>
    

    </form>

</body>
</html>
