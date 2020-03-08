/*---------------------------------------------------------------------------*\
|Subject: 在线编辑器|
|Version: 1.0 |
|Author:【weekzero】【星期零】|
\*---------------------------------------------------------------------------*/

//处理iframe中不使用实际页面
function HtmlEditor_InitDocument(hiddenid, charset)
{	
	if (charset!=null)
		WBTB_charset=charset;
	var WBTB_bodyTag="<html><head><link rel=stylesheet type=text/css href=HtmlEditor/SITE.css></head><BODY>";
	
	var WzEditor = message;
	var h=document.getElementById(hiddenid);
	WzEditor.document.designMode="On"
	WzEditor.document.open();
	WzEditor.document.write(WBTB_bodyTag);
	if (h.value!="")
	{
		WzEditor.document.write(h.value);
	}
	WzEditor.document.write("</BODY></html>");
	WzEditor.document.close();
	WzEditor.document.body.contentEditable = "True";
	WzEditor.document.charset=WBTB_charset;
	
	WBTB_bLoad=true;
}		

//处理查看html代码
var HtmlEditor_codeState=false;
function WBTB_setMode()
{
	HtmlEditor_codeState=!HtmlEditor_codeState;
	WBTB_setTab();
	
	var WzHtmlEditor_Toolbars = document.getElementById("HtmlEditor_Toolbars");	
	var WzEditor = document.getElementById("message");
	if (HtmlEditor_codeState) 
	{
		WzHtmlEditor_Toolbars.style.display="none";
		WzEditor.height=parseInt(WzEditor.height)+52;
		setMode(true);	
	} 
	else
	{
		WzHtmlEditor_Toolbars.style.display="";
		WzEditor.height=parseInt(WzEditor.height)-52;
		setMode(false);
	}
}

//预览
function WBTB_View(charset)
{
	var WzContent;
	if (HtmlEditor_codeState)
	{
		WzContent = message.document.body.innerText;
	}
	else
	{
		WzContent = message.document.body.innerHTML;
	}
	
	var bodyTag = "<html><head><link rel=stylesheet type=text/css href=HtmlEditor/SITE.css></head><BODY>";	
	var bodyend = "</body></html>";
	var preWin;
		
	preWin=window.open('preview','','left=0,top=0,width=550,height=400,resizable=1,scrollbars=1, status=1, toolbar=1, menubar=0');
	preWin.document.open();
	preWin.document.write(bodyTag);
	preWin.document.write(WzContent);
	preWin.document.write(bodyend);
	preWin.document.close();
	preWin.document.title="Preview";
	preWin.document.charset=charset;
}

function WBTB_setTab()
{
	//html和design按钮的样式更改
	var mhtml=document.getElementById("HtmlEditor_Html");
	var mdesign=document.getElementById("HtmlEditor_Design");
	if (HtmlEditor_codeState)
	{
		mhtml.className="HtmlEditor_On";
		mdesign.className="HtmlEditor_Off";
	}else{
		mhtml.className="HtmlEditor_Off";
		mdesign.className="HtmlEditor_On";
	}
}

//返回内容
function GetValue()
{
	return message.document.body.innerHTML;	
}
//
///////////////////////////////////////////////////////////////////////////////////
			
function fortable()
{
	var WzArr = showModalDialog("HtmlEditor/table.htm", "", "dialogWidth:25em; dialogHeight:12em; status:0");
	var WzEditor = message;
	
	if(WzArr != null){
		var WzStr = WzArr.split("*");
		var WzRow = WzStr[0];
		var WzCol = WzStr[1];
		
		var WzTemp;
		
		WzTemp = "<table style='WIDTH: "+WzStr[2]+"px;' border='"+WzStr[3]+"' bgcolor='"+WzStr[6]+"' cellspacing='"+WzStr[5]+"' cellpadding='"+WzStr[4]+"'>";
		
		for(i = 1;i <= WzRow;i++)
		{
			WzTemp = WzTemp + "<tr>";
			
			for(j = 1;j <= WzCol;j++)
			{
				WzTemp = WzTemp + "<td>&nbsp;</td>";
			}
			WzTemp = WzTemp + "</tr>";
		}
		WzTemp = WzTemp + "</table>";
				
		WzEditor.focus();
		edit = WzEditor.document.selection.createRange(); 
        edit.pasteHTML(WzTemp); 
	}
	else WzEditor.focus();
}

