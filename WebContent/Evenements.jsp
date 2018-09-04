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

	<form action="RechercheEvenement.jsp">
		<p>Rechercher un événement ou une ville : <input type="text" name="search"><input type="submit" value="Trouver!"></p>
	</form>

	<h2>
		<font><strong>Nos événements</strong></font>
	</h2>

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

		ArrayList<CreationEvenement> listeEvenement = new ArrayList<CreationEvenement>();

		while (result.next()) {
			CreationEvenement affichage = new CreationEvenement();
			
			affichage.setId(result.getString("IDEve"));
			affichage.setTitre(result.getString("titre"));
			affichage.setDateEve(result.getString("dateEve"));
			affichage.setCreateur(result.getString("createur"));
			affichage.setLieu(result.getString("lieu"));
			affichage.setMontant(result.getString("MontantActu"));
			affichage.setTypeEve(result.getString("typeEve"));
			affichage.setTextEve(result.getString("textEve"));
			

			listeEvenement.add(affichage);
			
			String id;
			String titre;
			String dateEve;
			String createur;
			String lieu;
			String montant;
			String typeEve;
			String textEve;
		}

		for (int i = 0; i < listeEvenement.size(); i++) {

			out.print("<ul>");
			out.print("L'événement : ");
			out.print(listeEvenement.get(i).getTitre());
			out.print(" aura lieu le : ");
			out.print(listeEvenement.get(i).getDateEve());
			out.print(" à ");
			out.print(listeEvenement.get(i).getLieu());
			out.print(". Evenement créé par ");
			out.print(listeEvenement.get(i).getCreateur());
			out.print("<a href=AffichageEvenement.jsp>  Voir plus...</a>");
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

	<a href=CreationEvenement.jsp>Créer un événement</a>
	<hr>
	<jsp:include page="Footer.html"></jsp:include>
</body>
</html>