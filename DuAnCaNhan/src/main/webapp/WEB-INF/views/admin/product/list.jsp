<%@ page pageEncoding="utf-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
<br>
<center><h2>Danh Sách Sản Phẩm</h2></center>
<br>

<div class="container">
    <button type="button" class="btn btn-success"><a href="/admin/product/create">Thêm SP</a></button>
    <table class="table">
        <thead>
        <tr>
            <th scope="col">Id</th>
            <th scope="col">Name</th>
            <th scope="col">Price</th>
            <th scope="col">Nhóm</th>
            <th scope="col">Image</th>
            <th scope="col">Ngày</th>

        </tr>
        </thead>
        <tbody>
        <c:forEach items="${product.content}" var="cate">
            <tr>
                <td>${cate.id}</td>
                <td>${cate.name}</td>
                <td>${cate.price}</td>
                <td>${cate.category.name}</td>
                <td>${cate.image}</td>
                <td>${cate.createDate}</td>
                <td><a href="/admin/product/delete/${cate.id}">Delete</a></td>
                <td><a href="/admin/product/edit/${cate.id}">Update</a></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <nav aria-label="Page navigation example">
        <ul class="pagination">
            <c:forEach begin="0" end="${ product.totalPages -1}" varStatus="loop">
                <li class="page-item">
                    <a class="page-link" href="/admin/product/index?page=${loop.begin + loop.count - 1}">
                            ${loop.begin + loop.count }
                    </a>
                </li>
            </c:forEach>
        </ul>
    </nav>
<%--    <div class="row justify-content-center">--%>
<%--        <nav aria-label="Page navigation example">--%>
<%--            <ul class="pagination justify-content-center">--%>
<%--                <li class="page-item"><a class="page-link" href="/admin/product/index?p=0">First</a></li>--%>
<%--                <li class="page-item"><a class="page-link" href="/admin/product/index?p=${product.number-1 < 0 ? 0 : product.number-1}">Prev</a></li>--%>
<%--                <li class="page-item"><a class="page-link" href="">${product.number+1}</a></li>--%>
<%--                <li class="page-item"><a class="page-link" href="/admin/product/index?p=${product.number+1 > product.totalPages-1 ? product.totalPages-1 : product.number+1}">Next</a></li>--%>
<%--                <li class="page-item"><a class="page-link" href="/admin/product/index?p=${product.totalPages-1}">Last</a></li>--%>
<%--            </ul>--%>
<%--        </nav>--%>
<%--    </div>--%>
</div>
