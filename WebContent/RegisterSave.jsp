<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.SQLException"%>
<%@page import="projet.userModel"%>
<%@page import="java.sql.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Inscription</title>
</head>
<body>


	<%
		String psd = request.getParameter("pseudo");
		String mdp = request.getParameter("mdp");
		String em = request.getParameter("email");

		if (psd.length() > 5  && mdp.length() > 8  &&em.length() > 10 )
			{ 
		
		try {

			Class.forName("com.mysql.jdbc.Driver");

			String url = "jdbc:mysql://localhost:3306/teamrocket";
			String user = "root";
			String pwd = "System84";

			Connection con = DriverManager.getConnection(url, user, pwd);
			PreparedStatement ps = con.prepareStatement("insert into register values(?,?,?)");
			ps.setString(1, psd);
			ps.setString(2, mdp);
			ps.setString(3, em);

			int i = ps.executeUpdate();

			if (i > 0) {
	%>
	<jsp:forward page="Register.jsp"></jsp:forward>
	<%
		} else {
				out.print("Erreur 1");
			}

		} catch (Exception e) {
			e.printStackTrace();
			out.print("Erreur 2");
		}
		}
	%>

</body>
</html>