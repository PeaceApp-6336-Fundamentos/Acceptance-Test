Feature: Mapa con Reportes de Incidentes

  Scenario: Ver reportes en el mapa
    Given que el usuario está en la pantalla de mapa
    When activa la visualización de reportes
    Then se muestran marcadores con los incidentes cercanos a su ubicación

  Scenario: Zona sin reportes
    Given que el usuario navega a un área sin incidentes registrados
    When visualiza el mapa
    Then la aplicación muestra el mapa sin marcadores y un mensaje "No hay reportes en esta zona"
