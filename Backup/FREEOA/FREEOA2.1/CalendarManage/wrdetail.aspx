<%@ page language="C#" autoeventwireup="true" inherits="CalendarManage_wrdetail, App_Web_mpbjvgl6" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
    <link href="../css.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table border="0" cellpadding="0" cellspacing="0" bordercolor="#111111" width="100%">
				<tr height="30">
					<td width="3%" background="../Images/topbg.jpg" align=center><IMG height="16" src="../Images/icon/right.gif"></td>
					<td background="../Images/topbg.jpg" width="80"><b>工作报告</b></td>
					<TD background="../Images/topbg.jpg" align="right">
					</TD>
				</tr>
			</table>
			
			<table width=100% border="1px">
		    <tr>
		        <td style="width:10% " align="right">
		            报告名称：</td>
		        <td><% =reportName%>
		        </td>

		    </tr>
		    <tr>
		        <td align="right" >
		            报告人：</td>
		        <td align="left"><%=name %>
		            &nbsp;</td>
		    </tr>
		    		    <tr>
		        <td align="right" >
		            所在部门：</td>
		        <td ><% =branch %>
		            &nbsp;</td>
		    </tr>
		    		    <tr>
		        <td align="right" >
		            报告年度：</td>
		        <td ><%=reportYear %>
		           &nbsp;</td>
		    </tr>
		    		    <tr>
		        <td align="right" >
		            报告类型：</td>
		        <td ><%=reportType %>
		            &nbsp;</td>
		    </tr>
		    		    <tr>
		        <td align="right" >
		            报告区间：</td>
		        <td><%=reportCircle %>
		            &nbsp;</td>

		    </tr>
		    		    <tr>
		        <td align="right" >
		            工作总结：</td>
		        <td><%=reportSum%>
		            &nbsp;</td>
		    </tr>
		    		    <tr>
		        <td align="right" >
		            工作计划：</td>
		        <td>
		             <%=reportPlan %>  &nbsp;</td>
		    </tr>
		    		    <tr>
		        <td align="right" >
		            备注：</td>
		        <td> <%=reportNote %> 
		            &nbsp;</td>
		    </tr>

		</table>	
    </div>
    </form>
</body>
</html>
