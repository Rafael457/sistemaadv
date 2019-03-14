<?php  
session_start();

include("conexao.php");
if(isset($_SESSION["id"]))
{
	header("location: metodos.php");
}

if(isset($_POST["login"]) && isset($_POST["senha"]))
	{
		$result_usuario = "Select * from login where nome = '".$_POST["login"]."'and passenha ='".$_POST["senha"]."'";

		$resultado_usuario = mysqli_query($conn,$result_usuario);

		$dados = mysqli_fetch_array($resultado_usuario);

                  $id = $dados[0];

                  $descricao = $dados[1];

                  $nome = $dados[2];


		mysqli_close($conn);
	
		$_SESSION["id"]=$descricao;
		header("location:metodos.php");
	}

	mysqli_close($conn);
?>
<!DOCTYPE html>
<html>
<head>
	<title>Login</title>
	 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>-->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.11/jquery.mask.min.js"></script>
  <p align="center"><img src="justica2.jpg"></p>
</head>
<body>
<div class="container">
<h4 align="center">Login</h4>
<div align="center">
			<div class="alert alert-info">		
				<form name="formlogin" method="post" >
					<p>
					Login:
					</p>
					<p>
					<input type="text" name="login">
					</p>
					<p>
					Senha:
					</p>
					<p>
					<input type="password" name="senha">
					</p>
					<input class="btn btn-primary"type="submit" value="logar">
				</form>
			</div>
</div>
</body>
</html>