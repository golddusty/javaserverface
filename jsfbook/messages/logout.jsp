<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<% session.invalidate(); %>
<c:redirect url="/messages/login.faces"/>
