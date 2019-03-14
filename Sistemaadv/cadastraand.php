<?php
  include("conexao.php");
  include("controlesessao.php"); 

  	$numeroproc = $_GET['numeroproc']; 


  	
  	$numeroand = "select max(numeroand) as total from andamento where numeroproc ='".$numeroproc."'";

  	$result_and = mysqli_query($conn,$numeroand);

  	$resultado_andamento = mysqli_fetch_assoc($result_and);



  	$resultado_cli = "select idcli, nomecli from cliente where idcli = (SELECT cliente from processo where numeroproc ='".$numeroproc."')";

	$resultado_cliente = mysqli_query($conn,$resultado_cli);

	$dados_cli = mysqli_fetch_assoc($resultado_cliente);



	$resultado_emp = "select idemp, nome from empresa where idemp = (select empresa from processo where numeroproc = '".$numeroproc."')";

	$resultado_empresa = mysqli_query($conn,$resultado_emp);

	$dados_emp = mysqli_fetch_assoc($resultado_empresa);



	mysqli_close($conn);
?>
<!DOCTYPE html>
<html>
<head>
<title>Cadastro de Andamentos</title>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>-->
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
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

			<p>Cadastro de Andamentos.</p>
		</div>
		<script type="text/javascript">
		  $("#numeroproc").mask("0000000-00.0000.0.00.0000");
		</script>
		<div align="left">
			<div class="alert alert-info">		
				<form name="formContato" method="get" action="cadastraandamento.php">
					<div class="row">
						<div class="col-lg-3">
							<p>
							Nº do processo:
							</p>
							<p>
							 <input type="text" name="numero" id="numero" value="<?=$numeroproc?>" disabled>
							 <input type="hidden" name="numeroproc" id="numeroproc" value="<?=$numeroproc?>">
							 <input type="hidden" name="numeroand" id="numeroand" value="<?=$resultado_andamento['total']+1?>">
							 </p>		
						</div>
						<div class="col-lg-3">
							<p>
							Cliente do processo:
							</p>
							<p>
							<input type="text" name="nomecli" id="nomecli" value="<?=$dados_cli['nomecli']?>" disabled>
							<input type="hidden" name="idcli" id="idcli" value="<?=$dados_cli['idcli']?>">
							</p>
						</div>
						<div class="col-lg-3">
							<p>
							Empresa do processo:
							</p>
							<p>
							<input type="text" name="nomeemp" id="nomeemp" value="<?=$dados_emp['nome']?>" disabled>
							<input type="hidden" name="idemp" id="idemp" value="<?=$dados_emp['idemp']?>">
							</p>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-3">
							<p>
							Data da audiência:
							</p>
							<p>
							<input type="date" class="btn btn-primary" name="dataaud">
							</p>		
						</div>
						<div class="col-lg-3">
							<p>
							Hora da audiência:
							</p>
							<p>
							<input type="time" class="btn btn-primary" name="horaaud">
							</p>
						</div>
					</div>
					<div align="center">
					<br>
					<p>
						Assuntos / Detalhes do Andamento:
					</p>
					<p>
						<textarea name="assuntos" id="end" cols="100" rows="5"></textarea>
					</p>
					</div>
					<p>
						<input type="submit" class="btn btn-primary" name="button" id="button" value="Cadastrar Andamento">
					</p>
				</form>
			</div>
		</div>
		<form action="metodos.php" method="get" accept-charset="utf-8">
 		<p>
			<input type="submit"  class="btn btn-success" name="button" id="button" value="Voltar para Menu">
		</p>
		</form>
	</div>
</body>
</html>