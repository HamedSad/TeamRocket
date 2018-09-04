<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.SQLException"%>
<%@page import="projet.Evenement"%>
<%@page import="java.sql.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>recherche evenement</title>
</head>
<body>

<jsp:include page="Header.html"></jsp:include>

<h2 align="center"><font><strong>Recherche</strong></font></h2>

<form action="RechercheEvenement.jsp">
<p>Rechercher un evenement ou une ville :  <input type="search" name="search"> <input type="submit" value="Trouver"></p>
</form>


<%

	try {
				Class.forName("com.mysql.jdbc.Driver");
				
				String url = "jdbc:mysql://localhost/teamrocket";
				String user= "root";
				String pwd = "System84";
				
					
				Connection cn = (Connection) DriverManager.getConnection(url, user, pwd);
				
				Statement st = cn.createStatement();
				
				String search = request.getParameter("search");
				
				String sql = "SELECT * FROM evenement WHERE lieu LIKE'%" + search +  "%' OR titre LIKE'%" + search +  "%'  OR createur LIKE '%" + search + "%'" ;
				
				ResultSet result = (ResultSet) st.executeQuery(sql);
				
				ArrayList<Evenement> listeRechercheEvenement = new ArrayList<Evenement>();
					
				String titre;				
				String date;
				String createur;
				String lieu;
				
				out.print("Resultats correspondants à votre recherche :<br><br>");
	
				while(result.next()) {
					
					Evenement affichage = new Evenement();
					
					affichage.setTitre(result.getString("titre"));
					affichage.setDate(result.getString("date"));
					affichage.setCreateur(result.getString("createur"));
					affichage.setLieu(result.getString("lieu"));
					
					listeRechercheEvenement.add(affichage);
					
				}
				
				for(int i = 0 ; i < listeRechercheEvenement.size(); i ++) {
					
					out.print("<ul>");
					out.print("Le ");
					out.print(listeRechercheEvenement.get(i).getDate());
					out.print(" aura lieu : ");
					out.print(listeRechercheEvenement.get(i).getTitre());				
					out.print(" à ");
					out.print(listeRechercheEvenement.get(i).getLieu());
					out.print(". Evenement créé par ");
					out.print(listeRechercheEvenement.get(i).getCreateur());
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

<a href=CreationEvenement.jsp>Créer un evenement</a>
<hr>
<jsp:include page="Footer.html"></jsp:include>
</body>
</html>