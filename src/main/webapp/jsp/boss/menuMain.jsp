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
        <h3 class="panel-title">菜品信息</h3>
    </div>
    <div class="panel-body">
        <a href="/menu/jumpAdd" >新增</a>
    </div>
    <table class="table table-hover">
        <thead>
        <tr>
            <th>编号</th>
            <th>菜名</th>
            <th>价格</th>
            <th>类型</th>
            <th>口味</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="menu" items="${Menus}">
            <tr>
                <td>${menu.getMeNu()}</td>
                <td>${menu.getMeName()}</td>
                <td>${menu.getMePrice()}</td>
                <td>${menu.getMeType()}</td>
                <td>${menu.getMeRemark()}</td>
                <td>
                    <a href="/menu/jumpMenuUpdate?meNu=${menu.meNu}" >编辑</a>
                    <a href="/menu/menuDelete?meNu=${menu.meNu}" >删除</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

