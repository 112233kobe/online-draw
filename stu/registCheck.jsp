<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">      60
    
    <title>学生信息处理页面</title>
  </head>  
  <body>
    <%
    	//设置请求信息字符编码
    	request.setCharacterEncoding("utf-8");
    	Connection con=null;
    	PreparedStatement pst=null;
    	ResultSet rs=null;
    	//获得提交数据，判断是否为空
    	String name=request.getParameter("name");
    	String password=request.getParameter("password");
    	String tel=request.getParameter("tel");    		
    	Class.forName("com.mysql.jdbc.Driver");
    	String url="jdbc:mysql://localhost:3306/stu";
    	con=DriverManager.getConnection(url, "root", "101929");
    	//先验证输入的主键值是否重复，重复则返回到提交页面
    	String sqlCheckPrimaryKey="select name from user where name=?";
    	pst=con.prepareStatement(sqlCheckPrimaryKey);
    	pst.setString(1, name);
    	rs=pst.executeQuery();
    	if(rs.next()){
    		session.setAttribute("insertMsg", "primaryKeyExisted");
    		response.sendRedirect("regist.jsp");
    		rs.close();
     		pst.close();
      		con.close();
      		return ;
    	}
    	//如果主键不重复，则执行SQL插入语句
    	String sql="insert into user values(?,?,?)";
    	pst=con.prepareStatement(sql);
    	pst.setString(1, name);
    	pst.setString(2, password);
    	pst.setString(3, tel);
    	int flag=pst.executeUpdate();
    	if(flag==1){
    		%>
		<script>
			alert("恭喜你，注册成功！");
		</script>
		<%
		session.setAttribute("insertMsg", "insertSuccessfully");    	
		response.setHeader("refresh","0;url=index.jsp");	 		  		
     		
     	}else{
		%>
		<script>
			alert("注册失败，请检查后重试！");
		</script>
		<%
     		session.setAttribute("insertMsg", "insertUnsuccessfully");
		response.setHeader("refresh","0;url=regist.jsp");
     		
      	}
      	pst.close();
      	con.close();
       %>
  </body>
</html>