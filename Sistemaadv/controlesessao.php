<?php	
session_start();
	
	$logout = isset($_POST["logout"]);
	if($_SESSION["id"]=="")
	{
		unset($_SESSION);
		session_destroy();
    	session_write_close();
		header("location:index.php");
	}
	$acao=isset($_GET["acao"]);
	if ($acao=='sair') {
    unset($_SESSION);
    session_destroy();
    session_write_close();
    print "<script>window.alert('Logoff efetuado com sucesso.');</script>";
    print "<script>window.location='index.php';</script>";
    }
?>