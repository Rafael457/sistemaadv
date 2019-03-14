<?php
  include("conexao.php");
  include("controlesessao.php"); 

  	$numeroproc = $_GET['numeroproc']; 

  	$resultado_cli = "select idcli, nomecli from cliente where idcli = (SELECT cliente from processo where numeroproc ='".$numeroproc."')";

	$resultado_cliente = mysqli_query($conn,$resultado_cli);

	$dados_cli = mysqli_fetch_assoc($resultado_cliente);



	$resultado_emp = "select idemp, nome from empresa where idemp = (select empresa from processo where numeroproc = '".$numeroproc."')";

	$resultado_empresa = mysqli_query($conn,$resultado_emp);

	$dados_emp = mysqli_fetch_assoc($resultado_empresa);



	$resultado_and = "select numeroand, dataaud, horaaud, assunto from andamento where numeroproc ='".$numeroproc."'";

	$resultado_andamento = mysqli_query($conn,$resultado_and);



	mysqli_close($conn);
?>
<!DOCTYPE html>
<html>
<head>
<title>Consulta de Andamentos</title>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.11/jquery.mask.min.js"></script>
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
  <p align="center"><img src="justica2.jpg"></p>
</head>
<body>
	<div class="container">
		<div align="center">	
			<h1>Sistema de Consulta</h1>

			<p>Consulta de Andamento.</p>
		</div>
		<script type="text/javascript">
		  $("#numeroproc").mask("0000000-00.0000.0.00.0000");
		</script>
		<div align="left">
			<div class="alert alert-info">
			<?php
				while($dados_and = mysqli_fetch_assoc($resultado_andamento)){
			?>	
				<form action="alteraand.php" method="get" accept-charset="utf-8">	
				 	<table class="table table-bordered ">
                    	<thead>
	                        <tr >
	                            <td>
	                                <div  align="center" ><h6><b>Nº do Processo</div>
	                            </td>
	                            <td>
	                                <div   align="center" ><h6><b>Nº do Andamento</div>
	                            </td>
	                            <td>
	                                <div   align="center" ><h6><b>Nome do cliente</div>
	                            </td>
	                            <td>
	                               <div   align="center" ><h6><b>Nome da Empresa</div>
	                            </td>
	                        </tr>
	                    </thead>
                    <tbody>
                            <tr style="background-color:lavenderblush;">
                                <td>
                                    <div  align="center" ><?=$numeroproc?>
                                    <input type="hidden" name="numeroproc" value="<?=$numeroproc?>">
                                    </div>
                                </td>
                                <td>
                                    <div  align="center" ><?=$dados_and['numeroand']?> 
                                    <input type="hidden" name="numeroand" value="<?=$dados_and['numeroand']?>">
                                    </div>
                                </td>
                                <td>
                                    <div  align="center" ><?=$dados_cli['nomecli']?></div>
                                    <input type="hidden" name="idcli" value="<?=$dados_cli['idcli']?>">
                                      <input type="hidden" name="nomecli" id="nomecli" value="<?=$dados_cli['nomecli']?>">
                                </td>
                                <td>
                                    <div  align="center" ><?=$dados_emp['nome']?></div>
                                    <input type="hidden" name="idemp" value="<?=$dados_emp['idemp']?>">
                                    <input type="hidden" name="nomeemp" id="nomeemp" value="<?=$dados_emp['nome']?>">
                                </td>
                            </tr>
                        </tbody>
                        <thead>
                        	<tr >
	                            <td colspan="2">
	                                <div  align="center" ><h6><b>Data da Audiência</div>
	                            </td>
	                            <td colspan="2">
	                                <div   align="center" ><h6><b>Hora da Audiência</div>
	                            </td>
	                        </tr>
                        </thead>
                        <tbody>
                        	<tr>
                        		<td colspan="2">
                                    <div  align="center" ><?=$dados_and['dataaud']?></div>
                                    <input type="hidden" name="dataaud" value="<?=$dados_and['dataaud']?>">
                                </td>
                                <td colspan="2">
                                    <div  align="center" ><?=$dados_and['horaaud']?></div>
                                    <input type="hidden" name="horaaud" value="<?=$dados_and['horaaud']?>">
                                </td>
                            </tr>
                        </tbody>
                        <thead>
                        	<tr>
                        		<td colspan="4">
	                                <div   align="center" ><h6><b>Assuntos</div>
	                        	</td>
	                        </tr>
                        </thead>
                        <tbody>
                        	<tr>
                        		<td colspan="4">
                                   <div align="center" ><textarea cols="100" rows="5" disabled><?=$dados_and['assunto']?></textarea>
                                    <input type="hidden" name="assunto" value="<?=$dados_and['assunto']?>">
                                </td>
                        	</tr>
                        	<tr>
                        	<td align="center" colspan="4"> 
                                    <input type="submit" class="btn btn-warning" name="button" id="button" value="Alterar">  
                                </td>
                        </tr> 
                        </tbody>
                        </table>
                        </form>  
			<?php
				}
			?>
			</div>
		</div>
		<form action="metodos.php" method="get" accept-charset="utf-8">
 		<p>
			<input type="submit"  class="btn btn-success" name="button" id="button" value="Voltar para Menu">
		</p>
		</form>
	</div>
</body>
</html>