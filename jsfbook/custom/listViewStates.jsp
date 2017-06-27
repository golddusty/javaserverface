<%@ page contentType="text/html" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
  <head>
    <title>Available View States</title>
  </head>
  <body>
    Select the view state you want to analyze:
    <ul>
      <c:forEach items="${sessionScope['com.mycompany.debug']}" var="v">
        <c:url var="url" value="/custom/showViewState.faces">
          <c:param name="viewId" value="${v.key}" />
        </c:url>
        <li><a href="${url}">${v.key}</a></li>
      </c:forEach>
    </ul>
  </body>
</html>
