<%@ page contentType="text/html" %>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>

<f:view>
  <html>
    <body>
      <h2>Fonts:</h2>
      <h:form>
        <h:panelGrid columns="2">
          <h:outputText value="Font style:" />
          <h:selectOneMenu value="#{userProfile.fontStyle}">
            <f:selectItem itemValue="serif" itemLabel="Serif"/>
            <f:selectItem itemValue="san-serif" itemLabel="San-Serif"/>
            <f:selectItem itemValue="mono" itemLabel="Monospaced"/>
          </h:selectOneMenu>
          <h:outputText value="Font size:" />
          <h:selectOneMenu value="#{userProfile.fontSize}">
            <f:selectItem itemValue="small" itemLabel="Small"/>
            <f:selectItem itemValue="normal" itemLabel="Normal"/>
            <f:selectItem itemValue="large" itemLabel="Large"/>
          </h:selectOneMenu>
        </h:panelGrid>

        <h:commandButton value="Previous"
          immediate="true" action="previous" />
        <h:commandButton value="Cancel" 
          immediate="true" action="cancel" />
        <h:commandButton value="Done"
          action="#{userHandler.updateProfile}" />
      </h:form>
    </body>
  </html>
</f:view>
