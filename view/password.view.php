    <!-- inclusion du header qui rassemble la déclaration du début du code HTML -->
    <?php include("view/layout/header.inc.php"); ?>
    
    <body class="bg-primary">
        <div id="layoutAuthentication">
            <div id="layoutAuthentication_content">
                <main>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-5">
                                <div class="card shadow-lg border-0 rounded-lg mt-5">
                                    <div class="card-header"><h3 class="text-center font-weight-light my-4">Récupération du mot de passe</h3></div>
                                    <div class="card-body">
                                        <div class="small mb-3 text-muted">Saisissez votre adresse électronique et nous vous enverrons un lien pour réinitialiser votre mot de passe.</div>
                                        <form>
                                            <div class="form-floating mb-3">
                                                <input class="form-control" id="inputEmail" type="email" placeholder="nom@exemple.fr" />
                                                <label for="inputEmail">Adresse mail</label>
                                            </div>
                                            <div class="d-flex align-items-center justify-content-between mt-4 mb-0">
                                                <a class="small" href="login.php">Retour à l'identification</a>
                                                <a class="btn btn-primary" href="login.php">Réinitialiser le mot de passe</a>
                                            </div>
                                        </form>
                                    </div>
                                    <div class="card-footer text-center py-3">
                                        <div class="small"><a href="register.php">Vous avez besoin d'un compte ? Inscrivez-vous !</a></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
            </div>

    <!-- inclusion du footer py-4 -->
    <?php include("view/layout/footer.aut.inc.php"); ?>