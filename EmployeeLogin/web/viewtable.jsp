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
	<title>View Tables</title>
	<link rel="stylesheet" type="text/css" href="style1.css">
</head>
<body>
      <div class="box">
      	 <h2 style="font-size: 15px; color:#9EA38D;">
             <%@page import="java.sql.*" %>
             <%@page import="dao.DAOLayer.*" %>
                
      	 	<% 
                  String query = "select *from emp_master;";
                  ResultSet rs = dao.DAOLayer.selectData(query);
                  
                  while(rs.next()){
                   
                  int eid = rs.getInt(1); 
                  String name = rs.getString(2); 
                  String date = rs.getString(3); 
                  int sal  = rs.getInt(4); 
                  String address = rs.getString(5); 
                  String contact = rs.getString(6); 
                  String dept = rs.getString(7); 
                 
                  out.print(eid+" |  "+name+" |  "+date+" | "+sal+" |  "+address+" |  "+contact+" | "+dept+"<br><br>");
                  
                  }
                  
      	 	%>
                <br><br>
                <a style="text-decoration: none; color: #fff; font-size: 24px; font--family: abel" href="adminhome.jsp">Home</a>   

      	 </h2>
    
    
</body>
</html>