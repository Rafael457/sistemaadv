<?php  
include("controlesessao.php");
include("conexao.php");
?>
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
<!DOCTYPE html>
<html>
<head>
	<title>Consulta Processo</title>
	<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>-->
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.11/jquery.mask.min.js"></script>
  <p align="center"><img src="justica2.jpg"></p>
</head>
<script type="text/javascript">
	$("#numeroproc").mask("0000000-00.0000.0.00.0000");
</script>
<body>

	<div align="CENTER">
			<h1>Sistema de Consultas</h1>
			<p>Consulta Processo</p>
<!--######################### inicio do form e div o qual o contem ##########################-->
		<div class="container">
			<div class="alert alert-info ">
				<form name="formContato" method="get" action="consultaprocesso.php">
					<p>
					Digite o numero do processo:
					</p>
					<p>
					<input type="text" name="numeroproc" id="numeroproc" required>
					</p>
					<p>
					<input class="btn btn-primary" type="submit" name="button" id="button" value="Pesquisar">
					</p>
				</form>
			</div>
		</div>
	</div>
	<div class="container">
		<form name="formContato" method="get" action="metodos.php">
        <p>
            <input type="submit" class="btn btn-success" name="button" id="button" value="Voltar para Menu">
        </p>
    </form>
</div>
</body>
</html>