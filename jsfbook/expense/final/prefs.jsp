<%@ page contentType="text/html" %>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
<%@ taglib uri="http://mycompany.com/jsftaglib" prefix="my" %>

<f:view locale="#{userProfile.locale}">
  <f:loadBundle basename="labels" var="labels" />
  <html>
    <head>
      <title><h:outputText value="#{labels.prefLinkLabel}" /></title>
      <link rel="stylesheet" type="text/css" 
        href="${pageContext.request.contextPath}/style.css">
    </head>
    <body>
      <h:form>
        <my:panelTabbed labelAreaClass="labels"
          selectedLabelClass="selected-tab" unselectedLabelClass="tab">
          <h:panelGrid columns="2">
            <f:facet name="label">
              <my:tabLabel>
                <h:outputText value="#{labels.prefUserHeader}" />
              </my:tabLabel>
            </f:facet>
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
           <h:panelGrid columns="2">
            <f:facet name="label">
              <my:tabLabel>
                <h:outputText value="#{labels.prefLangHeader}" />
              </my:tabLabel>
            </f:facet>
            <h:outputText value="#{labels.langSelectLabel}" />
            <h:selectOneRadio value="#{userProfile.locale}">
              <f:selectItem itemValue="sv" itemLabel="#{labels.svChoice}"/>
              <f:selectItem itemValue="en" itemLabel="#{labels.enChoice}"/>
            </h:selectOneRadio>
          </h:panelGrid>
          <h:panelGrid columns="2">
            <f:facet name="label">
              <my:tabLabel>
                <h:outputText value="#{labels.prefFontHeader}" />
              </my:tabLabel>
            </f:facet>
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
        </my:panelTabbed>
        <h:commandButton value="#{labels.doneButtonLabel}"
          action="#{userHandler.updateProfile}" />
      </h:form>
    </body>
  </html>
</f:view>
