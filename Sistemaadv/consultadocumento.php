<?php  
include("controlesessao.php");
include("conexao.php");
$numeroproc = $_GET['numeroproc'];

$consulta_doc = "SELECT * FROM `documentos` WHERE numeroproc ='".$numeroproc."'";

$consulta_documento = mysqli_query($conn,$consulta_doc);

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
	<title>Consulta de Documentos</title>
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
  <?php
  while( $resultado = mysqli_fetch_assoc($consulta_documento))
  {
  ?>

    <div class="alert alert-info row ">
        <table class="table table-bordered ">
                    <thead>
                        <tr >
                            <td>
                                <div  align="center" ><h6><b>Id do documento</b></h6></div>
                            </td>
                            <td>
                                <div   align="center" ><h6><b>Nº do Processo</b></h6></div>
                            </td>
                            <td>
                                <div   align="center" ><h6><b>Documento</b></h6></div>
                            </td>
                        </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td>
                          <div align="center"><?=$resultado['id']?></div>
                        </td>
                        <td>
                          <div align="center"><?=$numeroproc?></div>
                        </td>
                        <td>
                          <div align="center"><img src="/Sistemaadv/documentos/<?=$resultado['documento']?>"></div>
                        </td>
                      </tr>
                    </tbody>
                  </table>
                </div>
      <?php
       }
       mysqli_close($conn);
      ?>
                  <div>
                    <form action="metodos.php" method="get" accept-charset="utf-8">
                    <p>
                      <input type="submit"  class="btn btn-success" name="button" id="button" value="Voltar para Menu">
                    </p>
                    </form>
                  </div>
</body>
</html>