<%@ page contentType="text/html" %>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
<%@ taglib uri="http://mycompany.com/jsftaglib" prefix="my" %>

<f:view>
  <h:form>
    From: 
    <h:inputText id="from" size="8" required="true"
      value="#{reportHandler.from}">
      <f:convertDateTime dateStyle="short" />
    </h:inputText>
    <h:message for="from" />
    <br>
    To: 
    <h:inputText id="to" size="8" required="true"
      value="#{reportHandler.to}">
      <f:convertDateTime dateStyle="short" />
      <my:validateLater than="from" />
    </h:inputText>
    <h:message for="to" showDetail="true" />
    <br>
    Status:
    <h:selectManyCheckbox value="#{reportHandler.status}">
      <f:selectItem itemValue="1" itemLabel="Open" />
      <f:selectItem itemValue="2" itemLabel="Submitted" />
      <f:selectItem itemValue="3" itemLabel="Accepted" />
      <f:selectItem itemValue="4" itemLabel="Rejected" />
    </h:selectManyCheckbox>
    <p>
    <h:commandButton value="Filter" />
  </h:form>
</f:view>
