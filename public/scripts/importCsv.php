<?php
require ('../conexao.php');
$conn = mysqli_connect("localhost", "root", "", "projetointegrador"); 

if (isset($_POST["import"])) {
    
    $arquivo = $_FILES["file"]["tmp_name"];
	
	//var_dump ($_FILES['file']); info sobre o arquivo.
   // if ($_FILES["file"]["size"] > 0) { se o tamanho do arq for maior que zero, ou seja ele n aceita tabela vazia.
        
        $file = fopen($arquivo, "r");
       
        while (($column = fgetcsv($file, 10000, ";" )) !== FALSE) {
			set_time_limit(0);
		    if ($_FILES["file"]["name"] == 'sexo_idade2008.csv'){
            $sqlInsert = "INSERT into sexo_idade2008(idade,masculino,feminino,total)
            values ('" . $column[0] . "','" . $column[1] . "','" . $column[2] . "','" . $column[3] . "')";
			$result = mysqli_query($conn, $sqlInsert);
			}
			else if ($_FILES["file"]["name"] == 'sexo_escolaridade2008.csv'){
			$sqlInsert = "INSERT into sexo_escolaridade2008(tipo_esc,masculino,feminino,total)
            values ('" . $column[0] . "','" . $column[1] . "','" . $column[2] . "','" . $column[3] . "')";
			$result = mysqli_query($conn, $sqlInsert);
			//print_r($sqlInsert2);
			}
			else if ($_FILES["file"]["name"] == 'sexo_escolaridade2012.csv'){
			$sqlInsert = "INSERT into sexo_escolaridade2012(tipo_esc,masculino,feminino,total)
            values ('" . $column[0] . "','" . $column[1] . "','" . $column[2] . "','" . $column[3] . "')";
			$result = mysqli_query($conn, $sqlInsert);
			}
			else if ($_FILES["file"]["name"] == 'sexo_idade2012.csv'){
			$sqlInsert = "INSERT into sexo_idade2012(idade,masculino,feminino,total)
            values ('" . $column[0] . "','" . $column[1] . "','" . $column[2] . "','" . $column[3] . "')";
			$result = mysqli_query($conn, $sqlInsert);
			}
			else if ($_FILES["file"]["name"] == 'sexo_idade2016.csv'){
			$sqlInsert = "INSERT into sexo_idade2016(idade,masculino,feminino,total)
            values ('" . $column[0] . "','" . $column[1] . "','" . $column[2] . "','" . $column[3] . "')";
			$result = mysqli_query($conn, $sqlInsert);
			}
			else if ($_FILES["file"]["name"] == 'sexo_escolaridade2016.csv'){
			$sqlInsert = "INSERT into sexo_escolaridade2016(tipo_esc,masculino,feminino,total)
            values ('" . $column[0] . "','" . $column[1] . "','" . $column[2] . "','" . $column[3] . "')";
			$result = mysqli_query($conn, $sqlInsert);
			}
			else if ($_FILES["file"]["name"] == 'pref2016.csv'){
			$sqlInsert = "INSERT into pref_2016(nome,num_cand,partido,coligacao,zona,votos,turno)
            values ('" . $column[0] . "','" . $column[1] . "','" . $column[2] . "','" . $column[3] . "','" . $column[4] . "','" . $column[5] . "','" . $column[6] . "')";
			$result = mysqli_query($conn, $sqlInsert);
			}
			else if ($_FILES["file"]["name"] == 'ver2016.csv'){
			$sqlInsert = "INSERT into ver_2016(nome,num_cand,partido,coligacao,zona,votos)
            values ('" . $column[0] . "','" . $column[1] . "','" . $column[2] . "','" . $column[3] . "','" . $column[4] . "','" . $column[5] . "')";
			$result = mysqli_query($conn, $sqlInsert);
			}
			else if ($_FILES["file"]["name"] == 'pref2012.csv'){
			$sqlInsert = "INSERT into pref_2012(nome,num_cand,partido,coligacao,zona,votos,turno)
            values ('" . $column[0] . "','" . $column[1] . "','" . $column[2] . "','" . $column[3] . "','" . $column[4] . "','" . $column[5] . "','" . $column[6] . "')";
			$result = mysqli_query($conn, $sqlInsert);
			}
			else if ($_FILES["file"]["name"] == 'ver2012.csv'){
			$sqlInsert = "INSERT into ver_2012(nome,num_cand,partido,coligacao,zona,votos)
            values ('" . $column[0] . "','" . $column[1] . "','" . $column[2] . "','" . $column[3] . "','" . $column[4] . "','" . $column[5] . "')";
			$result = mysqli_query($conn, $sqlInsert);
			}
			else if ($_FILES["file"]["name"] == 'pref2008.csv'){
			$sqlInsert = "INSERT into pref_2008(nome,num_cand,partido,coligacao,zona,votos,turno)
            values ('" . $column[0] . "','" . $column[1] . "','" . $column[2] . "','" . $column[3] . "','" . $column[4] . "','" . $column[5] . "','" . $column[6] . "')";
			$result = mysqli_query($conn, $sqlInsert);
			}
			else if ($_FILES["file"]["name"] == 'ver2008.csv'){
			$sqlInsert = "INSERT into ver_2008(nome,num_cand,partido,coligacao,zona,votos)
            values ('" . $column[0] . "','" . $column[1] . "','" . $column[2] . "','" . $column[3] . "','" . $column[4] . "','" . $column[5] . "')";
			$result = mysqli_query($conn, $sqlInsert);
			}
			
           /* if (! empty($result)) {
                $type = "success";
                $message = "CSV Data Imported into the Database";
				
            } else {
                $type = "error";
                $message = "Problem in Importing CSV Data";
            } */
					
					
		}
	
		echo "<script>alert('Tabela Importada !!');</script>";
}
?>