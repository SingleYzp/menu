<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<link rel="stylesheet" href="http://apps.bdimg.com/libs/bootstrap/3.3.4/css/bootstrap.min.css">
<script src="http://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
<script src="http://apps.bdimg.com/libs/jquery.cookie/1.4.1/jquery.cookie.min.js"></script>
<html>
<h1 align="center">登录页面</h1><br><br><br>
<form role="form"  action="/staff/login" method="post">
    <div class="center-block" style="width:350px;height:90px;">
        <div class="form-group">
            <input name="staNu" type="number" class="form-control" placeholder="Please Input Id:"><br>
        </div>
        <div class="form-group">
            <input name="staName" type="text" class="form-control"  placeholder="Please Input Name:"><br>
        </div>
        <div class="form-group">
            <input name="staPassword" type="password" class="form-control" placeholder="Password"><br>
        </div>
        <div class="html-editor-align-center form-group">
            <input type="submit" class="btn btn-default" value="login" />&nbsp;&nbsp;&nbsp;
            <input type="button" value="register" class="btn btn-default" onclick="window.location.href='/staff/jumpRegister'">
        </div>
    </div>

</form>
</html>
