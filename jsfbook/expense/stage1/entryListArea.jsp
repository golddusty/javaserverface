<%@ page contentType="text/html" %>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>

<f:view>
  <h:outputLink value="reportListArea.faces">
    <h:outputText value="Show all reports" />
  </h:outputLink>
  <h:form>
    Title:
    <h:outputText value="#{reportHandler.currentReport.title}" />
    <h:dataTable value="#{reportHandler.reportEntriesModel}" var="entry">
      <h:column>
        <f:facet name="header">
          <h:outputText value="Date" />
        </f:facet>
        <h:inputText size="8" required="true" value="#{entry.date}"
          disabled="#{reportHandler.editDisabled}">
          <f:convertDateTime  dateStyle="short" />
        </h:inputText>
        <f:facet name="footer">
          <h:outputText value="Total:" />
        </f:facet>
      </h:column>
      <h:column>
        <f:facet name="header">
          <h:outputText value="Type" />
        </f:facet>
        <h:selectOneMenu id="type" required="true" value="#{entry.type}"
          disabled="#{reportHandler.editDisabled}">
          <f:selectItems value="#{entryHandler.currentChoices}"/>
        </h:selectOneMenu>
      </h:column>
      <h:column>
        <f:facet name="header">
          <h:outputText value="Amount" />
        </f:facet>
        <h:inputText size="8" required="true" value="#{entry.amount}"
          disabled="#{reportHandler.editDisabled}">
          <f:convertNumber pattern="#,##0.00" />
          <f:validateDoubleRange minimum="1"/>
        </h:inputText>
        <f:facet name="footer">
          <h:outputText value="#{reportHandler.currentReport.total}">
            <f:convertNumber pattern="#,##0.00" />
          </h:outputText>
        </f:facet>
      </h:column>
      <h:column>
        <h:commandButton action="#{reportHandler.removeEntry}" 
          value="Delete"
          disabled="#{reportHandler.editDisabled}" />
      </h:column>
      <h:column>
        <h:commandButton action="#{reportHandler.updateEntry}" 
          value="Update"
          disabled="#{reportHandler.editDisabled}" />
      </h:column>
    </h:dataTable>
  </h:form>
</f:view>
