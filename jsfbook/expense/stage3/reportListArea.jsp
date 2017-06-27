<%@ page contentType="text/html" %>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
<html>
  <head>
    <title>Expense Reports</title>
    <link rel="stylesheet" type="text/css" 
      href="${pageContext.request.contextPath}/style.css">
  </head>
  <body>
    <f:view>
      <h:form>
        <h:dataTable value="#{reportHandler.sortedReportsModel}" var="report"
          rows="#{reportHandler.noOfRows}" 
          first="#{reportHandler.firstRowIndex}"
          styleClass="tablebg" rowClasses="oddRow, evenRow" 
          columnClasses="left, left, left, right, left">
          <h:column>
            <f:facet name="header">
              <h:commandLink action="#{reportHandler.sortByTitle}" 
                immediate="true">
                <h:outputText value="Title" />
              </h:commandLink>
            </f:facet>
            <h:commandLink action="#{reportHandler.select}" immediate="true">
              <h:outputText value="#{report.title}" />
            </h:commandLink>
          </h:column>
          <h:column>
            <f:facet name="header">
              <h:commandLink action="#{reportHandler.sortByOwner}" 
                immediate="true">
                <h:outputText value="Owner" />
              </h:commandLink>
            </f:facet>
            <h:outputText value="#{report.owner}" />
          </h:column>
          <h:column>
            <f:facet name="header">
              <h:commandLink action="#{reportHandler.sortByDate}" 
                immediate="true">
                <h:outputText value="Dates" />
              </h:commandLink>
            </f:facet>
            <h:outputText value="#{report.startDate}">
              <f:convertDateTime  dateStyle="short" />
            </h:outputText>
            <h:outputText value=" - " />
            <h:outputText value="#{report.endDate}">
              <f:convertDateTime  dateStyle="short" />
            </h:outputText>
          </h:column>
          <h:column>
            <f:facet name="header">
              <h:commandLink action="#{reportHandler.sortByTotal}" 
                immediate="true">
                <h:outputText value="Total" />
              </h:commandLink>
            </f:facet>
            <h:outputText value="#{report.total}">
              <f:convertNumber pattern="#,##0.00" />
            </h:outputText>
          </h:column>
          <h:column>
            <f:facet name="header">
              <h:commandLink action="#{reportHandler.sortByStatus}" 
                immediate="true">
                <h:outputText value="Status" />
              </h:commandLink>
            </f:facet>
            <h:outputText value="#{statusStrings[report.status]}"/>
          </h:column>
        </h:dataTable>
        <h:commandButton value="<<" 
          disabled="#{reportHandler.scrollFirstDisabled}" 
          action="#{reportHandler.scrollFirst}" />
        <h:commandButton value="<" 
          disabled="#{reportHandler.scrollPreviousDisabled}" 
          action="#{reportHandler.scrollPrevious}" />
        <h:commandButton value=">" 
          disabled="#{reportHandler.scrollNextDisabled}" 
          action="#{reportHandler.scrollNext}" />
        <h:commandButton value=">>" 
          disabled="#{reportHandler.scrollLastDisabled}" 
          action="#{reportHandler.scrollLast}" />
        Rows/page: 
        <h:inputText value="#{reportHandler.noOfRows}" size="3"/>
        <h:commandButton value="Refresh" />
      </h:form>
    </f:view>
  </body>
</html>
