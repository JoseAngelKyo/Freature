Feature: Recomendaciones según tiempos disponibles

    Scenario Outline: Recomendación automática
        Given que el usuario tiene horarios registrados
        When se detecta el espacio libre ""
        Then el sistema sugiere la opción alimenticia ""

        Examples:
            | espacio    | opcion          |
            | 15 minutos | Snack saludable |
            | 30 minutos | Almuerzo rápido |
            | 60 minutos | Comida completa |

    Scenario Outline: Cambio de horario
        Given que el usuario modifica su rutina
        When actualiza el horario ""
        Then el sistema recalcula las recomendaciones
        And muestra el mensaje ""

        Examples:
            | horario       | mensaje                      |
            | Lun-Vie 08-17 | Recomendaciones actualizadas |
            | Lun-Sab 09-18 | Recomendaciones actualizadas |
            | Mar-Dom 07-15 | Recomendaciones actualizadas |