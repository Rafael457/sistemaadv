<?php
    include("controlesessao.php");
    include("conexao.php"); 

    $idcli = $_GET["idcli"];

    $dados = "select * from cliente where idcli =".$idcli."";

    $resultado_cliente = mysqli_query($conn,$dados);

    $cliente = mysqli_fetch_assoc($resultado_cliente); 

    mysqli_close($conn);
?>
<!DOCTYPE html>
<html>
<head>
<title>Alterar Cliente</title>
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

			<p>Alterar Cliente.</p>
		</div>
		<script type="text/javascript">
  $("#tel").mask("(00) 0000-0000");
  $("#cel").mask("(00) 00000-0000");
  $("#CTPS").mask("0000000");
  $("#serie").mask("0000AA");
  $("#CPF").mask("000.000.000-00");
  $("#RG").mask("00.000.00A-A");
  $("#PIS").mask("000.0000.000-00");
    </script>
		<div align="left">
			<div class="alert alert-info">		
				<form name="formContato" method="get" action="alterarcliente.php">
					<div class="row">
						<div class="col-lg-3">
							<p>
							Nome:
							</p>
							<p>
							 <input type="text" name="nome" value="<?=$cliente['nomecli']?>">
							 </p>		
						</div>
						<div class="col-lg-3">
							<p>
							Nacionalidade:
							</p>
							<p>
							<input type="text" name="nacionalidade" value="<?=$cliente['nacionalidade']?>">
							</p>
						</div>
						<div class="col-lg-3">
							<p>
							Estado Civil:
							</p>
							<p>
							<input type="text" name="estcivil" value="<?=$cliente['estcivil']?>">
							</p>
						</div>
						<div class="col-lg-3">
							<p>
							Profissão:
							</p>
							<p>
							<input type="text" name="prof" value="<?=$cliente['profissao']?>">
							</p>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-3">
							<p>
							CTPS:
							</p>
							<p>
							 <input type="text" id="CTPS" name="ctps" value="<?=$cliente['ctps']?>">
							 </p>		
						</div>
						<div class="col-lg-9">
							<p>
							Serie:
							</p>
							<p>
							<input type="text" id="serie" name="serie" value="<?=$cliente['serie']?>">
							</p>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-3">
							<p>
							CPF:
							</p>
							<p>
							 <input type="text" id="CPF" name="cpf" value="<?=$cliente['cpf']?>">
							 </p>		
						</div>
						<div class="col-lg-3">
							<p>
							RG:
							</p>
							<p>
							<input type="text" id="RG" name="rg" value="<?=$cliente['rg']?>">
							</p>
						</div>
						<div class="col-lg-6">
							<p>
							PIS:
							</p>
							<p>
							<input type="text" id="PIS" name="pis" value="<?=$cliente['pis']?>">
							</p>
						</div>
					</div>
					<div align="center">
					<br>
					<p>
						Endereco:
					</p>
					<p>
						<textarea name="Endereco" id="end" cols="100" rows="5"><?=$cliente['endereco']?></textarea>
					</p>
					</div>
					<div class="row">
						<div class="col-lg-3">
							<p>
							Telefone residencial:
							</p>
							<p>
							 <input type="text" id="tel" name="tel" value="<?=$cliente['telefone']?>">
							 </p>		
						</div>
						<div class="col-lg-3">
							<p>
							Celular:
							</p>
							<p>
							<input type="text" id="cel"name="cel" value="<?=$cliente['celular']?>">
							</p>
						</div>
						<div class="col-lg-6">
							<p>
							E-mail:
							</p>
							<p>
							<input type="text" name="email" value="<?=$cliente['email']?>">
							</p>
						</div>
					</div>
					<p>
						codigo:
					</p>
					<p>
						<input type="text"  value="<?=$cliente['idcli']?>" disabled>
						<input type="hidden" name="codcli" value="<?=$cliente['idcli']?>">						
					</p>
					<p>
						<input type="submit" class="btn btn-primary" name="button" id="button" value="Alterar Cliente">
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