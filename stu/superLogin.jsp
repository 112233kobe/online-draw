<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>超级管理员登录页面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<% 
    	if(session.getAttribute("msg")!=null){
    		//out.print(session.getAttribute("msg").toString());
     %> 
     	<script type="text/javascript">
     		alert("<%=session.getAttribute("msg").toString() %>");
     	</script>
     <%
     	} 
     %>
     <style type="text/css">
        * { margin: 0; padding: 0; }
        html { height: 100%; }
        body { height: 100%; background: #fff url(img/backgroud.png) 50% 50% no-repeat; background-size: cover;}
        a{
        	text-decoration: none;
        	color:white;
        	margin:auto auto auto 35%;
        }
        .dowebok { position: absolute; left: 50%; top: 50%; width: 430px; height: 550px; margin: -300px 0 0 -215px; border: 1px solid #fff; border-radius: 20px; overflow: hidden;}
        .logo { width: 104px; height: 104px; margin: 50px auto 80px; background: url(img/login.png) 0 0 no-repeat; }
        .form-item { position: relative; width: 360px; margin: 0 auto; padding-bottom: 30px;}
        .form-item input { width: 360px; height: 48px; padding-left: 70px; border: 1px solid #fff; border-radius: 25px; font-size: 18px; color: #fff; background-color: transparent; outline: none;}
        .form-item button { width: 360px; height: 50px; border: 0; border-radius: 25px; font-size: 18px; color: #1f6f4a; outline: none; cursor: pointer; background-color: #fff; }
        #username { background: url(img/emil.png) 20px 14px no-repeat; }
        #password { background: url(img/password.png) 23px 11px no-repeat; }
        .tip { display: none; position: absolute; left: 20px; top: 52px; font-size: 14px; color: #f50; }
        
        .dowebok ::-webkit-input-placeholder { font-size: 18px; line-height: 1.4; color: #fff;}
        .dowebok :-moz-placeholder { font-size: 18px; line-height: 1.4; color: #fff;}
        .dowebok ::-moz-placeholder { font-size: 18px; line-height: 1.4; color: #fff;}
        .dowebok :-ms-input-placeholder { font-size: 18px; line-height: 1.4; color: #fff;}

        @media screen and (max-width: 500px) {
            * { box-sizing: border-box; }
            .dowebok { position: static; width: auto; height: auto; margin: 0 30px; border: 0; border-radius: 0; }
            .logo { margin: 50px auto; }
            .form-item { width: auto; }
            .form-item input, .form-item button, .reg-bar { width: 100%; }
        }
    </style>
    <script type="text/javascript">
    	function check(){
    		
    		var password = document.getElementById("password").value.toString();
    		console.log(password);
    		if( password == "admin"){
    			window.location.href="superMenu.jsp";
    			window.event.returnValue=false;
    		}
    		else{
    			alert("密码输入错误，请重新输入");
    		}
    	}
    </script>
  </head>
  
  <body>
    <div class="dowebok">
        <div class="logo"></div>
        <form>
	        <div class="form-item">
	            <input id="username" type="text" autocomplete="off" placeholder="超级管理员用户名" disabled>
	        </div>
	        <div class="form-item">
	            <input id="password" type="password" autocomplete="off" placeholder="登录密码">
	        </div>
	        <div class="form-item"><button id="submit" onclick="check()">登 录</button></div>
	        <a href="index.jsp">点我返回抽签系统</a>
        </form>
    </div>
    <div style="text-align:center;">
        <h1>DScript抽签系统超级管理员</h1>
    </div>
  </body>
</html>
