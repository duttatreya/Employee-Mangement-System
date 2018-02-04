


<%@taglib prefix="s" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
<c:if test="${sessionScope.user != null}" > 
    <jsp:forward page="index.html"/>
</c:if> --%>
<s:setDataSource 
                 driver="com.mysql.jdbc.Driver"
                 url= "jdbc:mysql://localhost:3306/rcpl"
                 user="root"
                 password="EatShitH4kr"/>



    


<s:update>
insert into emp_master values(${param.uid},'${param.name}','${param.dob}',${param.sal},'${param.addr}','${param.conc}','${param.dept}');
</s:update>
 
<jsp:forward page="adminhome.jsp"/></html>