<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.SQLException"%>
<%@page import="projet.EvenementModel"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>

	<%
		
		String ti = request.getParameter("titre");
		String date = request.getParameter("date");
		int xCap = Integer.parseInt(request.getParameter("capacite"));		
		String li = request.getParameter("lieu");
		double mo = Double.valueOf(request.getParameter("montant"));
		String type = request.getParameter("type");
		String des = request.getParameter("descriptionEve");
		

		
		try {

			Class.forName("com.mysql.jdbc.Driver");

			String url = "jdbc:mysql://localhost:3306/teamrocket";
			String user = "root";
			String pwd = "System84";

			Connection con = DriverManager.getConnection(url, user, pwd);
			PreparedStatement ps = con.prepareStatement("insert into evenement (titre, dateEve,lieu , capaciteMax, montantObjectif, typeEve, textEve) values(?,?,?,?,?,?,?)");
			ps.setString(1, ti);
			ps.setString(2, date);
			ps.setString(3, li);
			ps.setInt(4, xCap);
			ps.setDouble(5, mo);
			ps.setString(6, type);
			ps.setString(7, des);

			int i = ps.executeUpdate();

			if (i > 0) {
				out.print("L'événement a bien été enregistré <a href=Evenements.jsp> Retour aux évenements</a>");
	
		} else {
				out.print("Erreur 1");
			}

		} catch (Exception e) {
			e.printStackTrace();
			out.print("Erreur 2");
		}
	%>