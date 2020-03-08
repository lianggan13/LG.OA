<%@ page language="C#" autoeventwireup="true" inherits="Communicate_left, App_Web_2yi7hpnw" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
    <link href="../css.css" type="text/css" rel="stylesheet" />
</head>
<body style="background-color:#E7F1FE">
    <form id="form1" runat="server">
    <div>
        &nbsp;<asp:TreeView ID="TreeView2" runat="server" Font-Size="Small"
            ForeColor="Black" Height="556px" ShowLines="True" Style="font-size: 10pt" 
            Width="152px">
            <Nodes>
                <asp:TreeNode ImageUrl="~/Images/icon/base.gif" Text="信息交流" Value="信息交流">
                    <asp:TreeNode ImageUrl="~/Images/icon/folder.gif" Text="公司论坛" Value="公司论坛">
                        <asp:TreeNode ImageUrl="~/Images/right.gif" 
                            NavigateUrl="~/Communicate/BBSIndex.aspx" Target="main" Text="进入论坛" 
                            Value="进入论坛"></asp:TreeNode>
                    </asp:TreeNode>
                </asp:TreeNode>
            </Nodes>
        </asp:TreeView>
    
    </div>
    </form>
</body>
</html>
