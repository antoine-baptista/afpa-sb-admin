    <!-- inclusion du header qui rassemble la déclaration du début du code HTML -->
    <?php include("view/layout/header.inc.php"); ?>

    <!-- inclusion du header qui rassemble la déclaration du début du code HTML -->
    <?php include("view/layout/sidenav.inc.php"); ?>

            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">Tableau de bord</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item active">Tableau de bord</li>
                        </ol>
                        <div class="row">
                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-primary text-white mb-4">
                                    <div class="card-body">Fiche primaire</div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-white stretched-link" href="#">Voir le détail</a>
                                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-warning text-white mb-4">
                                    <div class="card-body">Fiche d'avertissement</div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-white stretched-link" href="#">Voir le détail</a>
                                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-success text-white mb-4">
                                    <div class="card-body">Fiche de réussite</div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-white stretched-link" href="#">Voir le détail</a>
                                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-danger text-white mb-4">
                                    <div class="card-body">Fiche de danger</div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-white stretched-link" href="#">Voir le détail</a>
                                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xl-6">
                                <div class="card mb-4">
                                    <div class="card-header">
                                        <i class="fas fa-chart-area me-1"></i>
                                        Exemple de diagramme de zone
                                    </div>
                                    <div class="card-body"><canvas id="myAreaChart" width="100%" height="40"></canvas></div>
                                </div>
                            </div>
                            <div class="col-xl-6">
                                <div class="card mb-4">
                                    <div class="card-header">
                                        <i class="fas fa-chart-bar me-1"></i>
                                        Exemple d'histogramme
                                    </div>
                                    <div class="card-body"><canvas id="myBarChart" width="100%" height="40"></canvas></div>
                                </div>
                            </div>
                        </div>
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table me-1"></i>
                                Exemple de DataTable
                            </div>
                            <div class="card-body">
                                <table id="datatablesSimple">
                                    <thead>
                                        <tr>
                                            <th>Nom</th>
                                            <th>Poste</th>
                                            <th>Bureau</th>
                                            <th>Age</th>
                                            <th>Date de début</th>
                                            <th>Salaire</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>Nom</th>
                                            <th>Poste</th>
                                            <th>Bureau</th>
                                            <th>Age</th>
                                            <th>Date de début</th>
                                            <th>Salaire</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                        <?php  foreach ($data as $onedata) { ?>
                                                    <tr>
                                                        <td><?= $onedata["employe_nom"] ?></td>
                                                        <td><?= $onedata["employe_poste"] ?></td>
                                                        <td><?= $onedata["employe_bureau"] ?></td>
                                                        <td><?= $onedata["employe_age"] ?></td>
                                                        <td><?= $onedata["employe_date_de_debut"] ?></td>
                                                        <td><?= $onedata["employe_salaire"] ?></td>
                                                    </tr>
                                        <?php }?>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </main>

    <!-- inclusion du footer py-4 -->
    <?php include("view/layout/footer.inc.php"); ?>