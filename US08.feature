Feature: US08: Registrarse con correo electrónico
    Como usuario,
    quiero registrarme en la aplicacion
    para poder jugar y aprender lenguaje de señas

    Scenario: Registrarse correctamente
        Given que el usuario no esta registrado
        When ingrese a Sign In
        And registre un <correo>
        And registre una <contraseña>
        And registre un <nombre>
        Then se creara una cuenta de forma correcta

    Scenario: Registrarse con un correo ya usado
        Given que el usuario no esta registrado
        When ingrese a Sign In
        And registre un <correo> ya existente
        And registre una <contraseña>
        And registre un <nombre>
        Then se creara una cuenta de forma correcta

    Scenario: Registrarse con un correo no valido
        Given que el usuario no esta registrado
        When ingrese a Sign In
        And registre un <correo> invalido
        And registre una <contraseña>
        And registre un <nombre>
        Then se creara una cuenta de forma correcta

    Examples:
        |         correo                |        contraseña        |      nombre      |            mensaje            |
        |   williammar@hotmail.com      |          upc123          |      william     |          cuenta creada        |
        |   williammar954@hotmail.com   |          upc123          |      william     |      cuenta ya existente      |
        |    williammarhotmail.com      |          upc123          |      william     |         correo invalido       |