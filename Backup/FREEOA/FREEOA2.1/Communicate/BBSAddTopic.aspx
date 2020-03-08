<%@ page language="C#" autoeventwireup="true" inherits="Communicate_BBSAddTopic, App_Web_2yi7hpnw" validaterequest="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>发帖</title>
    
    <link href="../css.css" rel="stylesheet" type="text/css" />
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
		<script language="javascript" src="../../Js/calendar.js" type="text/javascript"></script>
		<link href="HtmlEditor/site.css" type="text/css" rel="stylesheet" />
		<script src="HtmlEditor/edit.js" type="text/javascript" charset="GB2312"></script>
    
    
</head>
<body>
    <form id="form1" runat="server">
    
    
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
    
    
    
    
    <div class="layTable" style="top: 0px">
            
             <div class="layHead">
                    <img id="Img1" class="ico1" runat="server" src="~/Images/icon/right.gif" alt="图标"/> 
                <div class="labelTit">
                    <asp:Label  ID="lblTit" runat="server" Text="帖子管理" Height="25px" Width="118px"></asp:Label>
                </div>
             </div>
    
    <table width=100% cellpadding=0 cellspacing=0 border=0 align=center>
    <tr>
    <td height=25>
    
    </td>
    </tr>
    <tr>
    <td align=center>
    <table width=80% cellpadding=2 cellspacing=1 border=0 class="px12">
        <tr>
            <td align="right" height="25" width="12%">
            </td>
            <td align="left" colspan="1">
                <asp:Label ID="lblErrorMsg" runat="server" ForeColor="Red" Width="501px"></asp:Label></td>
        </tr>
    <tr>
    <td width=12% height=25 align=right>
        标题：</td>
    <td align=left colspan="1"><input name="txTitle" type="text" id="txTitle" class="TxCss" style="width:500px;" runat="server" />
    <span id="RequiredFieldValidator1" style="color:Red;display:none;"></span>
        
    </td>
    </tr>
        <tr>
            <td align="right" height="25" width="12%">
                附件：</td>
            <td align="left" >
                <asp:FileUpload ID="FileUpload1" runat="server"/>
                &nbsp;&nbsp;
                <asp:Button ID="btnUpload" runat="server" Text="上传" Width="54px" OnClick="btnUpload_Click" />
                &nbsp;
                <asp:Label ID="lblMsg" runat="server" ForeColor="Red" Width="126px"></asp:Label></td>
        </tr>
        <tr>
            <td align="right" height="25" width="12%">
            </td>
            <td align="left">
                <asp:Panel ID="Panel1" runat="server" Height="50px" Visible="False" Width="125px">
                    &nbsp;
                    <table cellpadding="0">
                        <tr>
                            <td style="width: 100px">
                            </td>
                            <td style="width: 100px">
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
    <tr>
    <td align=right style="height: 379px">
        内容：</td>
    <td align=left valign="top" style="height: 379px" colspan="1"><table cellspacing="0" cellpadding="0" width="500px" border="1" style="border-collapse: collapse">
            <tr>
                <td align="left" style="height: 359px">
                    


<script language="javascript" type="text/javascript">
    var HtmlEditor_codeState=false;
</script>



