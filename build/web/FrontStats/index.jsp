<%@page import="java.util.ArrayList"%>
<%@page import="Model.Categorie_enchere"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Accueil</title>
    <link rel="stylesheet" href="FrontStats/assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i&amp;display=swap">
    <link rel="stylesheet" href="FrontStats/assets/fonts/fontawesome-all.min.css">
</head>
<% Integer benefcemois=Integer.parseInt(request.getAttribute("benefcemois").toString());
   int[] benefparmois=(int[])request.getAttribute("benefparmois");
   Integer beneftotal=Integer.parseInt(request.getAttribute("beneftotal").toString());
   Categorie_enchere categorieplusvendu=( Categorie_enchere)request.getAttribute("categorievendu");
   Integer nbdemande=Integer.parseInt(request.getAttribute("nbdemande").toString());
   ArrayList<Object[]> camembert=(ArrayList<Object[]>)request.getAttribute("camembert");

   String[] coul={"#cc0066","#b33c00","#999900","#4e73df","#1cc88a","#36b9cc"};

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
                    <li class="nav-item"><a class="nav-link active" href="http://localhost:8080/Backoffice/StatsContr"><i class="fas fa-tachometer-alt"></i><span>Statistiques </span></a></li>
                    <li class="nav-item"></li>
                    <li class="nav-item"></li>
                    <li class="nav-item"><a class="nav-link" href="http://localhost:8080/Backoffice/CategorieContr"><i class="fas fa-user-circle"></i><span>Categorie</span></a></li>
                    <li class="nav-item"><a class="nav-link" href="http://localhost:8080/Backoffice/Enchere_encoursContr"><i class="fas fa-table"></i><span>Les encheres en cours</span></a><a class="nav-link" href="http://localhost:8080/Backoffice/Enchere_historiqueContr"><i class="fas fa-table"></i><span>Historique des encheres</span></a><a class="nav-link" href="http://localhost:8080/Backoffice/ParametreContr"><i class="far fa-user-circle"></i><span>Parametre&nbsp;</span></a><a class="nav-link" href="http://localhost:8080/Backoffice/Contrdeco"><span>Se deconnecter</span></a></li>
                </ul>
                <div class="text-center d-none d-md-inline"></div><a href="index.html"></a>
            </div>
        </nav>
        <div class="d-flex flex-column" id="content-wrapper">
            <div id="content">
                <div class="container-fluid">
                    <div class="d-sm-flex justify-content-between align-items-center mb-4">
                        <h3 class="text-dark mb-0">Statistiques</h3>
                    </div>
                    <div class="row">
                        <div class="col-md-6 col-xl-3 mb-4">
                            <div class="card shadow border-start-primary py-2">
                                <div class="card-body">
                                    <div class="row align-items-center no-gutters">
                                        <div class="col me-2">
                                            <div class="text-uppercase text-primary fw-bold text-xs mb-1"><span>Benefice (Ce mois)</span></div>
                                            <div class="text-dark fw-bold h5 mb-0"><span><%out.print("AR "+benefcemois);%></span></div>
                                        </div>
                                        <div class="col-auto"><i class="fas fa-dollar-sign fa-2x text-gray-300"></i></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-xl-3 mb-4">
                            <div class="card shadow border-start-success py-2">
                                <div class="card-body">
                                    <div class="row align-items-center no-gutters">
                                        <div class="col me-2">
                                            <div class="text-uppercase text-success fw-bold text-xs mb-1"><span>Total Benefice</span></div>
                                            <div class="text-dark fw-bold h5 mb-0"><span><%out.print("AR "+beneftotal);%></span></div>
                                        </div>
                                        <div class="col-auto"><i class="fas fa-dollar-sign fa-2x text-gray-300"></i></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-xl-3 mb-4">
                            <div class="card shadow border-start-info py-2">
                                <div class="card-body">
                                    <div class="row align-items-center no-gutters">
                                        <div class="col me-2">
                                            <div class="text-uppercase text-primary fw-bold text-xs mb-1"><span>categorie&nbsp; la&nbsp; plus vendue</span></div>
                                            <div class="text-dark fw-bold h5 mb-0"><span></span></div>
                                        </div>
                                    </div>
                                    <div class="text-dark fw-bold h5 mb-0"><span><%out.print(categorieplusvendu.getLibelle());%></span></div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-xl-3 mb-4">
                            <div class="card shadow border-start-warning py-2">
                                <div class="card-body">
                                    <div class="row align-items-center no-gutters">
                                        <div class="col me-2">
                                            <div class="text-uppercase text-warning fw-bold text-xs mb-1"><span>Demande de rechargement</span></div>
                                            <div class="text-dark fw-bold h5 mb-0"><span><%out.print(nbdemande);%></span></div>
                                        </div>
                                        <div class="col-auto"><a href="http://localhost:8080/Backoffice/DemandeContr"><i class="fas fa-comments fa-2x text-gray-300"></i></a></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-7 col-xl-8">
                            <div class="card shadow mb-4">
                                <div class="card-header d-flex justify-content-between align-items-center">
                                    <h6 class="text-primary fw-bold m-0">Benefice par mois</h6>
                                    <div class="dropdown no-arrow"><button class="btn btn-link btn-sm dropdown-toggle" aria-expanded="false" data-bs-toggle="dropdown" type="button"><i class="fas fa-ellipsis-v text-gray-400"></i></button>
                                        <div class="dropdown-menu shadow dropdown-menu-end animated--fade-in">
                                            <p class="text-center dropdown-header">dropdown header:</p><a class="dropdown-item" href="#">&nbsp;Action</a><a class="dropdown-item" href="#">&nbsp;Another action</a>
                                            <div class="dropdown-divider"></div><a class="dropdown-item" href="#">&nbsp;Something else here</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <div class="chart-area"><canvas data-bss-chart="{&quot;type&quot;:&quot;line&quot;,&quot;data&quot;:{&quot;labels&quot;:[&quot;Janvier&quot;,&quot;Fevrier&quot;,&quot;Mars&quot;,&quot;Avril&quot;,&quot;Mai&quot;,&quot;Juin&quot;,&quot;Juillet&quot;,&quot;Aout&quot;,&quot;Septembre&quot;,&quot;Octobre&quot;,&quot;Novembre&quot;,&quot;Decembre&quot;],&quot;datasets&quot;:[{&quot;label&quot;:&quot;Earnings&quot;,&quot;fill&quot;:true,&quot;data&quot;:[&quot;<%out.print(benefparmois[0]);%>&quot;,&quot;<%out.print(benefparmois[1]);%>&quot;,&quot;<%out.print(benefparmois[2]);%>&quot;,&quot;<%out.print(benefparmois[3]);%>&quot;,&quot;<%out.print(benefparmois[4]);%>&quot;,&quot;<%out.print(benefparmois[5]);%>&quot;,&quot;<%out.print(benefparmois[6]);%>&quot;,&quot;<%out.print(benefparmois[7]);%>&quot;,&quot;<%out.print(benefparmois[8]);%>&quot;,&quot;<%out.print(benefparmois[9]);%>&quot;,&quot;<%out.print(benefparmois[10]);%>&quot;,&quot;<%out.print(benefparmois[11]);%>&quot;],&quot;backgroundColor&quot;:&quot;rgba(78, 115, 223, 0.05)&quot;,&quot;borderColor&quot;:&quot;rgba(78, 115, 223, 1)&quot;}]},&quot;options&quot;:{&quot;maintainAspectRatio&quot;:false,&quot;legend&quot;:{&quot;display&quot;:false,&quot;labels&quot;:{&quot;fontStyle&quot;:&quot;normal&quot;}},&quot;title&quot;:{&quot;fontStyle&quot;:&quot;normal&quot;},&quot;scales&quot;:{&quot;xAxes&quot;:[{&quot;gridLines&quot;:{&quot;color&quot;:&quot;rgb(234, 236, 244)&quot;,&quot;zeroLineColor&quot;:&quot;rgb(234, 236, 244)&quot;,&quot;drawBorder&quot;:false,&quot;drawTicks&quot;:false,&quot;borderDash&quot;:[&quot;2&quot;],&quot;zeroLineBorderDash&quot;:[&quot;2&quot;],&quot;drawOnChartArea&quot;:false},&quot;ticks&quot;:{&quot;fontColor&quot;:&quot;#858796&quot;,&quot;fontStyle&quot;:&quot;normal&quot;,&quot;padding&quot;:20}}],&quot;yAxes&quot;:[{&quot;gridLines&quot;:{&quot;color&quot;:&quot;rgb(234, 236, 244)&quot;,&quot;zeroLineColor&quot;:&quot;rgb(234, 236, 244)&quot;,&quot;drawBorder&quot;:false,&quot;drawTicks&quot;:false,&quot;borderDash&quot;:[&quot;2&quot;],&quot;zeroLineBorderDash&quot;:[&quot;2&quot;]},&quot;ticks&quot;:{&quot;fontColor&quot;:&quot;#858796&quot;,&quot;fontStyle&quot;:&quot;normal&quot;,&quot;padding&quot;:20}}]}}}"></canvas></div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-5 col-xl-4">
                            <div class="card shadow mb-4">
                                <div class="card-header d-flex justify-content-between align-items-center">
                                    <h6 class="text-primary fw-bold m-0">Enchere par categorie</h6>
                                    <div class="dropdown no-arrow"><button class="btn btn-link btn-sm dropdown-toggle" aria-expanded="false" data-bs-toggle="dropdown" type="button"><i class="fas fa-ellipsis-v text-gray-400"></i></button>
                                        <div class="dropdown-menu shadow dropdown-menu-end animated--fade-in">
                                            <p class="text-center dropdown-header">dropdown header:</p><a class="dropdown-item" href="#">&nbsp;Action</a><a class="dropdown-item" href="#">&nbsp;Another action</a>
                                            <div class="dropdown-divider"></div><a class="dropdown-item" href="#">&nbsp;Something else here</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <div class="chart-area"><canvas data-bss-chart="{&quot;type&quot;:&quot;doughnut&quot;,&quot;data&quot;:{&quot;labels&quot;:[<% for(int i=0;i<camembert.size()-1;i++){ out.print(camembert.get(i)[0].toString());%>,<%} out.print(camembert.get(camembert.size()-1)[0].toString());%>],&quot;datasets&quot;:[{&quot;label&quot;:&quot;&quot;,&quot;backgroundColor&quot;:[&quot;#4e73df&quot;,&quot;#1cc88a&quot;,&quot;#36b9cc&quot;,&quot;#cc0066&quot;,&quot;#b33c00&quot;,&quot;#999900&quot;],&quot;borderColor&quot;:[&quot;#ffffff&quot;,&quot;#ffffff&quot;,&quot;#ffffff&quot;],&quot;data&quot;:[<%for(int i=0;i<camembert.size()-1;i++){%><%out.print(Integer.parseInt(camembert.get(i)[0].toString())+",");%><%}%><%out.print(Integer.parseInt(camembert.get(camembert.size()-1)[0].toString()));%>]}]},&quot;options&quot;:{&quot;maintainAspectRatio&quot;:false,&quot;legend&quot;:{&quot;display&quot;:false,&quot;labels&quot;:{&quot;fontStyle&quot;:&quot;normal&quot;}},&quot;title&quot;:{&quot;fontStyle&quot;:&quot;normal&quot;}}}"></canvas></div>
                                    <div class="text-center small mt-4"><%for(int i=0;i<camembert.size();i++){%><span class="me-2"><%out.print(Integer.parseInt(camembert.get(i)[0].toString())+": "+camembert.get(i)[1].toString());%></span><%}%></div>
                                </div>
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
    <script src="FrontStats/assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="FrontStats/assets/js/chart.min.js"></script>
    <script src="FrontStats/assets/js/bs-init.js"></script>
    <script src="FrontStats/assets/js/theme.js"></script>
</body>

</html>