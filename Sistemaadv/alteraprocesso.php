<!DOCTYPE html>
<html>
<head>
  <title>Cadastrar Processo</title>
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

   $numeroproc = $_GET["numeroproc"];
 
   $codcli = $_GET["codcli"];
   
   $codemp = $_GET["codemp"];

   $dataaud = $_GET["dataaud"];

   $horaaud = $_GET["horaaud"];
  
   $horastrab = $_GET["horastrab"];
   
   $horalmoco = $_GET["horalmoco"];
   
   $dataadm = $_GET["dataadm"]; 

   $datadm = $_GET["datadm"];

   $numeropasta = $_GET["numeropasta"];

   $pedidos = $_GET["pedidos"];

   $query = "UPDATE `processo` SET `cliente`= ".$codcli.",`cliente`= ".$codcli.",`empresa`= ".$codemp.",`dataaud`='".$dataaud."',`horaaud`='".$horaaud."',`horastrab`=".$horastrab.",`horalmoco`=".$horalmoco.",`dataadm`='".$dataadm."',`datadm`='".$datadm."',`pedidosproc`='".$pedidos."',`numeropasta`=".$numeropasta." WHERE numeroproc = '".$numeroproc."'";

   $resultado_processo = mysqli_query($conn,$query);

  if($resultado_processo)
  {
    $_SESSION['msg']='<div class="alert alert-success"><strong>Sucesso!</strong> Dados alterados com sucesso.</div>';
    mysqli_close($conn);
    header("Location: metodos.php");
  }
  else
  {
    $_SESSION['msg']='<div class="alert alert-danger"><strong>Error!</strong> Incapaz de alterar dados no banco.</div>';
    mysqli_close($conn);
    header("Location: metodos.php");
  }

?> 

</div>
</body>
</html>