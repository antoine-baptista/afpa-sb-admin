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
                                    <div class="card-header"><h3 class="text-center font-weight-light my-4">Connexion</h3></div>
                                    <div class="card-body">
                                        <form>
                                            <div class="form-floating mb-3">
                                                <input class="form-control" id="inputEmail" type="email" placeholder="nom@exemple.fr" />
                                                <label for="inputEmail">Adresse mail</label>
                                            </div>
                                            <div class="form-floating mb-3">
                                                <input class="form-control" id="inputPassword" type="password" placeholder="Mot de passe" />
                                                <label for="inputPassword">Mot de passe</label>
                                            </div>
                                            <div class="form-check mb-3">
                                                <input class="form-check-input" id="inputRememberPassword" type="checkbox" value="" />
                                                <label class="form-check-label" for="inputRememberPassword">Mémoriser le mot de passe</label>
                                            </div>
                                            <div class="d-flex align-items-center justify-content-between mt-4 mb-0">
                                                <a class="small" href="password.php">Mot de passe oublié?</a>
                                                <a class="btn btn-primary" href="../afpa-sb-admin/index.php">Connexion</a>
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