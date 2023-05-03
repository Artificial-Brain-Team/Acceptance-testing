Feature: US04: Iniciar sesion por redes sociales
  Como usuario,
  quiero registrarme al sitio web por medio de mis otras redes sociales,
  para ingresar eficientemente al sitio web, sin necesidad de recordar alguna contraseña

  Scenario: Mostrar Redes Sociales
    Given que el usuario ingresa al sitio web
    When aparece la interfaz de <Inicio e sesion>
    Then le aparecera las redes sociales que puede vincular su cuenta
    Examples:
      |Inicio de sesion         |      Boton      |
      |Registrase/Inicio Sesion | "Redes Sociales" |
  Scenario: Ingresar por Redes Sociales
    Given que el usuario ingresa al sitio web
    When aparece la interfaz de <Inicio e sesion>
    And Presiona el boton de alguna red social
    Then la Interfaz para ingresar a su cuenta de la red social elegida
    Examples:
      |Inicio de sesion         |      Boton      |   Interfaz de Incio de sesion |
      |Registrase/Inicio Sesion |   "Red Social"  |   "Complete sus datos"        |