Feature: Mantener sesión iniciada

    Como usuario
    Quiero mantener mi sesión iniciada
    Para evitar ingresar credenciales constantemente

    Scenario Outline: Activación exitosa
        Given que el usuario marca la opción "Recordarme"
        When inicia sesión correctamente con el correo "<correo>"
        Then el sistema conserva la sesión activa
        And muestra el mensaje "<mensaje>"

        ```
        Examples:
            | correo            | mensaje                        |
            | diego@gmail.com   | Sesión recordada correctamente |
            | valeria@gmail.com | Sesión recordada correctamente |
            | mateo@gmail.com   | Sesión recordada correctamente |
    ```

    Scenario Outline: Reapertura de la aplicación
        Given que la sesión fue guardada para el usuario "<correo>"
        When reabre la aplicación
        Then accede automáticamente a su cuenta
        And muestra el mensaje "<mensaje>"

        ```
        Examples:
            | correo            | mensaje                     |
            | diego@gmail.com   | Acceso automático realizado |
            | valeria@gmail.com | Acceso automático realizado |
            | mateo@gmail.com   | Acceso automático realizado |
```
