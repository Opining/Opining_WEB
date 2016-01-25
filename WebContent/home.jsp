<%@page import="br.edu.biblioteca.dao.LivroFactory"%>
<%@page import="br.edu.biblioteca.entitys.Livro"%>
<%@page import="java.util.List"%>
<%@page import="br.edu.biblioteca.dao.DAOFactory"%>
<%@page import="br.edu.biblioteca.dao.UsuarioFactory"%>
<%@page import="br.edu.biblioteca.entitys.Usuario"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="shortcut icon" href="style/img/icon.png">
	<title>Opining</title>

	<!-- CSS -->
	<link rel="stylesheet" href="css/form-elements.css">
	<link rel="stylesheet" href="css/style.home.css">
	<link rel="stylesheet" href="css/style.home.tabela.css" media="screen" />

</head>

<body>
	<div id="page" class="container">
		<div id="header">
			<div id="logo">
				<img src="style/img/default.jpg" alt="Imagem do perfil" />
				<h1>
					<%
						Usuario u = (Usuario) session.getAttribute("user");
					%>
					<%=u.getId()%></h1>
			</div>
			<div id="menu">
				<ul>
					<li><a href="#">Início</a></li>
					<li><a href="Logoff">Sair</a></li>
				</ul>
			</div>
		</div>
		<div id="main">
			<div id="banner"></div>
			<div id="welcome">
				<div class="title">
					<h2>
						Olá
						<%=u.getId()%>, seja bem vindo(a)!
					</h2>
				</div>
			</div>
			
			<div id="featured">
				<table>
					<thead>
						<tr>
							<th>Título</th>
							<th>Autor</th>
							<th>Editora</th>
							<th>Ano de lançamento</th>
							<th>Tipo</th>
							<th>Número de páginas</th>
							<th>Descrição</th>
							<th>Ação</th>
						</tr>
					</thead>
					<%
						List<Livro> livros = (List<Livro>) session.getAttribute("livros");
						for (Livro livro : livros) {
					%>
					<tbody>
						<tr>
							<td><%=livro.getTitulo()%></td>
							<td><%=livro.getAutores()%></td>
							<td><%=livro.getEditora()%></td>
							<td><%=livro.getAno()%></td>
							<td><%=livro.getTipo()%></td>
							<td><%=livro.getNum_pag()%></td>
							<td><%=livro.getDescricao()%></td>
							<td><img src="style/img/img.table/delete.png"></td>
						</tr>
					</tbody>
					<%
						}
					%>
				</table>

				<div id="pager" class="pager">
					<form>
						<span> Exibir 
							<select class="pagesize">
								<option selected="selected" value="10">10</option>
								<option value="20">20</option>
								<option value="30">30</option>
								<option value="40">40</option>
							</select> registros
						</span> 
						<img src="style/img/img.table/first.png" class="first" /> 
						<img src="style/img/img.table/prev.png" class="prev" /> 
						<img src="style/img/img.table/next.png" class="next" /> 
						<img src="style/img/img.table/last.png" class="last" />
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>