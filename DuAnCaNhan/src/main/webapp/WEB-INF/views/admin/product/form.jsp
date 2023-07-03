<%@ page pageEncoding="utf-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
<br>
<center><h2>Thêm Sản Phẩm</h2></center>
<br>

<form:form action="/admin/product" method="post" modelAttribute="product">
    <div class="container">
        <p>    <c:if test="${not empty product.id}">
        <div>
            <div class="row">
                <label class="col-3">Id</label>
                <div class="col-9 text-danger text-end"></div>
            </div>
            <form:input type="hidden" readonly="true" path="id" class="form-control" />
        </div>
        </c:if>
        </p>
        <div class="mb-3">
            <label  class="form-label">Name</label>

            <form:input path="name"  class="form-control" id="formGroupExampleInput" placeholder="Nhập tên"/>
            <form:errors path="name" element="div" cssStyle="color:red; font-size: 12px" />
        </div>
        <div class="mb-3">
            <label for="formGroupExampleInput2" class="form-label">Price</label>
            <form:input path="price"  class="form-control" id="formGroupExampleInput2" placeholder="Nhập Price"/>
            <form:errors path="price" element="div" cssStyle="color:red; font-size: 12px"/>
        </div>
        <div class="mb-3">
            <label for="formGroupExampleInput2" class="form-label">Nhóm SP</label>
            <form:select path="category.id" class="form-select" aria-label="Default select example">

                <form:options items="${category1}" itemValue="id" itemLabel="name"></form:options>
                <%--            <c:forEach items="${category1}" var="cate">--%>
                <%--                <form:options items="${cate.id}">${cate.name}</form:options>--%>
                <%--            </c:forEach>--%>
                <form:errors path="category.id" element="div" />
            </form:select>
        </div>
        <div class="mb-3">
            <label for="formGroupExampleInput2" class="form-label">Image</label>
            <form:input path="image"  class="form-control" id="formGroupExampleInput2" placeholder="Nhập image"/>
            <form:errors path="image" element="div" cssStyle="color:red; font-size: 12px"/>
        </div>
        <button type="button" class="btn btn-warning"><a href="/admin/product/index">Quay Lại</a></button>
        <c:choose>
            <c:when test = "${not empty product.id}">
                <button formaction="/admin/product/update" class="btn btn-info">Update</button>
            </c:when>
            <c:otherwise>
                <button formaction="/admin/product/save" class="btn btn-primary">Them</button>
            </c:otherwise>
        </c:choose>
    </div>

</form:form>