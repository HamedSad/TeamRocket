<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Creation Evenement</title>
</head>
<body>
	<jsp:include page="Header.html"></jsp:include>

	<p>Creation d'un événement</p>

	<form action="CreationEvenementSave.jsp">
		<table>
			<tr><td>Titre</td><td><input type="text" name="titre"></td></tr>
			<tr><td>Date</td><td><input type="date" name="date"></td></tr>
			<tr><td>Pseudo</td><td><input type="text" name="createur"></td></tr>
			<tr><td>Lieu</td><td><input type="text" name="lieu"></td></tr>
			<tr><td>Montant</td><td><input type="text" name="montant"></td></tr>
			<tr><td>Type d'événement</td><td><select name="type">
						<option>Externe</option>
						<option>Interne</option>
				</select></td></tr>
			<tr><td>Description</td><td><textarea name="descriptionEve" cols="50" rows="10"></textarea></td></tr>
			<tr><td><input type="reset" value="Effacer">
			<input type="submit" value="Créer!"></td></tr>
		</table>
	</form>

	<hr>
	<jsp:include page="Footer.html"></jsp:include>

</body>
</html>