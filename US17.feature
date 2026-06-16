Feature: Registro de horario de clases

    Scenario Outline: Registro exitoso
        Given que el usuario accede a la sección de horarios
        When registra el horario ""
        Then el sistema guarda la información
        And muestra el mensaje ""

        Examples:
            | horario                 | mensaje                          |
            | Lun-Vie 08:00-12:00     | Horario registrado correctamente |
            | Lun-Mie-Vie 14:00-18:00 | Horario registrado correctamente |
            | Mar-Jue 09:00-13:00     | Horario registrado correctamente |

    Scenario Outline: Horario incompleto
        Given que el usuario intenta registrar su horario
        When omite el campo ""
        Then el sistema solicita completar los campos faltantes
        And muestra el mensaje ""

        Examples:
            | campo       | mensaje                          |
            | Día         | Complete los campos obligatorios |
            | Hora inicio | Complete los campos obligatorios |
            | Hora fin    | Complete los campos obligatorios |