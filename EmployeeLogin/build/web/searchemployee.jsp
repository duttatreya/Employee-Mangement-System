<%@taglib prefix="s" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
<c:if test="${sessionScope.user != null}" > 
    <jsp:forward page="index.html"/>
</c:if>--%>
<!DOCTYPE html>
<html>
<head>
    <title>Search Employee</title>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="style1.css">
</head>
<body>
<body>
    <div class="box">
       
            <div class="inputBox">
       
                
        <form method="post" action="admin_searchbyid.jsp">
                <label>Enter Employee ID</label>
                <br><br>
                <input type="text" name="uid">
                <br><br>
                <input type="submit" name="" value="Search By ID">
        </form>
        <form method="post" action="admin_searchbyname.jsp">
                <br><br>
                <label>Enter Employee Name</label>
                <br><br>
                <input type="text" name="name">
                <br><br>
                <input type="submit" name="" value="Search By Name">
                <br><br>
        </form>
        <form method="post" action="admin_searchbydept.jsp">
                <label>Enter Employee Department</label>
                <br><br>
                <input type="text" name="dept">
                <br><br>
                <input type="submit" name="" value="Search By Department">
                <br><br>
        </form>        
                <a style="text-decoration: none; color: #fff; font-size: 24px; font--family: abel" href="adminhome.jsp">Home</a>
            </div>
        
    </div>
</body>
</html>