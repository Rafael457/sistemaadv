<?php
    include("controlesessao.php");
    include("conexao.php"); 

    $idcli = $_GET["idcli"];

    $dados = "select * from cliente where idcli =".$idcli."";

    $resultado_cliente = mysqli_query($conn,$dados);

    $dadoproc = "select * from processo where cliente = ".$idcli."";

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

<?php
    $cliente = mysqli_fetch_assoc($resultado_cliente); 
?>
<div class="container">
    <div class="alert alert-info row ">
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
                                <div   align="center" ><h6><b>Nacionalidade</div>
                            </td>
                            <td>
                                <div   align="center" ><h6><b>Estado civil</div>
                            </td>
                            <td>
                                <div   align="center" ><h6><b>Profissão</div>
                            </td>
                        </tr>
                    </thead>
                    <tbody>
                        <tr style="background-color:lavenderblush;">
                            <td>
                                <div  align="center" ><?=$cliente['idcli']?></div>
                            </td>
                            <td>
                                <div  align="center" ><?=$cliente['nomecli']?> </div>
                            </td>
                            <td>
                                <div  align="center" ><?=$cliente['nacionalidade']?></div>
                            </td>
                            <td>
                                <div  align="center" ><?=$cliente['estcivil']?></div>
                            </td>
                            <td>
                                <div  align="center" ><?=$cliente['profissao']?></div>
                            </td>
                        </tr>
                    </tbody>    
        </table>

        <table class="table table-bordered ">
                <thead>
                    <tr>
                        <td>
                            <div   align="center" ><h6><b>CTPS</div>
                        </td>
                        <td>
                            <div   align="center" ><h6><b>Serie</div>
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
                    <tr style="background-color:lavenderblush;">
                                <td>
                                    <div  align="center" ><?=$cliente['ctps']?></div>
                                </td>
                                <td>
                                    <div  align="center" ><?=$cliente['serie']?> </div>
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
                    </tr>
                </tbody>
            </table>
        </div>
        <table class="table table-bordered ">
                <thead>
                    <tr>
                        <td>
                            <div   align="center" ><h6><b>Telefone</div>
                        </td>
                        <td>
                            <div   align="center" ><h6><b>Celular</div>
                        </td>
                        <td>
                            <div   align="center" ><h6><b>Email</div>
                        </td>
                    </tr>
                </thead>
                <tbody>
                    <tr style="background-color:lavenderblush;">
                        <td>
                            <div  align="center" ><?=$cliente['telefone']?></div>
                        </td>
                        <td>
                            <div  align="center" ><?=$cliente['celular']?> </div>
                        </td>
                        <td>
                            <div  align="center" ><?=$cliente['email']?> </div>
                        </td>
                    </tr>
                </tbody>
        </table>
        <br>
        <div align="center" class="alert alert-info row" width="75%">
            <table align = "center" class="table table-bordered" >
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
            // se o número de resultados for maior que zero, mostra os dados
                // inicia o loop que vai mostrar todos os dados
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
                            <td align="center">
                                <form method="get">
                                <div  align="center" ><?=$linha['numeroproc']?>
                                <input type="hidden" name="numeroproc" value="<?=$linha['numeroproc']?>">
                                <button formaction="consultaprocesso.php">Consultar</button>
                            </div>
                                
                                </form>
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
        <form name="formContato" method="get" action="metodos.php">
        <p>
            <input type="submit" class="btn btn-success" name="button" id="button" value="Voltar para Menu">
        </p>
        </form>
        </div>
        <div class="col-sm-4">
        <form name="formContato" method="get" action="alterarcli.php">
            <input type="hidden" name="idcli" value="<?=$cliente['idcli']?>">
            <p>
                <input type="submit" class="btn btn-warning" name="button" id="button" value="Alterar dados">
            </p>
        </form>
        </div>
        <div class="col-sm-4">
        <form name="formContato" method="get" action="deletarCliente.php">
            <input type="hidden" name="idcli" value="<?=$cliente['idcli']?>">
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