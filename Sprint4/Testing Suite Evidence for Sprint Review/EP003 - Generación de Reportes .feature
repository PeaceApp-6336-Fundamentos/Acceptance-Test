Feature: Generación de Reportes de Incidentes


  Scenario: Crear un reporte con información completa
    Given que el usuario está en la pantalla de "Nuevo Reporte"
    When el usuario completa los campos "título", "descripción" y "tipo"
    And adjunta una imagen válida como evidencia
    And presiona el botón "Enviar Reporte"
    Then el reporte se crea exitosamente
    And se muestra una notificación de éxito
    And el usuario es redirigido a la pantalla "Mis Reportes"

  Scenario: Intentar enviar un reporte sin campos obligatorios
    Given que el usuario está en la pantalla de "Nuevo Reporte"
    When intenta enviar el reporte sin completar el campo "descripción"
    Then el envío del formulario es bloqueado por el navegador debido a que el campo es requerido

  Scenario: Intentar enviar un reporte sin adjuntar evidencia
    Given que el usuario ha completado todos los campos de texto
    When intenta enviar el reporte sin adjuntar una imagen
    Then el sistema muestra una alerta indicando que la imagen es obligatoria

  Scenario: La ubicación se actualiza al mover el mapa
    Given que el usuario está en la pantalla de "Nuevo Reporte"
    When mueve el mapa a una nueva posición
    Then el campo "ubicación" se actualiza automáticamente con la nueva dirección