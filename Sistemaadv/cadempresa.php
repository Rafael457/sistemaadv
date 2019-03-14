<?php
  include("conexao.php");
  include("controlesessao.php");  

	$result_cli = "Select max(idemp) as total from empresa ";

	$resultado_cliente = mysqli_query($conn,$result_cli);

	$dados=mysqli_fetch_assoc($resultado_cliente);

	mysqli_close($conn);
?>
<!DOCTYPE html>
<html>
<head>
<title>Cadastro de Empresa</title>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>-->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.11/jquery.mask.min.js"></script>
  <nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Advocacia</a>
    </div>
    <ul class="nav navbar-nav">
      <li><a href="#"><?php echo $_SESSION["id"];?></a></li>		
      <li><a href="?acao=sair?">Logout</a></li>
    </ul>
  </div>
</nav>
  <p align="center"><img src="justica2.jpg"></p>
</head>
<body>
	<div class="container">
		<div align="center">	
			<h1>Sistema de cadastro</h1>

			<p>Cadastro de Empresa.</p>
		</div>
		<div align="left">
			<div class="alert alert-info">		
				<form name="formContato" method="get" action="cadastrarempresa.php">
					<div class="row">
						<div class="col-lg-3">
							<p>
							Nome:
							</p>
							<p>
							 <input type="text" name="nome">
							 </p>		
						</div>
						<div class="col-lg-3">
							<p>
							codigo:
							</p>
							<p>
							<input type="number" name="cod" value="<?=$dados['total']+1?>" disabled>
							<input type="hidden" name="codemp" value="<?=$dados['total']+1?>">
							</p>
						</div>
					</div>
					<div align="center">
					<br>
					<p>
						Endereco:
					</p>
					<p>
						<textarea name="Endereco" id="end" cols="100" rows="5"></textarea>
					</p>
					</div>
					<p>
						<input type="submit" class="btn btn-primary" name="button" id="button" value="Cadastrar Empresa">
					</p>
				</form>
			</div>
		</div>
		<form action="index.php" method="get" accept-charset="utf-8">
 		<p>
			<input type="submit"  class="btn btn-success" name="button" id="button" value="Voltar para Menu">
		</p>
		</form>
	</div>
</body>
</html>