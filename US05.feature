Feature: US05: Creacion de las diferentes preguntas por nivel
  Como usuario,
  quiero tener diversos tipos de preguntas,
  para aprender el lenguaje de señas de forma mas interactiva

  Scenario: Mostrar pregunta con archivo multimedia
    Given que el usuario se encuentra en el Home
    When pulse el boton de <nivel>
    And pulse alguna actividad
    Then le aparecera una actividad con un archivo multimedia
    Examples:
      |barra de navegacion| boton   |       nivel       |    topico     |Interfaz de la actividad         |
      |nivel              | Saludos |   Introduccion    | Saludos       |Pregunta: "archivo multimedia"   |
  Scenario: Mostrar pregunta con respuesta de opcion multiple
    Given que el usuario se encuentra en el Home
    When pulse el boton de <nivel>
    And pulse alguna actividad
    Then le aparecera una actividad con respuesta de opcion multiple
    Examples:
      |barra de navegacion| boton   |       nivel       |    topico     |Interfaz de la actividad                       |
      |nivel              | Saludos |   Introduccion    | Saludos       |Respuestas: "botones con diferentes respuestas"|
  Scenario: Mostrar pregunta con respuesta por texto
    Given que el usuario se encuentra en el Home
    When pulse el boton de <nivel>
    And pulse alguna actividad
    Then le aparecera una actividad con respuesta con digitalizar texto
    Examples:
      |barra de navegacion| boton   |       nivel       |    topico     |Interfaz de la actividad          |
      |nivel              | Saludos |   Introduccion    | Saludos       |Respuestas: "Escriba su respuesta"|
  Scenario: Mostrar vidas para la resolucion de ejercicios
    Given que el usuario se encuentra en el Home
    When pulse el boton de <nivel>
    And pulse alguna actividad
    Then le aparecera una actividad con el conteo de vidas en la esquina de la interfaz
    Examples:
      |barra de navegacion| boton   |       nivel       |    topico     |Interfaz de la actividad   |
      |nivel              | Saludos |   Introduccion    | Saludos       |Vidas: "5"                 |

    Scenario: Mosrar puntuacion por ejercicios completaodos
    Given que el usuario se encuentra en el Home
    When pulse el boton de <nivel>
    And pulse alguna actividad
      And complete la actiidad
    Then le aparecera una interfaz con la puntuacion obtenida
    Examples:
      |barra de navegacion| boton   |       nivel       |    topico     |Interfaz de la actividad                       | Boton       |Interfaz de puntaje          |
      |nivel              | Saludos |   Introduccion    | Saludos       |Preguntas, Respuestas                          |  Enviar     |Puntuacion = " " Vidas = " " |