Feature: Gestión del Perfil y Privacidad del Usuario

  Scenario: Actualizar información de perfil
    Given que el usuario accede a la sección de perfil
    When modifica su información personal (nombre, correo, foto)
    Then la aplicación guarda los cambios y muestra una confirmación exitosa

  Scenario: Configurar opciones de privacidad
    Given que el usuario abre ajustes de privacidad
    When cambia la visibilidad de su información (correo o actividad)
    Then los cambios se aplican de forma inmediata y se reflejan en su perfil

  Scenario: Visualizar configuración vigente
    Given que el usuario desea revisar sus preferencias de privacidad
    When accede a la vista de configuración
    Then la aplicación muestra las opciones actualmente seleccionadas
