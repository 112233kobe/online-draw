项目说明：
此项目是我大二下学期的课业项目
项目前端部分是直接将写好的HTML/CSS JS等代码嵌入到jsp页面中
数据交互采用的是JSP，每个页面对应一个后端数据处理的JSP文件
比如普通管理员登录页面文件（即初始页面）是index.jsp
其后端数据处理的JSP文件页面就是indexLoginCheck.jsp
即命名为xxxCheck.jsp的文件就是xxx对应的数据处理文件
采用这种方式使用java代码与数据库连接，处理并返回数据


配置环境：
jdk：1.8.0
tomcat8
mysql:5.5.62
jdbc:5.0.4

数据库：
数据库文件在文件夹里stu.sql就是
其账号密码在每个前端页面对应的后端处理JSP文件可以修改
如刚刚的举例的index.jsp，数据库账号密码可以在indexLoginCheck.jsp中修改