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
		<h5>Cadastro de Funcionário</h5>
		<hr/>
		
		<form>
		
			<div class="row">
			
				<div class="col-md-4">
					
					<label>Nome do Funcionário:</label>
					<input type="text" class="form-control" placeholder="Ex: João da Silva"/>
					<br/>
					
					<label>CPF:</label>
					<input type="text" class="form-control" placeholder="Ex: 123.456.789-00"/>
					<br/>
					
					<label>Matrícula:</label>
					<input type="text" class="form-control" placeholder="Ex: 2021-0001"/>
					<br/>

				</div>
				
				<div class="col-md-4">
					
					<label>Data de Admissão:</label>
					<input type="date" class="form-control"/>
					<br/>
					
					<label>Situação do Funcionário:</label>
					<select class="form-select">
						<option>Escolha uma opção</option>
						<option>Admitido</option>
						<option>Férias</option>
						<option>Afastado</option>
						<option>Demitido</option>
					</select>
					<br/>

				</div>
			
			</div>
			
			<div class="row">
				<div class="col-md-4">
				
					<div class="d-grid gap-2">
  						<button class="btn btn-success" type="submit">Realizar Cadastro</button>
					</div>
				
				</div>
			</div>
		
		</form>
		
	</div>

	<!-- Referencia para arquivos JS -->
	<script src="resources/js/bootstrap.min.js"></script>

</body>
</html>

