<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">    
    <title>修改学生信息</title>
    <style type="text/css">    	
    	div{
    		width:60%;
    		margin:auto;
    		padding:10px;
    		  		
    		
    	}
    	form{
    		text-align:center;
    	}
    	select{
    		width:40%;
    		height:30px;
    	}
    	input[type=submit]{
    		width:60px;
    		height:30px;
    		border-radius:5px;
    	}
    </style>
  </head>
  
  <body>
    <div>
    	<form action="updateShowInfo.jsp" method="post" target="showInfo">
    		<label for="condition">按学号查询：</label>
    		<select name="stuId" id="condition">
    			<option disabled selected hidden>学号</option>
    			<%
    				Connection con=null;
    				PreparedStatement pst=null;
    				ResultSet rs=null;
    				Class.forName("com.mysql.jdbc.Driver");
    				String url="jdbc:mysql://localhost:3306/stu";
    				con=DriverManager.getConnection(url, "root", "101929");
    				String sql="select stu_id from stu_msg";
    				pst=con.prepareStatement(sql);
    				rs=pst.executeQuery();
    				while(rs.next()){
    			 %>
    			 <option value="<%=rs.getString(1) %>"><%=rs.getString(1) %></option>
    			 <%
    			 	}
    			 	rs.close();
    			 	pst.close();
    			 	con.close();
    			  %>
    		</select>
    		<input type="submit" value="查询">
    	</form>
    </div>
  </body>
</html>
