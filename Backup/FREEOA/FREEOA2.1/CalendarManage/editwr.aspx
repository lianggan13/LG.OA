<%@ page language="C#" autoeventwireup="true" inherits="CalendarManage_editwr, App_Web_mpbjvgl6" validaterequest="false" %>
<%@ Register assembly="DotNetTextBox" namespace="DotNetTextBox" tagprefix="DNTB" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>无标题页</title>
    <link href="../css.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            width: 140px;
        }
        .style2
        {
            background-color: #C0C0C0;
        }
    </style>
    <script language="javascript">
        
        function showsum()
        {
            if (sum.style.display=="none")
            {
                 sum.style.display="block";
                 sumchar.innerHTML='收起';
            }
            else
            {
                 sum.style.display="none";
                 sumchar.innerHTML='展开';
            }
        }
        
        function showplan()
        {
            if (plan.style.display=="none")
            {
                 plan.style.display="block";
                 planchar.innerHTML='收起';
            }
            else
            {
                 plan.style.display="none";
                 planchar.innerHTML='展开';
            }
        }
        
        function shownote()
        {
            if (note.style.display=="none")
            {
                 note.style.display="block";
                 notechar.innerHTML='收起';
            }
            else
            {
                 note.style.display="none";
                 notechar.innerHTML='展开';
            }
        }
    
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table border="0" cellpadding="2" cellspacing="0" bordercolor="#111111" width="100%">
				<tr height="30">
					<td width="3%" background="../Images/topbg.jpg" align=center><IMG height="16" 
                            src="../Images/icon/right.gif"></td>
					<td background="../Images/topbg.jpg" class="style1"><b>修改工作报告</b></td>
					<TD background="../Images/topbg.jpg" align="right">
					</TD>
				</tr>
			</table>
			
		<table  border="1" cellpadding="2" cellspacing="0" 
            width="100%" style="border-style: inherit; border-width: 1px;  font-size:small">

		    		    <tr>
		        <td  tyle="width:10%" align="right" class="style2">
		            报告名称：</td>
		        <td>
		            <asp:TextBox ID="txtName" runat="server" Width="200px"></asp:TextBox>
		        </td>
		    </tr>
		    		    <tr>
		        <td align="right" class="style2">
		            报告年度：</td>
		        <td>
		            <%=reportYear %>&nbsp;</td>
		    </tr>
		    		    <tr>
		        <td align="right" class="style2">
		            报告类型：</td>
		        <td>		            
		            <%=reportType %>：<%=reportCircle %>&nbsp;</td>
		    </tr>
		    		    <tr>
		        <td align="right" valign="top" class="style2">
		            工作总结：<br />
                   
                    <br />
                </td>
		        <td><span id='sumchar' onclick='showsum();'>收起</span>
		             
                    <div id='sum' name='sum'>
		              <DNTB:WebEditor ID="txtRecall" runat="server" systemFolder="system_dntb/" />
		            </div>
		        </td>
		    </tr>
		    		    <tr>
		        <td align="right" valign="top" class="style2">
		            工作计划：</td>
		        <td>
		        <span id='planchar' onclick='showplan();'>展开</span>
		        <div id='plan' name='plan' style="display:none">
		            <DNTB:WebEditor ID="txtPlan" runat="server" systemFolder="system_dntb/" />
		        </div>
		        </td>

		    </tr>
		    		    <tr>
		        <td align="right" valign="top" class="style2">
		            其他：</td>
		        <td>
		        <span id='notechar' onclick='shownote();'>展开</span>
		        <div id='note' name='note' style="display:none">
		            <DNTB:WebEditor ID="txtNote" runat="server" systemFolder="system_dntb/" />
		        </div>
		        </td>

		    </tr>
		    		    <tr>
		        <td align="center" colspan="2">

                    <asp:Button ID="btnSave" runat="server" Text="提 交" Width="80px" 
                        onclick="btnSave_Click" />
		        </td>

		    </tr>
		    		    </table>
    </div>
    </form>
</body>
</html>
