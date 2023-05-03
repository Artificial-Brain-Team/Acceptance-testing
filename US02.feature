Feature: US02: Cambiar contraseña
    Como usuario,
    quiero cambiar mi contraseña
    para tener una mayor flexibilidad en el acceso a mi cuenta

    Scenario: Cambio de contraseña
        Given que el usuario se encuentra en el Home 
        When pulse el botón <ajustes>
        And presione la etiqueta <Cambiar contraseña>
        And confirme la <nueva contraseña>
        Then se le notificará al usuario mediante un <mensaje> de que su contraseña a sido cambiada exitosamente

    Examples:
        | barra de navegación |      etiqueta         |   nueva contraseña  |          mensaje               |
        |       ajustes       |  cambiar contraseña   |    21542$%245#123   |  contraseña nueva establecida  |