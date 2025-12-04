Feature: Inicio de Sesión

  Scenario: Inicio de sesión exitoso
    Given que el usuario ingresa su correo y contraseña correctos
    When presiona "Iniciar sesión"
    Then accede a su cuenta y se muestra la pantalla principal

  Scenario: Credenciales incorrectas
    Given que el usuario ingresa correo o contraseña inválidos
    When presiona "Iniciar sesión"
    Then la aplicación muestra un mensaje de error indicando credenciales incorrectas
