<%@ page language="C#" autoeventwireup="true" inherits="top, App_Web_dw6csvel" %>


<html xmlns="http://www.w3.org/1999/xhtml" >
<head><title>
	�ޱ���ҳ
</title><link href="css.css" type="text/css" rel="stylesheet" />
		
		
    <script language="JavaScript" type="text/javascript">	
    function ComfirmExit(action)
    {
	    if(action==1)
	    {
		    myconfirm = confirm("ȷʵҪ�رմ���,�˳�OAϵͳ��");
		    if (myconfirm==true)
		    {
			    top.location.href="logout.aspx?Action=1";
		    }
	    }
	    if(action==2)
	    {
		    myconfirm = confirm("ȷʵҪ���µ�½��");
		    if (myconfirm==true)
		    {
			    top.location.href="logout.aspx?Action=2";
		    }
    		
	    }
    }
	</script>
		
	<script language="javascript" type="text/javascript">
		function Show(url,urls)
		{
		     
		        
		        top.dir.location=url;
		        top.main.location=urls;
		        
		}
		
	</script>
	<script language="javascript">

			function showtime()
			{
			var ary = new Array(
						"������",
						"����һ",
						"���ڶ�",
						"������",
						"������",
						"������",
						"������");
				time=new Date();
				syear=time.getYear();
				smonth=time.getMonth()+1;
				sday=time.getDate();
				sweek=time.getDay();
				h=time.getHours();
				m=time.getMinutes();
				s=time.getSeconds();
				var sminute;
				if(m<10)
				  sminute="0"+m;
				else
				  sminute=m;
				tip.innerText=" "+syear+"��"+smonth+"��"+sday+"�� "+ary[sweek]+" "+h+":"+sminute;
				setTimeout("showtime()",1000);
			}
    </script>

