<%--
  Created by IntelliJ IDEA.
  User: aa123
  Date: 2018/1/9
  Time: 14:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="http://apps.bdimg.com/libs/bootstrap/3.3.4/css/bootstrap.min.css">
<script src="http://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
<script src="http://apps.bdimg.com/libs/jquery.cookie/1.4.1/jquery.cookie.min.js"></script>

<script type="text/javascript">

    function setValue() {
        var radioValue = '${staff.getStaGender()}';
        var selectValue = '${staff.getStaPosition()}';
        var radio = [document.getElementById("gender_m"),document.getElementById("gender_f")];
        var value = radio[0].value;
        if(value.indexOf(radioValue) == 0)
            radio[0].checked = true;
        else
            radio[1].checked = true;
        document.getElementById("position").value = selectValue;
    }

    function submint()
    {
        var d = "staNu=${staff.getStaNu()}&staName="+$("input[name='staName']").val()+
            "&staGender="+ $("input:radio[name='staGender']:checked").val()+
            "&staPosition="+$("#position").val()+
            "&staPhone=" +$("input[name='staPhone']").val()+
            "&staPwd=" +$("input[name='staPwd']").val();
        alert($("input[name='staName']").val());
        $.ajax({type:"post",
                url:"/staff/revies",
                data:d,
                async:false,
                success:function () {
                    window.open("/staff/loginSuccess","_self");
                }
        });
    }
</script>
<!doctype html>
<html>
<head>
    <title>编辑人员信息</title>
</head>
<body onload="setValue()">
<div class="container">
<form role="form">
    <!--
    <div class="form-group">
        <label for="staNu">id</label>
        <input type="text" class="form-contro" name="staNu" id="staNu" value="${staff.getStaNu()}" >
    </div>
    -->
    <div class="form-group">
        <label for="name">姓名</label>
        <input type="text" class="form-control" name="staName" id="name" placeholder="输入姓名" value="${staff.getStaName()}">
    </div>
    <div class="radio form-group">
        <label>
            <input type="radio" name="staGender" id="gender_m" value="male">男
        </label>
        <label>
            <input type="radio" name="staGender" id="gender_f" value="female">女
        </label>
    </div>

    <div class="form-group">
        <label for="position">选择职位</label>
        <select class="form-control" id="position" name="staPosition" class="form-control">
            <option value="boss">经理</option>
            <option value="cook">厨师</option>
            <option value="cashier">收银员</option>
            <option value="waiter">服务员</option>
            <option value="customer">顾客</option>
        </select>
    </div>
    <div class="form-group">
        <label for="tel">联系电话</label>
        <input type="text" class="form-control" id="tel" name="staPhone" placeholder="输入联系电话" value="${staff.getStaPhone()}">
    </div>
    <div class="row">
        <div class="form-group col-lg-4">
            <label for="password">密码</label>
            <input type="password" class="form-control" id="password" name="staPwd" placeholder="输入密码" value="${staff.getStaPwd()}">
        </div>
    </div>
    <div class="form-group">
        <input type="button" class="form-control" value="完成" onclick="submint()">
    </div>
</form>
</div>
</body>
</html>
