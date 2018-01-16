<%--
  Created by IntelliJ IDEA.
  User: yzp
  Date: 2017/12/23
  Time: 16:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="http://apps.bdimg.com/libs/bootstrap/3.3.4/css/bootstrap.min.css">
<script src="http://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
<script src="http://apps.bdimg.com/libs/jquery.cookie/1.4.1/jquery.cookie.min.js"></script>
<!doctype html>
<html>
<head>
    <title>bossIndex</title>
</head>
<body>
<nav class="navbar navbar-default" role="navigation">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand active" href="#">BossView</a>
        </div>
        <div>
            <ul class="nav navbar-nav">
                <li><a href="#PeopleManager">PeopleManager</a></li>
                <li><a href="#OrderManager">OrderManager</a></li>
            </ul>
        </div>

    </div>
</nav>
<div class="container" id="view">
    在这里显示内容

</div>
<script id="homePage" type="text/html">
<div > 默认主页</div>
</script>
<script id="PeopleManager" type="text/html">
    <div>
        PeopleManager
        <jsp:include page="/staff/getStaffs"></jsp:include>
    </div>
</script>
<script id="OrderManager" type="text/html">
    <div>
        OrderManager
        <jsp:include page="/menu/getMenus"></jsp:include>
    </div>
</script>

<script type="text/javascript">
    $(function () {
        var hashMsg = location.hash;
        hashPage(hashMsg);
        $(window).on('hashchange',function(e){
            hashMsg = location.hash;
            hashPage(hashMsg);
        })
    });
    function hashPage(hashMsg)
    {
        var hashArr = ['#PeopleManager','#OrderManager'];
        var demo = $('#view');
        hashMsg = hashArr.indexOf(hashMsg) > -1 ? hashMsg : '#homePage';
        demo.html($(hashMsg).html());
    }
</script>
</body>
</html>
