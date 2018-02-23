<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="pl">
<jsp:include page="commons/header.jsp"/>
<body>
<div class="container">
    <div class="title">
        <jsp:include page="commons/logo-left.jsp"/>
        <jsp:include page="commons/logout.jsp"/>
    </div>
    <div class="middle">
        <jsp:include page="commons/bottom-left.jsp"/>
        <div class="center">
            <div class="content">
                <h3>Lista kursantów</h3>
                <c:choose>
                <c:when test="${!empty students}">
                <table class="tab">
                    <c:forEach items="${students}" var="student">
                        <tr>
                            <td>${student}</td>
                        </tr>
                    </c:forEach>
                    </c:when>
                    <c:otherwise>
                        <p class="info">Nie posiadasz żadnych kursantów</p>
                    </c:otherwise>
                    </c:choose>
                </table>
                <jsp:include page="commons/page-back-teacher.jsp"/>
            </div>
        </div>
        <jsp:include page="commons/bottom-right.jsp"/>
    </div>
    <jsp:include page="commons/footer.jsp"/>
</div>
</body>
</html>