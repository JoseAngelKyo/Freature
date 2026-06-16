Feature: Inicio de sesión con correo y contraseña

    Como usuario
    Quiero iniciar sesión con correo y contraseña
    Para acceder rápidamente a la aplicación

    Scenario Outline: Inicio de sesión exitoso
        Given que el usuario posee una cuenta registrada
        When ingresa el correo "<correo>" y la contraseña "<contrasena>"
        Then el sistema permite el acceso
        And muestra el mensaje "<mensaje>"

        ```
        Examples:
            | correo            | contrasena | mensaje                  |
            | diego@gmail.com   | Diego123*  | Inicio de sesión exitoso |
            | valeria@gmail.com | Vale123*   | Inicio de sesión exitoso |
            | mateo@gmail.com   | Mateo123*  | Inicio de sesión exitoso |
    ```

    Scenario Outline: Inicio de sesión con credenciales incorrectas
        Given que el usuario intenta iniciar sesión
        When ingresa el correo "<correo>" y la contraseña "<contrasena>"
        Then el sistema muestra el mensaje de error "<mensaje>"

        ```
        Examples:
            | correo            | contrasena | mensaje                |
            | diego@gmail.com   | Error123   | Credenciales inválidas |
            | usuario@gmail.com | Diego123*  | Credenciales inválidas |
            | prueba@gmail.com  | 123456     | Credenciales inválidas |
```

