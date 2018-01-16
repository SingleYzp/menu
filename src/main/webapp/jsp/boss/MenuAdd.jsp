<%--
  Created by IntelliJ IDEA.
  User: yzp
  Date: 2018/1/16
  Time: 20:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="http://apps.bdimg.com/libs/bootstrap/3.3.4/css/bootstrap.min.css">
<script src="http://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
<script src="http://apps.bdimg.com/libs/jquery.cookie/1.4.1/jquery.cookie.min.js"></script>
<html>
<head>
    <title>Menu Add</title>
</head>
<script type="text/javascript">
    function check(event) {
        var meNu = document.getElementsByName("meNu").valueOf();
        var meName = document.getElementsByName("meName").valueOf();
        var mePrice = document.getElementsByName("mePrice").valueOf();
        var meType = document.getElementsByName("meType").valueOf();
        var meRemark = document.getElementsByName("meRemark").valueOf();
        if (meName==null || meNu==null||mePrice==null||meType==null||meRemark==null) {
            alert("please fill All Menu Data")
            if (event.preventDefault)
                event.preventDefault();
            else
                event.returnValue = false;
        } else {
            return true;
        }
    }
</script>
<body>
<form action="/menu/menuAdd" method="post">
    <div class="center-block" style="width: 200px;height: auto">
        <div class="form-group">
            <input type="number" name="meNu" class="form-control" placeholder="please Input menu ID">
        </div>
        <div class="form-group">
            <input type="text" name="meName" class="form-control" placeholder="Please Input menu Name">
        </div>
        <div class="form-group">
            <input type="number" name="mePrice" class="form-control" placeholder="Please Input The menu price">
        </div>
        <div class="form-group">
            <input type="text" name="meType" class="form-control" placeholder="Please Input menu Type">
            <input type="text" name="meRemark" class="form-control" placeholder="Please Input menu remark">
        </div>
        <div class="form-group">
            <input type="submit" class="btn btn-default" name="MenuAdd" value="AddMenu" onclick="check(event)">&nbsp;&nbsp;&nbsp;
            <input type="button" value="reback" class="btn btn-default" onclick="window.location.href='/staff/loginSuccess#OrderManager'">
        </div>
    </div>
</form>
</body>
</html>
