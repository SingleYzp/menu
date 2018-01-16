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
        <a href="/staff/jumpAdd" >新增</a>
    </div>
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

