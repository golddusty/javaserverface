<%@ page contentType="text/html" %>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>

<f:view>
  <html>
    <head>
      <title>Project Billboard</title>
    </head>
    <body bgcolor="white">
      <h1>Welcome to the Project Billboard</h1>
      Your personalized project news web site.
      <p>
      <h:messages errorStyle="color: red" />

      <h:form>
        <h:inputHidden value="#{authenticateAction.origURL}" />

        Please enter your User Name and Password, and click Enter.
        <p>
        Name: 
        <h:inputText value="#{authenticateAction.username}" 
          size="10" />
        Password: 
        <h:inputSecret value="#{authenticateAction.password}" 
          size="10" redisplay="true" />
        <h:commandButton value="Enter" 
          action="#{authenticateAction.authenticate}" />
        <p>
        Remember my name and password:
        <h:selectBooleanCheckbox value="#{authenticateAction.remember}" />
        <br>
        (This feature requires cookies to be enabled in your browser)
      </h:form>
    </body>
  </html>
</f:view>
