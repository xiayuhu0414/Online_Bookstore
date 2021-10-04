<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %><%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 2020/11/24
  Time: 17:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>购物车</title>
</head>
<body>
<%
    List result = (List) session.getAttribute("byo");

%>
<a href="../../../goods.jsp">商城</a>
<a href="../../../constum.jsp">个人中心</a>
<a href="../personalInformation/personalInformation.jsp">个人信息</a>
<a href="./recording.jsp">购物车</a>
<table>
    <%
        for (int i = 0; i < result.size(); i++) {
            Map k = (Map) result.get(i);
    %>
    <tr>
        <td>图书编号：<%=k.get("coding")%>
        </td>
        <td>书名：<%=k.get("name")%>
        </td>
        <td>作者：<%=k.get("author")%>
        </td>
        <td>出版社：<%=k.get("press")%>
        </td>
        <td>日期：<%=k.get("date")%>
        </td>
        <td>数量：<%=k.get("num")%>
        </td>
        <td>单价：<%=k.get("price")%>
        </td>
        <td>
            <form action="<%=request.getContextPath()%>/operatingDataServlet">
                <input type="hidden" name="formname" value="3">
                <input type="hidden" name="coding" value="<%=k.get("coding")%>">
                <input type="hidden" name="userid" value="<%=k.get("userid")%>">
                <input type="submit" value="移出购物车">
            </form>
        </td>
        <td>
            <form action="<%=request.getContextPath()%>/operatingDataServlet">
                <input type="hidden" name="formname" value="4">
                <input type="hidden" name="coding" value="<%=k.get("coding")%>">
                <input type="hidden" name="userid" value="<%=k.get("userid")%>">
                <input type="hidden" name="quantiy" value="<%=k.get("num")%>">
                <input type="hidden" name="price" value="<%=k.get("price")%>">
                <input type="submit" value="立即购买">
            </form>
        </td>
    </tr>
    <%}%>
</table>
</body>
</html>
