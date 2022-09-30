<!DOCTYPE html>
<html lang="en">
<head> 
<title>Formulaire à remplir </title>
<link rel="stylesheet" href="style.css" />

</head>
<body>
<section>
<h1>Obtentention d'attestation des élèves</h1>
   <form action="configu.php" method="post" >
  <label for="nom prenom">Nom-prénom de l'étudiant</label>
     <select name="nom prenom" size="1">
      <Option value="nomprenom">--Veuillez choisir une option--</Option>
        <option value="Kaya Tony">Kaya Tony</option>
        <option value="Eun Ji">Eun ji</option>
        <option value="Melin Chloe">Melin Chloe</option>
        <option value="Id-belkhir Asma">Id-belkhir Asma</option>
     </select>
    <br>
  <label>Convention de l'étudiant</label>
     <input type="text" name="Convention"  readonly="true"/>
    <br>
  <label>Attestation de l'étudiant    </label> 
     <textarea name="attestation" rows="15" cols="40">
  Bonjour nom_etudiant prenom-etudiant ,
      
  vous avez suivi nbheur de formation chez FormationPlus.
  pouvez-vous nous retourner ce mail avec la pièce jointe signée.
      
  Cordialement,
      
  FormationPlus
     </textarea> 
     <br>
     
  <input type="submit" value="valider">



 </form>
</section>
</body>

</html>