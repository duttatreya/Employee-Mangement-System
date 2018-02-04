<%@taglib prefix="s" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
<c:if test="${sessionScope.id != null}" > 
    <jsp:forward page="index.html"/>
</c:if>
--%>
<!DOCTYPE html>
<html>
<head>
	<title>Sign Up</title>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="style2.css">
</head>
<body>
<body>
    <div class="box">
    	<h1>Delete Employee</h1>
        <div class="inputBox">
    	<form method="get" action="delemp.jsp">
            <label>Enter Employee ID</label>
            <br><br>
            
            <input type="text" name="empid">
            <br><br>
            <input type="submit" name="" value="Delete">
            <br><br>
            <a style="text-decoration: none; color: #fff; font-size: 24px; font--family: abel" href="adminhome.html">Home</a>   
           </div>

    		</div>
    	</form>
    </div>
</body>
</html>