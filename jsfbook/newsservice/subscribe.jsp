<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>

<html>
  <head>
    <title>Newsletter Subscription</title>
  </head>
  <body>
    <f:view>
      <h:form>
        <table>
          <tr>
            <td>Email Address:</td>
            <td>
              <h:inputText value="#{subscr.emailAddr}" />
            </td>
          </tr>
          <tr>
            <td>Newsletters:</td>
            <td>
              <h:selectManyCheckbox value="#{subscr.subscriptionIds}">
                <f:selectItem itemValue="1" itemLabel="JSF News" />
                <f:selectItem itemValue="2" itemLabel="IT Industry News"/>
                <f:selectItem itemValue="3" itemLabel="Company News"/>
              </h:selectManyCheckbox>
            </td>
          </tr>
        </table>
        <h:commandButton value="Save"
          action="#{subscrHandler.saveSubscriber}" />
      </h:form>
    </f:view>
  </body>
</html>
