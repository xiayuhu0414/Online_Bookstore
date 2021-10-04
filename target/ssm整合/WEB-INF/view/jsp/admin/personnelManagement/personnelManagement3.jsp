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

        <form action="<%=request.getContextPath()%>/adminServlet" method="get" >
            <input type="hidden" name="formname" value="3">
            <input type="hidden" name="ad" value="1">
            <table border="1">
                <tr>
                    <td colspan="2">管理员注册</td>
                </tr>
                <tr>
                    <td> 姓名：</td>
                    <td><input type="text" name="name"></td>
                </tr>
                <tr>
                    <td>联系方式：</td>
                    <td><input type="text" name="number"></td>
                </tr>
                <tr>
                    <input type="submit" value="提交">
                </tr>
            </table>
        </form>
    </div>
</div>


</body>
</html>