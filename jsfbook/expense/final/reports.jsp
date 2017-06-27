<%@ page contentType="text/html" %>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
<%@ taglib uri="http://mycompany.com/jsftaglib" prefix="my" %>

<f:view locale="#{userProfile.locale}">
  <f:loadBundle basename="labels" var="labels" />
  <html>
    <head>
      <title><h:outputText value="#{labels.applicationTitle}" /></title>
      <link rel="stylesheet" type="text/css" 
        href="${pageContext.request.contextPath}/style.css">
    </head>
    <body bgcolor="white">
      <table width="95%" align="center">
        <tr>
          <td colspan="2">
            <!-- Title -->
            <h:outputText value="#{labels.applicationTitle}" 
              styleClass="title" />
          </td>
        </tr>
        <tr>
          <td colspan="2" class="toolbar">
            <!-- Menu -->
            <h:form>
              <%@ include file="menuArea.jspf" %>
            </h:form>
          </td>
        </tr>
        <tr>
          <td valign="top" width="60%">
            <!-- Reports -->
            <h:form>
              <%@ include file="reportsArea.jspf" %>
            </h:form>
          </td>
          <td valign="top">
            <!-- Details -->
            <%@ include file="detailsArea.jspf" %>
          </td>
        </tr>
      </table>
      <h:messages globalOnly="true" />
    </body>
  </html>
</f:view>
