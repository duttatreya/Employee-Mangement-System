<%@taglib prefix="s" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
<c:if test="${sessionScope.user != null}" > 
    <jsp:forward page="index.html"/>
</c:if>
--%>
<html>
<head>
    <title>Sign Up</title>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="style1.css">
</head>
<body>
<body>
    <div class="box">
            <div class="inputBox">
       

<s:setDataSource driver="com.mysql.jdbc.Driver" 
                 url="jdbc:mysql://localhost:3306/rcpl"
                 user="root" password="EatShitH4kr"/>



            
<s:query var="rs" sql="select *from emp_master where empid=${param.uid}"/>
     
    <h2>Employee Records</h2>
    
    <table >
        <tr style="font-family: abel; color: #fff;" >
            <th>Emp ID</th>
            <th>Name </th>
        </tr>
        <c:forEach var="data" items="${rs.rows}" varStatus="s">
            <tr style="font-family: abel; color: #fff;">
            <td>${data.empid}</td>
            <td>${data.name}</td>
            </tr>
            
        </c:forEach>
    </table>
    <br><br>
         <a class="inputBox" style="text-decoration: none; color: #fff; font-size: 24px; font--family: abel" href="userhome.jsp">Home</a>


            </div>
       
    </div>
</body>
</html>