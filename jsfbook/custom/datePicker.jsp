<%@ page contentType="text/html" %>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
<%@ taglib uri="http://mycompany.com/jsftaglib" prefix="my" %>

<jsp:useBean id="now" scope="request" class="java.util.Date" />
<f:view>
  <html>
    <body>
      <h:form>
        <my:inputDatePicker value="#{myDate}"
          startYear="#{now.year + 1900 - 2}" years="10" />
        <h:outputText value="#{myDate}" />
        <br>
        <h:commandButton value="Submit" />
      </h:form>
    </body>
  </html>
</f:view>
