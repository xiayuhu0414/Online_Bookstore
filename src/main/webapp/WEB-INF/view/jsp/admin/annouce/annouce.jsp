<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %><%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 2020/11/24
  Time: 17:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" type="text/CSS" href="../css/typesetting.css">
    <title>后台管理</title>
</head>
<body>
<div class="father">
    <div class="top">
        <div class="img"><img src="../../../img/logo.png"></div>
        <div class="img2"><img style="width: 60px;height: 60px;" src="../img/管理员.png"></div>
        <p id="admin"><%=session.getAttribute("admin")%></p>
        <p id="dl"><a href="../../../administrator.jsp">书店管理</a></p>
        <p id="d2"><a href="./annouce.jsp">公告发布</a></p>
        <p id="d3"><a href="../bookAdmission/bookAdmission.jsp">图书入库</a></p>
        <p id="d4"><a href="../borrowing/borrowing.jsp">订单管理</a></p>
        <p id="d5"><a href="../personnelManagement/personnelManagement.jsp">人员管理</a></p>
    </div>
    <div class="left"></div>
    <div class="conter">
        <div>
            <div> <form action="<%=request.getContextPath()%>/adminServlet" method="get">
                <input type="hidden" name="formname" value="6">
               标题：<input type="text" name="title">
                内容：<textarea rows="10" cols="30" name="content">
我是一个文本框。
</textarea>
                <input type="submit" value="发布">
            </form>

        </div>
    </div>
</div>
<%
    Date date = new Date();
    SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
%>
<%--<form name="form1" method="post" action="save.asp">
    <table width="500" border="0" align="center" cellpadding="5" cellpadding="0">
        <tr align="center" bgcolor="#0066666">
            <td colspan="2"><font color="#FFFFFF">新闻录入</font></td>
        </tr>
        <tr align="center" bgcolor="#FFFFFF">
            <td align="right">录入时间：</td>
            <td align="left"><%=format.format(date)%>
            </td>
        </tr>
        <tr align="center" bgcolor="#FFFFFF">
            <td align="right">公告标题：</td>
            <td align="left"><input name="title" type="text" id="title" size="38"></td>
        </tr>
        <tr>
            <td width="104" align="right">公告内容：</td>
            <td width="374"><textarea name="content" cols="50" rows="8" id="content"></textarea></td>
        </tr>
        <tr>
            <td align="right">录入者：</td>
            <td><input name="name" type="text" id="name"></td>
        </tr>
        <tr align="center" valign="top">
            <td colspan="2"><input type="submit" name="Submit" value="确定提交">&nbsp;&nbsp;<input type="submit"
                                                                                               name="Submit2"
                                                                                               value="重新输入"></td>
        </tr>
    </table>
</form>--%>
</body>
</html>
