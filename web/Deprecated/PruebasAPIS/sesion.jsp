<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link  rel="stylesheet"  href="css/menu.css">
        <link rel="stylesheet" href="css/fontello.css">
        <title>inicio</title>
    </head>
    <body>
        <script>

            function checkLoginState() {
                FB.getLoginStatus(function (response) {
                    statusChangeCallback(response);
                });
            }

            window.fbAsyncInit = function () {
                FB.init({
                    appId: '{130811564945199}',
                    cookie: true,
                    xfbml: true,
                    version: '{v6.0}'
                });

                FB.AppEvents.logPageView();

            };

            (function (d, s, id) {
                var js, fjs = d.getElementsByTagName(s)[0];
                if (d.getElementById(id)) {
                    return;
                }
                js = d.createElement(s);
                js.id = id;
                js.src = "https://connect.facebook.net/en_US/sdk.js";
                fjs.parentNode.insertBefore(js, fjs);
            }(document, 'script', 'facebook-jssdk'));
        </script>
        <form action="" method="post">
            <fieldset>
                <legend>Inicio de Sesión</legend>
                <label>Usuario:<input type="text" tabindex="20" name="user"></label><br><br>
                <label>Contraseña: <input type="password" tabindex="21" name="pass"></label>
                <hr><input type="submit" value="Entrar" name="btnLogin">
                <fb:login-button 
                    scope="public_profile,email"
                    onlogin="checkLoginState();">
                </fb:login-button>
            </fieldset>
            <!--<div id="fb-root"></div>-->
            <script async defer crossorigin="anonymous" src="https://connect.facebook.net/es_LA/sdk.js#xfbml=1&version=v6.0&appId=130811564945199&autoLogAppEvents=1"></script>

            <!--<div class="fb-login-button" data-width="" data-size="large" data-button-type="continue_with" data-auto-logout-link="false" data-use-continue-as="false"></div>-->

        </form>
    </body>
    <%/*
        if (request.getParameter("btnLogin") != null) {
            Persona p = new Persona();
            String user = request.getParameter("user");
            String passwd = request.getParameter("pass");

            p.setCorreo(user);
            p.setContra(passwd);
            p.session();
            if (p.getNivel() == 1) {
                response.sendRedirect("menuUsuario.html");
            }
            if (p.getNivel() == 2) {
                response.sendRedirect("../Administracion/InicioAdmin.jsp");
            } else {

            }
    }
     */%>
</html>
