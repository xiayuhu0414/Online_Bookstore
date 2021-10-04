<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %><%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 2020/11/25
  Time: 19:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/CSS" href="./css/searchResult.css">
</head>
<body>
<%
    List result = (List) session.getAttribute("book");

%>
<form action="<%=request.getContextPath()%>/bookServlet" method="get">
    <div class="jj">

    </div>
    <div class="ss">
        <input type="hidden" name="formname" value="4">
        <table class="bb">
            <tr>
                <td colspan="2">图书查找</td>
                <td><input type="text" name="na" id="ssk"></td>
                <td><input type="submit" id="ss" value="搜索"></td>
            </tr>
        </table>
    </div>
</form>

<div class="k">
    <table class="kk">
        <%
            for (int i = 0; i < result.size(); i++) {
                Map k = (Map) result.get(i);
        %>
        <tr>
            <td>图书编号：<%=k.get("coding")%>
            </td>
            <td class="jian">简介：<%=k.get("introduction")%>
            </td>
        </tr>
        <tr>
            <td>类型：<%=k.get("type")%>
            </td>
        </tr>
        <tr>
            <td>书名：<%=k.get("name")%>
            </td>
        </tr>
        <tr>
            <td>作者：<%=k.get("author")%>
            </td>
        </tr>
        <tr>
            <td>出版商：<%=k.get("press")%>
            </td>
        </tr>
        <tr>
            <td>IBSN：<%=k.get("ibsn")%>
            </td>
        </tr>
        <tr>
            <td>余量：<%=k.get("total")%>
        </tr>

        <%}%>
    </table>
</div>
</body>
</html>
