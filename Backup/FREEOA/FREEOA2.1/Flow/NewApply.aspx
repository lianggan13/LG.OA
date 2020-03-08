<%@ page language="C#" autoeventwireup="true" inherits="Flow_NewApply, App_Web_i0ssc6n9" validaterequest="false" %>

<%@ Register assembly="DotNetTextBox" namespace="DotNetTextBox" tagprefix="DNTB" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
    <script type="text/javascript" src="../Js/calendar.js"></script>
    
    <style type="text/css">
        .style1
        {
            width: 93px;
        }
        .style2
        {
            font-size: small;
        }
        #Text1
        {
            width: 205px;
        }
        #Text2
        {
            width: 205px;
        }
        .style3
        {
            font-size: small;
            background-color: #CCCCCC;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" name="form1">
 
    <table border="0" cellpadding="0" cellspacing="0" bordercolor="#111111" width="100%">
		<tr height="30">
			<td width="3%" background="../Images/topbg.jpg" align=center><IMG height="16" src="../Images/icon/right.GIF"></td>
			<td background="../Images/topbg.jpg" class="style1"><b>起草新申请</b></td>
			<TD background="../Images/topbg.jpg" align="right">
			</TD>
		</tr>
	</table>
	



    <table style="width:100%; border:1px" border="1px" cellpadding="2" cellspacing="0">
        <tr>
            <td style="width:10%" align="right" class="style3">
                工作流名称：</td>
            <td>
                <asp:TextBox ID="txtTitle" runat="server" Width="280px"></asp:TextBox>
                &nbsp;<asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            </td>
        </tr>
          <tr>
            <td style="width:10%" align="right" class="style3">
                工作流类型：</td>
            <td>
              
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:DropDownList ID="lstType" runat="server" Height="16px" Width="220px" 
                    AutoPostBack="True" 
    onselectedindexchanged="lstType_SelectedIndexChanged">
                        </asp:DropDownList>
                    </ContentTemplate>
                </asp:UpdatePanel>
              </td>
        </tr>
        
        <tr>
            <td style="width:10%" align="right" class="style3">
                工作流描述：</td>
            <td class="style2">
                <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                    <ContentTemplate>
                        <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                    </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="lstType" 
                            EventName="SelectedIndexChanged" />
                    </Triggers>
                </asp:UpdatePanel>
            </td>
        </tr>
        
        <tr>
            <td style="width:10%" align="right" class="style3">
                流转至：</td>
            <td class="style2">
                <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                    <ContentTemplate>
                        部门：<asp:DropDownList ID="lstBranch" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="lstBranch_SelectedIndexChanged">
                        </asp:DropDownList>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 人员：<asp:DropDownList ID="lstEmployee" 
    runat="server">
                        </asp:DropDownList>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </td>
        </tr>
        <tr align="right">
            <td class="style3" rowspan="2">
                时间限制：</td>
            <td align="left" class="style2">
                <asp:CheckBox ID="chkStarttime" runat="server" Text="起始时间" />
                <asp:TextBox ID="txtStarttime" runat="server"></asp:TextBox>
                格式：2005-3-10 08:30:00<asp:RegularExpressionValidator ID="RegularExpressionValidator1" 
                    runat="server" ControlToValidate="txtStarttime" 
                    ErrorMessage="请按照提示输入正确的起始时间日期格式" SetFocusOnError="True" 
                    ValidationExpression="^20\d\d-(0?[1-9]|1[0-2])-(0?[1-9]|[12]\d|3[01])$">*</asp:RegularExpressionValidator>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                    ShowMessageBox="True" ShowSummary="False" />
            </td>
        </tr>
        <tr align="right">
            <td align="left" class="style2">
                <asp:CheckBox ID="chkEndtime" runat="server" Text="结束时间" />
                <asp:TextBox ID="txtEndtime" runat="server"></asp:TextBox>
                格式：2005-3-10 17:30:00<asp:RegularExpressionValidator ID="RegularExpressionValidator2" 
                    runat="server" ControlToValidate="txtEndtime" ErrorMessage="请按照提示输入正确的结束时间日期格式" 
                    SetFocusOnError="True" 
                    ValidationExpression="^20\d\d-(0?[1-9]|1[0-2])-(0?[1-9]|[12]\d|3[01])$">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="style3">
                紧急程度：</td>
            <td>
                <asp:DropDownList ID="lstIsurgent" runat="server" Height="16px" Width="126px">
                    <asp:ListItem Selected="True" Value="0">一般</asp:ListItem>
                    <asp:ListItem Value="1">紧急</asp:ListItem>
                    <asp:ListItem Value="2">需速办</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td align="right" class="style3">
                附件：</td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" />
            &nbsp;
                <asp:Button ID="btnUpload" runat="server" Height="22px" 
                    onclick="btnUpload_Click" Text="上  传" Width="88px" />
            </td>
        </tr>
        <tr>
            <td align="right" class="style3">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right" class="style3" valign="top">
                正文：</td>
            <td>
                <DNTB:WebEditor ID="WebEditor1" runat="server" systemFolder="system_dntb/" />
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Button ID="btnSubmit" runat="server" Text="提 交" Width="73px" 
                    onclick="btnSubmit_Click" />
            </td>
        </tr>
    </table>
    <br />
	



    </form>
</body>
</html>
