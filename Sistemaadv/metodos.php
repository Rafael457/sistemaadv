<?php  
include("controlesessao.php");
include("conexao.php");

if(isset($_SESSION['msg']))
{
	echo $_SESSION['msg'];
	unset($_SESSION['msg']);
}
?>
<!DOCTYPE html>
<html>
<head>
<title>Sistema</title>
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
<div class="bg-1">
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>-->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.11/jquery.mask.min.js"></script>
  <p align="center"><img src="justica2.jpg"></p>
  <br><br><br>
</head>
<body>  
<div>
<h1 align="center">Sistema de Processos</h1>	
</div>
<div class="container">
	<div class="alert alert-info ">
		 <p align="center"><a class="btn btn-primary btn-block" href="cadastraproc.php" class="alert-link">Cadastro de Processos</a></p> 
		 <p align="center"><a class="btn btn-primary btn-block" href="consultaproc.php" class="alert-link">Consulta de Processos</a></p> 
		 <p align="center"><a class="btn btn-primary btn-block" href="cadcliente.php" class="alert-link">Cadastro de Cliente</a></p> 
		 <p align="center"><a class="btn btn-primary btn-block" href="consultacli.php" class="alert-link">Consulta de Cliente</a></p> 
     <p align="center"><a class="btn btn-primary btn-block" href="cadempresa.php" class="alert-link">Cadastro de Empresa</a></p> 
     <p align="center"><a class="btn btn-primary btn-block" href="consultempresa.php" class="alert-link">Consulta de Empresa</a></p> 
		 <p align="center"><a class="btn btn-primary btn-block" href="cadand.php" class="alert-link">Cadastro de Andamento</a></p> 
		 <p align="center"><a class="btn btn-primary btn-block" href="consultaand.php" class="alert-link">Consulta de Andamento</a>
     </p> 
     <p align="center"><a class="btn btn-primary btn-block" href="updoc.php" class="alert-link">Upload de Documentos</a>
     </p>
     <p align="center"><a class="btn btn-primary btn-block" href="consultadoc.php" class="alert-link">Consulta de Documentos</a>
     </p>  
</div>
</body>
</html>