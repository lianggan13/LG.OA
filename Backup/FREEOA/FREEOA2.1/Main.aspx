<%@ Page Language="C#" AutoEventWireup="true" Inherits="Main, App_Web_dw6csvel" %>



<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <link href="text.css" rel="stylesheet" type="text/css" />
    <script language="javascript" src="images/skins/1/JScript1.js" type="text/javascript"></script>
    <style type="text/css">
        .a1 {
            BACKGROUND-IMAGE: url('images/skins/1/titlebg.gif');
            COLOR: 000000;
        }

        .a5 {
            BACKGROUND-IMAGE: url('images/skins/1/titlebg.gif');
            COLOR: 000000;
        }

        .a2 {
            BACKGROUND-COLOR: A4B6D7;
        }

        .a3 {
            BACKGROUND-COLOR: F2F8FF;
        }

        .a4 {
            BACKGROUND-COLOR: ECF5FF;
        }

        .a6 {
            BACKGROUND-COLOR: FFFFFF;
        }
    </style>
</head>
<body style="margin: 0px; border: 0px;">
    <form name="form1" runat="server" id="form1">
        <div>
            <table cellpadding="0" cellspacing="0" border="0" align="center" style="width: 96%; height: 344px">
                <tr style="height: 10px">
                    <td style="width: 60%"></td>
                    <td style="width: 2%"></td>
                    <td style="width: 28%"></td>
                </tr>
                <tr style="height: 260px">
                    <td style="width: 60%;" valign="top">
                        <table class="a2" cellspacing="1" cellpadding="1" width="100%" align="center" border="0" style="height: 100%">
                            <tr>
                                <td align="center" width="5%" bgcolor="#ffffff">
                                    <img src="Images/desktop/news.gif">
                                </td>
                                <td class="a1" height="25">&nbsp; 公司新闻
                                </td>
                                <td width="15%" class="a1" align="right">
                                    <a href="UserWork/News.aspx">
                                        <img src="Images/more1.gif" border="0" /></a>&nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td class="a4" colspan="3" style="line-height: 150%">
                                    <%=newsContent %></td>
                            </tr>
                        </table>
                    </td>
                    <td style="width: 2%"></td>
                    <td style="width: 28%" valign="top" rowspan="3">
                        <table style="width: 100%; height: 100%">
                            <tr style="height: 33%">
                                <td valign="top">

                                    <table class="a2" cellspacing="1" cellpadding="1" align="center" width="100%" height="100%">
                                        <tr>
                                            <td align="center" width="5%" bgcolor="#ffffff">
                                                <img
                                                    src="Images/desktop/email.gif" style="height: 12px; width: 14px;">
                                            </td>
                                            <td class="a1" height="25">&nbsp; 我的邮件     </td>
                                            <td width="15%" class="a1" align="right">
                                                <a href="UserWork/Bottom.aspx">
                                                    <img src="Images/more1.gif" border="0" /></a>&nbsp;
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="a4" colspan="3" style="line-height: 150%" valign="top">
                                                <%=emailContent %></td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr style="height: 33%">
                                <td valign="top">

                                    <table class="a2" cellspacing="1" cellpadding="1" align="center" width="100%" height="100%">
                                        <tr>
                                            <td align="center" width="5%" bgcolor="#ffffff">
                                                <img
                                                    src="Images/desktop/task.gif" style="width: 16px; height: 13px">
                                            </td>
                                            <td class="a1" height="25">&nbsp; 我的工作流     </td>
                                            <td width="15%" class="a1" align="right">
                                                <a href="UserWork/PlanManage.aspx">
                                                    <img src="Images/more1.gif" border="0" /></a>&nbsp;
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="a4" colspan="3" style="line-height: 150%" valign="top">
                                                <%=flowContent %></td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td valign="top">

                                    <table class="a2" cellspacing="1" cellpadding="1" align="center" width="100%" height="100%">
                                        <tr>
                                            <td align="center" width="5%" bgcolor="#ffffff">
                                                <img
                                                    src="Images/desktop/plan.gif">
                                            </td>
                                            <td class="a1" height="25">&nbsp; 我的工作计划     </td>
                                            <td width="15%" class="a1" align="right">
                                                <a href="UserWork/PlanManage.aspx">
                                                    <img src="Images/more1.gif" border="0" /></a>&nbsp;
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="a4" colspan="3" style="line-height: 150%" valign="top">
                                                <asp:DataList ID="DataList4" runat="server" Width="253px">
                                                    <ItemTemplate>
                                                        <table style="width: 100%">
                                                            <tr>
                                                                <td>
                                                                    <a href="UserWork/PlanInFo.aspx?planid=<%#Eval("planid")%>"><%#Eval("topic")%></a>
                                                                </td>
                                                                <td align="right">
                                                                    <%#Eval("progress") %>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </ItemTemplate>
                                                </asp:DataList></td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr style="height: 10px">
                    <td style="width: 60%"></td>
                    <td style="width: 2%"></td>
                </tr>
                <tr style="height: 250px">
                    <td style="width: 60%" valign="top">

                        <table align="center" border="0" cellpadding="1" cellspacing="1" class="a2"
                            width="100%" style="height: 100%">
                            <tr>
                                <td align="center" bgcolor="#ffffff" width="5%">
                                    <img src="Images/desktop/note.gif" />
                                </td>
                                <td class="a1" height="25">&nbsp; 公司公告</td>
                                <td align="right" class="a1" width="15%">
                                    <a href="notice/allnotice.aspx">
                                        <img border="0" src="Images/more1.gif" /></a>&nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td class="a4" colspan="3" style="line-height: 150%" valign="top">
                                    <%=noticeContent %></td>
                            </tr>
                        </table>
                        <br />
                    </td>
                    <td style="width: 2%"></td>
                </tr>

                <tr>
                    <td style="width: 60%" valign="top">&nbsp;</td>
                    <td style="width: 2%">&nbsp;</td>
                    <td style="width: 28%" valign="top">&nbsp;</td>
                </tr>

            </table>
        </div>




    </form>
</body>
</html>
