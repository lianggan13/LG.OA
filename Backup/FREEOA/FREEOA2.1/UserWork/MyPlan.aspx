<%@ page language="C#" autoeventwireup="true" validaterequest="false" inherits="UserWork_MyPlan, App_Web_z73ygct8" %>

<%@ Register assembly="DotNetTextBox" namespace="DotNetTextBox" tagprefix="DNTB" %>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head><title>
	无标题页
</title><link href="../css.css" rel="stylesheet" type="text/css" />
		<script language="javascript" src="../../Js/calendar.js" type="text/javascript"></script>
		<link href="HtmlEditor/site.css" type="text/css" rel="stylesheet" />
		<script src="HtmlEditor/edit.js" type="text/javascript" charset="GB2312"></script>
</head>
<body>
    <form name="form1"  runat="server" id="form1">

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



       <table border="0" cellpadding="0" cellspacing="0" bordercolor="#111111" width="100%" class="px12">
				<tr height="30">
					<td width="3%" background="../Images/topbg.jpg" align=center><IMG height="16" src="../Images/icon/right.GIF"></td>
					<td background="../Images/topbg.jpg" width="80"><b>工作计划</b></td>
					<TD background="../Images/topbg.jpg" align="right">
					</TD>
				</tr>
			</table>
    <table width=100% cellpadding=0 cellspacing=0 border=0 align=center>
    <tr>
    <td height=25>
    
    </td>
    </tr>
    <tr>
    <td align=center>
    <table width=80% cellpadding=2 cellspacing=1 border=0 class="px12">
    <tr>
    <td width=12% height=25 align=right>
        主题：</td>
    <td align=left><input name="txTitle" type="text" id="txTitle" class="TxCss" style="width:500px;" runat="server" />
    <span id="RequiredFieldValidator1" style="color:Red;display:none;"></span>
        
    </td>
    </tr>
    <tr>
    <td align=right style="height: 379px">
        内容：</td>
    <td align=left valign="top" style="height: 379px"><table cellspacing="0" cellpadding="0" width="500px" border="1" style="border-collapse: collapse">
            <tr>
                <td align="left">
                    


                   <DNTB:WebEditor ID="WebEditor1" runat="server" systemFolder="system_dntb/" /></td>
            </tr>
        </table>
        
    </td>
    </tr>
    <tr>
    <td colspan=2 style="height: 25px" align=center><input type="submit" name="bnSave" value="保 存" onclick="setContent()" class="BnCss" id="Submit1" onserverclick="Submit1_ServerClick" runat="server" />
        &nbsp; &nbsp; &nbsp;&nbsp;<asp:Button ID="Button1" runat="server" Text="修 改" CssClass="BnCss" OnClick="Button1_Click" />
        &nbsp;&nbsp; &nbsp;
        <input id="Reset1" type="reset" value="重 置" class="BnCss" /></td>
    </tr>
    </table>
    </td>
    </tr>
    </table>
    
<script type="text/javascript">
<!--
var Page_Validators =  new Array(document.getElementById("RequiredFieldValidator1"));
// -->
</script>

<script type="text/javascript">
<!--
var RequiredFieldValidator1 = document.all ? document.all["RequiredFieldValidator1"] : document.getElementById("RequiredFieldValidator1");
RequiredFieldValidator1.controltovalidate = "txTitle";
RequiredFieldValidator1.errormessage = "主题不能为空!";
RequiredFieldValidator1.display = "None";
RequiredFieldValidator1.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
RequiredFieldValidator1.initialvalue = "";
// -->
</script>

<div>
    &nbsp;</div>

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
