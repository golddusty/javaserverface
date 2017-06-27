<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>

<jsp:useBean id="now" scope="request" class="java.util.Date" />
<f:view locale="#{param['i18n:locale'] == null ? 'ja' : param['i18n:locale']}">
  <html>
    <head>
      <title>
        Supporting Non-Western Languages
      </title>
    </head>
    <body bgcolor="white">
      <h:form id="i18n">
        <h:selectOneMenu id="locale" value="#{view.locale.language}">
          <f:selectItem itemValue="ja" itemLabel="Japanese" />
          <f:selectItem itemValue="el" itemLabel="Greek" />
          <f:selectItem itemValue="ru" itemLabel="Russian" />
        </h:selectOneMenu>
        <h:commandButton value="New Language" />
        <p>
        Current localized date/time: 
        <h:outputText value="#{now}">
          <f:convertDateTime dateStyle="full" timeStyle="full" />
        </h:outputText>
        <p>
        Enter a localized value for the current locale, e.g., by copy/pasting
        the current date/time:<br>
        <h:inputText size="50" value="#{input}">
          <f:convertDateTime dateStyle="full" timeStyle="full"/>
        </h:inputText>
        <h:commandButton value="Submit Value" />
        <p>
        The current value converted to a java.util.Date is:
        ${input}
      </h:form>
    </body>
  </html>
</f:view>
