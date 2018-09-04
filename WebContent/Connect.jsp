<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Connexion</title>

</head>

<body>
	<jsp:include page="Header.html"></jsp:include>
	
	<p>CONNEXION</p>
	
	<form action="ConnectFetch.jsp">
		<table>
			<tr><td>Pseudo</td><td><input type="text" name="pseudo"></td></tr>
			<tr><td>Mot de passe</td><td><input type="password" name="mdp"></td></tr>
			<tr><td><input type="reset" value="Effacer"><input type="submit" value="Se connecter!"></td></tr>
		</table>
	</form>

<a href=Register.jsp>Pour s'inscrire</a>
<hr>
<jsp:include page="Footer.html"></jsp:include>

</body>
</html>