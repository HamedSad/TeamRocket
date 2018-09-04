<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.SQLException"%>
<%@page import="projet.CreationEvenement"%>
<%@page import="java.sql.*"%>

	<%
		String id = request.getParameter("IDEve");
		String ti = request.getParameter("titre");
		String date = request.getParameter("date");
		String cr = request.getParameter("createur");
		String li = request.getParameter("lieu");
		String mo = request.getParameter("montant");
		String type = request.getParameter("type");
		String des = request.getParameter("descriptionEve");
		

		
		try {

			Class.forName("com.mysql.jdbc.Driver");

			String url = "jdbc:mysql://localhost:3306/teamrocket";
			String user = "root";
			String pwd = "System84";

			Connection con = DriverManager.getConnection(url, user, pwd);
			PreparedStatement ps = con.prepareStatement ("insert into evenement values(?,?,?,?,?,?,?,?)");
			ps.setString(1, id);
			ps.setString(2, ti);
			ps.setString(3, date);
			ps.setString(4, cr);
			ps.setString(5, li);
			ps.setString(6, mo);
			ps.setString(7, type);
			ps.setString(8, des);

			int i = ps.executeUpdate();

			if (i > 0) {
	
		} else {
				out.print("Erreur 1");
			}

		} catch (Exception e) {
			e.printStackTrace();
			out.print("Erreur 2");
		}
	
		
	%>