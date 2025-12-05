Feature: Interacción con el Mapa

  Scenario: Centrar el mapa en la ubicación actual
    Given que el usuario está navegando en el mapa y ha movido la vista
    When presiona el botón de geolocalización ("Mi Ubicación")
    Then el mapa se centra automáticamente en su posición actual

  Scenario: Visualizar reportes de incidentes en el mapa
    Given que el usuario está en la pantalla del mapa
    Then se muestran marcadores en el mapa representando los reportes de incidentes existentes

  Scenario: Ver detalle de un reporte desde el mapa
    Given que hay marcadores de incidentes en el mapa
    When el usuario hace clic en un marcador
    Then se muestra una ventana emergente con el título, tipo y dirección del incidente