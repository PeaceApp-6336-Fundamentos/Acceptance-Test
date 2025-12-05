Feature: Filtro y Búsqueda de Reportes

  Scenario: Ver solo mis reportes
    Given que el usuario accede a la sección de reportes
    When selecciona el filtro "Mis reportes"
    Then se listan únicamente los reportes creados por ese usuario

  Scenario: Buscar reportes por ubicación
    Given que el usuario está en el mapa
    When ingresa una dirección en el buscador
    Then el mapa se centra en esa ubicación y muestra los reportes disponibles
