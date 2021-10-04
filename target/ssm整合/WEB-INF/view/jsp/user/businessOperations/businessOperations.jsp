<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %><%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 2020/11/24
  Time: 17:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>个人中心</title>
</head>
<body>
<%
    List result129 = (List) session.getAttribute("bo");
%>
<a href="../../../goods.jsp">商城</a>
<a href="../../../constum.jsp">个人中心</a>
<a href="../personalInformation/personalInformation.jsp">个人信息</a>
<a href="../recording/recording.jsp">购物车</a>
<a href="./businessOperations.jsp">订单管理</a>

<div class="conter">
    <div>
        <table>
            <tr>
                <td>我的订单</td>
            </tr>
            <%
                for (int i = 0; i < result129.size(); i++) {
                    Map k = (Map) result129.get(i);
            %>
            <tr>

                <td>用户：<%=k.get("userid")%>
                </td>
                <td>书号：<%=k.get("coding")%>
                </td>
                <td>书名：<%=k.get("name")%>
                </td>
                <td>作者：<%=k.get("author")%>
                </td>
                <td>类型：<%=k.get("type")%>
                </td>
                <td>单价：<%=k.get("price")%>
                </td>
                <td>下单日期：<%=k.get("day")%>
                </td>
                <td>
                    <form action="<%=request.getContextPath()%>/bookServlet">
                        <input type="hidden" name="formname" value="3">
                        <input type="hidden" name="bz" value="5">
                        <input type="hidden" name="coding" value=<%=k.get("coding")%>>
                        <input type="hidden" name="userid" value=<%=k.get("userid")%>>
                        <input type="submit" value="删除订单">
                    </form>
                </td>
            </tr>
            <%}%>
        </table>

    </div>
</div>
</body>
</html>
