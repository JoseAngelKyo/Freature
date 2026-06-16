Feature: Visualización de progreso nutricional

    Scenario Outline: Visualización correcta
        Given que el usuario tiene datos registrados
        When accede al dashboard nutricional
        Then el sistema muestra el gráfico ""

        Examples:
            | grafico             |
            | Calorías consumidas |
            | Macronutrientes     |
            | Progreso semanal    |

    Scenario Outline: Sin información registrada
        Given que el usuario no tiene datos suficientes
        When accede al dashboard
        Then el sistema muestra el mensaje ""

        Examples:
            | mensaje                                        |
            | Información insuficiente para mostrar gráficos |