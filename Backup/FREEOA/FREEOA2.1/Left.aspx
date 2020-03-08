<%@ page language="C#" autoeventwireup="true" inherits="Left, App_Web_dw6csvel" %>

<html>
	<head runat="server">
		<title>Left Skin</title>
		<link href="../css.css" type="text/css" rel="stylesheet" />

	</head>
	<body topmargin="0" leftmargin="0" marginwidth="0" marginheight="0" 
        style="font-size: 9pt" bgcolor="#ecf5ff">
	<form id="Form1"  runat="server">

              <asp:TreeView ID="TreeView1" runat="server" Font-Size="Smaller" Height="554px" Style="font-size: 10pt"
                Width="152px" ForeColor="Black" ExpandDepth="0" ShowLines="True" 
                  ImageSet="Contacts" NodeIndent="10">
                  <ParentNodeStyle Font-Bold="True" ForeColor="#5555DD" />
                  <HoverNodeStyle Font-Underline="False" />
                  <SelectedNodeStyle Font-Underline="True" HorizontalPadding="0px" 
                      VerticalPadding="0px" />
                <Nodes>
                    <asp:TreeNode Text="个人办公" Value="个人办公" Expanded="True" ImageUrl="~/Images/icon/base.gif" NavigateUrl="~/UserWork/OutList.aspx" SelectAction="Expand">
                       
                        <asp:TreeNode ImageUrl="~/Images/icon/folder.gif" Text="新闻公告" Value="新闻" 
                            SelectAction="Expand">
                            <asp:TreeNode ImageUrl="~/Images/right.gif" 
                              NavigateUrl="~/UserWork/News.aspx" Target="main" Text="新闻列表" Value="新闻列表"></asp:TreeNode>
                            <asp:TreeNode ImageUrl="~/Images/right.gif" 
                                NavigateUrl="~/notice/allnotice.aspx" Target="main" Text="公告列表" Value="公告列表">
                            </asp:TreeNode>
                        </asp:TreeNode>
                        <asp:TreeNode Text="内部邮件" Value="内部邮件" ImageUrl="~/Images/icon/folder.gif" SelectAction="Expand">
                            <asp:TreeNode ImageUrl="~/Images/right.gif" Text="收件箱" Value="接收邮件" NavigateUrl="~/UserWork/Bottom.aspx" Target="main"></asp:TreeNode>
                         
                            <asp:TreeNode ImageUrl="~/Images/right.gif" Text="发邮件" Value="发送邮件" NavigateUrl="~/UserWork/SendPost.aspx" Target="main"></asp:TreeNode>
                              <asp:TreeNode ImageUrl="~/Images/right.gif" Text="发件箱" Value="邮件列表" Target="main" NavigateUrl="~/UserWork/MailListF.aspx"></asp:TreeNode>
                         
                            <asp:TreeNode ImageUrl="~/Images/right.gif" Text="草稿箱" Value="草稿箱" NavigateUrl="~/UserWork/MailListC.aspx" Target="main"></asp:TreeNode>
                        </asp:TreeNode>
                        <asp:TreeNode Text="个人考勤" Value="个人考勤" ImageUrl="~/Images/icon/folder.gif" SelectAction="Expand">
                            <asp:TreeNode ImageUrl="~/Images/right.gif" NavigateUrl="~/UserWork/Check.aspx" Target="main"
                                Text="上下班登记" Value="上下班登记"></asp:TreeNode>
                            <asp:TreeNode ImageUrl="~/Images/right.gif" Text="外出登记" Value="新建节点" NavigateUrl="UserWork/OutgoRegister.aspx" Target="main"></asp:TreeNode>
                            <asp:TreeNode ImageUrl="~/Images/right.gif" Text="请假登记" Value="新建节点" NavigateUrl="~/UserWork/LeaveRegister.aspx" Target="main"></asp:TreeNode>
                            <asp:TreeNode ImageUrl="~/Images/right.gif" Text="出差登记" Value="出差登记" NavigateUrl="~/UserWork/EvectionRegister.aspx" Target="main"></asp:TreeNode>
                        </asp:TreeNode>
                        <asp:TreeNode Text="工作计划" Value="工作计划" Target="main" ImageUrl="~/Images/icon/folder.gif" SelectAction="Expand">
                            <asp:TreeNode ImageUrl="~/Images/right.gif" Text="新建计划" Value="新建计划" 
                                NavigateUrl="~/UserWork/MyPlan.aspx" Target="main"></asp:TreeNode>
                            <asp:TreeNode ImageUrl="~/Images/right.gif" Text="计划管理" Value="计划管理" NavigateUrl="~/UserWork/PlanManage.aspx" Target="main"></asp:TreeNode>
                        </asp:TreeNode>
     
               
                        <asp:TreeNode Text="工作日志" Value="工作日志" Target="main" 
                            ImageUrl="~/Images/icon/folder.gif" SelectAction="Expand">
                            <asp:TreeNode ImageUrl="~/Images/right.gif" Text="新建工作日志" Value="新建工作日志" 
                                NavigateUrl="~/CalendarManage/NewNotepad.aspx" Target="main"></asp:TreeNode>
                            <asp:TreeNode ImageUrl="~/Images/right.gif" Text="查看日志批复" Value="查看日志批复" 
                                NavigateUrl="~/CalendarManage/Notepad.aspx" Target="main"></asp:TreeNode>
                        </asp:TreeNode>
                        <asp:TreeNode ImageUrl="~/Images/icon/folder.gif" SelectAction="Expand" 
                            Target="main" Text="工作报告" Value="工作报告">
                                <asp:TreeNode ImageUrl="~/Images/right.gif" Target="main" Text="新建工作报告" 
                                Value="新建工作报告" NavigateUrl="~/CalendarManage/newreport.aspx"></asp:TreeNode>
                                  <asp:TreeNode ImageUrl="~/Images/right.gif" Target="main" Text="查看工作报告" 
                                Value="查看工作报告" NavigateUrl="~/CalendarManage/workreport.aspx"></asp:TreeNode>
                            </asp:TreeNode>
                       <asp:TreeNode ImageUrl="~/Images/icon/folder.gif" Text="经理审批" Value="新建节点" 
                            SelectAction="Expand" Target="main">
                    <asp:TreeNode ImageUrl="~/Images/right.gif" Target="main" Text="信息查询" 
                        NavigateUrl="~/manager/employee.aspx" Value="信息查询"></asp:TreeNode>
                    <asp:TreeNode ImageUrl="~/Images/right.gif" Target="main" Text="工作日志" 
                        NavigateUrl="~/manager/alldiary.aspx" Value="工作日志"></asp:TreeNode>
                    <asp:TreeNode ImageUrl="~/Images/right.gif" Target="main" Text="工作计划" 
                        NavigateUrl="~/manager/allplan.aspx" Value="工作计划"></asp:TreeNode>
                    <asp:TreeNode ImageUrl="~/Images/right.gif" Target="main" Text="工作报告" 
                        NavigateUrl="~/manager/reportRead.aspx" Value="工作报告"></asp:TreeNode>                        
                    <asp:TreeNode ImageUrl="~/Images/right.gif" Target="main" Text="考勤查询" 
                        NavigateUrl="~/manager/attendance.aspx" Value="新建节点"></asp:TreeNode>
                    <asp:TreeNode ImageUrl="~/Images/right.gif" 
                        NavigateUrl="~/manager/checkset.aspx" Text="考勤设置" Value="考勤设置" 
                        Target="main">
                    </asp:TreeNode>
                    <asp:TreeNode ImageUrl="~/Images/right.gif" 
                        NavigateUrl="~/manager/checktimeset.aspx" Text="考勤时间" Value="考勤时间" 
                        Target="main">
                    </asp:TreeNode>
                </asp:TreeNode>
                        <asp:TreeNode Text="通讯录" Value="通讯录" Target="main" ImageUrl="~/Images/icon/folder.gif" SelectAction="Expand">
                            <asp:TreeNode ImageUrl="~/Images/right.gif" Text="联系人维护" Value="我的联系人" NavigateUrl="~/UserWork/Vindicate.aspx" Target="main"></asp:TreeNode>
                            <asp:TreeNode ImageUrl="~/Images/right.gif" Text="员工通讯录" Value="员工通讯录" NavigateUrl="~/UserWork/Address.aspx" Target="main"></asp:TreeNode>
                            <asp:TreeNode ImageUrl="~/Images/right.gif" Target="main" Text="我的分组" Value="我的分组" NavigateUrl="~/UserWork/MyGrouping.aspx"></asp:TreeNode>
                            <asp:TreeNode NavigateUrl="~/UserWork/InfoPub.aspx" Text="增加联系人" Value="增加联系人" ImageUrl="~/Images/right.gif" Target="main"></asp:TreeNode>
                        </asp:TreeNode>

               
                        <asp:TreeNode ImageUrl="~/Images/icon/folder.gif" Text="个人查询" Value="个人查询">
                            <asp:TreeNode ImageUrl="~/Images/right.gif" Text="工资条查询" Value="工资条查询" 
                                NavigateUrl="~/query/salary.aspx" Target="main">
                            </asp:TreeNode>
                            <asp:TreeNode ImageUrl="~/Images/right.gif" Text="其他查询" Value="其他查询" 
                                NavigateUrl="~/query/others.aspx" Target="main">
                            </asp:TreeNode>
                        </asp:TreeNode>

               
                        <asp:TreeNode ImageUrl="~/Images/icon/folder.gif" Text="我的申请" Value="我的申请">
                            <asp:TreeNode ImageUrl="~/Images/right.gif" NavigateUrl="~/car/apply.aspx" 
                                Target="main" Text="车辆申请" Value="车辆申请"></asp:TreeNode>
                            <asp:TreeNode ImageUrl="~/Images/right.gif" NavigateUrl="~/car/allapply.aspx" 
                                Target="main" Text="车辆申请查询" Value="车辆申请查询"></asp:TreeNode>
                            <asp:TreeNode ImageUrl="~/Images/right.gif" 
                                NavigateUrl="~/meetingRoom/apply.aspx" Target="main" Text="会议室申请" Value="会议室申请">
                            </asp:TreeNode>
                            <asp:TreeNode ImageUrl="~/Images/right.gif" 
                                NavigateUrl="~/meetingRoom/allapply.aspx" Target="main" Text="会议室申请查询" 
                                Value="会议室申请查询"></asp:TreeNode>
                        </asp:TreeNode>
                        <asp:TreeNode Text="个人资料" Value="个人资料" ImageUrl="~/Images/icon/folder.gif" SelectAction="Expand">
                            <asp:TreeNode ImageUrl="~/Images/right.gif" Text="密码修改" Value="密码修改" NavigateUrl="~/UserWork/NewPassword.aspx" Target="main"></asp:TreeNode>
                            <asp:TreeNode ImageUrl="~/Images/right.gif" Text="个人资料修改" Value="个人资料修改" NavigateUrl="~/UserWork/NewUserInfo.aspx" Target="main"></asp:TreeNode>
                        </asp:TreeNode>

               
                        <asp:TreeNode Text="投诉意见" Value="投诉意见" ImageUrl="~/Images/icon/folder.gif" SelectAction="Expand" >
                            <asp:TreeNode ImageUrl="~/Images/right.gif" Text="投诉意见" Value="投诉意见" 
                                NavigateUrl="~/suggest/addsuggest.aspx" Target="main"></asp:TreeNode>
                        </asp:TreeNode>

               
                    </asp:TreeNode>
                </Nodes>
                  <NodeStyle Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" 
                      HorizontalPadding="5px" NodeSpacing="0px" VerticalPadding="0px" />
            </asp:TreeView>

