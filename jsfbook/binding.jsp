<%@ page contentType="text/html" %>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>

<f:view>
  <html>
    <body bgcolor="white">
      <h:form>
        Everything but "the kitchen sink": 
        <h:inputText validator="#{myBean.validateText}" />
        <h:outputText binding="#{myBean.errorComp}" />
        <br>
        <h:commandButton value="Test" />
      </h:form>
    </body>
  </html>
</f:view>
