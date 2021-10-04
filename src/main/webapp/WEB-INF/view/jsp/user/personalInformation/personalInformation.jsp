<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 2020/11/24
  Time: 17:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>个人信息</title>
</head>
<body>
<a href="../../../goods.jsp">商城</a>
<a href="../../../constum.jsp">个人中心</a>
<a href="./personalInformation.jsp">个人信息</a>
<a href="../recording/recording.jsp">购物车</a>
<a href="../businessOperations/businessOperations.jsp">订单管理</a>
<a href="details.jsp">修改信息</a>

<form action="<%=request.getContextPath()%>/userServlet" method="get">
    学号：<input type="text" name="" placeholder="<%=session.getAttribute("userid")%>"><br>
    用户名：<input type="text" name=""placeholder="<%=session.getAttribute("name")%>"><br>
    号码：<input type="text" name="" placeholder="<%=session.getAttribute("number")%>"><br>
    密码：<input type="password" name="" placeholder="<%=session.getAttribute("password")%>"><br>
    <input type="submit" value="提交">
    <input type="reset" value="重置">
</form>
</body>
</html>
