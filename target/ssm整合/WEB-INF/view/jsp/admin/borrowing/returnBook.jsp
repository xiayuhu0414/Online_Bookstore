<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>订单查询</title>
    <link rel ="stylesheet" type="text/CSS" href="../css/typesetting.css">
</head>
<body>
<div class="father">
    <div class="top"><div class="img"><img  src="../../../img/logo.png"></div>
        <div class="img2"><img style="width: 60px;height: 60px;" src="../img/管理员.png"></div>
        <p id="admin"><%=session.getAttribute("admin")%></p>
        <p id="dl"><a href="../../../administrator.jsp">书店管理</a></p>
        <p id="d2"><a href="../annouce/annouce.jsp">公告发布</a></p>
        <p id="d3"><a href="../bookAdmission/bookAdmission.jsp">图书入库</a></p>
        <p id="d4"><a href="borrowing.jsp">订单管理</a></p>
        <p id="d5"><a href="../personnelManagement/personnelManagement.jsp">人员管理</a></p>
    </div>
    <div class="left">
        <p id="d6"><a href="./borrowing.jsp">订单处理</a></p>
        <p id="d7"><a href="returnBook.jsp">删除订单</a></p>
        <p id=""><a href="order.jsp">全部订单</a></p>
    </div>
    <div class="conter">
        <div> <form action="<%=request.getContextPath()%>/adminServlet" method="get">
            <input type="hidden" name="formname" value="5">
            <input type="hidden" name="rebook" value="1">
            <input type="text" name="id">
            <input type="submit" value="查询">
        </form></div>
    </div>
</div>
</body>
</html>
