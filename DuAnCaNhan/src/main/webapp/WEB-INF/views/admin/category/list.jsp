<%@ page pageEncoding="utf-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
<br>
<center><h2>Danh Sách Nhóm Sản Phẩm</h2></center>
<br>
<div class="container">
<table class="table">
    <thead>
    <tr>
        <th scope="col">Id</th>
        <th scope="col">Name</th>

    </tr>
    </thead>
    <tbody>
    <c:forEach items="${category}" var="cate">
    <tr>

        <td>${cate.id}</td>
        <td>${cate.name}</td>
        <td><a href="/admin/category/edit/${cate.id}">Edit</a>
        <a href="/admin/category/remove/${cate.id}">Xóa</a></td>
    </tr>
    </c:forEach>
    </tbody>
</table>
</div>
<button type="button" class="btn btn-primary"><a href="/admin/category/create">Thêm Nhóm Sản Phẩm</a></button>


