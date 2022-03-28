<!-- inclusion du header qui rassemble la déclaration du début du code HTML -->
<?php include("view/layout/header.inc.php"); ?>

    <body>
        <div id="layoutError">
            <div id="layoutError_content">
                <main>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-6">
                                <div class="text-center mt-4">
                                    <h1 class="display-1">401</h1>
                                    <p class="lead">Non autorisé</p>
                                    <p>L'accès à cette ressource est refusé.</p>
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
