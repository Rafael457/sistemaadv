<?php
  include("conexao.php");
  include("controlesessao.php");  

	$result_emp = "select * from empresa order by nome";

	$resultado_empresa = mysqli_query($conn,$result_emp);

	mysqli_close($conn);
?>
<!DOCTYPE html>
<html>
<head>
<title>Consulta Empresa</title>
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

	<div align="CENTER">
			<h1>Sistema de Consultas</h1>
			<p>Consulta Empresa</p>
<!--######################### inicio do form e div o qual o contem ##########################-->
		<div class="container">
			<div class="alert alert-info ">
				<form name="formContato" method="get" action="consultaempresa.php">
					<p>
						Selecione a Empresa:
					</p>
					<?php
					header ('Content-type: text/html; charset=utf-8');

					$options = array();
					while ($dados = mysqli_fetch_assoc($resultado_empresa))
					{
						$options []= '<option value="' . $dados['idemp'] . '">' . $dados['nome'] . '</option>';
						$teste=$dados['idemp'];
					}

					$select = '<select name="idempresa" class="btn btn-primary" >' . implode("\n", $options) . '</select>';

					echo $select;
					print("<br><br>");

					?>
					<p>
						<input class="btn btn-primary" type="submit" name="button" id="button" value="Pesquisar">
					</p>
				</form>
			</div>
		</div>
	</div>
	<div class="container">
		<form name="formContato" method="get" action="index.php">
        <p>
            <input type="submit" class="btn btn-success" name="button" id="button" value="Voltar para Menu">
        </p>
    </form>
</div>
</body>
</html>