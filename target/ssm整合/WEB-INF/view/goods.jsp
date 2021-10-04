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
    <div class="ss">
        <input type="hidden" name="formname" value="2">
        <table class="bb">
            <tr>
                <td colspan="2">图书查找</td>
                <td><input type="text" name="na" id="ssk"></td>
                <td><input type="submit" id="ss" value="搜索"></td>
            </tr>
        </table>
    </div>
</form>
<%String userid = (String) session.getAttribute("userid");%>
<div class="nm">
    <div class="nm1">
        <form action="<%=request.getContextPath()%>/operatingDataServlet" method="get">
            <input type="hidden" name="formname" value="2">
            <table>
                <tr>
                    <td><input type="submit" value="我的购物车"></td>
                </tr>
            </table>
        </form>
    </div>
    <div class="nm1">
        <form action="<%=request.getContextPath()%>/operatingDataServlet" method="get">
            <input type="hidden" name="formname" value="5">
            <table>
                <tr>
                    <td><input type="submit" value="我的订单"></td>
                </tr>
            </table>
        </form>
    </div>
</div>
<div class="k">
    <table class="kk">
        <%
            for (int i = 0; i < result.size(); i++) {
                Map k = (Map) result.get(i);
        %>
        <tr>
            <td><%=i + 1%>.</td>
            <td>图书编号：<%=k.get("coding")%>
            </td>
            <td>书名：<%=k.get("name")%>
            </td>
            <td>作者：<%=k.get("author")%>
            </td>
            <td>类型：<%=k.get("type")%>
            </td>
            <td>出版商：<%=k.get("press")%>
            </td>
            <td>IBSN：<%=k.get("ibsn")%>
            </td>
            <td>余量：<%=k.get("total")%>
            </td>
            <td class="jian">简介：<%=k.get("introduction")%>
            </td>
            <td>
                <form action="<%=request.getContextPath()%>/operatingDataServlet" method="get" name="form1">
                    <input type="hidden" name="formname" value="1">
                    <table>
                        <tr>
                            <td><input type="hidden" name="for" value=<%=k.get("coding")%>>
                                <input type="hidden" name="or" value=<%=userid%>>
                                <input type="text" name="2" placeholder="数量"></td>
                            <td><input type="submit" value="加入购物车"></td>
                        </tr>
                    </table>
                </form>
            </td>
        </tr>
        <%}%>
    </table>
</div>
</body>
</html>
