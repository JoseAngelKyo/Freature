
Feature: Registro de horario laboral

    Como usuario trabajador
    Quiero registrar mi horario laboral
    Para recibir sugerencias ajustadas a mi jornada

    Scenario Outline: Registro correcto
        Given que el usuario accede a configuración de horarios
        When registra el horario laboral "<horario>"
        Then el sistema almacena la información
        And muestra el mensaje "<mensaje>"

        ```
        Examples:
            | horario             | mensaje                                  |
            | Lun-Vie 08:00-17:00 | Horario laboral registrado correctamente |
            | Lun-Sab 09:00-18:00 | Horario laboral registrado correctamente |
            | Mar-Dom 07:00-15:00 | Horario laboral registrado correctamente |
    ```

    Scenario Outline: Solapamiento de horarios
        Given que el usuario registra un horario laboral
        When existe conflicto con el horario "<horario>"
        Then el sistema muestra una advertencia
        And muestra el mensaje "<mensaje>"

        ```
        Examples:
            | horario             | mensaje                      |
            | Lun-Vie 08:00-12:00 | Existe conflicto de horarios |
            | Lun-Mie 14:00-18:00 | Existe conflicto de horarios |
            | Mar-Jue 09:00-13:00 | Existe conflicto de horarios |
```
