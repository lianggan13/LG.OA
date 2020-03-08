<%@ page language="C#" autoeventwireup="true" inherits="Tools_Main, App_Web_hhks44zk" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
</head>
<body style="background-color:#E7F1FE">
    <form id="form1" runat="server">
    <div>
        <asp:TreeView ID="TreeView1" runat="server" ForeColor="Black" Style="font-size: 10pt">
            <Nodes>
                <asp:TreeNode ImageUrl="~/Images/icon/base.gif" Text="娱乐工具" Value="娱乐工具">
                    <asp:TreeNode ImageUrl="~/Images/right.gif" NavigateUrl="~/Tools/Calculate.aspx"
                        Target="main" Text="实用工具" Value="实用工具"></asp:TreeNode>
                    <asp:TreeNode ImageUrl="~/Images/right.gif" NavigateUrl="~/Tools/Game.aspx" Target="main"
                        Text="游戏娱乐" Value="游戏娱乐"></asp:TreeNode>
                </asp:TreeNode>
            </Nodes>
        </asp:TreeView>
    
    </div>
    </form>
</body>
</html>
