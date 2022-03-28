<!-- inclusion du header qui rassemble la déclaration du début du code HTML -->
<?php include("layout/header.inc.php"); ?>

    <body>
        <div id="layoutError">
            <div id="layoutError_content">
                <main>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-6">
                                <div class="text-center mt-4">
                                    <img class="mb-4 img-error" src="assets/img/error-404-monochrome.svg" />
                                    <p class="lead">L'URL demandée n'a pas été trouvée sur ce serveur.</p>
                                    <a href="../afpa-sb-admin/index.php">
                                        <i class="fas fa-arrow-left me-1"></i>
                                        Revenir au tableau de bord
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
            </div>

    <!-- inclusion du footer layoutError_footer -->
    <?php include("view/layout/footer.err.inc.php"); ?>
