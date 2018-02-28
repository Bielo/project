<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="pl">

<jsp:include page="../commons/header.jsp"/>

<body>
<c:url var="saveSchedule" value="/teacher/createSchedule/"/>
<div class="container">
    <div class="title">
        <jsp:include page="../commons/logo-left.jsp"/>
        <jsp:include page="../commons/logout.jsp"/>
    </div>
    <div class="middle">
        <jsp:include page="../commons/bottom-left.jsp"/>
        <div class="center">
            <div class="content">
                <form:form class="form" method="post" modelAttribute="schedule" action="${saveSchedule}">

                    <h3>Formularz wyboru godzin jazdy</h3>
                    <form:input placeholder="Dzień jazd" path="day" class="textbox-n" type="text"
                                onfocus="(this.type='date')" id="date" required="true"/>
                    <form:input placeholder="godzina rozpoczęcia" path="startWorkHour" type="time" required="true"/>
                    <form:input placeholder="godzina zakończenia" path="stopWorkHour" type="time" max="22" required="true"/>
                    <form:button type="submit" name="submit" class="btn btn-primary submitButton">Dodaj</form:button>
                </form:form>
                <jsp:include page="../commons/page-back.jsp"/>
            </div>
        </div>
        <jsp:include page="../commons/bottom-right.jsp"/>
    </div>
    <jsp:include page="../commons/footer.jsp"/>
</div>
</body>
</html>