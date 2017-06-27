<%@ taglib uri="http://jakarta.apache.org/struts/tags-tiles" prefix="tiles" %>
<html>
  <body bgcolor="white">
    <table width="100%">
      <tr>
        <td colspan="2" align="center">
          <tiles:insert attribute="header" />
        </td>
      </tr>
      <tr>
        <td width="20%">
          <tiles:insert attribute="menu" />
        </td>
        <td>
          <tiles:insert attribute="body" />
        </td>
        <td>
          <tiles:insert page="poll.jsp" />
        </td>
      </tr>
    </table>
  </body>
</html>
