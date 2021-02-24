<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'dbLoginCheck.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <%
    	String url="jdbc:mysql://localhost:3306/stu";
    	String dbuser="root";
    	String dbpassword="101929";
    	Class.forName("com.mysql.jdbc.Driver");
    	Connection con=null;
    	PreparedStatement st=null;
    	ResultSet rs=null;    	
   		con=DriverManager.getConnection(url, dbuser, dbpassword);
   		String sql="select name,password from user where name=? and password=?";
   		st=con.prepareStatement(sql);
   		String name=request.getParameter("name");
   		String password=request.getParameter("password");
   		st.setString(1, name);
   		st.setString(2, password);
   		rs=st.executeQuery();
   		if(rs.next()){
   		
   			response.sendRedirect("draw.jsp");
   			
   		}else{
   		%>
   		<script>
			alert("用户名或密码错误！");
			window.location.href="index.jsp";
			window.event.returnValue=false;
		</script>
   		<%
   		}
   		rs.close();
   		st.close();
   		con.close();    	
     %>
  </body>
</html>