function swf()
{
	var WzArr = showModalDialog("HtmlEditor/flash.htm", "", "dialogWidth:30em; dialogHeight:10em; status:0;help:0");
	var WzEditor = message;

	if (WzArr != null){
		
		var WzStr = WzArr.split("*");
		var WzPath = WzStr[0];
		var WzRow = WzStr[0];
		var WzCol = WzStr[1];
		
		var WzTemp;
		
		WzTemp = "<object classid='clsid:D27CDB6E-AE6D-11cf-96B8-444553540000'codebase='http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=5,0,0,0' width=" + WzRow + " height=" + WzCol + "><param name=movie value=" + WzPath + "><param name=quality value=high><embed src=" + WzPath + " pluginspage='http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash' type='application/x-shockwave-flash' width=" + WzRow + " height=" + WzCol + "></embed></object>";
		
		WzEditor.focus();
        edit = WzEditor.document.selection.createRange(); 
        edit.pasteHTML(WzTemp); 
	}
	else WzEditor.focus();
}

/*----------------------加入的视频文件所选择的播放工具为该类型文件在客户端的默认打开方式的播放器--------------------------*/
function wmv()
{
	var WzArr = showModalDialog("HtmlEditor/media.htm", "", "dialogWidth:30em; dialogHeight:10em; status:0;help:0");
	var WzEditor = message;

	if (WzArr != null){
		var WzStr= WzArr.split("*");
		var WzPath = WzStr[0];
		var WzRow = WzStr[1];
		var WzCol = WzStr[2];
		
		var WzTemp;
		
		WzTemp = "<EMBED src='" + WzPath + "' width='" + WzRow + "' height='" + WzCol + "' type='audio/x-pn-realaudio-plugin' autostart='true' controls='IMAGEWINDOW,ControlPanel,StatusBar' console='Clip1'></EMBED>";
				
		WzEditor.focus();
        edit = WzEditor.document.selection.createRange(); 
        edit.pasteHTML(WzTemp); 
	}
	else WzEditor.focus();
}

function selcolor(command)
{
    var WzArr = showModalDialog("HtmlEditor/selcolor.htm", "", "dialogWidth:25em; dialogHeight:18em; status:0");
	var WzEditor = message;
	
	if(WzArr != null){
		var WzStr = WzArr.split("*");
		var Wzcol = WzStr[0];
		
		WzEditor.focus();
	    FormatText(command, Wzcol)
	}
	else WzEditor.focus();
}

