<%@ page language="C#" autoeventwireup="true" inherits="WebDisk_Left, App_Web_hfxvji6e" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
</head>
<body style="background-color:#E7F1FE">
    <form id="form1" runat="server">
    <div>
        <asp:TreeView ID="TreeView1" runat="server" Font-Size="Small" ForeColor="Black">
            <Nodes>
                <asp:TreeNode ImageUrl="~/Images/icon/base.gif" SelectAction="Expand" Text="共享硬盘"
                    Value="共享硬盘">
                    <asp:TreeNode ImageUrl="~/Images/right.gif" NavigateUrl="~/WebDisk_/ShowDisk.aspx"
                        Text="共享硬盘" Value="共享硬盘" Target="main"></asp:TreeNode>
                </asp:TreeNode>
            </Nodes>
        </asp:TreeView>
    
    </div>
    </form>
</body>
</html>
