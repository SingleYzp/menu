<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: aa123
  Date: 2018/1/7
  Time: 20:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>AddPeople</title>

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<div>
    <form role="form" action="/staff/AddPeople">
        <div class="form-group">
            <label for="id">id</label>
            <input type="text" class="form-control" id="id" name="staNu" placeholder="输入id">
        </div>
        <div class="form-group">
            <label for="name">姓名</label>
            <input type="text" class="form-control" id="name" name="staName" placeholder="输入姓名">
        </div>
        <div class="radio form-group">
            <label>
                <input type="radio" name="staGender" id="female" value="female">男
            </label>
            <label>
                <input type="radio" name="staGender" id="male" value="male" checked>女
            </label>
        </div>

        <div class="form-group">
            <label for="position">选择职位</label>
            <select class="form-control" id="position" name="staPosition" class="form-control">
                <option value="经理">经理</option>
                <option value="厨师">厨师</option>
                <option value="收银员">收银员</option>
                <option value="服务员">服务员</option>
            </select>
        </div>
        <div class="form-group">
            <label for="tel">联系电话</label>
            <input type="text" class="form-control" id="tel" name="staPhone" placeholder="输入联系电话">
        </div>
        <div class="row">
        <div class="form-group">
            <label for="password">密码</label>
            <input type="password" class="form-control" id="password" name="staPwd" placeholder="输入密码">
        </div>
        </div>
        <div class="form-group">
            <input type="submit" class="form-control" value="提交">
        </div>
    </form>
</div>

</body>
</html>
