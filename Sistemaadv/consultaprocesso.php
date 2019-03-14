<?php
include("controlesessao.php");
include("conexao.php");

$numeroproc = $_GET['numeroproc'];

$dados = "select * from processo where numeroproc like '".$numeroproc."'";

$resultado_processo = mysqli_query($conn,$dados);

$processo = mysqli_fetch_assoc($resultado_processo);

$procli = $processo['cliente'];

$dadoscli = "select * from cliente where idcli = ".$procli."";

$resultado_cliente = mysqli_query($conn,$dadoscli);

$cliente = mysqli_fetch_assoc($resultado_cliente);

$proemp = $processo['empresa'];

$dadosemp = "select * from empresa where idemp =".$proemp."";

$resultado_empresa = mysqli_query($conn,$dadosemp);

$empresa = mysqli_fetch_assoc($resultado_empresa);

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
	<title>Consulta Processo</title>
	<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>-->
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.11/jquery.mask.min.js"></script>
  <p align="center"><img src="justica2.jpg"></p>
</head>
<body>
<div class="container">
<div class="alert alert-info row ">
        <table class="table table-bordered ">
                    <thead>
                        <tr>
                            <td>
                            	<div  align="center" ><h6><b>Número do Processo</div>
                            </td>
                            <td>
                                <div   align="center" ><h6><b>Nome do Cliente</div>
                            </td>
                            <td>
                                <div   align="center" ><h6><b>Nome da Empresa/Razão Social</div>
                            </td>
                            <td>
                                <div   align="center" ><h6><b>Nº da Pasta</div>
                            </td>
                        </tr>
                    </thead>
                    <tbody>
                        <tr style="background-color:lavenderblush;">
                            <td>
                                <div  align="center" ><?=$processo['numeroproc']?></div>
                            </td>
                            <td>
                                <div  align="center" ><?=$cliente['nomecli']?> </div>
                            </td>
                            <td>
                                <div  align="center" ><?=$empresa['nome']?></div>
                            </td>
                            <td>
                                <div  align="center" ><?=$processo['numeropasta']?></div>
                            </td>
                        </tr>
                    </tbody>    
        </table>
        <table class="table table-bordered ">
                    <thead>
                        <tr>
                            <td>
                                <div  align="center" ><h6><b>Data da Audiência</div>
                            </td>
                            <td>
                                <div   align="center" ><h6><b>Hora da Audiencia</div>
                            </td>
                        </tr>
                    </thead>
                    <tbody>
                        <tr style="background-color:lavenderblush;">
                            <td>
                                <div  align="center" ><?=$processo['dataaud']?></div>
                            </td>
                            <td>
                                <div  align="center" ><?=$processo['horaaud']?> </div>
                            </td>
                        </tr>
                    </tbody>    
        </table>
    </div>
</div>
<div class="container">
    <div class="row">
        <div class="col-sm-4">
        <form name="formContato" method="get" action="metodos.php">
        <p>
            <input type="submit" class="btn btn-success" name="button" id="button" value="Voltar para Menu">
        </p>
        </form>
        </div>
        <div class="col-sm-4">
        <form name="formContato" method="get" action="alteraproc.php">
            <input type="hidden" name="numeroproc" value="<?=$processo['numeroproc']?>">
            <p>
                <input type="submit" class="btn btn-warning" name="button" id="button" value="Alterar dados">
            </p>
        </form>
    </div>
    <div class="col-sm-4">
        <form name="formContato" method="get" action="consultaandamento.php">
            <input type="hidden" name="numeroproc" value="<?=$processo['numeroproc']?>">
            <p>
                <input type="submit" class="btn btn-primary" name="button" id="button" value="Consultar Andamentos">
            </p>
        </form>
    </div>
</div>
</body>
</html>