function scolor(obj)
{
	obj.style.backgroundColor="";
}
function rcolor(obj)
{
	obj.style.backgroundColor="#E1F4EE";
	obj.style.cursor = "hand";
}
function WzFormat(what,opt)
{
    var WzEditor = message;
		
	if (opt=="removeFormat")
	{
		what=opt;
		opt=null;
	}
	WzEditor.focus();
	if (opt==null)
	{
		WzEditor.document.execCommand(what);
	}else{
		WzEditor.document.execCommand(what,"",opt);
	}
	WzEditor.focus();
}
function HideMenu() 
{
	var mX;
	var mY;
	var vDiv;
	var mDiv;
	if (isvisible == true)
	{
		vDiv = document.all("menuDiv");
		mX = window.event.clientX + document.body.scrollLeft;
		mY = window.event.clientY + document.body.scrollTop;
		if ((mX-5 < parseInt(vDiv.style.left)) || (mX > parseInt(vDiv.style.left)+vDiv.offsetWidth) || (mY-20 < parseInt(vDiv.style.top)-h) || (mY > parseInt(vDiv.style.top)+vDiv.offsetHeight))
		{
			vDiv.style.visibility = "hidden";
			isvisible = false;
		}
	}
}
function ShowMenu(Flag,tWidth) {

    var menu_font="<table width='100%' cellspacing='0' cellpadding='2' >";
    menu_font+="<tr><a href='javascript:WzFormat(\'fontname\',\"宋体\")'><td align=center onmouseout='scolor(this)' onmouseover='rcolor(this)'><font face=宋体 size=3>宋体</font></td></a></tr>";
    menu_font+="<tr><a href='javascript:WzFormat(\"fontname\",\"黑体\")'><td align=center onmouseout='scolor(this)' onmouseover='rcolor(this)'><font face=黑体 size=3>黑体</font></td></a></tr>";
    menu_font+="<tr><a href='javascript:WzFormat(\"fontname\",\"楷体_GB2312\")'><td align=center onmouseout='scolor(this)' onmouseover='rcolor(this)'><font face=楷体_GB2312 size=3>楷体</font></td></a></tr>";
    menu_font+="<tr><a href='javascript:WzFormat(\"fontname\",\"仿宋_GB2312\")'><td align=center onmouseout='scolor(this)' onmouseover='rcolor(this)'><font face=仿宋_GB2312 size=3>仿宋</font></td></a></tr>";
    menu_font+="<tr><a href='javascript:WzFormat(\"fontname\",\"隶书\")'><td align=center onmouseout='scolor(this)' onmouseover='rcolor(this)'><font face=隶书 size=3>隶书</font></td></a></tr>";
    menu_font+="<tr><a href='javascript:WzFormat(\"fontname\",\"幼圆\")'><td align=center onmouseout='scolor(this)' onmouseover='rcolor(this)'><font face=幼圆 size=3>幼圆</font></td></a></tr>";
    menu_font+="<tr><a href='javascript:WzFormat(\"fontname\",\"Arial\")'><td align=center onmouseout='scolor(this)' onmouseover='rcolor(this)'><font face=Arial size=3>Arial</font></td></a></tr>";
    menu_font+="</table>";
    
    var menu_fontsize="<table width='100%' cellspacing='0' cellpadding='2' >";
    menu_fontsize+="<tr onmouseout='scolor(this)' onmouseover='rcolor(this)'><a href='javascript:WzFormat(\"fontsize\",\"1\")'><td align=center><font size=1>AaBb...(1)</font></td></a></tr>";
    menu_fontsize+="<tr onmouseout='scolor(this)' onmouseover='rcolor(this)'><a href='javascript:WzFormat(\"fontsize\",\"2\")'><td align=center><font size=2>AaBb...(2)</font></td></a></tr>";
    menu_fontsize+="<tr onmouseout='scolor(this)' onmouseover='rcolor(this)'><a href='javascript:WzFormat(\"fontsize\",\"3\")'><td align=center><font size=3>AaBb...(3)</font></td></a></tr>";
    menu_fontsize+="<tr onmouseout='scolor(this)' onmouseover='rcolor(this)'><a href='javascript:WzFormat(\"fontsize\",\"4\")'><td align=center><font size=4>AaBb...(4)</font></td></a></tr>";
    menu_fontsize+="<tr onmouseout='scolor(this)' onmouseover='rcolor(this)'><a href='javascript:WzFormat(\"fontsize\",\"5\")'><td align=center><font size=5>AaBb...(5)</font></td></a></tr>";
    menu_fontsize+="<tr onmouseout='scolor(this)' onmouseover='rcolor(this)'><a href='javascript:WzFormat(\"fontsize\",\"6\")'><td align=center><font size=6>AaBb...(6)</font></td></a></tr>";
    menu_fontsize+="<tr onmouseout='scolor(this)' onmouseover='rcolor(this)'><a href='javascript:WzFormat(\"fontsize\",\"7\")'><td align=center><font size=7>AaBb...(7)</font></td></a></tr>";
    menu_fontsize+="</table>";

    var content;
    if(Flag=="font")    
        content = menu_font;
    else if(Flag=="fontsize")
        content = menu_fontsize;
    
	vSrc = window.event.srcElement;
	vMnuCode = "<table id='submenu' cellspacing=1 cellpadding=3 style='width:"+tWidth+"' onmouseout='HideMenu()'><tr height=23><td nowrap align=left>" + content + "</td></tr></table>";

	h = vSrc.offsetHeight;
	w = vSrc.offsetWidth;
	l = vSrc.offsetLeft + 10;
	t = vSrc.offsetTop + h + 15;
	vParent = vSrc.offsetParent;
	while (vParent.tagName.toUpperCase() != "BODY")
	{
		l += vParent.offsetLeft;
		t += vParent.offsetTop;
		vParent = vParent.offsetParent;
	}

	menuDiv.innerHTML = vMnuCode;
	menuDiv.style.top = t;
	menuDiv.style.left = l;
	menuDiv.style.visibility = "visible";
	isvisible = true;
}

