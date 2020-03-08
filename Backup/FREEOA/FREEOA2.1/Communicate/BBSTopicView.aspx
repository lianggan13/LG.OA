<%@ page language="C#" autoeventwireup="true" inherits="Communicate_TopicView, App_Web_2yi7hpnw" validaterequest="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>查看帖子</title>
    
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <link href="../css.css" rel="stylesheet" type="text/css" />
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
                    <asp:Label  ID="lblTit" runat="server" Text="查看帖子" Height="25px" Width="118px"></asp:Label>
                </div>
             </div>
            
            <div class="layBody">
               
                <div class="layData">
                    <table width="100%" style="text-align:left;">
                        <tr>
                            <td style="width: 100%">
                                <table class="bbs_topic" cellpadding="0" cellspacing="0">
                                    <tr class="bbs_topviw">
                                        <td style="width: 100px; height: 65%">
                                            <asp:Label ID="lblFloor" runat="server" ForeColor="RoyalBlue"></asp:Label></td>
                                        <td style="text-align:center; height:16px">
                                            <asp:Label ID="lblTitle" runat="server"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 100px">
                                            作者：<asp:Label ID="lblUser" runat="server" Width="131px"></asp:Label></td>
                                        <td style="width: 65%" rowspan="4">
                                            <asp:Label ID="lblContent" runat="server" Height="99.9%" Width="99.9%"><hr/><br/></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 100px">
                                            发布时间：<asp:Label ID="lblSendT" runat="server" Width="131px"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 100px">
                                            浏览次数：<asp:Label ID="lblCC" runat="server" Width="131px"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 100px">
                                            回复次数：<asp:Label ID="lblRC" runat="server" Width="131px"></asp:Label></td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 100%">
                                <asp:GridView ID="GridView2" runat="server" Width="100%" AutoGenerateColumns="False">
                                    <Columns>
                                        <asp:TemplateField>
                                            <ItemTemplate><table class="bbs_topic" cellpadding="0" cellspacing="0">
                                                <tr class="bbs_topviw">
                                                    <td style="width: 100px; height: 65%">
                                                        <asp:Label ID="lblFloor" runat="server" ForeColor="RoyalBlue"></asp:Label></td>
                                                    <td style="text-align:center; height:16px; color: #000000;">
                                                        <asp:Label ID="lblTitle" runat="server"></asp:Label></td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 100px">
                                                        作者：<asp:Label ID="lblUser" runat="server" Width="131px"></asp:Label></td>
                                                    <td style="width: 65%" rowspan="2">
                                                        <asp:Label ID="lblContent" runat="server" Height="99.9%" Width="99.9%"><hr/><br/></asp:Label></td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 100px">
                                                        发布时间：<asp:Label ID="lblSendT" runat="server" Width="131px"></asp:Label></td>
                                                </tr>
                                            </table>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>
                                </asp:GridView>
                            </td>
                        </tr>
                    </table>
              
              </div>
              
              
            </div>
     <table align="center" border="0" cellpadding="0" cellspacing="0" width="100%">
         <tr>
             <td height="25">
                 <div style="text-align: center">
                     <table cellpadding="0" cellspacing="0" style="width: 50%">
                         <tr>
                             <td colspan="3" style="height: 16px">
                             </td>
                         </tr>
                         <tr>
                             <td colspan="3">
                                 <asp:Label ID="lblsum" runat="server" Width="240px"></asp:Label></td>
                         </tr>
                         <tr>
                             <td colspan="3" style="height: 16px">
                                 <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Small" Text="回　复　此　贴"></asp:Label></td>
                         </tr>
                     </table>
                 </div>
             </td>
         </tr>
         <tr>
             <td align="center">
                 <table border="0" cellpadding="2" cellspacing="1" class="px12" width="80%">
                     <tr>
                         <td align="right" height="25" width="12%">
                         </td>
                         <td align="left" colspan="1">
                             <asp:Label ID="lblErrorMsg" runat="server" ForeColor="Red" Width="501px"></asp:Label></td>
                     </tr>
                     <tr>
                         <td align="right" height="25" width="12%">
                             标题：</td>
                         <td align="left" colspan="1">
                             <input id="txTitle" runat="server" class="TxCss" name="txTitle" style="width: 500px"
                                 type="text" />
                             <span id="RequiredFieldValidator1" style="display: none; color: red"></span>
                         </td>
                     </tr>
                     <tr>
                         <td align="right" style="height: 379px">
                             内容：</td>
                         <td align="left" colspan="1" style="height: 379px" valign="top">
                             <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse"
                                 width="500">
                                 <tr>
                                     <td align="left" style="height: 359px">

                                         <script language="javascript" type="text/javascript">
    var HtmlEditor_codeState=false;
                                         </script>

                                         <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                             <tr>
                                                 <td colspan="2">
                                                     <div id="HtmlEditor_Toolbars" style="background-color: #f2f6fb">
                                                         <div style="height: 26px">
                                                             &nbsp; <span>
                                                                 <img alt="左对齐" onclick="FormatText('Justifyleft', '')" onmouseout="this.style.background=''"
                                                                     onmouseover="this.style.background='#A9A9FA'" src="HtmlEditor/image/Aleft.gif"
                                                                     style="cursor: hand" />
                                                             </span>&nbsp;<span>
                                                                 <img alt="居中" border="0" onclick="FormatText('JustifyCenter', '')" onmouseout="this.style.background=''"
                                                                     onmouseover="this.style.background='#A9A9FA'" src="HtmlEditor/image/Acenter.gif"
                                                                     style="cursor: hand" />
                                                             </span>&nbsp;<span>
                                                                 <img alt="右对齐" onclick="FormatText('JustifyRight', '')" onmouseout="this.style.background=''"
                                                                     onmouseover="this.style.background='#A9A9FA'" src="HtmlEditor/image/Aright.gif"
                                                                     style="cursor: hand" />
                                                             </span>&nbsp;<span>
                                                                 <img alt="项目符号" border="0" onclick="FormatText('InsertUnorderedList', '')" onmouseout="this.style.background=''"
                                                                     onmouseover="this.style.background='#A9A9FA'" src="HtmlEditor/image/list.gif"
                                                                     style="cursor: hand" />
                                                             </span>&nbsp;<span>
                                                                 <img alt="编号" border="0" onclick="FormatText('insertorderedlist', '')" onmouseout="this.style.background=''"
                                                                     onmouseover="this.style.background='#A9A9FA'" src="HtmlEditor/image/num.gif"
                                                                     style="cursor: hand" />
                                                             </span>&nbsp;<span>
                                                                 <img alt="回退" onclick="FormatText('Outdent', '')" onmouseout="this.style.background=''"
                                                                     onmouseover="this.style.background='#A9A9FA'" src="HtmlEditor/image/outdent.gif"
                                                                     style="cursor: hand" />
                                                             </span>&nbsp;<span>
                                                                 <img alt="缩进" border="0" onclick="FormatText('indent', '')" onmouseout="this.style.background=''"
                                                                     onmouseover="this.style.background='#A9A9FA'" src="HtmlEditor/image/indent.gif"
                                                                     style="cursor: hand" />
                                                             </span>&nbsp;<span>
                                                                 <img alt="超级链接" border="0" onclick="FormatText('createLink')" onmouseout="this.style.background=''"
                                                                     onmouseover="this.style.background='#A9A9FA'" src="HtmlEditor/image/url.gif"
                                                                     style="cursor: hand" />
                                                             </span>&nbsp;<span>
                                                                 <img alt="取消超级链接" border="0" onclick="FormatText('unLink')" onmouseout="this.style.background=''"
                                                                     onmouseover="this.style.background='#A9A9FA'" src="HtmlEditor/image/nourl.gif"
                                                                     style="cursor: hand" />
                                                             </span>&nbsp;<span>
                                                                 <img alt="插入网页" border="0" language="javascript" onclick="iframe()" onmouseout="this.style.background=''"
                                                                     onmouseover="this.style.background='#A9A9FA'" src="HtmlEditor/image/htm.gif"
                                                                     style="cursor: hand" />
                                                             </span>&nbsp;<span>
                                                                 <img alt="插入表格" border="0" language="javascript" onclick="fortable()" onmouseout="this.style.background=''"
                                                                     onmouseover="this.style.background='#A9A9FA'" src="HtmlEditor/image/table.gif"
                                                                     style="cursor: hand" />
                                                             </span>&nbsp;<span>
                                                                 <img alt="插入FLASH" border="0" language="javascript" onclick="swf()" onmouseout="this.style.background=''"
                                                                     onmouseover="this.style.background='#A9A9FA'" src="HtmlEditor/image/flash.gif"
                                                                     style="cursor: hand" />
                                                             </span>&nbsp;<span>
                                                                 <img alt="插入视频文件" border="0" language="javascript" onclick="wmv()" onmouseout="this.style.background=''"
                                                                     onmouseover="this.style.background='#A9A9FA'" src="HtmlEditor/image/wmv.gif"
                                                                     style="cursor: hand" />
                                                             </span>&nbsp;<span>
                                                                 <img alt="插入网上图片，支持格式为：gif、jpg、bmp" border="0" language="javascript" onclick="wzpic()"
                                                                     onmouseout="this.style.background=''" onmouseover="this.style.background='#A9A9FA'"
                                                                     src="HtmlEditor/image/img.gif" style="cursor: hand" />
                                                             </span><span></span>
                                                         </div>
                                                         <div style="height: 26px">
                                                             &nbsp; <span>
                                                                 <img alt="全部选择" border="0" onclick="FormatText('selectall')" onmouseout="this.style.background=''"
                                                                     onmouseover="this.style.background='#A9A9FA'" src="HtmlEditor/image/selectall.gif"
                                                                     style="cursor: hand" />
                                                             </span>&nbsp;&nbsp;<span>
                                                                 <img alt="字体" border="0" onclick="ShowMenu('font',50)" onmouseout="this.style.background=''"
                                                                     onmouseover="this.style.background='#A9A9FA'" src="HtmlEditor/image/font.gif"
                                                                     style="cursor: hand" />
                                                             </span>&nbsp; &nbsp;&nbsp;<span>
                                                                 <img alt="字体大小" border="0" onclick="ShowMenu('fontsize',230)" onmouseout="this.style.background=''"
                                                                     onmouseover="this.style.background='#A9A9FA'" src="HtmlEditor/image/fontsize.gif"
                                                                     style="cursor: hand" />
                                                             </span>&nbsp;&nbsp;<span>
                                                                 <img alt="字体颜色" border="0" onclick="selcolor('ForeColor')" onmouseout="this.style.background=''"
                                                                     onmouseover="this.style.background='#A9A9FA'" src="HtmlEditor/image/forecolor.gif"
                                                                     style="cursor: hand" />
                                                             </span>&nbsp;<span>
                                                                 <img alt="背景颜色" border="0" onclick="selcolor('BackColor')" onmouseout="this.style.background=''"
                                                                     onmouseover="this.style.background='#A9A9FA'" src="HtmlEditor/image/BackColor.gif"
                                                                     style="cursor: hand" />
                                                             </span>&nbsp;<span>
                                                                 <img alt="粗体" onclick="FormatText('bold', '')" onmouseout="this.style.background=''"
                                                                     onmouseover="this.style.background='#A9A9FA'" src="HtmlEditor/image/bold.gif"
                                                                     style="cursor: hand" />
                                                             </span>&nbsp;<span>
                                                                 <img alt="斜体" onclick="FormatText('italic', '')" onmouseout="this.style.background=''"
                                                                     onmouseover="this.style.background='#A9A9FA'" src="HtmlEditor/image/italic.gif"
                                                                     style="cursor: hand" />
                                                             </span>&nbsp;<span>
                                                                 <img alt="下划线" onclick="FormatText('underline', '')" onmouseout="this.style.background=''"
                                                                     onmouseover="this.style.background='#A9A9FA'" src="HtmlEditor/image/underline.gif"
                                                                     style="cursor: hand" />
                                                             </span>&nbsp;<span>
                                                                 <img alt="上标" border="0" onclick="FormatText('superscript')" onmouseout="this.style.background=''"
                                                                     onmouseover="this.style.background='#A9A9FA'" src="HtmlEditor/image/sup.gif"
                                                                     style="cursor: hand" />
                                                             </span>&nbsp;<span>
                                                                 <img alt="下标" border="0" onclick="FormatText('subscript')" onmouseout="this.style.background=''"
                                                                     onmouseover="this.style.background='#A9A9FA'" src="HtmlEditor/image/sub.gif"
                                                                     style="cursor: hand" />
                                                             </span>&nbsp;<span>
                                                                 <img alt="删除文字格式" border="0" onclick="FormatText('RemoveFormat')" onmouseout="this.style.background=''"
                                                                     onmouseover="this.style.background='#A9A9FA'" src="HtmlEditor/image/clear.gif"
                                                                     style="cursor: hand" />
                                                             </span>&nbsp;<span>
                                                                 <img alt="普通水平线" border="0" onclick="FormatText('InsertHorizontalRule', '')" onmouseout="this.style.background=''"
                                                                     onmouseover="this.style.background='#A9A9FA'" src="HtmlEditor/image/line.gif"
                                                                     style="cursor: hand" />
                                                             </span>&nbsp;<span>
                                                                 <img alt="特殊水平线" border="0" onclick="hr()" onmouseout="this.style.background=''"
                                                                     onmouseover="this.style.background='#A9A9FA'" src="HtmlEditor/image/sline.gif"
                                                                     style="cursor: hand" />
                                                             </span><span></span>
                                                         </div>
                                                         <div id="menuDiv" style="z-index: 1000; visibility: hidden; width: 1px; position: absolute;
                                                             height: 1px; background-color: #b9cbf7">
                                                         </div>
                                                     </div>
                                                     <iframe id="message" frameborder="0" height="250" marginheight="0" marginwidth="0"
                                                         style="border-right: gray 1px solid; border-top: gray 1px solid; border-left: gray 1px solid;
                                                         border-bottom: gray 0px solid" width="100%"></iframe>
                                                 </td>
                                             </tr>
                                             <tr style="background: #dcdcdc">
                                                 <td style="width: 80%; height: 23px">
                                                     <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                                         <tr>
                                                             <td id="HtmlEditor_Design" class="HtmlEditor_On" onclick="if (HtmlEditor_codeState) {WBTB_setMode();}"
                                                                 style="width: 40px">
                                                                 <img alt="设计" src="HtmlEditor/image/modeedit.gif" />
                                                             </td>
                                                             <td id="HtmlEditor_Html" class="HtmlEditor_Off" onclick="if (!HtmlEditor_codeState) {WBTB_setMode();}"
                                                                 style="width: 40px">
                                                                 <img alt="代码" src="HtmlEditor/image/modecode.gif" />
                                                             </td>
                                                             <td id="HtmlEditor_View" class="HtmlEditor_Off" onclick="WBTB_View('UTF-8');" style="width: 40px">
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
                                                     <a href="#" onclick="document.getElementById('message').height=parseInt(document.getElementById('message').height)+290"
                                                         style="font-size: 15pt" title="内容框增大">
                                                         <img alt="" height="20" src="HtmlEditor/image/jia.gif" style="border-right: 0px;
                                                             border-top: 0px; border-left: 0px; border-bottom: 0px" width="20" /></a>
                                                     &nbsp;&nbsp; <a href="#" onclick="if(parseInt(document.getElementById('message').height)>(300+85)){document.getElementById('message').height=parseInt(document.getElementById('message').height)-300}"
                                                         style="font-size: 15pt" title="内容框减小">
                                                         <img alt="" height="20" src="HtmlEditor/image/jian.gif" style="border-right: 0px;
                                                             border-top: 0px; border-left: 0px; border-bottom: 0px" width="20" /></a>
                                                 </td>
                                             </tr>
                                         </table>
                                         <input id="HtmlEditor1_HtmlEditorContent" runat="server" name="HtmlEditor1$HtmlEditorContent"
                                             type="hidden" />

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
                         <td align="center" colspan="2" style="height: 25px">
                             <input id="Submit1" runat="server" class="BnCss" name="bnSave" onclick="setContent()"
                                 onserverclick="Submit1_ServerClick" type="submit" value="回复" />
                             &nbsp; &nbsp; &nbsp;&nbsp;
                             <asp:Button ID="btnBack" runat="server" CssClass="BnCss" OnClick="btnReset_Click"
                                 Text="返回" /></td>
                     </tr>
                 </table>
             </td>
         </tr>
     </table>
     <div>
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
            
        </div>


    </form>
</body>
</html>
