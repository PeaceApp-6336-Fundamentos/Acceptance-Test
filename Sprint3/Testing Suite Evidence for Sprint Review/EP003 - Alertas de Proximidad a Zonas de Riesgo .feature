Feature: Alertas de Proximidad a Zonas de Riesgo

  Scenario: Recibir alerta al entrar a zona de alto riesgo
    Given que el usuario se desplaza con la app en uso y permisos de ubicación activos
    When la aplicación detecta que ingresa a una zona peligrosa
    Then se envía una notificación inmediata con la alerta de riesgo

  Scenario: Reintentar alerta tras perder conexión
    Given que el usuario perdió conexión a internet
    When la conexión se restablece
    Then la aplicación reanuda el monitoreo y vuelve a emitir alertas si corresponde
