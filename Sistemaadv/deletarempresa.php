<!DOCTYPE html>
<html>
<head>
  <title>Remoção cliente</title>
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

  $codemp=$_GET['idemp'];

  $query = "DELETE FROM `empresa` WHERE idemp=".$codemp."";
   
  $resultado_empresa = mysqli_query($conn,$query);



  if($resultado_empresa)
  {
    $_SESSION['msg']='<div class="alert alert-success"><strong>Sucesso!</strong> Dados removidos com sucesso.</div>';
    mysqli_close($conn);
    header("Location: metodos.php");
  }
  else
  {
    $_SESSION['msg']='<div class="alert alert-danger"><strong>Error!</strong> Incapaz de remover dados no banco.</div>';
    mysqli_close($conn);
    header("Location: metodos.php");
  }

?> 

</div>
</body>
</html>