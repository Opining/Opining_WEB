<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="shortcut icon" href="style/img/icon.png">
<link rel="stylesheet" type="text/css" href="css/atualizar.css">
<title>Opining</title>
</head>

<body>
	<div id="wrapper">
		<div id="register">
			<img alt="Atualizar dados" src="style/img/Atualizar.png">
			<form action="CadastroServlet.do" method="Post" target="_self"
				autocomplete="on">
				<fieldset>
					<table cellspacing="15">
						<tr>
							<td><label> Nome de usuário: </label> <input type="text"
								name="username" required="required"></td>
						</tr>
						<tr>
							<td><label> Email: </label> <input
								type="text" name="email" required="required">
							</td>
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
					<input type="submit" value="Atualizar" />
				</p>

				<p class="change_link">
					Dados atualizados? <a href="index.html"> Faça o login! </a>
				</p>

			</form>
</body>
</html>