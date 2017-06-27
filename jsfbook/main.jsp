<%@ page contentType="text/html" %>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
<html>
  <body>
    <f:view>
      Template text at the top of the main page.
      <br>
      <h:outputText value="Text from a JSF component in the main page" />
      <br>
      <f:subview id="sv1">
        <jsp:include page="included.jsp" />
      </f:subview>
    </f:view>
  </body>
</html>