function wzpic()
{
	var WzArr = showModalDialog("HtmlEditor/pic.htm", "", "dialogWidth:36em; dialogHeight:32em; status:0;help:0");
	var WzEditor = message;

	if (WzArr != null){
		var WzStr= WzArr.split("*");
		var WzA = WzStr[0];
		var WzB = WzStr[1];
		
		var WzTemp;

		WzTemp = "<img src='" + WzA + "' onclick='window.open(this.src)' style='cursor: hand;' />"; //width='" + WzB + "'
		
		WzEditor.focus();		
		edit = WzEditor.document.selection.createRange(); 
        edit.pasteHTML(WzTemp); 
	}
	else WzEditor.focus();
}

function iframe()
{
	var WzArr = showModalDialog("HtmlEditor/iframe.htm", "", "dialogWidth:30em; dialogHeight:13em; status:0;help:0");
    var WzEditor = message;
	
	if (WzArr != null){	
		var WzStr= WzArr.split("*");
		var WzA = WzStr[0];
		var WzB = WzStr[1];
		var WzC = WzStr[2];
		var WzD = WzStr[3];
		var WzE = WzStr[4];
		var WzF = WzStr[5];
		var WzG = WzStr[6];
		
		var WzTemp;

		WzTemp="<iframe src='" + WzA + "' scrolling=" + WzB + " frameborder=" + WzC;
		if(WzD != '')WzTemp += " marginheight=" + WzD;
		if(WzE != '')WzTemp += " marginwidth=" + WzE;
		if(WzF != '')WzTemp += " width=" + WzF;
		if(WzG != '')WzTemp += " height=" + WzG;
		WzTemp = WzTemp + "></iframe>";
				
		WzEditor.focus();
        edit = WzEditor.document.selection.createRange(); 
        edit.pasteHTML(WzTemp); 
	}
	else WzEditor.focus();
}

function hr()
{
	var WzArr = showModalDialog("HtmlEditor/hr.htm", "", "dialogWidth:30em; dialogHeight:12em; status:0;help:0");
	var WzEditor = message;
	
	if (WzArr != null){
		var WzStr= WzArr.split("*");
		var WzA = WzStr[0];
		var WzB = WzStr[1];
		var WzC = WzStr[2];
		var WzD = WzStr[3];
		var WzE = WzStr[4];
		
		var WzTemp;
		
		WzTemp = "<hr color='" + WzA + "' size=" + WzB + "' " + WzC + " align=" + WzD + " width=" + WzE + ">";
		
		WzEditor.focus();
        edit = WzEditor.document.selection.createRange(); 
        edit.pasteHTML(WzTemp); 
	}
	else WzEditor.focus();
}

function IsDigit()
{
	return ((event.keyCode >= 48) && (event.keyCode <= 57));
}

function FormatText(command, option)
{	
	var WzEditor = message;
	
	WzEditor.focus();
	WzEditor.document.execCommand(command, true, option);
}

function ResetForm(){

	if (window.confirm('确认要清空对话框内容?')){
	 	frames.message.document.body.innerHTML = ''; 
	 	return true;
	 } 
	 return false;		
}

function openWin(theURL,winName,features) {
	window.open(theURL,winName,features);
}

function setMode(newMode)
{
	bTextMode = newMode;
	var cont;
	if (bTextMode) {
		cleanHtml();
		cleanHtml();
	
		cont=message.document.body.innerHTML;
		message.document.body.innerText=cont;
	} 
	else
	{
		cont=message.document.body.innerText;
		message.document.body.innerHTML=cont;
	}
	message.focus();
}

function cleanHtml()
{
	var fonts = message.document.body.all.tags("FONT");
	var curr;
	for (var i = fonts.length - 1; i >= 0; i--) 	
	{
		curr = fonts[i];
		if (curr.style.backgroundColor == "#ffffff") curr.outerHTML	= curr.innerHTML;
	}
}
