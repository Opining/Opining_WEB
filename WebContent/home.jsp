<%@page import="br.com.confinancas.model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="shortcut icon" href="resources/images/logo.png">
	<link rel="stylesheet" type="text/css" href="css/home.css">
	<title>Confinanças</title>
</head>

<body>
	<div id="page" class="container">
	<div id="header">
		<div id="logo">
			<img src="resources/images/confinanças1.png" alt="Logo"/>
			<img src="resources/images/perfil.png" alt="Imagem do perfil"/>
			<h1><% User u = (User) session.getAttribute("user"); %><%=u.getIdUser() %></h1>
		</div> 
		<div id="menu">
			<ul>
				<li class="current_page_item"><a href="#" accesskey="1" title="">Perfil</a></li>
				<li><a href="#" accesskey="2" title="">Contatos</a></li>
				<li><a href="#" accesskey="3" title="">Finanças</a></li>
				<li><a href="#" accesskey="4" title="">Gráficos</a></li>
			</ul>
		</div>
	</div>
	<div id="main">
		<div id="banner">
		</div>
		<div id="welcome">
			<div class="title">
				<h2>Olá <%=u.getName() %>, seja bem vindo(a)!</h2>  
			</div>
		</div>
		<div id="featured">
			<a href="#" accesskey="2" title=""><img class="image-left" src="resources/images/Ideias.png" alt="Ideias"/></a>
			<a href="#" accesskey="2" title=""><img class="image-left" src="resources/images/Finanças.png" alt="Finanças"/></a>
			<a href="#" accesskey="2" title=""><img class="image-right"src="resources/images/Contatos.png" alt="Contatos"/></a>
			<a href="#" accesskey="2" title=""><img class="image-right" src="resources/images/Gráficos.png" alt="Gráficos"/></a>
		</div>	
	</div>
	</div>
</body>
</html>