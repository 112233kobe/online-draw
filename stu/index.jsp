<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>登录页面</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/login.css">
    
  </head>
  
  <body>
    <div class="container">
        <div class="wrap">
            <header><em>DScript</em><span>抽签系统</span></header>
            <article>
                <section>
                    <aside>
                        <em>
                            <img src="img/user.png">
                        </em>
                         <form action="indexLoginCheck.jsp" method="post">
                            <p class="name"><i></i><input type="text" name="name" class="userName" placeholder="请输入用户名"></p>
                            <p class="password"><i></i><input type="password" name="password" class="pwd" placeholder="请输入密码"></p>
                            <button>登录</button>
                            <p class="remember"><a href="superLogin.jsp">超级管理员？点我登录</a></p>
                        	<p class="regist"><span>没有账号?</span><a href="regist.jsp">立即注册</a></p>
                            <div class="clear"></div>
                        </form>
                        
                    </aside>
                   
                </section>               
            </article>
            <footer>
                <ul>
                    <li><a href="http://www.zzu.edu.cn/gaikuang.htm">学校概况</a></li>
                    <li><a href="http://www5.zzu.edu.cn/jwc/">教务系统</a></li>
                    <li><a href="http://www.zzu.edu.cn/gaikuang.htm">校园文化</a></li>
                    <li><a href="http://www.zzu.edu.cn/peiyang.htm">人才培养</a></li>
                    <li><a href="https://job.v.zzu.edu.cn/p/page/index.html">招生就业</a></li>
                    <li><a href="http://www.zju.edu.cn/">友情链接</a></li>
                </ul>

            </footer>
        </div>
    </div>
  </body>
</html>
