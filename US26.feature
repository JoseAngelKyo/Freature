Feature: Historial de comidas

    Scenario Outline: Visualización correcta
        Given que el usuario tiene registros
        When accede al historial
        Then el sistema muestra las comidas del periodo ""

        Examples:
            | periodo       |
            | Hoy           |
            | Última semana |
            | Último mes    |

    Scenario Outline: Sin datos
        Given que el usuario no tiene registros
        When accede al historial
        Then el sistema muestra el mensaje ""

        Examples:
            | mensaje              |
            | No existen registros |