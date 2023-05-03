Feature: US06: Iniciar sesión por correo electrónico
    Como usuario,
    quiero iniciar sesion con mi correo electronico
    para poder usar todas las funcionalidades

    Scenario: Ingresar con el correo y contraseña correcta
        Given que el usuario no ha iniciado sesión
        When que el usuario ingrese a login
        When escriba el <correo electronico>
        And escriba la <contraseña> correcta
        Then el usuario se logeara correctamente
        And ingresara a la pagina principal correctamente

    Scenario: Ingresar con el correo y contraseña incorrecta
        Given que el usuario no ha iniciado sesión
        When que el usuario ingrese a login
        When escriba el <correo electronico>
        And escriba la <contraseña> incorrecta
        Then le saldra un <mensaje> de contraseña incorrecta

    Scenario: Ingresar con un correo invalido
        Given que el usuario no ha iniciado sesión  
        When que el usuario ingrese a login
        When escriba el <correo electronico> invalido
        And escriba la <contraseña>
        Then le saldra un <mensaje> que el correo electrónico no es válido si el correo electrónico no sigue el formato correcto

    Examples:
        |              correo               |          contraseña          |           mensaje          | 
        |      williammar@hotmail.com       |           upc123             |              -             |
        |      williammar@hotmail.com       |           upc1234            |   contraseña incorrecta    |
        |      williammarhotmail.com        |           upc1234            |      correo no valido      |