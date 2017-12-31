<%--suppress JSAnnotator --%>
<%--suppress JSAnnotator --%>
<%--
  Created by IntelliJ IDEA.
  User: yzp
  Date: 2017/12/23
  Time: 17:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="http://apps.bdimg.com/libs/bootstrap/3.3.4/css/bootstrap.min.css">
<script src="http://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
<script src="http://apps.bdimg.com/libs/jquery.cookie/1.4.1/jquery.cookie.min.js"></script>

<script type="text/javascript">
    function check(event) {
        var pwd = document.getElementsByName("staPWD").valueOf();
        var repwd= document.getElementsByName("staRePWD").valueOf();
        if(document.getElementsByName("staName")==null){
            alert("please Input your name")
            if(event.preventDefault)
                event.preventDefault();
            else
                event.returnValue = false;
        } else {
            return true;
        }
        if(pwd != repwd || pwd==null || repwd==null){
            alert("the password is not matched!please input agin");;
            if(event.preventDefault)
                event.preventDefault();
            else
                event.returnValue = false;
        } else {
            return true;
        }
    }
</script>

<html>
<head>
    <title>register</title>
</head>
<body>
<h1 align="center">注册页面</h1><br><br><br>
<form action="/staff/registerCustomer" method="post">
    <div class="center-block" style="width: 200px;height: auto">
        <div class="form-group">
            <input type="text" name="staName" class="form-control" placeholder="please Input your name">
        </div>
        <div class="form-group">
            <input type="radio" name="staGender" class="btn btn-default" value="male">male  &nbsp;&nbsp;&nbsp;
            <input type="radio" name="staGender" class="btn btn-default" value="female">female
        </div>
        <div class="form-group">
            <input type="text" name="staPhone" class="form-control" placeholder="Please Input you phone number">
        </div>
        <div class="form-group">
            <input type="password" name="staPWD" class="form-control" placeholder="Please Input password">
            <input type="password" name="staRePWD" class="form-control" placeholder="Please Input password agin">
        </div>
        <div class="form-group">
            <input type="submit" class="btn btn-default" name="registerCustomer" value="registerCustomer" onclick="check(event)">&nbsp;&nbsp;&nbsp;
            <input type="button" value="reback" class="btn btn-default" onclick="window.location.href='/staff/jumpIndex'">
        </div>
    </div>
</form>
</body>
</html>
