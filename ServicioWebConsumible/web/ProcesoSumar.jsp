<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Proceso Sumar</title>
    </head>
    <body>
        <h1>Sumar</h1>
        <%
            Object sessionN1=session.getAttribute("no1");  //Se extraen los valores del numero 21, numero 2 y la opcion 
            Object sessionN2=session.getAttribute("no2");  //que haya puesto el usuario y se asignan a un objeto
            Object sessionOPC=session.getAttribute("opc");
            out.println(sessionOPC);   //Se imprimen los objetos con dichos valores
            out.println(sessionN1);
            out.println(sessionN2);
            int caso=0;   //Se inicializa la variable caso 
            if(sessionOPC.toString().equals("Suma")){  //Se crea una sentencia para entrar al caso 1
                caso=1;
            }
            int numVal1,numVal2;  //Se crean las dos variables que se usan desde el principio las cuales son los dos numeros 
            try{
                numVal1=Integer.parseInt(sessionN1.toString()); //Se ejecua su respectiva convesión
                numVal2=Integer.parseInt(sessionN2.toString());
            }catch(Exception e){  //Se cachan las excepciones 
                numVal1=0; 
                numVal2=0;
            }
            switch(caso){
                case 1: //Si entra al caso 1 entonces se manda a llamar el Servicio Web
                    try{
                       org.tempuri.ServicioWebSimple service = new org.tempuri.ServicioWebSimple(); //Se manda a llamar el Servicio
                       org.tempuri.ServicioWebSimpleSoap port = service.getServicioWebSimpleSoap(); //Y se crea una variable para la misma 
                       int a = numVal1; //Se el asigna valor a la variables 
                       int b = numVal2;
                       int resultado = port.suma(a, b);
                       out.println("El resultado de la suma es: "+resultado); //Se imprime el resultado de la suma 
                    }catch(Exception ex){  //Se cachan las excepciones 
                        out.println(ex);  //Se imprimen las excepciones
                    }
                    break; //Se rompe el caso
            }
        %>
    </body>
</html>

