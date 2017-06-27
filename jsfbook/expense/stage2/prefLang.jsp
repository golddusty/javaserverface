<%@ page contentType="text/html" %>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>

<f:view locale="#{userProfile.locale}">
  <f:loadBundle basename="labels" var="labels" />
  <html>
    <body>
      <h2><h:outputText value="#{labels.prefLangHeader}" /></h2>
      <h:form>
        <h:panelGrid columns="2">
          <h:outputText value="#{labels.langSelectLabel}" />
          <h:selectOneRadio value="#{userProfile.locale}">
            <f:selectItem itemValue="sv" itemLabel="#{labels.svChoice}"/>
            <f:selectItem itemValue="en" itemLabel="#{labels.enChoice}"/>
          </h:selectOneRadio>
        </h:panelGrid>
        <h:commandButton value="#{labels.prevButtonLabel}" 
          immediate="true" action="previous" />
        <h:commandButton value="#{labels.nextButtonLabel}" 
          action="#{userHandler.updateProfile}" />
        <h:commandButton value="#{labels.cancelButtonLabel}" 
          immediate="true" action="cancel" />
      </h:form>
    </body>
  </html>
</f:view>
