<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>注册页面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<title>注册页面</title>
    <link rel="stylesheet" type="text/css" href="css/regist.css">
    
    <script type="text/javascript" src="js/regist.js"></script>

  </head>
  
  <body>
  	<%
  		String msg=(String)session.getAttribute("insertMsg");
  		
  		if(msg!=null){
  			if(msg.equals("primaryKeyExisted")){
				%>
				<script type="text/javascript">
			  	 	alert("用户名已经存在，请重新填写");
				</script>
				<%
				
  	 			session.removeAttribute("insertMsg");
  	 		}
  	 		if(msg.equals("insertSuccessfully")){
	  	 		
  	 			session.removeAttribute("insertMsg");
  	 		}
  	 		if(msg.equals("insertUnsuccessfully")){
				%>
				<script type="text/javascript">
			  	 	alert("注册失败！");
			  	</script>
			  	<%
  	 			session.removeAttribute("insertMsg");
  	 		}
  	 	}
	%>
    <div class="wrapper">
        <article>
            <h1><em>DScript</em><span>抽签系统</span></h1>
            <div class="main">
                <form action="registCheck.jsp" method="post">
                    <div class="tel">
                        <input type="tel" id="pTel" name="tel" placeholder="手机号" oninput="validateTel()">
                        <p id="telText">由11个字符组成！</p>
                    </div>
                    <div class="userName">
                        <input type="text" id="pName" name="name" placeholder="用户名" oninput="validateName()">
                        <p id="nameText">由字母、数字和下划线组成，长度不超过8个字符</p>
                    </div>
                    <div class="password">
                        <input type="password"  id="password1" name="password" placeholder="密码" oninput="validatePassword1()">
                        <p id="password1Text">使用字母、数字、符号两种及以上的组合，长度不超过16个字符</p>
                    </div>
                    <div class="againpwd">
                        <input type="password" id="password2" name="password" placeholder="再次输入密码" oninput="validatePassword2()">
                        <p id="password2Text">两次密码不一致</p>
                    </div>
                    <button>注册</button>
                </form>
                
            </div>
        </article>
       	
        <footer>
            <ul>
                <li><a href="http://www.sias.edu.cn/aboutsias/33.html">学校概况</a></li>
                
                <li><a href="http://www.sias.edu.cn/cultures/93.html">校园文化</a></li>
                <li><a href="http://www.sias.edu.cn/channels/116.html">人才招聘</a></li>
                <li><a href="http://www.sias.edu.cn/channels/116.html">招生就业</a></li>
                <li><a href="http://www.zzu.edu.cn/">友情链接</a></li>
                <li><a href="index.jsp">返回登录界面</a></li>
            </ul>
        </footer>
    </div>
    
</body>
</html>
