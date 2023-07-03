<%@ page pageEncoding="utf-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
<br>
<center><h2>Danh Sách Đơn Hàng</h2></center>
<br>
<div class="container">
    <table class="table">
        <thead>
        <tr>
            <th scope="col">Id</th>
            <th scope="col">Address</th>
            <th scope="col">Ngày</th>
            <th scope="col">Tên tài khoản</th>

        </tr>
        </thead>
        <tbody>
        <c:forEach items="${order}" var="cate">
            <tr>

                <td>${cate.id}</td>
                <td>${cate.address}</td>
                <td>${cate.createDate}</td>
                <td>${cate.account.username}</td>

            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
