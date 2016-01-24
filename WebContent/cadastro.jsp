
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="shortcut icon" href="resources/images/logo.png">
<link rel="stylesheet" type="text/css" href="css/cadastro.css">
<title>Opining</title>
</head>

<body>
	<div id="wrapper">
		<div id="register">
			<img alt="Inscreva-se" src="resources/images/Inscrever.png">
			<form action="CadastroServlet.do" method="Post" target="_self"
				autocomplete="on">
				<fieldset>
					<legend> Dados de login </legend>
					<table cellspacing="15">
						<tr>
							<td><label> Login de usuário: </label> <input type="text"
								name="username" required="required"></td>
						</tr>
						<tr>
							<td><label> Senha: </label> <input type="password"
								name="password" required="required"></td>
						</tr>
						<tr>
							<td><label> Confirme a senha: </label> <input
								type="password" name="password_confirm" required="required">
							</td>
						</tr>
					</table>
				</fieldset>


				<p class="register button">
					<input type="submit" value="Register" />
				</p>

				<p class="change_link">
					Já é um membro? <a href="index.html"> Faça o login! </a>
				</p>

			</form>
</body>
</html>