<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.SQLException"%>
<%@page import="projet.Evenement"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Evenements</title>
</head>

<body>

<jsp:include page="Header.html"></jsp:include>

<form action="RechercheEvenement.jsp"><p>Rechercher un evenement ou une ville :
<input type="text" name="search"><input type="submit" value="Trouver!"></p>
</form>

<h2><font><strong>Nos evenements</strong></font></h2>

<%
	try {
		Class.forName("com.mysql.jdbc.Driver");
		
		String url = "jdbc:mysql://localhost/teamrocket";
		String user= "root";
		String pwd = "System84";
		
		Connection cn = (Connection) DriverManager.getConnection(url, user, pwd);
		
		Statement st = cn.createStatement();
		
		String sql = "SELECT * FROM evenement";
		
		ResultSet result = (ResultSet) st.executeQuery(sql);
		
		ArrayList<Evenement> listeEvenement = new ArrayList<Evenement>(); 
		

	
		while(result.next()) {
			Evenement affichage = new Evenement();
			
			affichage.setTitre(result.getString("titre"));
			affichage.setDate(result.getString("date"));
			affichage.setCreateur(result.getString("createur"));
			affichage.setLieu(result.getString("lieu"));
			
			listeEvenement.add(affichage);
		}
		
		for(int i = 0 ; i < listeEvenement.size(); i ++) {
		
			out.print("<ul>");
			out.print("Le ");
			out.print(listeEvenement.get(i).getDate());
			out.print(" aura lieu : ");
			out.print(listeEvenement.get(i).getTitre());				
			out.print(" à ");
			out.print(listeEvenement.get(i).getLieu());
			out.print(". Evenement créé par ");
			out.print(listeEvenement.get(i).getCreateur());
			out.print("</ul>");

		}	
			
	} 
	catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
%>
<hr>
<a href=CreationEvenement.jsp>Créer un evenement</a>
<jsp:include page="Footer.html"></jsp:include>
</body>
</html>