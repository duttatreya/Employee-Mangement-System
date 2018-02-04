<%@taglib prefix="s" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
<c:if test="${sessionScope.user != null}" > 
<jsp:forward page="index.html"/>
</c:if>
--%>
<html>
<head>
    <title>Search Employee</title>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="style1.css">
</head>
<body>
<body>
    <div class="box">
        <form method="post" action="usearchid.jsp">
            <div class="inputBox">
       
                
       
                <label>Enter Employee ID</label>
                <br><br>
                <input type="text" name="uid">
                <br><br>
                <input type="submit" name="" value="Search By ID">
                <br><br>
                 </div>
                </form>
                <form method="post" action="usearchname.jsp">
               <div class="inputBox">
       
                <label>Enter Employee Name</label>
                <br><br>
                <input type="text" name="uid">
                <br><br>
                <input type="submit" name="" value="Search By Name">
                <br><br>
                
                <a style="text-decoration: none; color: #fff; font-size: 24px; font--family: abel" href="userhome.jsp">Home</a>
               </div> 
        </form>
    </div>
</body>
</html>