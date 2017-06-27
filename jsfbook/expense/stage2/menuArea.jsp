<%@ page contentType="text/html" %>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>

<jsp:useBean id="now" scope="request" class="java.util.Date" />
<f:view locale="#{userProfile.locale}">
  <f:loadBundle basename="labels" var="labels" />
  <h:form>
    <table cellpadding="0" cellspacing="0" width="100%">
      <tr>
        <td>
          <h:commandButton value="#{labels.newButtonLabel}" 
            disabled="#{reportHandler.newDisabled}" />
          <h:commandButton value="#{labels.deleteButtonLabel}" 
            disabled="#{reportHandler.deleteDisabled}" />
          <h:commandButton value="#{labels.submitButtonLabel}" 
            disabled="#{reportHandler.submitDisabled}" />
          <h:commandButton value="#{labels.acceptButtonLabel}" 
            rendered="#{reportHandler.acceptRendered}" 
            disabled="#{reportHandler.acceptDisabled}" />
          <h:commandButton value="#{labels.rejectButtonLabel}" 
            rendered="#{reportHandler.rejectRendered}"
            disabled="#{reportHandler.rejectDisabled}" />
        </td>
        <td align="right">
          <h:outputText value="#{labels.loggedInAs}" />
          "${pageContext.request.remoteUser}"
          [<h:outputLink value="../../logout.jsp">
             <h:outputText value="#{labels.logoutLinkLabel}" />
           </h:outputLink>]
          [<h:outputLink value="prefUser.faces">
             <h:outputText value="#{labels.prefLinkLabel}" />
           </h:outputLink>]
          <h:outputText value="#{now}">
            <f:convertDateTime dateStyle="long" />
          </h:outputText>
        </td>
      </tr>
    </table>
  </h:form>
</f:view>
