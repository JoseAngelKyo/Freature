Feature: Inicio de sesión con Telegram

    Como usuario
    Quiero iniciar sesión con Telegram
    Para acceder fácilmente

    Scenario Outline: Inicio exitoso
        Given que el usuario selecciona Telegram
        When autoriza correctamente el acceso de la cuenta "<usuario>"
        Then el sistema inicia sesión
        And muestra el mensaje "<mensaje>"

        ```
        Examples:
            | usuario     | mensaje                  |
            | diego_ram   | Inicio de sesión exitoso |
            | valeria_tor | Inicio de sesión exitoso |
            | mateo_roj   | Inicio de sesión exitoso |
    ```

    Scenario Outline: Cancelación del proceso
        Given que el usuario inició autenticación
        When cancela el proceso para la cuenta "<usuario>"
        Then el sistema retorna a la pantalla de acceso
        And muestra el mensaje "<mensaje>"

        ```
        Examples:
            | usuario     | mensaje                 |
            | diego_ram   | Autenticación cancelada |
            | valeria_tor | Autenticación cancelada |
            | mateo_roj   | Autenticación cancelada |
```
