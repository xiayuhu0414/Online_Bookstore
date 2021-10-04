<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>个人中心</title>
</head>
<body>
<%
    List use = (List) session.getAttribute("er");
    for (int i = 0; i < use.size(); i++) {
        Map s = (Map) use.get(i);
        session.setAttribute("userid", s.get("userid"));
        session.setAttribute("name", s.get("name"));
        session.setAttribute("password", s.get("password"));
        session.setAttribute("number", s.get("number"));
    }
%>
<a>
    <form action="<%=request.getContextPath()%>/bookServlet" method="get">
        <input type="hidden" name="formname" value="4">
        <table>
            <tr>
                <td><input type="submit" id="ss" value='商城'></td>
            </tr>
        </table>
    </form>
</a>
<a href="constum.jsp">个人中心</a>
<a href="jsp/user/personalInformation/personalInformation.jsp">个人信息</a>
<a href="jsp/user/recording/recording.jsp">购物车</a>
<a href="jsp/user/businessOperations/businessOperations.jsp">订单管理</a>

<%
    String name = (String) session.getAttribute("name");
%>
欢迎<%=name%>





</body>
</html>
