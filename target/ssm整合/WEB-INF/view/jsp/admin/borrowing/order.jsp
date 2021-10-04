<%--
  Created by IntelliJ IDEA.
  User: 夏玉虎
  Date: 2021/7/3
  Time: 19:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %><%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 2020/11/29
  Time: 13:58
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
    List result12 = (List) session.getAttribute("kj");
%>
<div class="father">
    <div class="top">
        <div class="img"><img src="../../../img/logo.png"></div>
        <div class="img2"><img style="width: 60px;height: 60px;" src="../img/管理员.png"></div>
        <p id="admin"><%=session.getAttribute("admin")%>
        </p>
        <p id="dl"><a href="../../../administrator.jsp">书店管理</a></p>
        <p id="d2"><a href="../annouce/annouce.jsp">公告发布</a></p>
        <p id="d3"><a href="../bookAdmission/bookAdmission.jsp">图书入库</a></p>
        <p id="d4"><a href="../borrowing/borrowing.jsp">订单管理</a></p>
        <p id="d5"><a href="../personnelManagement/personnelManagement.jsp">人员管理</a></p>
    </div>
    <div class="left">
        <p id="d6"><a href="./borrowing.jsp">订单处理</a></p>
        <p id="d7"><a href="returnBook.jsp">删除订单</a></p>

    </div>
    <div class="conter">
        <div>
            <table>
                <tr>
                    <td>订单记录</td>
                </tr>
                <%
                    for (int i = 0; i < result12.size(); i++) {
                        Map k = (Map) result12.get(i);
                %>
                <tr>
                    <td>日期：<%=k.get("day")%>
                    </td>
                    <td>用户：<%=k.get("userid")%>
                    </td>
                    <td>书号：<%=k.get("coding")%>
                    </td>
                    <td>数量：<%=k.get("quantiy")%>
                    </td>
                    <td>总价：<%=k.get("price")%>
                    </td>
                    <td>
                        <form action="<%=request.getContextPath()%>/orderServlet">
                            <input type="hidden" name="formname" value="2">
                            <input type="hidden" name="coding" value=<%=k.get("coding")%>>
                            <input type="hidden" name="userid" value=<%=k.get("userid")%>>
                            <input type="submit" value="删除订单">
                        </form>
                    </td>
                    <td>
                        <form action="<%=request.getContextPath()%>/bookServlet">
                            <input type="hidden" name="formname" value="7">
                            <input type="hidden" name="ding" value=<%=k.get("coding")%>>
                            <input type="hidden" name="rid" value=<%=k.get("userid")%>>
                            <input type="hidden" name="quantiy" value=<%=k.get("quantiy")%>>
                            <input type="submit" value="确认订单">
                        </form>
                    </td>
                </tr>
                <%}%>
            </table>

        </div>
    </div>
</div>
</body>
</html>
