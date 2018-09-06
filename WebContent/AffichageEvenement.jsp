<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.SQLException"%>
<%@page import="projet.EvenementModel"%>
<%@page import="java.util.*"%>
<%@page import="java.text.*"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Evenements</title>
</head>
<body>
<jsp:include page="Header.html"></jsp:include>

	<h2 align="center"><font><strong>Recherche</strong></font></h2>

	<form action="RechercheEvenement.jsp">
		<p>Rechercher un événement, une ville, un pseudo ...  <input type="search"name="search"> <input type="submit" value="Trouver!"></p>
	</form>
	
	<p>Evenement</p>
	
	<%
	
	try {
			Class.forName("com.mysql.jdbc.Driver");

			String url = "jdbc:mysql://localhost/teamrocket";
			String user = "root";
			String pwd = "System84";

			Connection cn = (Connection) DriverManager.getConnection(url, user, pwd);

			Statement st = cn.createStatement();


			String sql = "SELECT * FROM evenement";
 
			ResultSet result = (ResultSet) st.executeQuery(sql);

			ArrayList<EvenementModel> listeEvenementUnitaire = new ArrayList<EvenementModel>();

			int id;

			while (result.next()) {

		EvenementModel affichage = new EvenementModel();

		affichage.setTitre(result.getString("titre"));
		affichage.setDateEve(result.getString("dateEve"));
		affichage.setCreateur(result.getString("createur"));
		affichage.setLieu(result.getString("lieu"));
		affichage.setMontantObjectif(result.getDouble("montantObjectif"));

		listeEvenementUnitaire.add(affichage);
			}

			for (int i = 0; i < listeEvenementUnitaire.size(); i++) {

		out.print("<ul>");
		out.print("Evenement: ");
		out.print(listeEvenementUnitaire.get(i).getTitre());
		out.print("<br>Aura lieu le : ");
		out.print(listeEvenementUnitaire.get(i).getDateEve());
		out.print("<br>A : ");
		out.print(listeEvenementUnitaire.get(i).getLieu());
		out.print("<br>Cet événement à besoin de  : ");
		out.print(listeEvenementUnitaire.get(i).getMontantObjectif());
		out.print("euros. Evenement créé par ");
		out.print(listeEvenementUnitaire.get(i).getCreateur());
		out.print("</ul>");
	}
		
			} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	%>
</body>
</html>