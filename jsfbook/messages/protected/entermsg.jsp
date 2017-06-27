<%@ page contentType="text/html" %>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>

<f:view>
  <html>
    <head>
      <title>Project Billboard</title>
    </head>
    <body bgcolor="white">

      <h:form>
        <table>
          <tr>
            <td>Project:</td>
            <td>
              <h:selectOneMenu value="#{storeMsgAction.category}">
                <f:selectItem itemLabel="JSF" itemValue="JSF" />
                <f:selectItem itemLabel="JSP" itemValue="JSP" />
                <f:selectItem itemLabel="Servlet" itemValue="Servlet" />
              </h:selectOneMenu>
            </td>
          </tr>
          <tr>
            <td colspan=2>
              <h:inputTextarea value="#{storeMsgAction.msg}" 
                cols="50" rows="10" />
            </td>
          </tr>
        </table>
        <h:commandButton value="Post Message" 
          action="#{storeMsgAction.store}" />
      </h:form>
    </body>
  </html>
</f:view>
