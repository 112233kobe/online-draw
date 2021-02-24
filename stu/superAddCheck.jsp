<%@ page contentType="text/html;charset=utf-8" %>
<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
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
    	String stuId=request.getParameter("stuId");
    	String stuName=request.getParameter("stuName");
    	String stuClass=request.getParameter("stuClass");
    	String stuGrade=request.getParameter("stuGrade");
    	String stuMajor=request.getParameter("stuMajor");
    	if(stuId==null)
    		stuId="";
    	if(stuName==null)
    		stuName="";
    	if(stuClass==null)
    		stuClass="";
    	if(stuGrade==null)
    		stuGrade="";
    	if(stuMajor==null)
    		stuMajor="";
    	Class.forName("com.mysql.jdbc.Driver");
    	String url="jdbc:mysql://localhost:3306/stu";
    	con=DriverManager.getConnection(url, "root", "101929");
    	//先验证输入的主键值是否重复，重复则返回到提交页面
    	String sqlCheckPrimaryKey="select stu_id from stu_msg where stu_id=?";
    	pst=con.prepareStatement(sqlCheckPrimaryKey);
    	pst.setString(1, stuId);
    	rs=pst.executeQuery();
    	if(rs.next()){
    		session.setAttribute("insertMsg", "primaryKeyExisted");
    		response.sendRedirect("superAdd.jsp");
    		//另外一种方法：地址传参
    		//response.sendRedirect("jdbcTest3.jsp?insertMsg=primaryKeyExisted");
    		rs.close();
     		pst.close();
      		con.close();
      		return ;
    	}
    	//如果主键不重复，则执行SQL插入语句
    	String sql="insert into stu_msg values(?,?,?,?,?)";
    	pst=con.prepareStatement(sql);
    	pst.setString(1, stuId);
    	pst.setString(2, stuName);
    	pst.setString(3, stuClass);
    	pst.setString(4, stuGrade);
    	pst.setString(5, stuMajor);
    	int flag=pst.executeUpdate();
    	if(flag==1){
		%>
		<script>
			alert("恭喜你，插入成功！");
		</script>
		<%
    		session.setAttribute("insertMsg", "insertSuccessfully");    	
		response.setHeader("refresh","0;url=superAdd.jsp");	 		
     	}else{
		%>
		<script>
			alert("插入成功！");
		</script>
		<%
     		session.setAttribute("insertMsg", "insertUnsuccessfully");
		response.setHeader("refresh","0;url=superAdd.jsp");
      	}
      	pst.close();
      	con.close();
       %>
  </body>
</html>
