    <!-- inclusion du header qui rassemble la déclaration du début du code HTML -->
    <?php include("view/layout/header.inc.php"); ?>

    <!-- inclusion du header qui rassemble la déclaration du début du code HTML -->
    <?php include("view/layout/sidenav.inc.php"); ?>
        
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">Sidenav légère</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="../afpa-sb-admin/index.php">Tableau de bord</a></li>
                            <li class="breadcrumb-item active">Sidenav légère</li>
                        </ol>
                        <div class="card mb-4">
                            <div class="card-body">
                                Cette page est un exemple d'utilisation de l'option de navigation latérale légère. En ajoutant l'élément
                                <code>.sb-sidenav-light</code>
                                à la classe
                                <code>.sb-sidenav</code>
                                la navigation latérale prendra une couleur claire. Le site
                                <code>.sb-sidenav-dark</code>
                                est également disponible pour une option plus sombre.
                            </div>
                        </div>
                    </div>
                </main>

    <!-- inclusion du footer py-4 -->
    <?php include("view/layout/footer.inc.php"); ?>