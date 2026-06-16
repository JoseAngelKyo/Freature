Feature: Sincronización de horario académico con Outlook

    Scenario Outline: Vinculación exitosa
        Given que el usuario selecciona Outlook
        When autentica correctamente la cuenta "<correo>"
        Then el sistema inicia sesión y sincroniza la agenda
        And muestra el mensaje "<mensaje>"

        ```
        Examples:
            | correo              | mensaje             |
            | diego@outlook.com   | Agenda sincronizada |
            | valeria@outlook.com | Agenda sincronizada |
            | mateo@outlook.com   | Agenda sincronizada |
    ```

    Scenario Outline: Error de conexión
        Given que el usuario intenta autenticarse
        When ocurre un fallo de conexión para la cuenta "<correo>"
        Then el sistema informa el error "<mensaje>"

        ```
        Examples:
            | correo              | mensaje           |
            | diego@outlook.com   | Error de conexión |
            | valeria@outlook.com | Error de conexión |
            | mateo@outlook.com   | Error de conexión |
```

Feature: Recuperación de contraseña

    Scenario Outline: Solicitud exitosa
        Given que el usuario selecciona recuperar contraseña
        When ingresa el correo registrado "<correo>"
        Then el sistema envía instrucciones de recuperación
        And muestra el mensaje "<mensaje>"

        ```
        Examples:
            | correo            | mensaje                        |
            | diego@gmail.com   | Correo de recuperación enviado |
            | valeria@gmail.com | Correo de recuperación enviado |
            | mateo@gmail.com   | Correo de recuperación enviado |
    ```

    Scenario Outline: Correo no registrado
        Given que el usuario solicita recuperación
        When ingresa el correo inexistente "<correo>"
        Then el sistema informa que no existe registro
        And muestra el mensaje "<mensaje>"

        ```
        Examples:
            | correo            | mensaje              |
            | falso@gmail.com   | Correo no registrado |
            | prueba@gmail.com  | Correo no registrado |
            | usuario@gmail.com | Correo no registrado |
```

Feature: Cierre de sesión

    Scenario Outline: Cierre exitoso
        Given que el usuario tiene sesión activa
        When selecciona cerrar sesión para la cuenta "<usuario>"
        Then el sistema finaliza el acceso
        And redirige al login
        And muestra el mensaje "<mensaje>"

        ```
        Examples:
            | usuario | mensaje        |
            | Diego   | Sesión cerrada |
            | Valeria | Sesión cerrada |
            | Mateo   | Sesión cerrada |
    ```

    Scenario Outline: Confirmación de cierre
        Given que el usuario selecciona cerrar sesión
        When confirma la acción para la cuenta "<usuario>"
        Then el sistema cierra la sesión
        And muestra el mensaje "<mensaje>"

        ```
        Examples:
            | usuario | mensaje           |
            | Diego   | Cierre confirmado |
            | Valeria | Cierre confirmado |
            | Mateo   | Cierre confirmado |
```
