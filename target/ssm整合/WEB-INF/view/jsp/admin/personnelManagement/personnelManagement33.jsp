<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %><%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 2020/11/29
  Time: 19:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/CSS" href="../css/typesetting.css">
</head>
<body>
<%
    List sult = (List) session.getAttribute("aa");

%>
<div class="father">
    <div class="top">
        <div class="img"><img src="../../../img/logo.png"></div>
        <div class="img2"><img style="width: 60px;height: 60px;" src="../img/管理员.png"></div>
        <p id="admin"><%=session.getAttribute("admin")%></p>
        <p id="dl"><a href="../../../administrator.jsp">书店管理</a></p>
        <p id="d2"><a href="../annouce/annouce.jsp">公告发布</a></p>
        <p id="d3"><a href="../bookAdmission/bookAdmission.jsp">图书入库</a></p>
        <p id="d4"><a href="../borrowing/borrowing.jsp">订单管理</a></p>
        <p id="d5"><a href="./personnelManagement.jsp">人员管理</a></p>
    </div>
    <div class="left">
        <p id="d6"><a href="personnelManagement.jsp">用户查询</a></p>
        <p id="d7"><a href="personnelManagement1.jsp">用户注册</a></p>
        <p id="d8"><a href="personnelManagement2.jsp">用户注销</a></p>
        <p id="d9"><a href="personnelManagement3.jsp">管理员认证</a></p>
        <p id="d10"><a href="personnelManagement4.jsp">修改密码</a></p></div>
    <div class="conter">
        <table>
                <%
        for (int i = 0; i < sult.size(); i++) {
            Map k = (Map) sult.get(i);
    %>
            <tr>
                <td>管理员编号：<%=k.get("nmbering")%>
                </td>
                <td>姓名：<%=k.get("name")%>
                </td>
                <td>联系方式：<%=k.get("number")%>
                </td>
                <td>
                    <form action="<%=request.getContextPath()%>/adminServlet" method="get">
                        <input type="hidden" name="formname" value="6">
                        <input type="hidden" name="ad" value="2">
                        <input type="hidden" name="admin" value="<%=k.get("nmbering")%>">
                        <input type="submit" value="撤销权限">
                    </form>
                </td>
            </tr>
                <%}%>
        </table>
        <form action="<%=request.getContextPath()%>/adminServlet" method="get">
            <input type="hidden" name="formname" value="3">
            <input type="hidden" name="ad" value="2">
            <input type="submit" value="刷新">
        </form>
    </div>
</div>
</body>
</html>
