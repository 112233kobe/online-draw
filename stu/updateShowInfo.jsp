<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">    
    <title>学生信息修改</title>
    <style>
    	div{
    		width:60%;
    		margin:auto;
    		padding:10px;
    		
    	}
    	table{    		
    		margin:auto;    		
    	}
    	td[colspan="2"]{
    		text-align:center;
    	}
    </style>
  </head>
  
  <body>
    <div>
    	<%
    		String msg=(String)session.getAttribute("updateMsg");
    		if(msg!=null){
    			if("updateSuccessfully".equals(msg)){
    				session.removeAttribute("updateMsg");
    	 %>
			    	 <script>
			    	 	alert("信息修改成功！");
			    	 </script>
    	 <%
    	 		}else{
    	 			session.removeAttribute("updateMsg");
    	  %>
			    	  <script>
			    	  	alert("信息修改失败！");
			    	  </script>
    	  <%
    	  		}
    	  	}
    	   %>
    	<form action="updateStuInfo.jsp" method="post">
    	<%
    		Connection con=null;
			PreparedStatement pst=null;
			ResultSet rs=null;
			Class.forName("com.mysql.jdbc.Driver");
			String url="jdbc:mysql://localhost:3306/stu";
			con=DriverManager.getConnection(url, "root", "101929");
			String stuId=request.getParameter("stuId");
			String sql="select * from stu_msg where stu_id=?";
			pst=con.prepareStatement(sql);
			pst.setString(1, stuId);
			rs=pst.executeQuery();
			while(rs.next()){
    	 %>
    		<table>
    			<tr>
    				<td>学号</td>
    				<td><input type="text" name="sid" value="<%=rs.getString(1) %>" readonly></td>
    			</tr>
    			<tr>
    				<td>姓名</td>
    				<td><input type="text" name="sname" value="<%=rs.getString(2) %>"></td>
    			</tr>
    			<tr>
    				<td>年级</td>
    				<td><input type="text" name="sclass" value="<%=rs.getString(3) %>"></td>
    			</tr>
    			<tr>
    				<td>班级</td>
    				<td><input type="text" name="sgrade" value="<%=rs.getString(4) %>"></td>
    			</tr>
    			<tr>
    				<td>专业</td>
    				<td><input type="text" name="smajor" value="<%=rs.getString(5) %>"></td>
    			</tr>
    			<tr>
    				<td colspan="2">
    					<input type="submit" value="修改">
    					<input type="reset" value="重置">
    				</td>
    			</tr>	
    		</table>
    	<%
    		}
    		rs.close();
    		pst.close();
    		con.close();
    	 %>
    	</form>
    </div>
  </body>
</html>
