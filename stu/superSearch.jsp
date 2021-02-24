<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">    
    <title>学生信息搜索页面</title>
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
    	.nav{
    		width:60%;
    		height:10%;
    		margin:auto;
    		padding:10px;
    		
    	}
    	
    	form{
    		text-align:center;
    	}
    	
    	input[type=submit]{
    		width:60px;
    		height:25px;
    		border-radius:5px;
    	}
    	table{
    		width:100%;
    		border:1px solid green;
    	}
    	th,td{
    		border:1px solid green;
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
  	<div class="tit">
        <h1>DScript抽签系统学生管理系统</h1>
    </div>
    <div class="nav">
    	<form action="superSearchCheck.jsp" method="post">
    		<label for="search">按学号查询：</label>
    		<input type="text" name="stuId" placeholder="请输入要查询的学号" />
    		<input type="submit" value="查询" />
    		
    	</form>
    </div>
    <a href="superMenu.jsp"><button class="returnBtn">返回上一级</button></a>
    <a href="superLogin.jsp"><button class="logoutBtn">注销</button></a>
  </body>
</html>
