<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <title>reCAPTCHA demo: Explicit render after an onload callback</title>
    <script type="text/javascript">
      var onloadCallback = function() {
        grecaptcha.render('html_element', {
          '6LdqFuAUAAAAAGY5pCV9KByrrTUEm_at0w1afKDZ' : '6LdqFuAUAAAAAHdwBnYK5FpnCEp7PnwuPY-A4kFa'
        });
      };
    </script>
  </head>
  <body>
    <form action="?" method="POST">
      <div id="html_element"></div>
      <br>
      <input type="submit" value="Submit">
    </form>
    <script src="https://www.google.com/recaptcha/api.js?onload=onloadCallback&render=explicit"
        async defer>
    </script>
  </body>
</html>
