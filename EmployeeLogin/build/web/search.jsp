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
    <link rel="stylesheet" type="text/css" href="style1.css">
</head>
<body>
<body>
    <div class="box">
            <div class="inputBox">
       
                <%@taglib prefix="s" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<s:setDataSource driver="com.mysql.jdbc.Driver" 
                 url="jdbc:mysql://localhost:3306/rcpl"
                 user="root" password=""/>




 <c:if test="${param.uid != null}">
            
<s:query var="rs" sql="select *from emp_master where empid='${param.uid}'"/>

    <h2>Employee Records</h2>
    <table >
        <tr >
            <th>Emp ID</th>
            <th>Name </th>
            <th>Date</th>
            <th>Salary</th>
            <th>Address</th>
            <th>Contact</th>
            <th>Contact</th>
        </tr>
        <c:forEach var="data" items="${rs.rows}" varStatus="s">
            <tr>
            <td>${data.empid}</td>
            <td>${data.name}</td>
            <td>${data.dob}</td>
            <td>${data.salary}</td>
            <td>${data.address}</td>
            <td>${data.contact}</td>
            <td>${data.dept}</td>
            </tr>
            
        </c:forEach>
    </table>
    </c:if>

    <c:if test="${param.name != null}">
            
<s:query var="rs" sql="select *from emp_master where empid='${param.name}'"/>

    <h2>Employee Records</h2>
    <table >
        <tr >
            <th>Emp ID</th>
            <th>Name </th>
            <th>Date</th>
            <th>Salary</th>
            <th>Address</th>
            <th>Contact</th>
            <th>Contact</th>
        </tr>
        <c:forEach var="data" items="${rs.rows}" varStatus="s">
            <tr>
            <td>${data.empid}</td>
            <td>${data.name}</td>
            <td>${data.dob}</td>
            <td>${data.salary}</td>
            <td>${data.address}</td>
            <td>${data.contact}</td>
            <td>${data.dept}</td>
            </tr>
            
        </c:forEach>
    </table>
    </c:if>
    <c:if test="${param.dept != null}">
            
<s:query var="rs" sql="select *from emp_master where dept='${param.dept}'"/>

    <h2>Employee Records</h2>
    <table >
        <tr >
            <th>Emp ID</th>
            <th>Name </th>
            <th>Date</th>
            <th>Salary</th>
            <th>Address</th>
            <th>Contact</th>
            <th>Contact</th>
        </tr>
        <c:forEach var="data" items="${rs.rows}" varStatus="s">
            <tr>
            <td>${data.empid}</td>
            <td>${data.name}</td>
            <td>${data.dob}</td>
            <td>${data.salary}</td>
            <td>${data.address}</td>
            <td>${data.contact}</td>
            <td>${data.dept}</td>
            </tr>
            
        </c:forEach>
    </table>
    </c:if>
      
         <a style="text-decoration: none; color: #fff; font-size: 24px; font--family: abel" href="index.html">Logout</a>


            </div>
       
    </div>
</body>
</html>