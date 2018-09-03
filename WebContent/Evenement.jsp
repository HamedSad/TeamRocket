<%@ page language="java" contentType="text/html; charset=ISO-8859-1"pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Evenements</title>
</head>

<body>

<jsp:include page="Header.html"></jsp:include>


<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.ArrayList"%>



<%
	String url = "jdbc:mysql://localhost:3306/teamrocket";
	String user = "root";
	String pwd = "System84";

	try {
		Class.forName("com.mysql.jdbc.Driver");
	} catch (ClassNotFoundException e) {
		e.printStackTrace();
	}

	Connection connection = null;
	Statement statement = null;
	ResultSet resultSet = null;
%>

<h2><strong>Nos evenements</strong></h2>


	<%
		try {
			connection = DriverManager.getConnection(url, user, pwd);
			statement = connection.createStatement();
			String sql = "SELECT * FROM evenement";

			resultSet = statement.executeQuery(sql);
			while (resultSet.next()) {
	%>
	<tr>
		<td><%=resultSet.getString("titre")%></td>
		<td><%=resultSet.getString("date")%></td>
		<td><%=resultSet.getString("createur")%></td>
		<td><%=resultSet.getString("lieu")%></td>
	</tr>
	<% 	}

		} catch (Exception e) {
			e.printStackTrace();
		}
	%>

<table/>