<%-- <SCRIPT language=javascript> 
function Year_Month(){ 
var now = new Date(); 
var yy = now.getYear(); 
var mm = now.getMonth()+1; 
var cl = '<font color="#0000df">'; 
if (now.getDay() == 0) cl = '<font color="#c00000">'; 
if (now.getDay() == 6) cl = '<font color="#00c000">'; 
return(cl + yy + '年' + mm + '月</font>'); } 
function Date_of_Today(){ 
var now = new Date(); 
var cl = '<font color="#ff0000">'; 
if (now.getDay() == 0) cl = '<font color="#c00000">'; 
if (now.getDay() == 6) cl = '<font color="#00c000">'; 
return(cl + now.getDate() + '</font>'); } 
function Day_of_Today(){ 
var day = new Array(); 
day[0] = "星期日"; 
day[1] = "星期一"; 
day[2] = "星期二"; 
day[3] = "星期三"; 
day[4] = "星期四"; 
day[5] = "星期五"; 
day[6] = "星期六"; 
var now = new Date(); 
var cl = '<font color="#0000df">'; 
if (now.getDay() == 0) cl = '<font color="#c00000">'; 
if (now.getDay() == 6) cl = '<font color="#00c000">'; 
return(cl + day[now.getDay()] + '</font>'); } 
function CurentTime(){ 
var now = new Date(); 
var hh = now.getHours(); 
var mm = now.getMinutes(); 
var ss = now.getTime() % 60000; 
ss = (ss - (ss % 1000)) / 1000; 
var clock = hh+':'; 
if (mm < 10) clock += '0'; 
clock += mm+':'; 
if (ss < 10) clock += '0'; 
clock += ss; 
return(clock); } 
function refreshCalendarClock(){ 
document.all.calendarClock1.innerHTML = Year_Month(); 
document.all.calendarClock2.innerHTML = Date_of_Today(); 
document.all.calendarClock3.innerHTML = Day_of_Today(); 
document.all.calendarClock4.innerHTML = CurentTime(); } 
var webUrl = webUrl; 
document.write('<table border="0" cellpadding="0" cellspacing="0"><tr><td>'); 
document.write('<table id="CalendarClockFreeCode" border="0" cellpadding="0" cellspacing="0" width="60" height="70" '); 
document.write('style="position:absolute;visibility:hidden" bgcolor="#eeeeee">'); 
document.write('<tr><td align="center"><font '); 
document.write('style="cursor:hand;color:#ff0000;font-family:宋体;font-size:10pt;line-height:150%" '); 
if (webUrl != 'netflower'){ 
document.write('</td></tr><tr><td align="center"><font '); 
document.write('style="cursor:hand;color:#2000ff;font-family:宋体;font-size:10pt;line-height:150%" '); 
} 
document.write('</td></tr></table>'); 
document.write('<table border="0" cellpadding="0" cellspacing="0" width="123" bgcolor="#C0C0C0" height="60">'); 
document.write('<tr><td valign="top" width="100%" height="100%">'); 
document.write('<table border="1" cellpadding="0" cellspacing="0" width="123" bgcolor="#FEFEEF" height="60">'); 
document.write('<tr><td align="center" width="100%" height="100%" >'); 
document.write('<font id="calendarClock1" style="font-family:宋体;font-size:10pt;line-height:100%"> </font><br>'); 
document.write('<font id="calendarClock2" style="color:#ff0000;font-family:Arial;font-size:10pt;line-height:120%"> </font><br>'); 
document.write('<font id="calendarClock3" style="font-family:宋体;font-size:10pt;line-height:100%"> </font><br>'); 
document.write('<font id="calendarClock4" style="color:#100080;font-family:宋体;font-size:10pt;line-height:120%"><b> </b></font>'); 
document.write('</td></tr></table>'); 
document.write('</td></tr></table>'); 
document.write('</td></tr></table>'); 
setInterval('refreshCalendarClock()',1000); 
</SCRIPT>--%>
		</form>
	</body>
</html>

