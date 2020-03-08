<%@ page language="C#" autoeventwireup="true" inherits="UserWork_PlanInFo, App_Web_npi0lp43" %>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head><title>
	无标题页
</title><link href="../css.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            background-color: #CCCCCC;
        }
    </style>
    </head>
<body>
    <form name="form1"  runat="server" id="form1">
       <table border="0" cellpadding="0" cellspacing="0" bordercolor="#111111" width="100%" class="px12">
				<tr height="30">
					<td width="3%" background="../Images/topbg.jpg" align=center><IMG height="16" src="../Images/icon/right.GIF"></td>
					<td background="../Images/topbg.jpg" width="80"><b>工作计划</b></td>
					<TD background="../Images/topbg.jpg" align="right">
					</TD>
				</tr>
			</table>
    <table width=100% cellpadding=0 cellspacing=0 border=0 align=center>
    <tr>
    <td align=center >
    <table cellpadding=2 cellspacing=0 border=1 class="px12" 
            style="width: 100%; height: 220px">
    <tr style="height:20px">
    <td width=10% align=right class="style1" >
        主题：</td>
    <td align=left >
    <%=topic%>&nbsp;
    </td>
    </tr>
    <tr style="height:20px">
    <td width=10% align=right class="style1" >
        时间：</td>
    <td align=left >
    <%=AddTime%>&nbsp;
   </td>
    </tr>
    <tr style="height:120px">
    <td align=right valign="top" class="style1">
        内容：</td>
    <td align=left valign="top" >
    <%=Contents%>&nbsp;
    </td>
    </tr>
    <tr>
    <td align=right class="style1">
        计划进度：</td>
    <td align=left valign="top" >
    <%=progress %>&nbsp;
      </td>
    </tr>
    <tr style="height:120px">
    <td align=right valign="top" class="style1">
        进度说明：</td>
    <td align=left valign="top" >
     <%=progressContent %>&nbsp;</td>
    </tr>
    <tr style="height:20px">
    <td colspan=2 style="height: 25px" align=center>
        <input id="Button1" type="button" value="返 回" onclick="history.go(-1);" /></td>
    </tr>
    </table>
    </td>
    </tr>
    </table>
    </form>
</body>
</html>
