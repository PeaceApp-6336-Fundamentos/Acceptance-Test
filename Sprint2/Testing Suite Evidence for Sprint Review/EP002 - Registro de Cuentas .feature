Feature: Registro de Cuentas

  Scenario: Registro exitoso
    Given que el usuario completa nombre, correo y contraseña válidos
    When hace clic en "Crear cuenta"
    Then la cuenta se crea y la aplicación muestra una confirmación de registro

  Scenario: Registro incompleto
    Given que el usuario deja campos obligatorios sin completar
    When hace clic en "Crear cuenta"
    Then la aplicación muestra un mensaje indicando qué campos faltan

  Scenario: Correo ya registrado
    Given que el usuario intenta registrarse con un correo existente
    When hace clic en "Crear cuenta"
    Then la aplicación informa que el correo ya está en uso y sugiere recuperar la contraseña
