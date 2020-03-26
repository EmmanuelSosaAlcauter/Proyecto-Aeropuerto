
<%@page import="net.tanesha.recaptcha.ReCaptcha"%>
<%@page import="net.tanesha.recaptcha.ReCaptchaFactory"%><html>
      <body>
        <form action="validate.jsp" method="post">

			Name : <input type="text" name="user_name"><br>

        <%
          ReCaptcha c = ReCaptchaFactory.newReCaptcha("6LdHbt8UAAAAANyAw08L6qftoNISaESukWcO_nAU", "6LdHbt8UAAAAAO_Af3tGPQbzRDszpSdKDATAIeG_", false);
          out.print(c.createRecaptchaHtml(null, null));
        %>
        <input type="submit" value="submit" />
        </form>
      </body>
    </html>