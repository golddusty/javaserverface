<%@ page contentType="text/html" %>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>

<f:view>
  <html>
    <body>
      <h2>User Information:</h2>
      <h:form>
        <h:panelGrid columns="2">
          <h:outputText value="First Name:" />
          <h:inputText size="30" value="#{userProfile.firstName}" />
          <h:outputText value="Last Name:" />
          <h:inputText size="30" value="#{userProfile.lastName}" />
          <h:outputText value="Street Address:"/>
          <h:inputText size="30" value="#{userProfile.street}" />
          <h:outputText value="City:" />
          <h:inputText size="30" value="#{userProfile.city}" />
          <h:outputText value="State:" />
          <h:inputText size="30" value="#{userProfile.state}" />
          <h:outputText value="ZIP:" />
          <h:inputText size="30" value="#{userProfile.zip}" />
        </h:panelGrid>

        <h:commandButton value="Next" 
          action="#{userHandler.updateProfile}" />
        <h:commandButton value="Cancel" 
          immediate="true" action="cancel" />
      </h:form>
    </body>
  </html>
</f:view>
