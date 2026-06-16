Feature: Sincronización con agenda externa

    Como usuario
    Quiero sincronizar mi agenda externa
    Para automatizar la planificación alimenticia

    Scenario Outline: Sincronización exitosa
        Given que el usuario conecta una agenda externa "<agenda>"
        When autoriza el acceso
        Then el sistema importa eventos y horarios
        And muestra el mensaje "<mensaje>"

        ```
        Examples:
            | agenda           | mensaje                           |
            | Google Calendar  | Agenda sincronizada correctamente |
            | Outlook Calendar | Agenda sincronizada correctamente |
            | Apple Calendar   | Agenda sincronizada correctamente |
    ```

    Scenario Outline: Error de conexión
        Given que el usuario intenta sincronizar la agenda "<agenda>"
        When ocurre una falla de conexión
        Then el sistema muestra el mensaje "<mensaje>"

        ```
        Examples:
            | agenda           | mensaje           |
            | Google Calendar  | Error de conexión |
            | Outlook Calendar | Error de conexión |
            | Apple Calendar   | Error de conexión |
```
