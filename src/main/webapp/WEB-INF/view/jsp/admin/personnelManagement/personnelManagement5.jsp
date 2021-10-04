<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel ="stylesheet" type="text/CSS" href="../css/typesetting.css">
</head>
<body>
<%
    List result1 = (List) session.getAttribute("oo");//信息
    List result2 = (List) session.getAttribute("mm");//记录

%>
<div class="father">
    <div class="top">
        <div class="img"><img  src="../../../img/logo.png"></div>
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
        <p id="d10"><a href="personnelManagement4.jsp">修改密码</a></p>
    </div>

    <div class="conter">
        <div class="search bar1"> <form action="<%=request.getContextPath()%>/adminServlet" method="get">
            <input type="hidden" name="formname" value="5">
            <input type="hidden" name="rebook" value="2">
            <input type="text" name="id">
            <input type="submit" value="查询">
        </form></div>
        <div>
            <table>
                <tr><td>用户信息</td></tr>
                <%
                    for (int i = 0; i < result1.size(); i++) {
                        Map k = (Map) result1.get(i);
                %>
                <tr>
                    <td>用户账号：<%=k.get("userid")%>
                    </td>
                    <td>姓名：<%=k.get("name")%>
                    </td>
                </tr>
                <%}%>
            </table>

        </div>
        <div>
            <table>
                <tr><td>订单记录</td></tr>
                <%
                    for (int i = 0; i < result2.size(); i++) {
                        Map k = (Map) result2.get(i);
                %>
                <tr>
                    <td>图书编号：<%=k.get("coding")%>
                    </td>
                    <td>书名：<%=k.get("name")%>
                    </td>
                    <td>作者：<%=k.get("author")%>
                    </td>
                    <td>下单日期：<%=k.get("day")%>
                    </td>
                    <td>单价：<%=k.get("price")%>
                    </td>
                </tr>
                <%}%>
            </table>

        </div>
    </div>
</div>
</body>
</html>
