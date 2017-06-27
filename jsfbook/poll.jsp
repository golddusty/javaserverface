<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>

<f:view>
  <h3>Quick Poll</h3>
  What do you think of JSF?
  <h:form>
    <h:panelGrid columns="1">
      <h:commandLink action="#{poll.vote1}">
        <h:outputText value="It rocks!" />
      </h:commandLink>
      <h:commandLink action="#{poll.vote2}">
        <h:outputText value="It seems okay" />
      </h:commandLink>
      <h:commandLink action="#{poll.vote3}">
        <h:outputText value="It sucks!" />
      </h:commandLink>
    </h:panelGrid>
  </h:form>
  <h:panelGrid columns="2" rendered="#{poll.showScore}">
    <h:outputText value="Total votes:" />
    <h:outputText value="#{poll.total}" />
    <h:outputText value="It rocks!" />
    <h:outputText value="#{poll.vote1Score}%" />
    <h:outputText value="It seems okay" />
    <h:outputText value="#{poll.vote2Score}%" />
    <h:outputText value="It sucks!" />
    <h:outputText value="#{poll.vote3Score}%" />
  </h:panelGrid>
</f:view>
