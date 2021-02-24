<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">    
    <title>My JSP 'updateStuInfo.jsp' starting page</title>    
  </head>  
  <body>
    <%
    	request.setCharacterEncoding("utf-8");
    	String sid=request.getParameter("sid");
		String sname=request.getParameter("sname");
		String sclass=request.getParameter("sclass");
		String sgrade=request.getParameter("sgrade");
		String smajor=request.getParameter("smajor");
    	Connection con=null;
		PreparedStatement pst=null;
		ResultSet rs=null;
		Class.forName("com.mysql.jdbc.Driver");
		String url="jdbc:mysql://localhost:3306/stu";
		con=DriverManager.getConnection(url, "root", "101929");		
		String sql="update stu_msg set stu_name=?,stu_class=?,stu_grade=?,stu_major=? where stu_id=?";
		pst=con.prepareStatement(sql);
		pst.setString(1, sname);
		pst.setString(2, sclass);
		pst.setString(3, sgrade);
		pst.setString(4, smajor);
		pst.setString(5, sid);
		int flag=0;
		flag=pst.executeUpdate();
		if(flag==1){
			session.setAttribute("updateMsg", "updateSuccessfully");
			response.sendRedirect("updateShowInfo.jsp");
		}else{
			session.setAttribute("updateMsg", "updateUnsuccessfully");
			response.sendRedirect("updateShowInfo.jsp");
		}
		pst.close();
		con.close();
     %>
  </body>
</html>
