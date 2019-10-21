<%@ page language="java" import="java.util.*,java.io.*" pageEncoding="UTF-8"%>
<%@ page import="java.text.*" contentType="text/html;charset=UTF-8"  isErrorPage="true"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>session</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
  </head>
  
  <body>
  <form action="doLogin.jsp" method="post">
  <table align="center" border="1" width="300" height="150" style="border-collapse: collapse;">
  	<caption>登录窗口</caption>
  	<tr>
  		<td width="100">账号:</td>
  		<td><input type="text" name="userId"/></td>
  	</tr>
  	<tr>
  		<td>密码:</td>
  		<td><input type="password" name="userPwd"/></td>
  	</tr>
  	<tr>
  		<td colspan="2" align="center">
  			<input type="submit" value="登录"/>
  			<input type="reset" value="重置"/>
  		</td>
  	</tr>
  </table>
  </form>
  </body>
</html>
