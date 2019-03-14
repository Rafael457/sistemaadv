<?php
    include("controlesessao.php");
    include("conexao.php"); 

    $idemp = $_GET["idempresa"];

    $dados = "select * from empresa where idemp =".$idemp."";

    $resultado_empresa = mysqli_query($conn,$dados);

    $dadoproc = "select * from processo where empresa = ".$idemp."";

    $resultado_dadoproc = mysqli_query($conn,$dadoproc);


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
    <title>Consulta Empresa</title>
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
    $empresa = mysqli_fetch_assoc($resultado_empresa); 
?>
<div class="container">
    <div class="alert alert-info row ">
        <table class="table table-bordered ">
                    <thead>
                        <tr >
                            <td>
                                <div  align="center" ><h6><b>Código da Empresa </div>
                            </td>
                            <td>
                                <div   align="center" ><h6><b>Nome da Empresa</div>
                            </td>
                        </tr>
                    </thead>
                    <tbody>
                        <tr style="background-color:lavenderblush;">
                            <td>
                                <div  align="center" ><?=$empresa['idemp']?></div>
                            </td>
                            <td>
                                <div  align="center" ><?=$empresa['nome']?> </div>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="6">
                                <div   align="center" ><h6><b>Endereco</b></h6></div>
                            </td>
                        </tr>
                        <tr>
                             <td colspan="6">
                                <div  align="center"><textarea rows="5" cols="80" disabled><?=$empresa['endereco']?></textarea></div>
                            </td>
                        </tr>
                    </tbody>    
        </table>
        </div>
        <br>
        <div align="center" class="alert alert-info row" width="75%">
            <table align = "center"class="table table-bordered" >
                    <thead>
                        <tr >
                            <td>
                                <div   align="center" ><h6><b>Numero do processo</b></h6></div>
                            </td>
                            <td>
                                <div   align="center" ><h6><b>Cliente</b></h6></div>
                            </td>
                            <td>
                                <div   align="center" ><h6><b>Empresa</b></h6></div>
                            </td>
                        </tr>   
                    </thead>
        <?php
                while($linha = mysqli_fetch_assoc($resultado_dadoproc)) {
                    $procli=$linha['cliente'];
                        $proemp=$linha['empresa'];
                            $dad = "select * from cliente where idcli =".$procli."";
                            $resultado_procli = mysqli_query($conn,$dad);
                            $linha2= mysqli_fetch_assoc($resultado_procli);
                            $dado = "select * from empresa where idemp =".$proemp."";
                            $resultado_proemp = mysqli_query($conn,$dado);
                            $linha3= mysqli_fetch_assoc($resultado_proemp);
        ?>
                    <tbody>
                        <tr style="background-color:lavenderblush;">
                            <td>
                                <div  align="center" ><?=$linha['numeroproc']?></div>
                            </td>
                            <td>
                                    <div  align="center"><?=$linha2['nomecli']?></div>
                                </td>
                                <td>
                                    <div  align="center"><?=$linha3['nome']?></div>
                                </td>   
                        </tr>
                        
        <?php
                // finaliza o loop que vai mostrar os dados
                }
                   mysqli_close($conn);
                ?>
                    </tbody>
                </table>
            </div>
<!-- ############################## tabela maquinas ####################### -->

</div>
<div class="container">
       <div class="row">
        <div class="col-sm-4">
        <form name="formContato" method="get" action="index.php">
        <p>
            <input type="submit" class="btn btn-success" name="button" id="button" value="Voltar para Menu">
        </p>
        </form>
        </div>
        <div class="col-sm-4">
        <form name="formContato" method="get" action="alteraemp.php">
            <input type="hidden" name="codemp" value="<?=$empresa['idemp']?>">
            <p>
                <input type="submit" class="btn btn-warning" name="button" id="button" value="Alterar dados">
            </p>
        </form>
        </div>
        <div class="col-sm-4">
            <form name="formContato" method="get" action="deletarempresa.php">
                <input type="hidden" name="idemp" value="<?=$empresa['idemp']?>">
                    <div>
                    <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#myModal">Deletar</button>
                    <!-- Modal -->
                    <div align="center" class="modal fade" id="myModal" role="dialog">
                    <div class="modal-dialog">
                    
                      <!-- Modal content-->
                      <div class="modal-content">
                        <div class="modal-header">
                          <button type="button" class="close" data-dismiss="modal">&times;</button>
                          <h4 class="modal-title">Tem certeza?</h4>
                        </div>
                        <div class="modal-body">
                          <p>Você realmente deseja deletar este index?</p><br>
                          <input class="btn btn-danger" type="submit" name="button" id="button" value="Sim">    
                        </div>
                        <div class="modal-footer">
                          <button type="button" class="btn btn-default" data-dismiss="modal">fechar</button>
                        </div>
                      </div>
                    </div>
                   </div>
                  </div>
                </div>
            </form>
        </div>
        </div>
</div>
</body>
</html>