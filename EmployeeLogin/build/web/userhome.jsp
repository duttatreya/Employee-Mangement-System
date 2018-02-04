<%@taglib prefix="s" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
<c:if test="${sessionScope.user != null}" > 
<jsp:forward page="index.html"/>
</c:if>
--%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Login Form</title>
	<link rel="stylesheet" type="text/css" href="style1.css">

</head>

<body>
    <div class="box">
    	<h1 style="font-size: 35px; font-weight: bold;">User Control Panel</h1>
    	<br><br>
    	<a style="text-decoration: none; color: #fff; font-size: 24px; font--family: abel" href="userhome.jsp">Home</a>
        <br><br>
    	<a style="text-decoration: none; color: #9EA38D; font-size: 24px; font--family: abel" href="user_viewemp.jsp">View Employee Table</a>
    	<br><br>
        <a style="text-decoration: none; color: #9EA38D; font-size: 24px; font--family: abel" href="user_search.jsp">Search Employee</a>
        <br><br>
        <br><br>
    	<a style="text-decoration: none; color: #fff; font-size: 24px; font--family: abel" href="index.html">Logout</a>
        
    </div>
</body>
</html>