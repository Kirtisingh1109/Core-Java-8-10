<%@page import="com.rays.bean.UserBean"%>
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
	<%
	    String dob = (String)request.getAttribute("dob");
	    String gender = (String)request.getAttribute("gender");
	    String phoneNo = (String)request.getAttribute("phoneno");
	    String password = (String)request.getAttribute("password");
	    String loginId =  (String)request.getAttribute("loginId");
	    String lname = (String)request.getAttribute("lname");
		String fname = (String) request.getAttribute("fname");
		String succ = (String) request.getAttribute("succ");
		String error = (String) request.getAttribute("error");
		UserBean bean = (UserBean) request.getAttribute("bean");
	%>
	<br>
	<br>
	<center>
		<%
			if (succ != null) {
		%>
		<%=succ%>
		<%
			}
		%>
		<%
			if (error != null) {
		%>
		<%=error%>
		<%
			}
		%>

		<form action="UserRegistrationCtl" method="post">
			<tr>
				<td><input type="hidden" name="id"
					value="<%=(bean != null) ? bean.getId() : ""%>"></td>
			</tr>
			<table>
				<tr>
					<th>First Name:</th>
					<td><input type="text" name="firstName"
						value="<%=(bean != null) ? bean.getFirstName() : ""%>"></td>
					<td>
						<%
							if (fname != null) {
						%> <font color="red"><%=fname%></font> <%
 	}
 %>
					</td>
				</tr>
				<tr>
					<th>last Name:</th>
					<td><input type="text" name="lastName"
						value="<%=(bean != null) ? bean.getLastName() : ""%>"></td>
						<td>
						<%
						if (lname != null){
						%><font color="red"><%=lname %> </font><% 
	}
 %>					
						</td>
				</tr>
				<tr>
					<th>Email:</th>
					<td><input type="email" name="loginId"
						value="<%=(bean != null) ? bean.getLoginId() : ""%>"></td>
						<td>
						<%
						if (loginId != null){
						%><font color="red"><%=loginId %></font><% 
	}
 %>
						</td>
				</tr>
				<tr>
					<th>Password:</th>
					<td><input type="password" name="password"
						value="<%=(bean != null) ? bean.getPassword() : ""%>"></td>
						<td>
						<%
						if(password !=null){
						%><font color="red"><%=password %></font><%
	}
%>
                      </td>
				</tr>
				<tr>
					<th>phoneNo:</th>
					<td><input type="text" name="phoneNo"
						value="<%=(bean != null) ? bean.getPhoneNo() : ""%>"></td>
						<td>
						<%
						if(phoneNo !=null){
						%><font color="red"><%=phoneNo %></font><%
	}
%>
						</td>
				</tr>
				<tr>
					<th>dob:</th>
					<td><input type="date" name="dob"
						value="<%=(bean != null) ? bean.getDob() : ""%>"></td>
						<td>
						<%
						if(dob !=null){
						%><font color="red"><%=dob %></font><%
	}
%>
						
						</td>
				</tr>
				<tr>
					<th>Gender:</th>
					<td><input type="text" name="gender"
						value="<%=(bean != null) ? bean.getGender() : ""%>"></td>
						<td>
						<%
						if(gender !=null){
						%><font color="red"><%=gender %></font><%
	}
%>
						
						</td>
				</tr>
				<tr>
					<th></th>
					<td><input type="submit" name="operation"
						value="<%=(bean != null) ? "update" : "save"%>"></td>
				</tr>
			</table>
		</form>
	</center>
	<%@ include file="Footer.jsp"%>
</body>
</html>