<style type="text/css">
	.Menu1_0 { background-color:white;visibility:hidden;display:none;position:absolute;left:0px;top:0px; }
	.Menu1_1 { color:Black;font-family:Verdana;text-decoration:none; }
	.Menu1_2 { color:Black;background-color:Transparent;font-family:Verdana;width:100%; }
	.Menu1_3 {  }
	.Menu1_4 { padding:2px 5px 2px 5px; }
	.Menu1_5 { padding:0px 2px 0px 2px; }
	.Menu1_6 {  }
	.Menu1_7 { padding:2px 5px 2px 5px; }
	.Menu1_8 { background-color:#C3D5FD; }
	.Menu1_9 { color:Black; }
	.Menu1_10 {        height: 19px;
    }
	.Menu1_11 {  }
	.Menu1_12 { color:Black; }
	.Menu1_13 { background-color:#7DA3EF; }
	.Menu1_14 {  }
	.Menu1_15 { background-color:#7DA3EF; }
	.Menu1_16 { color:Black; }
	.Menu1_17 {  }
	.Menu1_18 { color:Black; }
	.Menu1_19 { color:Black;background-color:#7DA3EF; }
	.Menu1_20 { color:Black; }
	.Menu1_21 { color:Black;background-color:#7DA3EF; }

    .style1
    {
        font-family: Gautami;
        font-size:;
        font-style: italic;
        font-weight: bold;
    }
    .style2
    {
        font-size: large;
    }
    .style3
    {
        font-family: ������κ;
        font-style: italic;
        font-weight: bold;
        color: #000099;
    }
    .style4
    {
        color: #FFFFFF;
        font-size: medium;
    }

    </style></head>
<body onLoad="showtime()" style="margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;">
    <form name="form1"  runat="server" id="form1">
<div>

</div>

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

     <table style="height:100%" cellspacing="0"  cellpadding="0" width="100%" border="0">
				<tr>
                <td valign="top" width="100%" style="height: 60px">
                    <table width="100%"  border="0" cellspacing="0" cellpadding="0">
                      <tr valign="top">
                        <td ><table width="100%"  border="0" cellpadding="0" cellspacing="0" background="images/bk1.gif">
                          <tr>
                            <td width="700" class="style1" valign="bottom">&nbsp;&nbsp; <span class="style4">
                                Witlink FreeOA V2.1</span></td>
                            <td align="right" rowspan="2"><table width="100%"  border="0" cellspacing="1" cellpadding="1">
                              <tr>
                                <td style="width:40%"><marquee scrollamount="2"><%=Session["username"].ToString() %>,��ӭ��!</marquee></td>
								<td align="left" style="width:60%"><div id="tip"></div></td>
                              </tr>
							  <tr>
							  <td align="right"colspan="2">
                                  &nbsp;<table width="60%" cellpadding="0"  cellspacing="0" border="0">
							  <tr>
                                <td style="height: 27px"><div align="center"><a href="Main.aspx" target="main"><img src="Images/icon/05.gif" width="28" height="28" border="0" alt="����" />����</a></div></td>
                                <td style="height: 27px"><div align="center"> <A onClick="ComfirmExit(2)" href="#" target="_self"><img src="Images/icon/00.gif" width="28" height="28" border="0" alt="ע��ϵͳ"  />ע��</a></div></td>
                                <td style="height: 27px"><div align="center"> <A onClick="ComfirmExit(1)" href="#" target="_self"><img src="Images/icon/close.gif" width="28" height="28" border="0" alt="�˳�ϵͳ" />�˳�</a></div></td>
                                <td width="20" style="height: 27px">&nbsp;</td>
                              </tr>
							  </table>
							  </td>
							  </tr>
                              
                            </table></td>
                          </tr>
                          <tr>
                            <td width="672" valign="middle">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <span class="style2">&nbsp; <span class="style3"><%=sysTitle %>&nbsp;</span></span></td>
                          </tr>
                        </table></td>
                        
                      </tr>
                    </table>
                    </td>
              </tr>

				<tr>
                    <td width="100%" valign="middle" background="images/login_2.gif" style="height: 31px">
						<table style="height:100%"  border="0" cellspacing="0" cellpadding="0" width="100%">

		<td id="Menu1n0"><table class="Menu1_4 Menu1_10" cellpadding="0" cellspacing="0" border="0" width="100%">
			<tr>
				<td style="white-space:nowrap;">&nbsp;</td>
				<td style="white-space:nowrap;">
                    <img alt="" src="Images/icon/desk.gif" style="height: 16px; width: 16px" /><a class="Menu1_1 Menu1_3 Menu1_9"  href="#" onClick="Show('Left.aspx','Main.aspx')">�ҵİ칫��</a></td>
			</tr>
		</table></td><td style="width:3px;"></td><td  id="Menu1n1"><table class="Menu1_4 Menu1_10" cellpadding="0" cellspacing="0" border="0" width="100%">
			<tr>
				<td style="white-space:nowrap;">
                    <img alt="" src="Images/icon/flow.gif" style="height: 16px; width: 16px" /><a class="Menu1_1 Menu1_3 Menu1_9" href="#" onClick="Show('Flow/FlowMenu.aspx','Flow/myflow.aspx')">������</a></td>
			</tr>
		</table></td><td style="width:3px;"></td><td  id="Menu1n2"><table class="Menu1_4 Menu1_10" cellpadding="0" cellspacing="0" border="0" width="100%">
			<tr>
				<td style="white-space:nowrap;">
                    <img alt="" src="Images/icon/bbs.gif" style="height: 16px; width: 16px" /><a class="Menu1_1 Menu1_3 Menu1_9" href="Communicate/Navigate.aspx?mid=1" target="dir"" onClick="Show('Communicate/Navigate.aspx','Communicate/BBSIndex.aspx')">��Ϣ����</a></td>
			</tr>
		</table></td><td style="width:3px;"></td><td  id="Menu1n3"><table class="Menu1_4 Menu1_10" cellpadding="0" cellspacing="0" border="0" width="100%">
			<tr>
				<td style="white-space:nowrap;">
                    <img alt="" src="Images/icon/1folder.gif" /><a class="Menu1_1 Menu1_3 Menu1_9" href="#" onClick="Show('WebDisk_/Left.aspx','WebDisk_/ShowDisk.aspx')">����Ӳ��</a></td>
			</tr>
		</table></td><td style="width:3px;"></td><td onm  id="Menu1n4">
		<table class="Menu1_4 Menu1_10" cellpadding="0" cellspacing="0" border="0" width="100%">
			<tr>
				<td style="white-space:nowrap;">
                    <img alt="" src="Images/icon/ent.gif" style="height: 16px; width: 16px" /><a class="Menu1_1 Menu1_3 Menu1_9" href="#" onClick="Show('Tools/Main.aspx','Tools/Calculate.aspx')">���ֹ���</a></td>
			</tr>
		</table></td><td></td>
		                                    </td>
											<td >
		<table class="Menu1_4 Menu1_10" cellpadding="0" cellspacing="0" border="0" width="100%">
			<tr>
				<td style="white-space:nowrap;">
                    <img alt="" src="Images/icon/set.GIF" /><a class="Menu1_1 Menu1_3 Menu1_9" href="#" onClick="Show('sysManage/sysMenu.aspx','Info/remind.aspx')">ϵͳ����</a></td>
			</tr>
		</table></td>
											<td >
		<table class="Menu1_4 Menu1_10" cellpadding="0" cellspacing="0" border="0" width="100%">
			<tr>
				<td style="white-space:nowrap;">
                    <img alt="" src="Images/icon/talk.GIF" /><a class="Menu1_1 Menu1_3 Menu1_9" href="http://bbs.witlink.net"  target="_blank" >֧����̳</a></td>
			</tr>
		</table></td>
													<td >
</td>
		
		
	</tr>
</table><a id="Menu1_SkipLink"></a>
                                            </td>
										</tr>
									</table>
								</td>
				</tr>			

		</table>
    

                                <span class="style2"> <span class="style3">
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
                </span></span>
                                <span class="style2"> <span class="style3">
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <span class="style2"><span class="style3">
                        <asp:Timer ID="Timer1" runat="server" 
    ontick="Timer1_Tick">
                        </asp:Timer>
                        </span></span>
                    </ContentTemplate>
                </asp:UpdatePanel>
                </span></span>
    

</form>
</body>
</html>
