<%@ page contentType="text/html" %>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<f:view>
  <html>
    <head>
      <title>Project Billboard</title>
    </head>
    <body bgcolor="white">

      <h1>Welcome ${fn:escapeXml(validUser.firstName)}</h1>
      Your profile currently shows you like information about the 
      following checked-off projects. If you like to update your
      profile, make the appropriate changes below and click 
      Update Profile.
      <h:form id="update">
        <h:selectManyCheckbox id="projects" 
          value="#{updateProfileAction.projects}" 
          layout="pageDirection">
          <f:selectItem itemLabel="JSF" itemValue="JSF" />
          <f:selectItem itemLabel="JSP" itemValue="JSP" />
          <f:selectItem itemLabel="Servlet" itemValue="Servlet" />
        </h:selectManyCheckbox>
        <h:commandButton value="Update Profile" 
          action="#{updateProfileAction.updateProfile}" />
      </h:form>
      <hr>

      When you're done reading the news, please 
      <h:outputLink value="../logout.jsp">
        <h:outputText value="log out" />
      </h:outputLink>.

      <hr>
      <h:outputLink value="entermsg.faces">
        <h:outputText value="Post a new message" />
      </h:outputLink>
      <p>

      <h:dataTable value="#{validUser.projects}" var="projectName">
        <h:column>
          <h:outputText style="font-weight: bold"
            value="Project: #{projectName}" />
          <h:dataTable value="#{newsRegistry.newsItems}" var="newsItem">
            <h:column rendered="#{newsItem.category == projectName}">
              <h:panelGrid columns="2">
                <h:outputText value="#{newsItem.postedBy}" />
                <h:outputText value="#{newsItem.postedDate}" />
              </h:panelGrid>
              <h:outputText value="#{newsItem.msg}" />
              <f:verbatim><hr></f:verbatim>
            </h:column>
          </h:dataTable>
        </h:column>
      </h:dataTable>
    </body>
  </html>
</f:view>
