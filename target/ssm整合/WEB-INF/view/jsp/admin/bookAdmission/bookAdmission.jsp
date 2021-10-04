<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 2020/11/24
  Time: 17:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>后台管理</title>
    <link rel ="stylesheet" type="text/CSS" href="../css/typesetting.css">
</head>
<body>
<div class="father">
    <div class="top"><div class="img"><img  src="../../../img/logo.png"></div>
        <div class="img2"><img style="width: 60px;height: 60px;" src="../img/管理员.png"></div>
        <p id="admin"><%=session.getAttribute("admin")%></p>
        <p id="dl"><a href="../../../administrator.jsp">书店管理</a></p>
        <p id="d2"><a href="../annouce/annouce.jsp">公告发布</a></p>
        <p id="d3"><a href="./bookAdmission.jsp">图书入库</a></p>
        <p id="d4"><a href="../borrowing/borrowing.jsp">订单管理</a></p>
        <p id="d5"><a href="../personnelManagement/personnelManagement.jsp">人员管理</a></p>
    </div>
    <div class="left"></div>
    <div class="conter">
        <form action="<%=request.getContextPath()%>/bookServlet" method="get">
            <input type="hidden" name="formname" value="1">
            <table>
                <tr>
                    <td>图书入库</td>
                </tr>
                <tr>
                    <td>图书编号:</td>
                    <td><input type="text" name="co"></td>
                </tr>
                <tr>
                    <td>书名:</td>
                    <td><input type="text" name="na"></td>
                </tr>
                <tr>
                    <td>类型:</td>
                    <td><input type="text" name="ty"></td>
                </tr>
                <tr>
                    <td>作者:</td>
                    <td><input type="text" name="au"></td>
                </tr>
                <tr>
                    <td>出版社:</td>
                    <td><input type="text" name="pr"></td>
                </tr>
                <tr>
                    <td>IBSN:</td>
                    <td><input type="text" name="ib"></td>
                </tr>
                <tr>
                    <td>数量:</td>
                    <td><input type="text" name="to"></td>
                </tr>
                <tr>
                    <td>简介:</td>
                    <td><input type="text" name="in"></td>
                </tr>
                <tr>
                    <td>价格:</td>
                    <td><input type="text" name="ian"></td>
                </tr>
                <tr>
                    <td><input type="reset" value="重置"></td>
                    <td><input type="submit" value="提交"></td>
                </tr>
            </table>
        </form>
    </div>
</div>

</body>
</html>
