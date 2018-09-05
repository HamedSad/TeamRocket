<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Identification</title>
</head>
<body>

<jsp:include page="Header.html"></jsp:include>
<p>INSCRIPTION</p>
<p>Pour vous inscrire, complétez les champs ci-dessous</p>

<form action="RegisterSave.jsp">
        <table>        
        <tr><td>Pseudo</td><td><input type="text" name="pseudo"></td></tr>
        <tr><td>Mot de passe</td><td><input type="password" name="mdp"></td></tr>
        <tr><td>Confirmation</td><td><input type="password" name="mdp2"></td></tr>
        <tr><td>Email</td><td><input type="text" name="email"></td></tr>
        <tr><td><input type="reset" value="Effacer"><input type="submit" value="S'inscrire!"></td></tr>        
        </table> 
</form>

<a href=Connect.jsp>Pour se connecter</a>

<hr>

<jsp:include page="Footer.html"></jsp:include>
</body>
</html>