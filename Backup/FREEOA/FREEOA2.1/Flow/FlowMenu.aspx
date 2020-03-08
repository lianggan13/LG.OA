<%@ page language="C#" autoeventwireup="true" inherits="Flow_FlowMnu, App_Web_i0ssc6n9" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
</head>
<body style="background-color:#E7F1FE">
    <form id="form1" runat="server">
    <div>
        <asp:TreeView ID="TreeView1" runat="server" ForeColor="Black" Height="179px" ShowLines="True"
            Style="font-size: 9pt">
            <Nodes>
                <asp:TreeNode ImageUrl="~/Images/icon/base.gif" SelectAction="Expand" Text="工作流"
                    Value="公文流转">
                    <asp:TreeNode ImageUrl="~/Images/right.gif" NavigateUrl="~/Flow/NewApply.aspx" SelectAction="Expand"
                        Target="main" Text="起草新申请" Value="起草新申请"></asp:TreeNode>
                    <asp:TreeNode ImageUrl="~/Images/right.gif" NavigateUrl="~/Flow/myflow.aspx" SelectAction="Expand"
                        Target="main" Text="我的申请列表" Value="我的申请列表"></asp:TreeNode>
                    <asp:TreeNode ImageUrl="~/Images/right.gif" NavigateUrl="~/Flow/flowwork.aspx" SelectAction="Expand"
                        Target="main" Text="我的审批列表" Value="我的审批列表"></asp:TreeNode>
                    <asp:TreeNode ImageUrl="~/Images/right.gif" NavigateUrl="~/Flow/authored.aspx" 
                        Target="main" Text="我审批过的申请"></asp:TreeNode>
                </asp:TreeNode>
            </Nodes>
        </asp:TreeView>
    
    </div>
    </form>
</body>
</html>
