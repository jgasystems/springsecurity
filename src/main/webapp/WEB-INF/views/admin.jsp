<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="true"%>
<html>
<body>
	<h1>Admin</h1>
	<h2>Title : ${title}</h2>
	<h2>Message : ${message}</h2>

	<c:if test="${pageContext.request.userPrincipal.name != null}">
		<h3>Welcome : ${pageContext.request.userPrincipal.name} | <a href="<c:url value="/j_spring_security_logout" />" > Logout</a></h3>  
	</c:if>

	<!-- Alternative 
	<c:if test="${pageContext.request.remoteUser != null}">
		<h2>Welcome : ${pageContext.request.remoteUser}</h2>
	</c:if>
 	-->

</body>
</html>