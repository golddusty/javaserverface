<%@ page contentType="text/html" %>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>

<f:view locale="#{userProfile.locale}">
  <f:loadBundle basename="labels" var="labels" />
  <h:form>
    <h:outputText value="#{labels.reportTitleLabel}" />
    <h:inputText id="title" size="30" required="true"
      value="#{reportHandler.currentReport.title}" />
    <h:message for="title" />
    <br>
    <h:outputText value="#{labels.reportEntryLabel}" />
    <br>
    <h:outputText value="#{labels.entryDateLabel}" />
    <h:inputText id="date" size="8" required="true"
      value="#{entryHandler.currentEntry.date}">
      <f:convertDateTime dateStyle="short" />
    </h:inputText>
    <h:message for="date" />
    <br>
    <h:outputText value="#{labels.entryTypeLabel}" />
    <h:selectOneMenu id="type" required="true"
      value="#{entryHandler.currentEntry.type}">
      <f:selectItems value="#{entryHandler.i18nChoices}"/>
    </h:selectOneMenu>
    <h:message for="type" />
    <br>
    <h:outputText value="#{labels.entryAmountLabel}" />
    <h:inputText id="amount" size="8" required="true"
      value="#{entryHandler.currentEntry.amount}">
      <f:convertNumber pattern="##0.00" />
      <f:validateDoubleRange minimum="1"/>
    </h:inputText>
    <h:message for="amount" />
    <br>
    <h:commandButton value="#{labels.addButtonLabel}"
      disabled="#{reportHandler.editDisabled}"
      action="#{entryHandler.add}" />
  </h:form>
  <h:messages globalOnly="true" />

  <%-- Loop to verify that it works --%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
  <ol>
    <c:forEach items="${reportHandler.currentReportEntries}" var="e">
      <li>Date: ${e.date}, Type: ${e.type}, Amount: ${e.amount}</li>
    </c:forEach>
  </ol>
</f:view>
