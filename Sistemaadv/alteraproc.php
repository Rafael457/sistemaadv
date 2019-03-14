<?php
  include("conexao.php");
  include("controlesessao.php");

  	$numeroproc = $_GET['numeroproc'];

  	$resultado_proc = "select * from processo where numeroproc like '".$numeroproc."'";

  	$resultado_processo = mysqli_query($conn,$resultado_proc);

  	$dados_proc = mysqli_fetch_assoc($resultado_processo); 



  	$result_cli = "select * from cliente where idcli = ".$dados_proc['cliente'].""; 

  	$result_cliente = mysqli_query($conn,$result_cli);

  	$dados_cli = mysqli_fetch_assoc($result_cliente);

	$resultado_cli = "select * from cliente order by nomecli";

	$resultado_cliente = mysqli_query($conn,$resultado_cli);



	$result_emp = "select * from empresa where idemp = ".$dados_proc['empresa'].""; 

  	$result_empresa = mysqli_query($conn,$result_emp);

  	$dados_emp = mysqli_fetch_assoc($result_empresa);

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
		<div align="left">
			<div class="alert alert-info">		
				<form name="formContato" method="get" action="alteraprocesso.php">
					<div class="row">
						<div class="col-lg-3">
							<p>
							Nº do processo:
							</p>
							<p>
							 <input type="text" name="numero" id="numero" value="<?=$dados_proc['numeroproc']?>" disabled>
							 <input type="hidden" name="numeroproc" id="numeroproc" value="<?=$dados_proc['numeroproc']?>">
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

									$options []= '<option value="'.$array_cli['idcli'].'">'.$array_cli['nomecli'].' '.$array_cli['cpf'].'</option>';
								}
								$select = '<select name="codcli" class="btn btn-primary"> <option value= '.$dados_cli['idcli'].' selected>' . $dados_cli['nomecli'] . '</option>' . implode("\n", $options) . '</select>';
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
								$select = '<select name="codemp" class="btn btn-primary"> <option value= '.$dados_emp['idemp'].' selected>' . $dados_emp["nome"] . '</option>' .  implode("\n", $options) . '</select>';
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
							<input type="date" class="btn btn-primary" name="dataaud" value="<?=$dados_proc['dataaud']?>">
							</p>		
						</div>
						<div class="col-lg-3">
							<p>
							Hora da audiência:
							</p>
							<p>
							<input type="time" class="btn btn-primary" name="horaaud" value="<?=$dados_proc['horaaud']?>">
							</p>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-3">
							<p>
							Horas trabalhadas na Empresa:
							</p>
							<p>
							 <input type="number" id="horastrab" name="horastrab" value="<?=$dados_proc['horastrab']?>" required>
							 </p>		
						</div>
						<div class="col-lg-3">
							<p>
							Horas de Almoço na Empresa:
							</p>
							<p>
							<input type="number" id="horalmoco" name="horalmoco" value="<?=$dados_proc['horalmoco']?>" required> 
							</p>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-3">
							<p>
							Data de admissão na Empresa:
							</p>
							<p>
							 <input type="date" class="btn btn-primary" name="dataadm" value="<?=$dados_proc['dataadm']?>">
							 </p>		
						</div>
						<div class="col-lg-3">
							<p>
							Data de demissão na Empresa:
							</p>
							<p>
							<input type="date" class="btn btn-primary" name="datadm" value="<?=$dados_proc['datadm']?>">
							</p>
						</div>
						<div class="col-lg-3">
							<p>
							Nº da Pasta:
							</p>
							<p>
							<input type="number" name="numeropasta" value="<?=$dados_proc['numeropasta']?>">
							</p>
						</div>
					</div>
					<div align="center">
					<br>
					<p>
						Pedidos do processo:
					</p>
					<p>
						<textarea name="pedidos" id="end" cols="100" rows="5"><?=$dados_proc['pedidosproc']?></textarea>
					</p>
					</div>
					<p>
						<input type="submit" class="btn btn-primary" name="button" id="button" value="Alterar Dados">
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