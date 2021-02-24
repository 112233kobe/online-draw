<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'superShowAll.jsp' starting page</title>
    
	<style type="text/css"> 
    	*{
            margin:0px;
            padding:0px;
        }
    	
    	
        body{
            background:url(img/backgroud.png) 50% 50% no-repeat;
        }
        .tit h1{
            height:50px;
            width:500px;
            color:dark;
            margin:50px auto 50px 36%;
        }   	
    	
    	table{
    		width:100%;
    		
    		border:1px solid green;
    	}
    	.tabTit{
    		
    		 margin:50px auto auto 45%;
    	}
    	th,td{
    		border:1px solid green;
    		text-align:center;
    	}
    	.tableMain{
    		OVERFLOW-Y:auto;
    		height:70%;
    	}
    	.returnBtn{
    		width:100px;
    		height:30px;
    		border-radius:5px;
    		position:absolute;
    		top:10px;
    		left:2%;
    		background:rgb(57,113,75);
    	}
    	.logoutBtn{
    		width:60px;
    		height:30px;
    		border-radius:5px;
    		position:absolute;
    		top:10px;
    		left:95%;
    		background:rgb(89,144,138);
    	}
    </style>

  </head>
  
  <body>
    <div class="tit">
        <h1>DScript抽签系统学生管理系统</h1>
    </div>
    <div class="tabTit">
     	<h1>查询结果</h1>
     </div>
     <div class="tableMain">
    	<table>
    		<tr>
    			<th>学号</th>
    			<th>姓名</th>
    			<th>班级</th>
    			<th>年级</th>
    			<th>专业</th>
    		</tr>
    		<%
    			Connection con=null;
   				PreparedStatement pst=null;
   				ResultSet rs=null;
   				Class.forName("com.mysql.jdbc.Driver");
   				String url="jdbc:mysql://localhost:3306/stu";
   				con=DriverManager.getConnection(url, "root", "101929");
   				String sql="select * from stu_msg";
   				pst=con.prepareStatement(sql);
   				rs=pst.executeQuery();
    			while(rs.next()){
    		 %>
    		 	<tr>
    		 		<td><%=rs.getString(1) %></td>
    		 		<td><%=rs.getString(2) %></td>
    		 		<td><%=rs.getString(3) %></td>
    		 		<td><%=rs.getString(4) %></td>
    		 		<td><%=rs.getString(5) %></td>
    		 	</tr>
    		 <%
    		 	}
    		 	rs.close();
    		 	pst.close();
    		 	con.close();
	    		 
    		  %>
    	</table>
    </div>
    <a href="superMenu.jsp"><button class="returnBtn">返回上一级</button></a>
    <a href="superLogin.jsp"><button class="logoutBtn">注销</button></a>
  </body>
</html>
