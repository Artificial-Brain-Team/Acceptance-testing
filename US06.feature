Feature: US06: Jugar por categorias
    Como usuario,
    quiero avanzar y aprender por categorias
    para aprender cosas separado por temas

    Scenario: Mostrar diferentes categorias disponibles
        Given que el usuario se encuentra en el Home
        When pulse el botón <niveles>
        Then encontrará los distintos <botones de categoria> disponibles para jugar
        And podrá escojer uno para jugar con sus niveles respectivos

    Scenario: Mostrar diferentes categorias no disponibles
        Given que el usuario se encuentra en el Home
        When pulse el botón <niveles>
        Then encontrará los distintos <botones de categoria> 
        And podrá elegir uno que se encuentre <disponible> para jugar con sus niveles respectivos
        When pulse un nivel no disponible
        Then le aparecera un <mensaje> de nivel no disponible

    Examples:
        | barra de navegación |    botones de categoria   |     disponible    |            mensaje            |
        |      niveles        |          Saludos          |        true       |               -               |
        |      niveles        |          Saludos          |       false       |       Nivel no disponible     |