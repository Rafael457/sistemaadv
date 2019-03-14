<?php
  include("conexao.php");
  include("controlesessao.php");  

  	if(isset($_SESSION['msg']))
{
	echo $_SESSION['msg'];
	unset($_SESSION['msg']);
}

	$resultado_cli = "select * from cliente order by nomecli";

	$resultado_cliente = mysqli_query($conn,$resultado_cli);

	$resultado_emp = "select * from empresa order by nome";

	$resultado_empresa = mysqli_query($conn,$resultado_emp);

	mysqli_close($conn);
?>
<!DOCTYPE html>
<html>
<head>
<title>Cadastro de Processos</title>
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

			<p>Cadastro de Processo.</p>
		</div>
		<script type="text/javascript">
		  $("#numeroproc").mask("0000000-00.0000.0.00.0000");
		</script>
		<div align="left">
			<div class="alert alert-info">		
				<form name="formContato" method="get" action="cadastraprocesso.php">
					<div class="row">
						<div class="col-lg-3">
							<p>
							Nº do processo:
							</p>
							<p>
							 <input type="text" name="numeroproc" id="numeroproc">
							 </p>		
						</div>
						<div class="col-lg-5">
							<p>
							Selecione o Cliente:
							</p>
							<p>
							<?php
								$options = array();
								while($array_cli = mysqli_fetch_assoc($resultado_cliente))
								{
									if($array_cli['cpf'])
									{
										$options []= '<option value="'.$array_cli['idcli'].'">'.$array_cli['nomecli'].' '.$array_cli['cpf'].'</option>';
									}
									else
									{
										$options []= '<option value="'.$array_cli['idcli'].'">'.$array_cli['nomecli'].' '.$array_cli['rg'].'</option>';
									}
								}
								$select = '<select name="codcli" class="btn btn-primary">' . implode("\n", $options) . '</select>';
								echo $select;
							?>
							</p>
						</div>
						<div class="col-lg-3">
							<p>
							Selecione a empresa:
							</p>
							<p>
							<?php
								$options = array();
								while($array_emp = mysqli_fetch_assoc($resultado_empresa))
								{

									$options []= '<option value="'.$array_emp['idemp'].'">'.$array_emp['nome'].'</option>';
								}
								$select = '<select name="codemp" class="btn btn-primary">' . implode("\n", $options) . '</select>';
								echo $select;
							?>
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
					<div class="row">
						<div class="col-lg-3">
							<p>
							Horas trabalhadas na Empresa:
							</p>
							<p>
							 <input type="number" id="horastrab" name="horastrab" required>
							 </p>		
						</div>
						<div class="col-lg-3">
							<p>
							Horas de Almoço na Empresa:
							</p>
							<p>
							<input type="number" id="horalmoco" name="horalmoco" required="">
							</p>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-3">
							<p>
							Data de admissão na Empresa:
							</p>
							<p>
							 <input type="date" class="btn btn-primary" name="dataadm">
							 </p>		
						</div>
						<div class="col-lg-3">
							<p>
							Data de demissão na Empresa:
							</p>
							<p>
							<input type="date" class="btn btn-primary" name="datadm">
							</p>
						</div>
						<div class="col-lg-3">
							<p>
							Nº da Pasta:
							</p>
							<p>
							<input type="number" name="numeropasta" required>
							</p>
						</div>
					</div>
					<div align="center">
					<br>
					<p>
						Pedidos do processo:
					</p>
					<p>
						<textarea name="pedidos" id="end" cols="100" rows="5"></textarea>
					</p>
					</div>
					<p>
						<input type="submit" class="btn btn-primary" name="button" id="button" value="Cadastrar Processo">
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