<%@ page contentType="text/html" %>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>

<f:view locale="#{userProfile.locale}">
  <f:loadBundle basename="labels" var="labels" />
  <html>
    <body>
      <h2><h:outputText value="#{labels.prefUserHeader}" /></h2>
      <h:form>
        <h:panelGrid columns="2">
          <h:outputText value="#{labels.firstNameLabel}" />
          <h:inputText size="30" value="#{userProfile.firstName}" />
          <h:outputText value="#{labels.lastNameLabel}" />
          <h:inputText size="30" value="#{userProfile.lastName}" />
          <h:outputText value="#{labels.streetAddressLabel}"/>
          <h:inputText size="30" value="#{userProfile.street}" />
          <h:outputText value="#{labels.cityLabel}" />
          <h:inputText size="30" value="#{userProfile.city}" />
          <h:outputText value="#{labels.stateLabel}" />
          <h:inputText size="30" value="#{userProfile.state}" />
          <h:outputText value="#{labels.zipCodeLabel}" />
          <h:inputText size="30" value="#{userProfile.zip}" />
        </h:panelGrid>
        <h:commandButton value="#{labels.nextButtonLabel}" 
          action="#{userHandler.updateProfile}" />
        <h:commandButton value="#{labels.cancelButtonLabel}" 
          immediate="true" action="cancel" />
      </h:form>
    </body>
  </html>
</f:view>
