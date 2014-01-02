
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>

<sql:query dataSource="jdbc/mydb" var="rst" scope="request">
	select id, email from users
</sql:query>

<html>
  <head>
    <title>DB Test</title>
  </head>
  <body>

  <h2>Results</h2>

<c:forEach var="row" items="${rst.rows}">
    ID ${row.id}<br/>
    Email ${row.email}<br/>
</c:forEach>

  </body>
</html>