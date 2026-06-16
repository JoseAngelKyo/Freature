Feature: Recordatorio de horarios de comida

    Scenario Outline: Recordatorio enviado
        Given que el usuario configuró el horario ""
        When llega la hora programada
        Then la aplicación envía una notificación recordatoria

        Examples:
            | horario |
            | 08:00   |
            | 13:00   |
            | 20:00   |

    Scenario Outline: Notificaciones desactivadas
        Given que el usuario desactivó los recordatorios
        When llega el horario ""
        Then el sistema no envía alertas

        Examples:
            | horario |
            | 08:00   |
            | 13:00   |
            | 20:00   |