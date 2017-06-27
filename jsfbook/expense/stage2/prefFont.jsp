<%@ page contentType="text/html" %>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>

<f:view locale="#{userProfile.locale}">
  <f:loadBundle basename="labels" var="labels" />
  <html>
    <body>
      <h2><h:outputText value="#{labels.prefFontHeader}" /></h2>
      <h:form>
        <h:panelGrid columns="2">
          <h:outputText value="#{labels.fontStyleSelectLabel}" />
          <h:selectOneMenu value="#{userProfile.fontStyle}">
            <f:selectItem itemValue="serif" 
              itemLabel="#{labels.serifChoice}"/>
            <f:selectItem itemValue="san-serif" 
              itemLabel="#{labels.sanSerifChoice}"/>
            <f:selectItem itemValue="mono" 
              itemLabel="#{labels.monospacedChoice}"/>
          </h:selectOneMenu>
          <h:outputText value="#{labels.fontSizeSelectLabel}" />
          <h:selectOneMenu value="#{userProfile.fontSize}">
            <f:selectItem itemValue="small" 
              itemLabel="#{labels.smallFontChoice}" />
            <f:selectItem itemValue="normal" 
              itemLabel="#{labels.normalFontChoice}" />
            <f:selectItem itemValue="large" 
              itemLabel="#{labels.largeFontChoice}" />
          </h:selectOneMenu>
        </h:panelGrid>
        <h:commandButton value="#{labels.prevButtonLabel}"
          immediate="true" action="previous" />
        <h:commandButton value="#{labels.cancelButtonLabel}" 
          immediate="true" action="cancel" />
        <h:commandButton value="#{labels.doneButtonLabel}"
          action="#{userHandler.updateProfile}" />
      </h:form>
    </body>
  </html>
</f:view>
