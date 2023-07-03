<%@ page pageEncoding="utf-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">

<br>
<center><h2>Danh Sách Tài Khoản</h2></center>
<br>

<div class="container">
    <button type="button" class="btn btn-success"><a href="/admin/account/create">Thêm TK</a></button>

    <table class="table">
        <thead>
        <tr>
            <th scope="col">Username</th>
            <th scope="col">Password</th>
            <th scope="col">Fullname</th>
            <th scope="col">Email</th>
            <th scope="col">Admin</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${account}" var="cate">
            <tr>
                <td>${cate.username}</td>
                <td>${cate.password}</td>
                <td>${cate.fullname}</td>
                <td>${cate.email}</td>
                <td>${cate.admin}</td>
                <td><a href="/admin/account/edit/${cate.username}">update</a></td>
                <td><a href="/admin/account/delete/${cate.username}">Delete</a></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>

</div>
