Feature: Establecimiento de objetivos nutricionales

    Como usuario
    Quiero definir objetivos nutricionales
    Para recibir recomendaciones alineadas con mis metas

    Scenario Outline: Objetivo registrado
        Given que el usuario accede a metas nutricionales
        When selecciona el objetivo "<objetivo>"
        Then el sistema guarda la configuración
        And muestra el mensaje "<mensaje>"

        ```
        Examples:
            | objetivo            | mensaje                         |
            | Bajar de peso       | Objetivo guardado correctamente |
            | Mantener peso       | Objetivo guardado correctamente |
            | Ganar masa muscular | Objetivo guardado correctamente |
    ```

    Scenario Outline: Modificación de objetivo
        Given que el usuario tiene un objetivo registrado
        When selecciona el nuevo objetivo "<objetivo>"
        Then el sistema actualiza la información
        And muestra el mensaje "<mensaje>"

        ```
        Examples:
            | objetivo            | mensaje                            |
            | Bajar de peso       | Objetivo actualizado correctamente |
            | Mantener peso       | Objetivo actualizado correctamente |
            | Ganar masa muscular | Objetivo actualizado correctamente |
```
