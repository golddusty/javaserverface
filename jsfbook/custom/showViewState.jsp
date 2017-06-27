<%@ page contentType="text/html" %>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
<%@ taglib uri="http://mycompany.com/jsftaglib" prefix="my" %>

<f:view>
  <html>
    <head>
      <title><h:outputText value="State for #{param.viewId}" /></title>
    </head>
    <body>
      <h:form>
        <my:tree value="#{sessionScope['com.mycompany.debug'][param.viewId]}"
          var="node" varNodeToggler="t">
          <f:facet name="openNode">
            <h:panelGroup>
              <h:commandLink action="#{t.toggleExpanded}">
                <h:graphicImage value="/images/folder-open.gif" 
                  style="border: none" />
                <f:param name="viewId" value="#{param.viewId}" />
              </h:commandLink>
              <h:outputText value=" #{node.name}" />
            </h:panelGroup>
          </f:facet>
          <f:facet name="closedNode">
            <h:panelGroup>
              <h:commandLink action="#{t.toggleExpanded}">
                <h:graphicImage value="/images/folder-closed.gif" 
                  style="border: none" />
                <f:param name="viewId" value="#{param.viewId}" />
              </h:commandLink>
              <h:outputText value=" #{node.name}" />
            </h:panelGroup>
          </f:facet>
          <f:facet name="leafNode">
            <h:panelGrid columns="2">
              <h:outputText value="#{node.name}: " style="font-weight: bold" />
              <h:outputText value="#{node.value}" />
            </h:panelGrid>
          </f:facet>
        </my:tree>
      </h:form>
    </body>
  </html>
</f:view>
