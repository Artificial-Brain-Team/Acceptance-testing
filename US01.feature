Feature: US01: Revisar mi progreso del curso
    Como usuario,
    quiero visualizar mi progreso del curso
    para ajustar mi ritmo de aprendizaje

    Scenario: Mostrar gráfico de progreso
        Given que el usuario se encuentra en el Home
        When pulse el botón <calendario>
        Then encontrará en la sección <Estadísticas> un gráfico de sus <respuestas correctas e incorrectas>.

    Examples:
        | barra de navegación |            sección                |            mensaje del gráfico            |
        |      calendario     |          Estadísticas             |    Correctas: 47% / Incorrectas: 53%      |

    Scenario: Mostrar calendario de actividad
        Given que el usuario se encuentra en el Home
        When pulse el botón <calendario>
        Then encontrará en la sección <Actividad Mensual> un calendario indicandole los <días que se conecto> a la aplicación

    Examples:
        | barra de navegación |            sección                |            mensaje del gráfico            |
        |      calendario     |        Actividad Mensual          |    Días activos: 4 / Días inactivos: 26   |

    Scenario: Mostrar estadisticas de progreso por cada topico de cada nivel
        Given que el usuario se encuentra en el Home
        When pulse el botón <calendario>
        And presione el botón <Estadísticas por tópico de cada nivel>
        Then encontrará gráficos de <progreso> por cada <tópico> de cada <nivel> existente en la aplicación

    Examples:
        | barra de navegación |                  botón                       |      nivel     |  tópico |            mensaje del gráfico            |
        |      calendario     |    Estadísticas por tópico de cada nivel     |  Introducción  | Saludos |    Días activos: 4 / Días inactivos: 26   |

    

    