<table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
        <td colspan="2">
            <div id="HtmlEditor_Toolbars" style="background-color: #F2F6FB;">
    <div style="height: 26px">
        &nbsp; <span>
            <img src="HtmlEditor/image/Aleft.gif" onclick="FormatText('Justifyleft', '')" style="cursor: hand;"
                alt="左对齐" onmouseover="this.style.background='#A9A9FA'" onmouseout="this.style.background=''" />
        </span>&nbsp;<span>
            <img src="HtmlEditor/image/Acenter.gif" border="0" alt="居中" onclick="FormatText('JustifyCenter', '')"
                style="cursor: hand;" onmouseover="this.style.background='#A9A9FA'" onmouseout="this.style.background=''" />
        </span>&nbsp;<span>
            <img src="HtmlEditor/image/Aright.gif" onclick="FormatText('JustifyRight', '')" style="cursor: hand;"
                alt="右对齐" onmouseover="this.style.background='#A9A9FA'" onmouseout="this.style.background=''" />
        </span>&nbsp;<span>
            <img src="HtmlEditor/image/list.gif" border="0" alt="项目符号" onclick="FormatText('InsertUnorderedList', '')"
                style="cursor: hand;" onmouseover="this.style.background='#A9A9FA'" onmouseout="this.style.background=''" />
        </span>&nbsp;<span>
            <img src="HtmlEditor/image/num.gif" alt="编号" border="0" onclick="FormatText('insertorderedlist', '')"
                style="cursor: hand;" onmouseover="this.style.background='#A9A9FA'" onmouseout="this.style.background=''" />
        </span>&nbsp;<span>
            <img src="HtmlEditor/image/outdent.gif" onclick="FormatText('Outdent', '')" style="cursor: hand;"
                alt="回退" onmouseover="this.style.background='#A9A9FA'" onmouseout="this.style.background=''" />
        </span>&nbsp;<span>
            <img src="HtmlEditor/image/indent.gif" border="0" alt="缩进" onclick="FormatText('indent', '')"
                style="cursor: hand;" onmouseover="this.style.background='#A9A9FA'" onmouseout="this.style.background=''" />
        </span>&nbsp;<span>
            <img src="HtmlEditor/image/url.gif" border="0" alt="超级链接" onclick="FormatText('createLink')"
                style="cursor: hand;" onmouseover="this.style.background='#A9A9FA'" onmouseout="this.style.background=''" />
        </span>&nbsp;<span>
            <img src="HtmlEditor/image/nourl.gif" border="0" alt="取消超级链接" onclick="FormatText('unLink')"
                style="cursor: hand;" onmouseover="this.style.background='#A9A9FA'" onmouseout="this.style.background=''" />
        </span>&nbsp;<span>
            <img src="HtmlEditor/image/htm.gif" border="0" style="cursor: hand;" alt="插入网页" language="javascript"
                onclick="iframe()" onmouseover="this.style.background='#A9A9FA'" onmouseout="this.style.background=''" />
        </span>&nbsp;<span>
            <img src="HtmlEditor/image/table.gif" border="0" style="cursor: hand;" alt="插入表格"
                language="javascript" onclick="fortable()" onmouseover="this.style.background='#A9A9FA'"
                onmouseout="this.style.background=''" />
        </span>&nbsp;<span>
            <img src="HtmlEditor/image/flash.gif" border="0" style="cursor: hand;" alt="插入FLASH"
                language="javascript" onclick="swf()" onmouseover="this.style.background='#A9A9FA'"
                onmouseout="this.style.background=''" />
        </span>&nbsp;<span>
            <img src="HtmlEditor/image/wmv.gif" border="0" style="cursor: hand;" alt="插入视频文件"
                language="javascript" onclick="wmv()" onmouseover="this.style.background='#A9A9FA'"
                onmouseout="this.style.background=''" />
        </span>&nbsp;<span>
            <img src="HtmlEditor/image/img.gif" border="0" style="cursor: hand;" alt="插入网上图片，支持格式为：gif、jpg、bmp"
                language="javascript" onclick="wzpic()" onmouseover="this.style.background='#A9A9FA'"
                onmouseout="this.style.background=''" />
        </span><span></span>
    </div>
    <div style="height: 26px">
        &nbsp; <span>
            <img src="HtmlEditor/image/selectall.gif" border="0" alt="全部选择" onclick="FormatText('selectall')"
                style="cursor: hand;" onmouseover="this.style.background='#A9A9FA'" onmouseout="this.style.background=''" />
        </span>&nbsp;&nbsp;<span>
            <img src="HtmlEditor/image/font.gif" border="0" alt="字体" onclick="ShowMenu('font',50)"
                style="cursor: hand;" onmouseover="this.style.background='#A9A9FA'" onmouseout="this.style.background=''" />
        </span>&nbsp;&nbsp;&nbsp;&nbsp;<span>
            <img src="HtmlEditor/image/fontsize.gif" border="0" alt="字体大小" onclick="ShowMenu('fontsize',230)"
                style="cursor: hand;" onmouseover="this.style.background='#A9A9FA'" onmouseout="this.style.background=''" />
        </span>&nbsp;&nbsp;<span>
            <img src="HtmlEditor/image/forecolor.gif" border="0" alt="字体颜色" onclick="selcolor('ForeColor')"
                style="cursor: hand;" onmouseover="this.style.background='#A9A9FA'" onmouseout="this.style.background=''" />
        </span>&nbsp;<span>
            <img src="HtmlEditor/image/BackColor.gif" border="0" alt="背景颜色" onclick="selcolor('BackColor')"
                style="cursor: hand;" onmouseover="this.style.background='#A9A9FA'" onmouseout="this.style.background=''" />
        </span>&nbsp;<span>
            <img src="HtmlEditor/image/bold.gif" alt="粗体" onclick="FormatText('bold', '')" style="cursor: hand;"
                onmouseover="this.style.background='#A9A9FA'" onmouseout="this.style.background=''" />
        </span>&nbsp;<span>
            <img src="HtmlEditor/image/italic.gif" alt="斜体" onclick="FormatText('italic', '')"
                style="cursor: hand;" onmouseover="this.style.background='#A9A9FA'" onmouseout="this.style.background=''" />
        </span>&nbsp;<span>
            <img src="HtmlEditor/image/underline.gif" alt="下划线" onclick="FormatText('underline', '')"
                style="cursor: hand;" onmouseover="this.style.background='#A9A9FA'" onmouseout="this.style.background=''" />
        </span>&nbsp;<span>
            <img src="HtmlEditor/image/sup.gif" border="0" alt="上标" onclick="FormatText('superscript')"
                style="cursor: hand;" onmouseover="this.style.background='#A9A9FA'" onmouseout="this.style.background=''" />
        </span>&nbsp;<span>
            <img src="HtmlEditor/image/sub.gif" border="0" alt="下标" onclick="FormatText('subscript')"
                style="cursor: hand;" onmouseover="this.style.background='#A9A9FA'" onmouseout="this.style.background=''" />
        </span>&nbsp;<span>
            <img src="HtmlEditor/image/clear.gif" border="0" alt="删除文字格式" onclick="FormatText('RemoveFormat')"
                style="cursor: hand;" onmouseover="this.style.background='#A9A9FA'" onmouseout="this.style.background=''" />
        </span>&nbsp;<span>
            <img src="HtmlEditor/image/line.gif" alt="普通水平线" border="0" onclick="FormatText('InsertHorizontalRule', '')"
                style="cursor: hand;" onmouseover="this.style.background='#A9A9FA'" onmouseout="this.style.background=''" />
        </span>&nbsp;<span>
            <img src="HtmlEditor/image/sline.gif" alt="特殊水平线" border="0" onclick="hr()" style="cursor: hand;"
                onmouseover="this.style.background='#A9A9FA'" onmouseout="this.style.background=''" />
        </span><span></span>
    </div>
    <div id="menuDiv" style="z-index: 1000; visibility: hidden; width: 1px; position: absolute;
        height: 1px; background-color: #B9CBF7">
    </div>
