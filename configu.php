
<?php

 //if(isset($_POST['submit']) )
 //echo "bienvenu sur la page" ;
 /*$bdd = new PDO('mysql : host=localhost;dbname=form','root','');
 */


$nom_serveur = "localhost:8889" ;
$nom_base_données = "form" ; 
$con = mysqli_connect($nom_serveur , $nom_base_données) ;
 
//echo "ça marche";
if(isset($_POST['envoyer'])) {
    $Nom = $_POST ['Nom'] ;
    $Convention = $_POST ['Convention'] ;

}
 
else {  $stmt = $conn->prepare("insert into Etudiant(Id_Etudiant, Nom, Prenom, Mail, Id_Convention) values(?, ?, ?, ?, ?)");
     $result = mysqli_query($con, "SELECT * FROM Etudiant, Convention WHERE Convention.Id_Convention=Etudiant.Id_Convention " ) ;
    $execval = $stmt->execute(); 
     echo $execval ;
     $stmt->close();
	$conn->close();
}

    
//echo $result ;
// Perform query
if ($result ) {
  echo "Returned rows are: " . mysqli_num_rows($result);
  // Free result set
  mysqli_free_result($result);
}

mysqli_close($con);
?>




