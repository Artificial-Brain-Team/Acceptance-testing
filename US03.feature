Feature: US03: Realizar pago de la membresía

    Como usuario de la aplicación, 
    quiero pagar, con distintos métodos la membresía que proporciona la aplicación
    para así no tener ninguna limitación en mi aprendizaje.

    Scenario: E01-Ver los beneficios de la membresía
        Given que el usuario se encuentra en el Home
        When pulse el botón <estrella>
        Then se encontrará en la sección <Plus> y le aparecera un apartado que contiene las ventajas y el precio de la membresia

        Examples:
        | barra de navegación | sección |
        |  estrella | Plus |

    Scenario: E02-Realizo el pago con tarjeta
        Given Me encuentro en la sección <Plus>
        When Presiono el botón "comprar a $3.00"
        And Selecciono mi agente financiero
        And Relleno los datos de mi tarjeta Datos correctos: true
        And Presiono el botón confirmar compra
        Then El sistema realizara el pago y te enviara a la seccion de <Pago_completado> mostrando un mensaje de que el pago se ah realizado correctamente

    Scenario: E03-No se puede realizar el pago con tarjeta
        Given Me encuentro en la sección <Plus>
        When Presiono el botón "comprar a $3.00"
        And Selecciono mi agente financiero
        And Relleno los datos de mi tarjeta Datos correctos: false
        And Presiono el botón confirmar compra
        Then El sistema no realizara el pago y te enviara a la seccion de <Pago_incompleto> mostrando un mensaje de que ah ocurrido un error al realizar el pago