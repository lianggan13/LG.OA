<%@ page language="C#" autoeventwireup="true" inherits="sysManage_sysMenu, App_Web_c0qvfpcc" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
</head>
<body style="background-color:#E7F1FE">
    <form id="form1" runat="server">
    <div>
        <asp:TreeView ID="TreeView1" runat="server" ForeColor="Black" Height="179px" ShowLines="True"
            Style="font-size: 9pt" ExpandDepth="0">
            <Nodes>
                <asp:TreeNode ImageUrl="~/Images/icon/base.gif" SelectAction="Expand" Text="系统管理"
                    Value="系统管理" NavigateUrl="~/sysManage/sysTitleChange.aspx">
                    <asp:TreeNode ImageUrl="~/Images/right.gif" NavigateUrl="~/sysManage/LoginLog.aspx"
                        SelectAction="Expand" Text="登录信息" Value="登录焦虑" Target="main"></asp:TreeNode>
                    <asp:TreeNode ImageUrl="~/Images/right.gif" Text="权限分配" Value="权限分配" 
                        NavigateUrl="~/power/power.aspx" Target="main">
                    </asp:TreeNode>
                    <asp:TreeNode ImageUrl="~/Images/right.gif" 
                        NavigateUrl="~/sysManage/checkonline.aspx" Target="main" Text="查看在线人员" 
                        Value="查看在线人员"></asp:TreeNode>
                    <asp:TreeNode ImageUrl="~/Images/right.gif" Target="main" Text="更改系统名称" 
                        Value="更改系统名称" NavigateUrl="~/sysManage/sysTitleChange.aspx"></asp:TreeNode>
                    <asp:TreeNode ImageUrl="~/Images/icon/folder.gif" Text="论坛管理" Value="论坛管理">
                        <asp:TreeNode ImageUrl="~/Images/right.gif" 
                            NavigateUrl="~/Communicate/BBSCatList.aspx" Target="main" Text="论坛大类维护" 
                            Value="论坛大类维护"></asp:TreeNode>
                        <asp:TreeNode ImageUrl="~/Images/right.gif" 
                            NavigateUrl="~/Communicate/BBSSecList.aspx" Target="main" Text="论坛版块维护" 
                            Value="论坛版块维护"></asp:TreeNode>
                    </asp:TreeNode>
                    <asp:TreeNode ImageUrl="~/Images/right.gif" 
                        NavigateUrl="~/sysManage/SysVersion.aspx" Text="系统版本" Value="系统版本" 
                        Target="main">
                    </asp:TreeNode>
                </asp:TreeNode>
                <asp:TreeNode ImageUrl="~/Images/icon/base.gif" Text="人事管理" Value="新建节点">
                    <asp:TreeNode Text="公告管理" Value="公告管理">
                        <asp:TreeNode ImageUrl="~/Images/right.gif" Target="main" Text="增加公告" 
                            NavigateUrl="~/notice/addnotice.aspx" Value="增加公告"></asp:TreeNode>
                        <asp:TreeNode ImageUrl="~/Images/right.gif" Target="main" Text="公告管理" 
                            NavigateUrl="~/notice/noticemanage.aspx" Value="公告管理"></asp:TreeNode>
                    </asp:TreeNode>
                    <asp:TreeNode Text="新闻管理" Value="新闻管理">
                        <asp:TreeNode ImageUrl="~/Images/right.gif" Target="main" Text="新闻管理" 
                            NavigateUrl="~/New/NewManage.aspx" Value="新闻管理"></asp:TreeNode>
                        <asp:TreeNode ImageUrl="~/Images/right.gif" Target="main" Text="添加新闻" 
                            NavigateUrl="~/New/News.aspx" Value="添加新闻"></asp:TreeNode>
                        <asp:TreeNode ImageUrl="~/Images/right.gif" Target="main" Text="新闻信息" 
                            NavigateUrl="~/New/NewsInfo.aspx" Value="新闻信息"></asp:TreeNode>
                    </asp:TreeNode>
                    <asp:TreeNode Text="部门管理" Value="部门管理">
                        <asp:TreeNode ImageUrl="~/Images/right.gif" Target="main" Text="部门管理" 
                            NavigateUrl="~/Info/Branch.aspx" Value="部门管理"></asp:TreeNode>
                    </asp:TreeNode>
                    <asp:TreeNode Text="员工管理" Value="员工管理">
                        <asp:TreeNode ImageUrl="~/Images/right.gif" Target="main" Text="员工录入" 
                            NavigateUrl="~/Info/AddRest.aspx" Value="员工录入"></asp:TreeNode>
                        <asp:TreeNode ImageUrl="~/Images/right.gif" 
                            NavigateUrl="~/Info/importRest.aspx" Target="main" Text="员工导入" Value="员工导入">
                        </asp:TreeNode>
                        <asp:TreeNode ImageUrl="~/Images/right.gif" Target="main" Text="员工列表" 
                            NavigateUrl="~/Info/RestBranch.aspx" Value="员工列表"></asp:TreeNode>
                        <asp:TreeNode ImageUrl="~/Images/right.gif" 
                            NavigateUrl="~/Info/editstatus.aspx" Target="main" Text="编辑状态" Value="编辑状态">
                        </asp:TreeNode>

                    </asp:TreeNode>
                    <asp:TreeNode Text="查询管理" Value="查询管理">
                        <asp:TreeNode ImageUrl="~/Images/right.gif" Target="main" Text="工资条管理" 
                            NavigateUrl="~/query/upsalary.aspx" Value="工资条管理"></asp:TreeNode>
                        <asp:TreeNode ImageUrl="~/Images/right.gif" Target="main" Text="其他查询管理" 
                            NavigateUrl="~/query/upothers.aspx" Value="其他查询管理"></asp:TreeNode>
                    </asp:TreeNode>
                    <asp:TreeNode Text="考勤管理" Value="考勤管理">
                        <asp:TreeNode ImageUrl="~/Images/right.gif" Target="main" Text="考勤管理" 
                            NavigateUrl="~/Info/attendance.aspx" Value="考勤管理"></asp:TreeNode>
                        <asp:TreeNode ImageUrl="~/Images/right.gif" 
                            NavigateUrl="~/manager/checktimeset.aspx" Target="main" Text="考勤时间" 
                            Value="考勤时间"></asp:TreeNode>
                        <asp:TreeNode ImageUrl="~/Images/right.gif" 
                            NavigateUrl="~/manager/checkset.aspx" Target="main" Text="考勤设置" Value="考勤设置">
                        </asp:TreeNode>
                    </asp:TreeNode>
                    <asp:TreeNode Text="流程管理" Value="流程管理">
                        <asp:TreeNode ImageUrl="~/Images/right.gif" NavigateUrl="~/Flow/flowtype.aspx" 
                            Target="main" Text="工作流类型管理" Value="工作流类型管理"></asp:TreeNode>
                    </asp:TreeNode>
                    <asp:TreeNode Text="投诉建议" Value="投诉建议">
                        <asp:TreeNode ImageUrl="~/Images/right.gif" Target="main" Text="浏览投诉建议" 
                            NavigateUrl="~/suggest/exploresuggest.aspx" Value="浏览投诉建议"></asp:TreeNode>
                    </asp:TreeNode>
                </asp:TreeNode>
                <asp:TreeNode ImageUrl="~/Images/icon/base.gif" Text="文件管理" Value="文件管理">
                    <asp:TreeNode ImageUrl="~/Images/right.gif" 
                        NavigateUrl="~/WebDisk_/AddFolder.aspx" Target="main" Text="添加分类" Value="添加分类">
                    </asp:TreeNode>
                    <asp:TreeNode ImageUrl="~/Images/right.gif" Target="main" Text="文件管理" 
                        Value="添加文件" NavigateUrl="~/WebDisk_/ShowDisk.aspx"></asp:TreeNode>
                </asp:TreeNode>
                <asp:TreeNode ImageUrl="~/Images/icon/base.gif" Text="车辆管理" Value="新建节点">
                    <asp:TreeNode ImageUrl="~/Images/right.gif" Target="main" Text="审批申请" 
                        NavigateUrl="~/car/grant.aspx" Value="审批申请"></asp:TreeNode>
                    <asp:TreeNode ImageUrl="~/Images/right.gif" Target="main" Text="车辆管理" 
                        NavigateUrl="~/car/manage.aspx" Value="车辆管理"></asp:TreeNode>
                </asp:TreeNode>
                <asp:TreeNode ImageUrl="~/Images/icon/base.gif" Target="main" Text="会议室管理" 
                    NavigateUrl="~/meetingRoom/grant.aspx" Value="会议室管理">
                    <asp:TreeNode ImageUrl="~/Images/right.gif" Target="main" Text="审批申请" 
                        NavigateUrl="~/meetingRoom/grant.aspx" Value="审批申请"></asp:TreeNode>
                    <asp:TreeNode ImageUrl="~/Images/right.gif" Target="main" Text="会议室管理" 
                       NavigateUrl="~/meetingRoom/manage.aspx"  Value="会议室管理"></asp:TreeNode>
                </asp:TreeNode>
            </Nodes>
        </asp:TreeView>
        &nbsp;</div>
    </form>
</body>
</html>
