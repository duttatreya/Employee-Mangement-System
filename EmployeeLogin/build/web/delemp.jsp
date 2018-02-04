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
	<title>Sign Up</title>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="style2.css">
</head>
<body>
<body>
    <div class="box">
    	<s:setDataSource 
                 driver="com.mysql.jdbc.Driver"
                 url= "jdbc:mysql://localhost:3306/rcpl"
                 user="root"
                 password="EatShitH4kr"/>



    


<s:update>
delete from emp_master where empid = ${param.empid};
</s:update>
 
<jsp:forward page="delemp.jsp"/>
                <a style="text-decoration: none; color: #fff; font-size: 24px; font--family: abel" href="adminhome.html">Home</a>   
           

    		</div>
    	</form>
    </div>
</body>
</html>