<%@ page pageEncoding="utf-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">

<br><br>
<form:form action="/admin/category/" method="post" modelAttribute="category">
    <div class="container">
        <p>    <c:if test="${not empty category1.id}">
        <div>
            <p> Name: <form:input path="id" value="${category1.id}" type="text"/></p>
        </div>
        </c:if>
         </p>
    </div>
    <div>
        <p> Name: <form:input path="name" value="${category1.name}" type="text"/></p>
    </div>
    <c:choose>
        <c:when test = "${not empty category1.id}">
            <button formaction="/admin/category/update" class="btn btn-info">Update</button>
        </c:when>
        <c:otherwise>
            <button formaction="/admin/category/save" class="btn btn-primary">Them</button>
        </c:otherwise>
    </c:choose>
    <button type="button" class="btn btn-primary"><a href="/admin/category/index">Quay Lại</a></button>



</form:form>