</div>

            <iframe id="message" marginwidth="0" marginheight="0" width="100%" height="250px"
                style="border-style: solid; border-width: 1px; border-color: Gray; border-bottom-width:0px;" frameborder="0">
            </iframe>
        </td>
    </tr>
    <tr style="background: #DCDCDC">
        <td style="width: 80%; height: 23px">
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td class="HtmlEditor_On" id="HtmlEditor_Design" onclick="if (HtmlEditor_codeState) {WBTB_setMode();}"
                        style="width: 40px;">
                        <img alt="设计" src="HtmlEditor/image/modeedit.gif" />
                    </td>
                    <td class="HtmlEditor_Off" id="HtmlEditor_Html" onclick="if (!HtmlEditor_codeState) {WBTB_setMode();}"
                        style="width: 40px">
                        <img alt="代码" src="HtmlEditor/image/modecode.gif" />
                    </td>
                    <td class="HtmlEditor_Off" id="HtmlEditor_View" onclick="WBTB_View('UTF-8');" style="width: 40px;">
                        <img alt="预览" src="HtmlEditor/image/modepreview.gif" />
                    </td>
                    <td>
                        &nbsp;提示:回车换行请用[Shift]+[Enter]</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </td>
        <td style="width: 20%">
            <a title="内容框增大" style="font-size: 15pt" onclick="document.getElementById('message').height=parseInt(document.getElementById('message').height)+290"
                href="#">
                <img alt="" height="20" src="HtmlEditor/image/jia.gif" width="20" style="border: 0" /></a>
            &nbsp;&nbsp; <a title="内容框减小" style="font-size: 15pt" onclick="if(parseInt(document.getElementById('message').height)>(300+85)){document.getElementById('message').height=parseInt(document.getElementById('message').height)-300}"
                href="#">
                <img alt="" height="20" src="HtmlEditor/image/jian.gif" width="20" style="border: 0" /></a>
        </td>
    </tr>
</table>
<input name="HtmlEditor1$HtmlEditorContent" type="hidden" id="HtmlEditor1_HtmlEditorContent" runat="server" />

<script language="javascript" type="text/javascript">
    function setContent()
    {
        if(HtmlEditor_codeState==true)
        {
            WBTB_setMode();
        }
        document.getElementById("HtmlEditor1_HtmlEditorContent").value = message.document.body.innerHTML ;
    }
	HtmlEditor_InitDocument("HtmlEditor1_HtmlEditorContent", "UTF-8");
</script>


                </td>
            </tr>
        </table>
        
    </td>
    </tr>
    <tr>
    <td colspan=2 style="height: 25px" align=center><input type="submit" name="bnSave" value="保 存" onclick="setContent()" class="BnCss" id="Submit1" runat="server" onserverclick="Submit1_ServerClick" />
        &nbsp; &nbsp; &nbsp;&nbsp;<asp:Button ID="Button1" runat="server" Text="修 改" CssClass="BnCss" OnClick="Button1_Click" />
        &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnReset" runat="server" CssClass="BnCss" OnClick="btnReset_Click"
            Text="重置" /></td>
    </tr>
    </table>
    </td>
    </tr>
    </table>
    
    </div>
    
    
    
    
    
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
function Reset1_onclick() {

}

// -->
</script>
    
    </form>
</body>
</html>
