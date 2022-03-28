    <!-- inclusion du header qui rassemble la déclaration du début du code HTML -->
    <?php include("view/layout/header.inc.php"); ?>

    <!-- inclusion du header qui rassemble la déclaration du début du code HTML -->
    <?php include("view/layout/sidenav.inc.php"); ?>

            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">Navigation statique</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="../afpa-sb-admin/index.php">Tableau de bord</a></li>
                            <li class="breadcrumb-item active">Navigation statique</li>
                        </ol>
                        <div class="card mb-4">
                            <div class="card-body">
                                <p class="mb-0">
                                    Cette page est un exemple d'utilisation de la navigation statique. En supprimant le
                                    <code>.sb-nav-fixed</code>
                                    de la classe
                                    <code>body</code>
                                    , la navigation supérieure et la navigation latérale deviennent statiques lors du défilement. Faites défiler cette page pour voir un exemple.
                                </p>
                            </div>
                        </div>
                        <div style="height: 100vh"></div>
                        <div class="card mb-4"><div class="card-body">Lors du défilement, la navigation reste en haut de la page. C'est la fin de la démonstration de la navigation statique..</div></div>
                    </div>
                </main>

    <!-- inclusion du footer py-4 -->
    <?php include("view/layout/footer.inc.php"); ?>