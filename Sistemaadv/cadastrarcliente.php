<!DOCTYPE html>
<html>
<head>
  <title>Cadastrar Cliente</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.11/jquery.mask.min.js"></script>
  <p align="center"><img src="justica2.jpg"></p>
</head>
<body>
  <div class="container">
<?php
  include("conexao.php");
  include("controlesessao.php");  

   $nomecli = $_GET["nome"];
   
   if(!$nomecli){
    $nomecli="";
   }
 
   $nacionalidade = $_GET["nacionalidade"];
   
   if(!$nacionalidade){
    $nacionalidade="";
   }
   
   $estcivil = $_GET["estcivil"];

   if(!$estcivil){
    $estcivil="";
   }

   $prof = $_GET["prof"];

   if(!$prof){
    $prof="";
   }

   $ctps = $_GET["ctps"];
 
   if(!$ctps){
    $ctps=0;
   }
  
   $serie = $_GET["serie"];

   if(!$serie){
    $serie=0;
   }
   
   $cpf = $_GET["cpf"];

   if(!$cpf){
    $cpf="";
   }
   
   $rg = $_GET["rg"]; 

   if(!$rg){
    $rg="";
   }

   $pis = $_GET["pis"];

   if(!$pis){
    $pis="";
   }
   $Endereco = $_GET["Endereco"];

   if(!$Endereco){
    $Endereco="";
   }

   $tel = $_GET["tel"];

   if(!$tel){
    $tel="";
   }

   $cel = $_GET["cel"];

   if(!$cel){
    $cel="";
   }

   $email = $_GET["email"];

   if(!$email){
    $email="";
   }

   $codcli = $_GET["codcli"];

   $query = "INSERT INTO `cliente`(`idcli`, `nomecli`, `nacionalidade`, `estcivil`, `profissao`, `ctps`, `serie`, `cpf`, `rg`, `pis`, `endereco`, `telefone`, `celular`, `email`) VALUES(".$codcli.",'".$nomecli."','".$nacionalidade."','".$estcivil."','".$prof."','".$ctps."','".$serie."','".$cpf."','".$rg."','".$pis."','".$Endereco."','".$tel."','".$cel."','".$email."')";
   
  $resultado_cliente = mysqli_query($conn,$query);



  if($resultado_cliente)
  {
    $_SESSION['msg']='<div class="alert alert-success"><strong>Sucesso!</strong> Dados inseridos com sucesso.</div>';
    mysqli_close($conn);
    header("Location: metodos.php");
  }
  else
  {
  	$_SESSION['msg']='<div class="alert alert-danger"><strong>Error!</strong> Incapaz de inserir dados no banco.</div>';
    mysqli_close($conn);
    header("Location: metodos.php");
  }

?> 

</div>
</body>
</html>