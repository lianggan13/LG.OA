<%@ page language="C#" autoeventwireup="true" inherits="sysManage_News, App_Web_tuylcjo8" validaterequest="false" %>

<%@ Register assembly="DotNetTextBox" namespace="DotNetTextBox" tagprefix="DNTB" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
    <link href="../css.css" rel="stylesheet" type="text/css" />
		<script language="javascript" src="../../Js/calendar.js" type="text/javascript"></script>
		<link href="../UserWork/HtmlEditor/site.css" type="text/css" rel="stylesheet" />
		<script src="../UserWork/HtmlEditor/edit.js" type="text/javascript" charset="GB2312"></script>
    <style type="text/css">
.editor_select {FONT: 9pt Verdana,Arial}
.outcolor{border:1px double;border-color:#dddddd #dddddd #dddddd #dddddd;cursor:pointer;background:#efefef}
.editor_switcher_nohighlight {
 BACKGROUND: #FFFFFF; MARGIN-LEFT: 2px; VERTICAL-ALIGN: top;BORDER: #CCCCCC 1px solid; BORDER-TOP: none; TOP: 0px
}
.editor_switcher_highlight {
 BACKGROUND:#EFEFEF; MARGIN-LEFT: 2px; VERTICAL-ALIGN:top; BORDER:#CCCCCC 1px solid;BORDER-TOP: none; TOP: 0px
}
    </style>
</head>

<body>
    <form  name="form1" id="form1" runat="server" >
<input name="HtmlEditor1$HtmlEditorContent" type="hidden" id="HtmlEditor1_HtmlEditorContent" runat="server" />
    <script type="text/javascript">
<!--
var theForm = document.forms['form1'];
if (!theForm) {
    theForm = document.form1;
}
function __doPostBack(eventTarget, eventArgument) {
    if (!theForm.onsubmit || (theForm.onsubmit() != false)) {
        theForm.__EVENTTARGET.value = eventTarget;
        theForm.__EVENTARGUMENT.value = eventArgument;
        theForm.submit();
    }
}
// -->
</script>
    <table border="0" cellpadding="0" cellspacing="0" bordercolor="#111111" width="100%">
		<tr height="30">
			<td width="3%" background="../Images/topbg.jpg" align=center><IMG height="16" src="../Images/icon/right.GIF"></td>
			<td background="../Images/topbg.jpg" width="80"><b>添加新闻</b></td>
			<TD background="../Images/topbg.jpg" align="right">
			</TD>
		</tr>
	</table>
	
	<table width=100% cellpadding=0 cellspacing=0 border=0 align=center>
        <tr>
            <td style="height: 36px"></td>
        </tr>
        <tr>
        <td align="center">
            <table style="width: 649px;">
                <tr>
                    <td style="width: 98px; height: 37px;" align="center">
                        新闻类型：</td>
                    <td style="width: 100px; height: 37px;" align="left">
                        <asp:DropDownList ID="drpType" runat="server" Width="117px">
                        </asp:DropDownList></td>
                </tr>
                <tr>
                    <td style="width: 98px; height: 37px;" align="center">
                        新闻主题：</td>
                    <td style="width: 100px; height: 37px;">
                        <asp:TextBox ID="txtTitle" runat="server" Width="455px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 98px" align="center">
                        新闻内容：</td>
                    <td align="left" >
                        <DNTB:WebEditor ID="WebEditor1" runat="server" systemFolder="system_dntb/" />
                    </td>
                </tr>
                <tr>
                    <td style="width: 98px; height: 37px;" align="center">
                        是否评论：</td>
                    <td style="width: 100px; height: 37px;" align="left">
                        <asp:DropDownList ID="drpRemark" runat="server" Width="120px">
                            <asp:ListItem Value="1">可以评论</asp:ListItem>
                            <asp:ListItem Value="0">不可以评论</asp:ListItem>
                        </asp:DropDownList>
                        &nbsp; &nbsp; &nbsp;&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2" align="center" style="height: 37px">
                        <input type="submit" name="bnSave"  value="保 存" onclick="setContent()" class="BnCss" id="Submit1" runat="server" onserverclick="Submit1_ServerClick" />
                        &nbsp;
                        &nbsp;&nbsp; &nbsp;<asp:Button ID="btnReset" runat="server" class="BnCss" Text="重置" OnClick="btnReset_Click" Width="52px"  />
                        &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;</td>
                </tr>
            </table>
        </td>
        </tr>
	</table>
	<script type="text/javascript">
<!--
var Page_ValidationActive = false;
if (typeof(ValidatorOnLoad) == "function") {
    ValidatorOnLoad();
}

function ValidatorOnSubmit() {
    if (Page_ValidationActive) {
        return ValidatorCommonOnSubmit();
    }
    else {
        return true;
    }
}
// -->
</script>

    </form>
</body>
</html>
