<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Table - Brand</title>
    <link rel="stylesheet" href="FrontParametre/assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i&amp;display=swap">
    <link rel="stylesheet" href="FrontParametre/assets/fonts/fontawesome-all.min.css">
</head>
<% Double com=Double.parseDouble(request.getAttribute("com").toString());
   Double duree=Double.parseDouble(request.getAttribute("duree").toString());
%>
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
                    <li class="nav-item"><a class="nav-link" href="http://localhost:8080/Backoffice/Enchere_encoursContr"><i class="fas fa-table"></i><span>Les encheres en cours</span></a><a class="nav-link" href="http://localhost:8080/Backoffice/Enchere_historiqueContr"><i class="fas fa-table"></i><span>Historique des encheres</span></a><a class="nav-link active" href="http://localhost:8080/Backoffice/ParametreContr"><i class="far fa-user-circle"></i><span>Parametre&nbsp;</span></a><a class="nav-link" href="http://localhost:8080/Backoffice/Contrdeco"><span>Se deconnecter</span></a></li>
                </ul>
                <div class="text-center d-none d-md-inline"></div><a href="index.html"></a>
            </div>
        </nav>
        <div class="d-flex flex-column" id="content-wrapper">
            <div id="content">
                <div class="container-fluid">
                    <div class="card shadow" style="height: 250px;">
                        <div class="card-header py-3">
                            <p class="text-primary m-0 fw-bold">Parametres</p>
                        </div>
                        <div class="card-body" style="min-width: 21px;text-align: left;">
                            <div></div>
                            <ul class="list-group">
                                <li class="list-group-item"><form method="post" action="http://localhost:8080/Backoffice/ParamUpdateContr"><span>Commission :&nbsp;</span><span style="margin-left: 99px;margin-right: 0px;"><%out.print(com);%> %</span><input type="texte" name="com" style="margin-right: 0px;margin-left: 160px;width: 150px;"><input  class="btn btn-primary" type="submit" value="Modifier" style="margin-left: 140px;"></form></li>
                                <li class="list-group-item"><form method="get" action="http://localhost:8080/Backoffice/ParamUpdateContr"><span>Duree enchere :&nbsp;</span><span style="margin-left: 82px;"><%out.print(duree);%> h</span><input type="texte" name="duree" style="margin-right: 0px;margin-left: 164px;width: 150px;"><input  class="btn btn-primary" type="submit" value="Modifier" style="margin-left: 140px;"></form></li>
                            </ul>
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
    <script src="FrontParametre/assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="FrontParametre/assets/js/bs-init.js"></script>
    <script src="FrontParametre/assets/js/theme.js"></script>
</body>

</html>