<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<jsp:include page="staticPages/header.jsp"/>
<div class="container">

    <div class="jumbotron" style="margin-top: 20px;">
        <h1>sn.loc</h1>
        <sec:authorize access="!isAuthenticated()">
            <p><a class="btn btn-lg btn-success" href="<c:url value="/login" />" role="button">Війти</a></p>
        </sec:authorize>
        <sec:authorize access="isAuthenticated()">
            <p>Ваш логін: <sec:authentication property="principal.username" /></p>
            <p><a class="btn btn-lg btn-danger" href="<c:url value="/logout" />" role="button">Вийти</a></p>

        </sec:authorize>
    </div>
</div>
<jsp:include page="staticPages/futter.jsp"/>