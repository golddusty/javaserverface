<%@ page contentType="text/html" %>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>

<f:view>
  <h:messages layout="table" />
  <h:form>
    From: 
    <h:inputText size="8" value="#{reportHandler.from}">
      <f:convertDateTime dateStyle="short" />
    </h:inputText>
    <br>
    To: 
    <h:inputText size="8" value="#{reportHandler.to}">
      <f:convertDateTime dateStyle="short" />
    </h:inputText>
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
