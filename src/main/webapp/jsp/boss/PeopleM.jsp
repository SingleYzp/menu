<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: aa123
  Date: 2018/1/7
  Time: 19:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="panel panel-default">
    <div class="panel-heading">
        <h3 class="panel-title">人员信息</h3>
    </div>
    <div class="panel-body">
        <a href="#addPeople" >新增</a>
    </div>
    <div id="body">
        <div>
            <table class="table table-hover">
                <thead>
                <tr>
                    <th>编号</th>
                    <th>姓名</th>
                    <th>性别</th>
                    <th>职位</th>
                    <th>联系电话</th>
                    <th>密码</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="staff" items="${Staffs}">
                    <tr>
                        <td>${staff.getStaNu()}</td>
                        <td>${staff.getStaName()}</td>
                        <td>${staff.getStaGender()}</td>
                        <td>${staff.getStaPosition()}</td>
                        <td>${staff.getStaPhone()}</td>
                        <td>${staff.getStaPwd()}</td>
                        <td>
                            <a href="/staff/jumpRevies?staNu=${staff.getStaNu()}" >编辑</a>
                            <a href="/staff/delete?staNu=${staff.getStaNu()}" >删除</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>

    </div>
    <script id="info" type="text/html">
        <div>
            <label class="label">
                用户id已存在!
            </label>
        </div>
    </script>

    <script id="addPeople" type="text/html">
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
                        <option value="boss">经理</option>
                        <option value="cook">厨师</option>
                        <option value="cashier">收银员</option>
                        <option value="waiter">服务员</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="tel">联系电话</label>
                    <input type="text" class="form-control" id="tel" name="staPhone" placeholder="输入联系电话">
                </div>
                <div class="form-group">
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
    </script>


</div>

