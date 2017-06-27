<%@ page contentType="text/html" %>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>

<f:view>
  <html>
    <body>
      <h2>Language:</h2>
      <h:form>
        <h:panelGrid columns="2">
          <h:outputText value="Language:" />
          <h:selectOneRadio value="#{userProfile.locale}">
            <f:selectItem itemValue="sv" itemLabel="Swedish"/>
            <f:selectItem itemValue="en" itemLabel="English"/>
          </h:selectOneRadio>
        </h:panelGrid>

        <h:commandButton value="Previous" 
          immediate="true" action="previous" />
        <h:commandButton value="Next" 
          action="#{userHandler.updateProfile}" />
        <h:commandButton value="Cancel" 
          immediate="true" action="cancel" />
      </h:form>
    </body>
  </html>
</f:view>
