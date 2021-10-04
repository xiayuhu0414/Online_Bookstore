<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>管理员界面</title>
    <link rel="stylesheet" type="text/CSS" href="./css/typesetting.css">
</head>
<body>
<%
    List result3 = (List) session.getAttribute("shu");//记录
%>
<div class="father">
    <div class="top">
        <div class="img"><img src="./img/logo.png"></div>
        <div class="img2"><img style="width: 60px;height: 60px;" src="./img/管理员.png"></div>
        <p id="admin"><%=session.getAttribute("admin")%>
        </p>
        <p id="dl"><a href="administrator.jsp">书店管理</a></p>
        <p id="d2"><a href="jsp/admin/annouce/annouce.jsp">公告</a></p>
        <p id="d3"><a href="jsp/admin/bookAdmission/bookAdmission.jsp">图书入库</a></p>
        <p id="d4"><a href="jsp/admin/borrowing/order.jsp">订单管理</a></p>
        <p id="d5"><a href="jsp/admin/personnelManagement/personnelManagement.jsp">人员管理</a></p>
    </div>
    <div class="left">
        <p id="d6"><a href="./jsp/admin/borrowing/returnBook.jsp">删除订单</a></p>
        <p id="d7"><a href="./jsp/admin/personnelManagement/personnelManagement1.jsp">用户注册</a></p>
        <p id="d8"><a href="./jsp/admin/personnelManagement/personnelManagement.jsp">用户信息</a></p>
        <p id="d9"><a href="./jsp/admin/annouce/annouce.jsp">发布公告</a></p></div>
</div>
<div class="conter">
        <table>
            <tr>
                <td>图书管理</td>
            </tr>
            <%
                for (int i = 0; i < result3.size(); i++) {
                    Map k = (Map) result3.get(i);
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
                <td>类型：<%=k.get("type")%>
                </td>
                <td>IBSN：<%=k.get("ibsn")%>
                </td>
                <td>库存：<%=k.get("total")%>
                </td>
                <td>价格：<%=k.get("price")%>
                </td>
                <td>
                    <form action="./jsp/admin/bookAdmission/bookAdmission2.jsp" method="get">
                        <input type="hidden" name="rmn" value=<%=i%>>
                        <input type="hidden" name="coding" value="<%=k.get("coding")%>">
                        <a href="./jsp/admin/bookAdmission/bookAdmission2.jsp"><input type="submit" value="信息更新"></a>
                    </form>
                </td>
                <td>
                    <form action="<%=request.getContextPath()%>/bookServlet">
                        <input type="hidden" name="formname" value="6">
                        <input type="hidden" name="coding" value="<%=k.get("coding")%>">
                        <input type="submit" value="图书下架">
                    </form>
                </td>
            </tr>
            <%}%>
        </table>
</div>
</div>
</body>
</html>
