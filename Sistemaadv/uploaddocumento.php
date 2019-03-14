<!DOCTYPE html>
<html>
<head>
  <title>Cadastrar Documento</title>
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

  if(isset($_FILES['documento'])) 
  {

  $id = $_POST['iddoc'];

  $numeroproc = $_POST['numeroproc']; 

  $nome = $_FILES['documento']['name'];

  $point = substr($nome, -4);
  if($point == '.')
  {
    $extensao = strtolower(substr($nome, -4));
  }
  else
  {
    $extensao = strtolower(substr($nome, -5));
  }

  $novo_nome = md5(time()).$extensao;

  $local = 'documentos/';

  if(move_uploaded_file($_FILES['documento']['tmp_name'],$local.$novo_nome))
  {
    $queryInsercao = "INSERT INTO documentos (`id`, `numeroproc`, `documento`) VALUES (".$id.",'".$numeroproc."','".$novo_nome."')";
    
    $dados = mysqli_query($conn,$queryInsercao);
     if($dados)
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
  }
  else
  {
    echo"algum erro aconteceu";
  }
  
}

?> 

</div>
</body>
</html>