<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.SQLException"%>
<%@page import="projet.CreationEvenement"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Evenements</title>
</head>
<body>
<jsp:include page="Header.html"></jsp:include>

	<h2 align="center">
		<font><strong>Recherche</strong></font>
	</h2>

	<form action="RechercheEvenement.jsp">
		<p>Rechercher un événement, une ville, un pseudo ...  <input type="search"name="search"> <input type="submit" value="Trouver!"></p>
	</form>
	
	<p>Evenement</p>
</body>
</html>