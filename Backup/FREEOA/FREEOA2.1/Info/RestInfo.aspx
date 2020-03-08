<%@ page language="C#" autoeventwireup="true" inherits="Info_RestInfo, App_Web_wy4mt_ds" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head><title>
	无标题页
</title><link href="../css.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form name="form1"  runat="server" id="form1">




  
     <table border="0" cellpadding="0" cellspacing="0" bordercolor="#111111" width="100%">
				<tr height="30">
					<td width="3%" background="../Images/topbg.jpg" align="center"><IMG height="16" src="../Images/icon/right.GIF"></td>
					<td background="../Images/topbg.jpg" width="80"><b>查看员工信息</b></td>
					
				</tr>
			</table>
		
              <table  border="0"  align="center" width="450" height="300">
 <tr>
    <td ><div align="right">姓名：</div>
    </td>
    <td>
    <%=name%>
    </td>
    <td ><div align="right">性别：</div></td>
    <td>
        <%=sex%>
    </td>
  </tr>
  <tr>
    <td ><div align="right">所属部门：</div></td>
    <td>
        <%=Branch%>
    </td>
    <td><div align="right">
        &nbsp;政治面貌：</td>
    <td>
    &nbsp;</td>

  </tr>         
 
  <tr>

    <td ><div align="right">办公电话：</div>
    </td>
    <td>
    <%=workPhone %>
    </td>
    <td ><div align="right">移动电话：</div></td>
    <td>
        <%=movePhone%>
    </td>
  </tr>

  <tr>
    <td ><div align="right">个人主页：</div></td>
    <td>
        <%=url%>
        </td>
    <td><div align="right">电子邮箱：</div>
    </td>
    <td>
    <%=Email%>
      </td>
  </tr>
  <tr>
    <td ><div align="right">QQ账号：</div></td>
    <td>
    <%=qq%>
    </td>
    <td><div align="right">
        MSN账号：
    </td>
    <td>
   <%=msn %>
    </td>

  </tr>         
 
</table>
             </table>

</form>
</body>
</html>
