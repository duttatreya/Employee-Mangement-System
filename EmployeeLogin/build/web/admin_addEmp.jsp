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
	<title>Add Employee</title>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="style1.css">
</head>
<body>
<body>
    <div class="box">
        <br><br><br><br><br><br><br><br><br><br><br><br><br><br>
    	<h1>Add Employee</h1>
    	<form method="post" action="addemployee.jsp">
    		<div class="inputBox">
       
    			
    			
                <label>User ID</label>
                <br><br>
    	        <input type="text" name="uid">
                <br><br>
                <label>Name</label>
                <br><br>
    	        <input type="text" name="name">
                <br><br>
                <label>Date in YYYY-MM-DD</label>
                <br><br>
    	        <input type="text" name="dob">
                <br><br>
                <label>Salary</label>
                <br><br>
    	        <input type="text" name="sal">
                <br><br>
                <label>Address</label>
                <br><br>
    	        <input type="text" name="addr">
                <br><br>
                <label>Contact</label>
                <br><br>
    	        <input type="text" name="conc">
                <br><br>
                <label>Department</label>
                <br><br>
    	        <input type="text" name="dept">
                <br><br>
                
                
                
                
                <input type="submit" name="" value="Submit">
                <br>
                <a style="text-decoration: none; color: #fff; font-size: 24px; font--family: abel" href="adminhome.jsp">Home</a>
            
           

    		</div>
    	</form>
    </div>
</body>
</html>