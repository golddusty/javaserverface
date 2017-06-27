<%@ page contentType="text/html" %>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>

<f:view>
  <h:form>
    <table cellpadding="0" cellspacing="0" width="100%">
      <tr>
        <td>
          <h:commandButton value="New" 
            disabled="#{reportHandler.newDisabled}" />
          <h:commandButton value="Delete" 
            disabled="#{reportHandler.deleteDisabled}" />
          <h:commandButton value="Submit" 
            disabled="#{reportHandler.submitDisabled}" />
          <h:commandButton value="Accept" 
            rendered="#{reportHandler.acceptRendered}" 
            disabled="#{reportHandler.acceptDisabled}" />
          <h:commandButton value="Reject" 
            rendered="#{reportHandler.rejectRendered}"
            disabled="#{reportHandler.rejectDisabled}" />
        </td>
        <td align="right">
          You're logged in as "${pageContext.request.remoteUser}"
          [<h:outputLink value="../../logout.jsp">
             <h:outputText value="Logout" />
           </h:outputLink>]
          [<h:outputLink value="prefUser.faces">
             <h:outputText value="Preferences" />
           </h:outputLink>]
        </td>
      </tr>
    </table>
  </h:form>
</f:view>
