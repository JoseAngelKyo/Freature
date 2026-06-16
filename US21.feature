Feature: Visualización de espacios libres sugeridos

    Scenario Outline: Espacios identificados correctamente
        Given que el usuario tiene horarios registrados
        When accede a su planificación diaria
        Then el sistema muestra el espacio libre ""
        And muestra el mensaje ""

        Examples:
            | espacio     | mensaje                     |
            | 12:00-13:00 | Espacios libres encontrados |
            | 15:00-16:00 | Espacios libres encontrados |
            | 18:00-19:00 | Espacios libres encontrados |

    Scenario Outline: Sin horarios registrados
        Given que el usuario no tiene horarios configurados
        When accede a la planificación
        Then el sistema solicita registrar horarios
        And muestra el mensaje ""

        Examples:
            | mensaje                             |
            | Debe registrar horarios previamente |