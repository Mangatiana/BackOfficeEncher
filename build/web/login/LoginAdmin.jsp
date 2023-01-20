<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Client</title>
    <link rel="stylesheet" href="login/assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="login/assets/fonts/ionicons.min.css">
    <link rel="stylesheet" href="login/assets/css/Login-Form-Clean.css">
    <link rel="stylesheet" href="login/assets/css/styles.css">
</head>

<body>
    <% String er="";
        if((String)request.getAttribute("erreur")!=null){
        er="Email ou mot de passe incorrect!";
    }%>
    
    <section class="login-clean">
        
        <form method="get" action="http://localhost:8080/Backoffice/Contrlog">
            <h2 class="sr-only">Login Form</h2><div class="illustration"><i class="icon ion-ios-navigate"></i></div>
            <div class="form-group"><input class="form-control" type="email" name="email" placeholder="email" value="admin@gmail.com"></div>
            <div class="form-group"><input class="form-control" type="password" name="mdp" placeholder="Mot de passe" value="admin">
           
       
            </div>
            <div class="form-group"><button class="btn btn-primary btn-block" type="submit">Se connecter</button></div><b class="forgot"><%out.print(er);%></b><br><a class="forgot" href="#">Forgot your email or password?</a>
        </form> 
    </section>
    <script src="login/assets/js/jquery.min.js"></script>
    <script src="login/assets/bootstrap/js/bootstrap.min.js"></script>
</body>

</html>