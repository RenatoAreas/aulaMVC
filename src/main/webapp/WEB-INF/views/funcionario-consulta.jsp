<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home</title>

<!-- Referencia para arquivos CSS -->
<link rel="stylesheet" href="resources/css/bootstrap.min.css" />

</head>
<body>

	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<div class="container-fluid">
			<a class="navbar-brand" href="#">Controle de Funcionários</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="/projetoSpringMVC01/">Página inicial</a></li>
					<li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
						role="button" data-bs-toggle="dropdown" aria-expanded="false">
							Gerenciar Funcionários 
					</a>
					<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
							<li><a class="dropdown-item" href="/projetoSpringMVC01/funcionario-cadastro">Cadastrar Funcionários</a></li>
							<li><a class="dropdown-item" href="/projetoSpringMVC01/funcionario-consulta">Consultar Funcionários</a></li>
							<li><hr class="dropdown-divider"></li>
							<li><a class="dropdown-item" href="/projetoSpringMVC01/funcionario-relatorio">Relatório de Funcionários</a></li>
					</ul></li>
				</ul>
			</div>
		</div>
	</nav>
	
	<div class="nav-scroller bg-body shadow-sm">
		<nav class="nav nav-underline">
			<p class="mt-3 ml-4">
				&nbsp;&nbsp;&nbsp;Sistema desenvolvido em Spring MVC com Spring JDBC, Bootstrap e JQuery
			</p>
		</nav>
	</div>

	<div class="container mt-4">
		<h5>Consulta de funcionários</h5>
		<hr/>
		
		<form>
		
			<div class="row">
			
				<div class="col-md-4">
				
					<label>Situação do Funcionário:</label>
					<select class="form-select">
						<option>Escolha uma opção</option>
						<option>Admitido</option>
						<option>Férias</option>
						<option>Afastado</option>
						<option>Demitido</option>
					</select>
				
				</div>
			
			</div>	
		
		</form>
		
		<table class="table table-striped">
			<thead>
				<tr>
					<th>Nome do Funcionário</th>
					<th>CPF</th>
					<th>Matrícula</th>
					<th>Data de Admissão</th>
					<th>Situação</th>
					<th>Operações</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td>
						<a href="#" class="btn btn-primary btn-sm">Editar</a>
						<a href="#" class="btn btn-danger btn-sm">Excluir</a>
					</td>
				</tr>
			</tbody>
			<tfoot>
				<tr>
					<td colspan="6">Quantidade de funcionários: 0</td>
				</tr>
			</tfoot>
		</table>
		
	</div>

	<!-- Referencia para arquivos JS -->
	<script src="resources/js/bootstrap.min.js"></script>

</body>
</html>