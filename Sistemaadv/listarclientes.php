<?php
    include("controlesessao.php");
    include("conexao.php"); 

    $nome = $_GET["nome"];

    $dados = "select * from cliente where nomecli like '%".$nome."%' order by nomecli";

    $resultado_cliente = mysqli_query($conn,$dados);

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
<html>
    <head>
    <title>Consulta Cliente</title>
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
    <div class="alert alert-info row ">
        <?php
    while($cliente = mysqli_fetch_assoc($resultado_cliente)) 
    {
?>
        <table class="table table-bordered ">
                    <thead>
                        <tr >
                            <td>
                                <div  align="center" ><h6><b>Código do Cliente </div>
                            </td>
                            <td>
                                <div   align="center" ><h6><b>Nome do Cliente</div>
                            </td>
                            <td>
                                <div   align="center" ><h6><b>CPF</div>
                            </td>
                            <td>
                               <div   align="center" ><h6><b>RG</div>
                            </td>
                            <td>
                                <div   align="center" ><h6><b>PIS</div>
                            </td>
                        </tr>
                    </thead>
                    <tbody>
                        <form action="alterarcli.php" method="get" accept-charset="utf-8">
                            <tr style="background-color:lavenderblush;">
                                <td>
                                    <div  align="center" ><?=$cliente['idcli']?></div>
                                    <input type="hidden" name="idcli" value="<?=$cliente['idcli']?>">
                                </td>
                                <td>
                                    <div  align="center" ><?=$cliente['nomecli']?> </div>
                                </td>
                                <td>
                                    <div  align="center" ><?=$cliente['cpf']?></div>
                                </td>
                                <td>
                                    <div  align="center" ><?=$cliente['rg']?></div>
                                </td>
                                <td>
                                    <div  align="center" ><?=$cliente['pis']?></div>
                                </td>
                                <td align="center">
                                     <button class="btn btn-primary" type="submit" formaction="consultacliente.php">Consulta</button>
                                </td>
                                <td align="center"> 
                                    <input type="submit" class="btn btn-warning" name="button" id="button" value="Alterar">  
                                </td>
                                <td align="center"> 
                                 <input class="btn btn-danger" type="submit" formaction="deletarcliente.php" value="Deletar"> 
                                </td> 
                            </tr>
                        </form>    
                    </tbody>    
        </table>
<?php
}
mysqli_close($conn);
?>
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
    </div>
</div>
</div>
</body>
</html>