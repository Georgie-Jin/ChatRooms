<%@ page language="java" import="java.util.*,java.io.*" pageEncoding="UTF-8"%>
<%@ page import="java.text.*, chap02.*" contentType="text/html;charset=UTF-8"  isErrorPage="true"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>session</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript">
	function quitSys(){
		window.location="logout.jsp";
	}
	</script>
  </head>
  
  <body>
  	<%
  		ArrayList<String> users=null;
  		String user=session.getAttribute("user").toString();
  		if(application.getAttribute("users")==null){
  			users=new ArrayList<String>();
  			users.add(user);
  		}
  		else{
  			users=(ArrayList<String>)application.getAttribute("users");
  			if(users.indexOf(user)==-1)	users.add(user);
  		}
  		application.setAttribute("users",users);
  	%>
	<table align="center" width="1024" height="700" style="border-collapse: collapse;">
		<tr height="60" bgcolor="lightGreen">
		 	<td width="180">用户:<%=session.getAttribute("user")%></td>
		 	<td></td>
		 	<td width="200" align="right">
		 		<input type="button" value="注销" onclick="quitSys()"/>
		 	</td>
		 </tr>
		 <tr bgcolor="lightBlue">
		 	<td colspan="2">
		 		<iframe name="myframe" src="show.jsp" width="824" height="600"></iframe>
		 	</td>
		 	<td valign="top">
		 		<iframe src="users.jsp" width="200" height="500"></iframe>
		 	</td>
		 </tr>
		 <tr  height="40">
		 	<td colspan="3" valign="middle">
		 		<form action="show.jsp" method="post" target="myframe">
		 			<input type="text" name="msg" size="80" style="font-size: 21px">
		 			<input type="submit" value="发送"/>
		 		</form>
		 	</td>
		 </tr>
	</table>
  </body>
</html>
