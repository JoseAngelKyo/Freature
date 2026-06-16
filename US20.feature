Feature: Edición de horarios registrados

    Como usuario
    Quiero editar mis horarios registrados
    Para mantener mi planificación actualizada

    Scenario Outline: Actualización de horario
        Given que el usuario tiene horarios guardados
        When modifica el horario a "<horario>" y guarda los cambios
        Then el sistema actualiza la información
        And muestra el mensaje "<mensaje>"

        ```
        Examples:
            | horario             | mensaje                           |
            | Lun-Vie 10:00-18:00 | Horario actualizado correctamente |
            | Mar-Jue 08:00-14:00 | Horario actualizado correctamente |
            | Lun-Sab 09:00-17:00 | Horario actualizado correctamente |
    ```

    Scenario Outline: Cancelación de cambios
        Given que el usuario está editando horarios
        When cancela la operación del horario "<horario>"
        Then el sistema conserva la información anterior
        And muestra el mensaje "<mensaje>"

        ```
        Examples:
            | horario             | mensaje            |
            | Lun-Vie 10:00-18:00 | Cambios cancelados |
            | Mar-Jue 08:00-14:00 | Cambios cancelados |
            | Lun-Sab 09:00-17:00 | Cambios cancelados |
```
