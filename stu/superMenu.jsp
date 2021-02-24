<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'superMenu.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
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
            margin:50px auto 50px 35%;
        }
        .user{
            height:500px;
            margin:50px auto;
        }
        .userBtn{
            width: 360px; 
            height: 50px; 
            margin:25px auto 25px 36%;
            border: 0; 
            border-radius: 25px; 
            font-size: 18px; 
            color: black; 
            outline: none; 
            cursor: pointer; 
            background-color: #fff;
        }
        .user a{
            text-decoration: none;
        }
 	      .logoutBtn{
    		width:60px;
    		height:30px;
    		border-radius:5px;
    		position:absolute;
    		top:10px;
    		left:95%;
    		background:rgb(86,139,133);
    	} 		
    </style>

  </head>
  
  <body>
    <div class="tit">
        <h1>DScript抽签系统学生管理系统</h1>
    </div>
    <hr>
    <div class="user">
        <a href="superAdd.jsp"><button class="userBtn">增加学生信息</button></a>
        <a href="superSearch.jsp"><button class="userBtn">查询学生信息</button></a>
        <a href="superUpdateMain.jsp"><button class="userBtn">修改学生信息</button></a>
        <a href="superDelete.jsp"><button class="userBtn">删除学生信息</button></a>
       	<a href="superShowAll.jsp"><button class="userBtn">查看全部学生信息</button></a>
    </div>
    <a href="superLogin.jsp"><button class="logoutBtn">注销</button></a>
  </body>
</html>
