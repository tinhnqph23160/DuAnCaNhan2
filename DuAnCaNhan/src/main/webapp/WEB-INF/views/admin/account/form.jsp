<%@ page pageEncoding="utf-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">


<br>
<center><h2>Thêm Tài Khoản</h2></center>
<br>

<form:form action="/admin/account/" method="post" modelAttribute="account">
    <div class="container">

        <p>
            <c:if test="${not empty account.username}">

            </c:if>
        </p>
        <div class="mb-3">
            <label for="formGroupExampleInput2" class="form-label">Username</label>
            <form:input path="username"  class="form-control" id="formGroupExampleInput2" placeholder="Nhập Username"/>
            <form:errors path="username" element="div" cssStyle="color:red; font-size: 12px"/>
        </div>
        <div class="mb-3">
            <label for="formGroupExampleInput2" class="form-label">Password</label>
            <form:input path="password"  class="form-control" id="formGroupExampleInput2" placeholder="Nhập Password"/>
            <form:errors path="password" element="div" cssStyle="color:red; font-size: 12px"/>
        </div>

        <div class="mb-3">
            <label for="formGroupExampleInput2" class="form-label">Fullnamee</label>
            <form:input path="fullname"  class="form-control" id="formGroupExampleInput2" placeholder="Nhập fullname"/>
            <form:errors path="fullname" element="div" cssStyle="color:red; font-size: 12px"/>
        </div>
    <div class="mb-3">
            <label for="formGroupExampleInput2" class="form-label">Email</label>
            <form:input path="email" type="email" class="form-control" id="formGroupExampleInput2" placeholder="Nhập email"/>
        <form:errors path="email" element="div" cssStyle="color:red; font-size: 12px"/>
        </div>
    <div class="mb-3">
            <label for="formGroupExampleInput2" class="form-label">Admin</label>
            <form:input path="admin" type="number" min="0" class="form-control" id="formGroupExampleInput2" placeholder="Nhập admin"/>
        <form:errors path="admin" element="div" cssStyle="color:red; font-size: 12px"/>
    </div><div>${message}</div>
        <button type="button" class="btn btn-warning"><a href="/admin/account/index">Quay Lại</a></button>
<%--    <c:choose>--%>
<%--        <c:when test = "${not empty product.id}">--%>
<%--            <button formaction="/admin/product/update" class="btn btn-info">Update</button>--%>
<%--        </c:when>--%>
<%--        <c:otherwise>--%>
<%--            <button formaction="/admin/product/save" class="btn btn-primary">Them</button>--%>
<%--        </c:otherwise>--%>
<%--    </c:choose>--%>
        <c:choose>
            <c:when test="${not empty account.username}">
                <button formaction="/admin/account/update" class="btn btn-info"> Update</button>
            </c:when>
            <c:otherwise>
                <button formaction="/admin/account/save" class="btn btn-primary"> Thêm</button>
            </c:otherwise>
        </c:choose>
    </div>

</form:form>