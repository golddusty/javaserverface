<%@ page contentType="text/html" %>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>

<f:view>
  <h:form>
    Title: 
    <h:inputText id="title" size="30" required="true"
      value="#{reportHandler.currentReport.title}" />
    <h:message for="title" />
    <br>
    Entry:
    <br>
    Date: 
    <h:inputText id="date" size="8" required="true"
      value="#{entryHandler.currentEntry.date}">
      <f:convertDateTime  dateStyle="short" />
    </h:inputText>
    <h:message for="date" />
    <br>
    Type:
    <h:selectOneMenu id="type" required="true"
      value="#{entryHandler.currentEntry.type}">
      <f:selectItems value="#{entryHandler.expenseTypeChoices}"/>
    </h:selectOneMenu>
    <h:message for="type" />
    <br>
    Amount:   
    <h:inputText id="amount" size="8" required="true"
      value="#{entryHandler.currentEntry.amount}">
      <f:convertNumber pattern="#,##0.00" />
      <f:validateDoubleRange minimum="1"/>
    </h:inputText>
    <h:message for="amount" />
    <br>
    <h:commandButton value="Add" 
      disabled="#{reportHandler.editDisabled}"/>
  </h:form>
</f:view>
