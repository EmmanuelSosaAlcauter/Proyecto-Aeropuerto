<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <title>CAPTCHA</title>
    <script src="https://www.google.com/recaptcha/api.js" async defer></script>
  </head>
  <body>
    <form action="" method="POST">
      <div class="g-recaptcha" data-sitekey="6LdqFuAUAAAAAHdwBnYK5FpnCEp7PnwuPY-A4kFa"></div>
      <br/>
      <input type="submit" value="Submit">
    </form>
      <script type="text/javascript">
  var onloadCallback = function() {
    alert("Si jala!");
  };
</script>
<script src="https://www.google.com/recaptcha/api.js?onload=onloadCallback&render=explicit"
    async defer>
</script>
  </body>
</html>
