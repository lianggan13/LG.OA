<%@ page language="C#" autoeventwireup="true" inherits="Flow_flowauthor, App_Web_i0ssc6n9" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
    <style type="text/css">
        .style1
        {
            width: 89px;
        }
        .style2
        {
            font-size: small;
        }
        .style3
        {
            font-size: small;
            background-color: #CCCCCC;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div align="left">
    
        <table border="0" bordercolor="#111111" cellpadding="0" cellspacing="0" 
            width="100%">
            <tr height="30">
                <td align="center" background="../Images/topbg.jpg" width="3%">
                    <img height="16" src="../Images/icon/right.GIF" /></td>
                <td background="../Images/topbg.jpg" class="style1">
                    <b>审阅工作流</b></td>
                <td align="right" background="../Images/topbg.jpg">
                </td>
            </tr>
        </table>
    
        <table style="width:95%; font-size: small;" border="1" cellpadding="2" cellspacing="0">
            <tr>
                <td align="right" style="width:10%" class="style3">
                    工作流名称：</td>
                <td align="left">
                    <%=title %>&nbsp;</td>
            </tr>
            <tr>
                <td align="right" class="style3">
                    起草人：</td>
                <td align="left">
                    <%=name %>&nbsp;</td>
            </tr>
            <tr>
                <td align="right" class="style3">
                    起草时间：</td>
                <td align="left">
                   <%=time %>&nbsp;</td>
            </tr>
            <tr>
                <td align="right" class="style3">
                    紧急程度：</td>
                <td align="left">
                   <%=isUrgent %>&nbsp;</td>
            </tr>
            <tr>
                <td align="right" class="style3">
                    时间限制：</td>
                <td align="left">
                    <%=timeLimit %>&nbsp;</td>
            </tr>
            <tr>
                <td align="right" class="style3">
                    附件：</td>
                <td align="left">
                    <%=att %>&nbsp;</td>
            </tr>
            <tr>
                <td align="right" class="style3">
                    正文：</td>
                <td align="left">
                    <%=content %>&nbsp;</td>
            </tr>
            <tr>
                <td align="right" class="style3">
                    流程说明：</td>
                <td align="left">
                    <%=typedesc %>&nbsp;</td>
            </tr>
            <tr>
                <td align="right" class="style3">
                    审批流程：</td>
                <td align="left">
                    <%=authorInfo %>&nbsp;</td>
            </tr>
            <tr>
                <td align="right" class="style3">
                    我的审批：</td>
                <td align="left">
                    <asp:TextBox ID="txtAuthor" runat="server" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" class="style3">
                    我的意见：</td>
                <td align="left">
                    <asp:TextBox ID="txtNote" runat="server" Height="150px" TextMode="MultiLine" 
                        Width="450px"></asp:TextBox>
                    <br />
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                </td>
            </tr>
            <tr>
                <td align="right" class="style3">
                    流转至：<br />
                </td>
                <td align="left">
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <asp:CheckBox ID="chkIsEnd" runat="server" style="font-size: small" 
                        Text="流程结束" AutoPostBack="True" 
                        oncheckedchanged="chkIsEnd_CheckedChanged" />
                            &nbsp;<span class="style2">&nbsp; 部门：<asp:DropDownList ID="lstBranch" runat="server" 
                                AutoPostBack="True" onselectedindexchanged="lstBranch_SelectedIndexChanged">
                            </asp:DropDownList>
                            &nbsp;&nbsp;&nbsp; 人员：<asp:DropDownList ID="lstEmployee" runat="server">
                            </asp:DropDownList>
                            </span>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </td>
            </tr>
            <tr>
                <td align="right" colspan="2" style="text-align: center">
                    <asp:Button ID="btnGo" runat="server" Text="向下流转" Width="75px" 
            onclick="btnGo_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnBack" runat="server" Text="驳 回" Width="75px" 
            onclick="btnBack_Click" />
    
                </td>
            </tr>
            </table>
    
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        
    </div>
    </form>
</body>
</html>
