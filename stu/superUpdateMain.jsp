<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head> 
    <title>修改学生信息</title>
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
    	.top,.bottom{
    		width:100%;
    		border:0px;
    	}
    	.top{
    		height:60px;
    	}
    	.bottom{
    		height:50%;
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
    <iframe class="top" src="updateSelect.jsp" scrolling="no"></iframe>
    <hr>
    <iframe class="bottom" src="updateShowInfo.jsp" name="showInfo"></iframe>
    <a href="superMenu.jsp"><button class="returnBtn">返回上一级</button></a>
    <a href="superLogin.jsp"><button class="logoutBtn">注销</button></a>
  </body>
</html>
