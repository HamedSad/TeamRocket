<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
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
<title>Identification</title>
</head>
<body>

<%
	try {

		String ps = request.getParameter("pseudo");
		String mp = request.getParameter("mdp");

		Class.forName("com.mysql.jdbc.Driver");

		String url = "jdbc:mysql://localhost:3306/teamrocket";
		String user = "root";
		String pwd = "System84";

		ResultSet result;

        Connection con = DriverManager.getConnection(url, user, pwd);

        PreparedStatement st = con.prepareStatement("SELECT pseudo FROM register WHERE pseudo =? AND pwd=?");

        st.setString(1, ps);

        st.setString(2, mp);

        result = st.getResultSet();

        result = st.executeQuery();

		if (result.next()) {
			out.print("Valid login! ");
		} else {
			out.print("Invalid login!");
		}

	}

	catch (SQLException e) {
		e.printStackTrace();

	}

	catch (ClassNotFoundException e) {
		e.printStackTrace();

	}
%>

</body>
</html>