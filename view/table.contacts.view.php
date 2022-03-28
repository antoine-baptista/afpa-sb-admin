    <!-- inclusion du header qui rassemble la déclaration du début du code HTML -->
    <?php include("view/layout/header.inc.php"); ?>

    <!-- inclusion du header qui rassemble la déclaration du début du code HTML -->
    <?php include("view/layout/sidenav.inc.php"); ?>

            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">Tables</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="../afpa-sb-admin/index.php">Tableau de bord</a></li>
                            <li class="breadcrumb-item active">Tables</li>
                        </ol>
                        <div class="card mb-4">
                            <div class="card-body">
                                DataTables est un plugin tiers qui est utilisé pour générer le tableau de démonstration ci-dessous. Pour plus d'informations sur DataTables, veuillez consulter le site Web de la société
                                <a target="_blank" href="https://datatables.net/">la documentation officielle de DataTables</a>
                                .
                            </div>
                        </div>
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table me-1"></i>
                                Table : Contacts
                            </div>
                            <div class="card-body">
                                <table id="datatablesSimple">
                                    <thead>
                                        <tr>
                                            <th>ID</th>
                                            <th>Nom</th>
                                            <th>Email</th>
                                            <th>Téléphone</th>
                                            <th>Message</th>
                                            <th>Date message</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>ID</th>
                                            <th>Nom</th>
                                            <th>Email</th>
                                            <th>Téléphone</th>
                                            <th>Message</th>
                                            <th>Date message</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                        <?php  foreach ($data as $onedata) { ?>
                                            <tr>
                                                <td><?= $onedata["contact_ID"] ?></td>
                                                <td><?= $onedata["contact_name"] ?></td>
                                                <td><?= $onedata["contact_email"] ?></td>
                                                <td><?= $onedata["contact_phone"] ?></td>
                                                <td><?= $onedata["contact_message"] ?></td>
                                                <td><?= $onedata["contact_date"] ?></td>
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