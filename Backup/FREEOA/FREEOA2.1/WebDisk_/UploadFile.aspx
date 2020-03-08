<%@ page language="C#" autoeventwireup="true" inherits="UploadFile, App_Web_hfxvji6e" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title></title>
    <link href="../css.css" type="text/css" rel="stylesheet" />
    <script language="javascript" type="text/javascript">		
		function addFile()
        {		
            var filebutton = '<br><input type="file" size="50" name="File" class="BnCss" />';
            document.getElementById('FileList').insertAdjacentHTML("beforeEnd",filebutton);
        }
	</script>
</head>
 <body>
		<form id="form" method="post" runat="server" enctype="multipart/form-data">
		   <table>
        <tr>
            	<td width="3%" background="../Images/topbg.jpg" align=left><IMG height="16" src="../Images/icon/right.GIF"><b>上传文件
            	</b>
					</td>
        </tr>
    </table>
			<center>
                &nbsp;<p id="FileList"><input type="file" name="File" class="BnCss" style="width: 337px; height: 19px" /></p>
				<p>
					<input type="button" value="增加上载文件" class="BnCss" onclick="addFile()" style="width: 77px" id="Button2" />
					<asp:Button Runat="server" CssClass="BnCss" Text="上传所有文件" ID="SureBtn" OnClick="SureBtn_Click" Width="76px"></asp:Button>
                    <asp:Button ID="Button1" runat="server" CssClass="BnCss" OnClick="Button1_Click"
                        Text="返 回" /></p>
			</center>
			<p align="center">
				<asp:Label id="StatusMsg" runat="server" CssClass="GbText" ForeColor="red" Width="100%"></asp:Label></p>
		</form>


	</body>
</html>
