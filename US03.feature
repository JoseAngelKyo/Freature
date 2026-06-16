Feature: Inicio de sesión con Google

    Como usuario
    Quiero iniciar sesión con Google
    Para evitar llenar formularios

    Scenario Outline: Acceso exitoso con Google
        Given que el usuario selecciona la opción Google
        When autentica correctamente la cuenta "<correo>"
        Then el sistema permite acceso inmediato
        And muestra el mensaje "<mensaje>"

        ```
        Examples:
            | correo            | mensaje           |
            | diego@gmail.com   | Acceso autorizado |
            | valeria@gmail.com | Acceso autorizado |
            | mateo@gmail.com   | Acceso autorizado |
    ```

    Scenario Outline: Error de autenticación
        Given que el usuario selecciona inicio con Google
        When ocurre un fallo de autenticación para la cuenta "<correo>"
        Then el sistema muestra la notificación "<mensaje>"

        ```
        Examples:
            | correo            | mensaje                |
            | diego@gmail.com   | Error de autenticación |
            | usuario@gmail.com | Error de autenticación |
            | prueba@gmail.com  | Error de autenticación |
```
