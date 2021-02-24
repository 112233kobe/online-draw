<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>抽签系统</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
		#tit{
			height:40px;
			
		}
		#tit h1{
			font-size:30px;
			line-height: 40px;
			width:700px;
			height:40px;
			margin-left:44%;
		}
		#photo {
			
			position: relative;
			margin: 0 auto;
			width: 1300px;
			height: 550px;
			background-color: #D3D3D3;
		}
	
		#front{
			width: 300px;
			height: 400px;
			background-color: white;
			float: left;
			position: absolute;
			margin-top: 40px;
			transform: rotate3d(1,1,0,0);
		}
		#front p{
			font-size:80px;
			text-align:center;
		}
		
		#back{
			width: 300px;
			height: 400px;
			position: absolute;
			margin-top: 40px;
			background-color: darkblue;
			transform: rotate3d(1,1,0,90deg);
		}
	
		.table{
			color:#D3D3D3;
			font-size: 20px;
		}
		.stuId{
			color:white;
			font-size: 20px;
		}
		.stuGrade{
			color:white;
			font-size: 20px;
		}
		.stuClass{
			color:white;
			font-size: 20px;
		}
		.stuMajor{
			color:white;
			font-size: 20px;
		}
		
		img {
			width: 300px;
			height: 400px;
			background-color: #E0FFFF;
		}
	
		input {
			position: relative;
			bottom: -40px;
			margin: 0 auto;
			left: 33%;
			top:460px;
			width: 150px;
			height: 50px;
		}
		 .logoutBtn{
    			width:60px;
    			height:30px;
    			border-radius:5px;
    			position:absolute;
    			top:10px;
    			left:95%;
			background-color:rgb(211,211,211);
    		
    		} 	
	</style>
	<script type="text/javascript">
		window.onload = function() {
			var beginBtn = document.getElementById("beginBtn");
			var endBtn = document.getElementById("endBtn");
			var showBtn = document.getElementById("showBtn");
			var front = document.getElementById("front");
			var back = document.getElementById("back");
			var  music = document.getElementById("music");
			
		}
		var stu_msg = [];
		<%
		    Connection con=null;
		    Statement st=null;
		    ResultSet rs=null;
		    Class.forName("com.mysql.jdbc.Driver");
		    String url="jdbc:mysql://localhost:3306/stu";
		    con=DriverManager.getConnection(url,"root","101929");
		    st=con.createStatement();
		    String sql ="select * from stu_msg";
		    rs=st.executeQuery(sql);
		    while(rs.next()){
		%>
			stu_msg.push({stu_id:'<%=rs.getString("stu_id")%>',
				stu_name:'<%=rs.getString("stu_name")%>',
				stu_class:'<%=rs.getString("stu_class")%>',
				stu_grade:'<%=rs.getString("stu_grade")%>',
				stu_major:'<%=rs.getString("stu_major")%>'});
		<%
		     }
		     rs.close();
		     st.close();
		     con.close();
		%>
		var time;
	
		function start() {
			front.style.transform = 'rotate3d(1,1,0,0)' ;
			back.style.transform = 'rotate3d(1,1,0,90deg)' ;
			showBtn.disabled = false;
			beginBtn.disabled = true;
			choujiang();
			music.play();
		}
	
		function end() {
			front.style.transform = 'rotate3d(1,1,0,0)' ;
			back.style.transform = 'rotate3d(1,1,0,90deg)' ;
			window.clearTimeout(time);
			showBtn.disabled = false;
			beginBtn.disabled = false;
			music.pause();
		}
		
		function show(){
		    for( var i=0; i<stu_msg.length; i++ ){
		    	if( stu_msg[i].stu_name == document.getElementById("radomName").innerHTML)
		    		break;
		    	else
		    		continue;
		    }
		    document.getElementsByClassName("stuId")[0].innerHTML=stu_msg[i].stu_id;
			document.getElementsByClassName("stuGrade")[0].innerHTML = stu_msg[i].stu_grade;
			document.getElementsByClassName("stuClass")[0].innerHTML = stu_msg[i].stu_class;
			document.getElementsByClassName("stuMajor")[0].innerHTML = stu_msg[i].stu_major;
		    
			front.style.transform = 'rotate3d(1,1,0,' + 90 + 'deg)' ;
			back.style.transform = 'rotate3d(1,1,0,0)' ;
			showBtn.disabled = true;
		};
		
		function choujiang() {
			var temp=parseInt(Math.random() * (stu_msg.length-1), 10) + 1;
			document.getElementById("radomName").innerHTML = stu_msg[temp].stu_name;
			time = window.setTimeout(choujiang, 20);
			return temp;
		}
	</script>
	
  </head>
  
  <body>
		<audio id="music" loop="true">
			<source src="music/Coldplay.mp3" type="audio/mpeg">
		</audio>
		<div id="tit">
			<h1 style="color:darkblue;">DScript抽签系统</h1>
		</div>
		<div id="photo">
			<div id="front" style="margin-left: 40%;">
				<p id="radomName">科比.布莱恩特<p>
			</div>
			<div id="back" style="margin-left: 40%; text-align:center;">
				<p class="table">学号：</p><p class="stuId">初始值</p>
				<p class="table">年级：</p><p class="stuGrade">初始值</p>
				<p class="table">班级：</p><p class="stuClass">初始值</p>
				<p class="table">专业：</p><p class="stuMajor">初始值</p>
			</div>
			<br>
			<div>
				<input type="button" name="开始" id="beginBtn" value="开始" onclick="start()" />
				<input type="button" name="结束" id="endBtn" value="结束" onclick="end()" />
				<input type="button" name="显示信息" id="showBtn" value="显示信息" onclick="show()"/>
			</div>
		</div>
		<a href="index.jsp"><button class="logoutBtn">注销</button></a>
  </body>
</html>
