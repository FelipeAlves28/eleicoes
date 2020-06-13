<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="../../public/styles/main.css">
	<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;700&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="../../public/styles/home.css">												
	<title>Sua Eleição</title>
</head>
<body>

<header>
	<img src="../../public/assets/eleicoes.jpeg" alt="logo">
	<h1>Sua Eleição</h1>
 </header>

	<main>
	<form class="form-horizontal" action="" method="post" name="uploadCSV"enctype="multipart/form-data"  > <!--onSubmit="alert('Tabela Importada.');"--> 
	<div class="input-row">
		<h1>Sua Eleição Aqui</h1>
			<div class='input-wrapper'>
				<label for='input-file' id="name-button">
				Selecionar um arquivo
				</label>
				<input type="file" name="file" id="input-file" accept=".csv">
				<span id='file-name'></span>
				</div>
			
			<input type="submit" id="submit" name="import" class="btn-submit" value="Importar">
	
		<div id="labelError"></div>
</div>
	</form>
	</main>

	<script src="../../public/scripts/TratarInfo.js"></script>
	<script>
	let $input    = document.getElementById('input-file'),
    $fileName = document.getElementById('file-name');

	$input.addEventListener('change', function(){
  	$fileName.textContent = this.value;
});
	</script>
</body>
</html>

<?php
require('../../public/scripts/importCsv.php');
?>

