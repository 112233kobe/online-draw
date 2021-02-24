<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>添加学生信息</title>
    <style>
    	*{
            margin:0px;
            padding:0px;
        }
        div{
    		width:60%;
    		
    		margin:auto;
    		text-align:center;
    	}
    	table{
    		margin:auto;
    		
    	}
    	td{
    		border:1px solid green;
    	}
    	input[type="text"]{
    		width:100%;
    		border-radius:4px;
    	}
    	input[type="submit"],input[type="reset"]{
    		width:60px;
    		height:30px;
    		border-radius:5px;
    		background:rgb(107,164,145);
    	}
    	td[colspan="2"]{    		
    		text-align:center;
    	} 
    	
        body{
            background:url(img/backgroud.png) 50% 50% no-repeat;
        }
        .tit h1{
            height:50px;
            width:500px;
            color:dark;
            margin:50px auto 50px 25%;
        }   	
    	form{
    		text-align:center;
    	}
    	a button{
    		text-decoration: none;
    		
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
    <body>
  	<%
  		String msg=(String)session.getAttribute("insertMsg");
  		
  		if(msg!=null){
  			if(msg.equals("primaryKeyExisted")){
  	 %>
  	 <script type="text/javascript">
  	 	alert("学号重复！");
  	 </script>
  	 <%
  	 			session.removeAttribute("insertMsg");
  	 		}
  	 		if(msg.equals("insertSuccessfully")){
  	  %>
  	  <script type="text/javascript">
  	 	alert("信息添加成功，请添加下条信息！");
  	 </script>
  	 <%
  	 			session.removeAttribute("insertMsg");
  	 		}
  	 		if(msg.equals("insertUnsuccessfully")){
  	  %>
  	  <script type="text/javascript">
  	 	alert("信息添加失败！");
  	 </script>
  	 <%
  	 			session.removeAttribute("insertMsg");
  	 		}
  	 	}
  	  %>
  	<div class="tit">
        <h1>DScript抽签系统学生管理系统</h1>
    </div>
  	<div>
  		<h2>添加学生信息</h2>
  		
  		<form action="superAddCheck.jsp" method="post"> 
  		<table>
  			<tr>
  				<td><label>学号</label></td>
  				<td><input type="text" name="stuId" required></td>
  			</tr>
  			<tr>
  				<td><label>姓名</label></td>
  				<td><input type="text" name="stuName"></td>
  			</tr>
  			<tr>
  				<td><label>班级</label></td>
  				<td><input type="text" name="stuClass"></td>
  			</tr>
  			<tr>
  				<td><label>年级</label></td>
  				<td><input type="text" name="stuGrade"></td>
  			</tr>
  			<tr>
  				<td><label>专业</label></td>
  				<td><input type="text" name="stuMajor"></td>
  			</tr>
  			<tr>
  				<td colspan="2">
  					<input type="submit" value="添加">
  					<input type="reset" value="重置">
  				</td>
  		</table>
  		</form>
  	</div>
   
 	<a href="superMenu.jsp"><button class="returnBtn">返回上一级</button></a>
    <a href="superLogin.jsp"><button class="logoutBtn">注销</button></a>
  </body>
</html>
