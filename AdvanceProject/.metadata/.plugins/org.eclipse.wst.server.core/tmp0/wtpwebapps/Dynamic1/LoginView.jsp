<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="Header.jsp"%>
	<center>

		<%
			String password = (String) request.getAttribute("password");
			String LoginId = (String) request.getAttribute("loginId");
			String succ = (String) request.getAttribute("succ");
		%>
		<form action="LoginCtl" method="post">
			<%
				if (succ != null) {
			%>
			<%=succ%>
			<%
				}
			%>

			<table>
				<tr>
					<th>Login</th>
					<td><input type="email" name="loginId"></td>
					<td>
						<%
							if (LoginId != null) {
						%> <font color="red"><%=LoginId%></font> <%
 	}
 %>
					</td>
				</tr>

				<tr>
					<th>password</th>
					<td><input type="password" name="password"></td>
					<td>
						<%
							if (password != null) {
						%> <font color="red"><%=password%></font> <%
 	}
 %>
					</td>
				</tr>
				<tr>
					<th></th>
					<td><input type="submit"></td>
				</tr>
			</table>

		</form>

	</center>
	<%@ include file="Footer.jsp"%>
</body>
</html>