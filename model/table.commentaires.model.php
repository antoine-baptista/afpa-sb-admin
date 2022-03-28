<?php

// Post model
// inclusion du fichier de configuration
include("config/config.inc.php");

// inclusion du 'pdo.inc.php' qui est le fichier de connexion
// à la base de données (dans ce fichier, il y aura également des contrôles)
include("model/pdo.inc.php");

// on essaye de se connecter
try {

		// la requête ne va rechercher que les infos qui seront affichées à l'écran
		$query = "SELECT comment_ID, comment_content, comment_date, post_title, display_name
        FROM sb_comments
        INNER JOIN sb_posts
        ON comment_post_ID = post_ID
        INNER JOIN sb_users
        ON post_author = ID";

		// On envoie la requête vers la connexion pour récupérer les données
		$req = $pdo->query($query);

		// on donne à la variable $data la valeur de ce qui a été récupéré
		$data = $req->fetchAll();

	}

	// on récupère les anomalies qui auraient pu se produire dans la variable que l'on déclare
	// ci-dessous '$e'
	catch ( Exception $e ) {
		die("Erreur MySQL : " . $e->getMessage());
	}





























