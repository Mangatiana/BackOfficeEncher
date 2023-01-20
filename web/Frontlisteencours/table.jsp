<%@page import="Model.Enchere"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Table - Brand</title>
    <link rel="stylesheet" href="Frontlisteencours/assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i&amp;display=swap">
    <link rel="stylesheet" href="Frontlisteencours/assets/fonts/fontawesome-all.min.css">
</head>
<% ArrayList<Enchere> liste=(ArrayList<Enchere>)request.getAttribute("liste");%>
<body id="page-top">
    <div id="wrapper">
        <nav class="navbar navbar-dark align-items-start sidebar sidebar-dark accordion bg-gradient-primary p-0">
            <div class="container-fluid d-flex flex-column p-0"><a class="navbar-brand d-flex justify-content-center align-items-center sidebar-brand m-0" href="#">
                    <div class="sidebar-brand-icon rotate-n-15"><i class="fas fa-laugh-wink"></i></div>
                    <div class="sidebar-brand-text mx-3"><span>Enchere</span></div>
                </a>
                <hr class="sidebar-divider my-0">
                <ul class="navbar-nav text-light" id="accordionSidebar">
                    <li class="nav-item"><a class="nav-link" href="http://localhost:8080/Backoffice/StatsContr"><i class="fas fa-tachometer-alt"></i><span>Statistiques</span></a></li>
                    <li class="nav-item"></li>
                    <li class="nav-item"></li>
                    <li class="nav-item"><a class="nav-link" href="http://localhost:8080/Backoffice/CategorieContr"><i class="fas fa-user-circle"></i><span>Categorie</span></a></li>
                    <li class="nav-item"><a class="nav-link active" href="http://localhost:8080/Backoffice/Enchere_encoursContr"><i class="fas fa-table"></i><span>Les encheres en cours</span></a><a class="nav-link" href="http://localhost:8080/Backoffice/Enchere_historiqueContr"><i class="fas fa-table"></i><span>Historique des encheres</span></a><a class="nav-link" href="http://localhost:8080/Backoffice/ParametreContr"><i class="far fa-user-circle"></i><span>Parametre&nbsp;</span></a><a class="nav-link" href="http://localhost:8080/Backoffice/Contrdeco"><span>Se deconnecter</span></a></li>
                </ul>
                <div class="text-center d-none d-md-inline"></div><a href="index.html"></a>
            </div>
        </nav>
        <div class="d-flex flex-column" id="content-wrapper">
            <div id="content">
                <div class="container-fluid">
                    <div class="card shadow">
                        <div class="card-header py-3">
                            <p class="text-primary m-0 fw-bold">Enchere en cours</p>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive table mt-2" id="dataTable" role="grid" aria-describedby="dataTable_info">
                                <table class="table my-0" id="dataTable">
                                    <thead>
                                        <tr>
                                            <th>Produit</th>
                                            <th>Proprietaire</th>
                                            <th>Categorie</th>
                                            <th>Date debut</th>
                                            <th>Mise minimale</th>
                                            <th></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <%for(int i=0;i<liste.size();i++){%>
                                            <tr>
                                                <td><img class="rounded-circle me-2" width="30" height="30" src="assets/img/avatars/avatar1.jpeg"><%out.print(liste.get(i).getNom());%></td>
                                                <td><%out.print(liste.get(i).getUtil().getNom()+" "+liste.get(i).getUtil().getPrenom());%></td>
                                                <td><%out.print(liste.get(i).getCateg().getLibelle());%></td>
                                                <td><%out.print(liste.get(i).getDebut());%></td>
                                                <td><%out.print("AR "+(int)liste.get(i).getMisemin());%></td>
                                                <td><a href="http://localhost:8080/Backoffice/Enchere_encoursContr2?id=<%out.print(liste.get(i).getId());%>&&produit=<%out.print(liste.get(i).getNom());%>"><button class="btn btn-primary" type="button">Voir mouvenents</button></a></td>
                                            </tr>
                                        <%}%>
                                    </tbody>
                                    <tfoot>
                                        <tr></tr>
                                    </tfoot>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <footer class="bg-white sticky-footer">
                <div class="container my-auto">
                    <div class="text-center my-auto copyright"><span>Copyright © Brand 2023</span></div>
                </div>
            </footer>
        </div><a class="border rounded d-inline scroll-to-top" href="#page-top"><i class="fas fa-angle-up"></i></a>
    </div>
    <script src="Frontlisteencours/assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="Frontlisteencours/assets/js/bs-init.js"></script>
    <script src="Frontlisteencours/assets/js/theme.js"></script>
</body>

</html>