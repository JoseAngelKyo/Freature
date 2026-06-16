Feature: Cierre de sesión

    Scenario Outline: Cierre exitoso
        Given que el usuario tiene sesión activa
        When selecciona cerrar sesión para la cuenta ""
        Then el sistema finaliza el acceso
        And redirige al login
        And muestra el mensaje ""

        Examples:
            | usuario | mensaje        |
            | Diego   | Sesión cerrada |
            | Valeria | Sesión cerrada |
            | Mateo   | Sesión cerrada |

    Scenario Outline: Confirmación de cierre
        Given que el usuario selecciona cerrar sesión
        When confirma la acción para la cuenta ""
        Then el sistema cierra la sesión
        And muestra el mensaje ""

        Examples:
            | usuario | mensaje           |
            | Diego   | Cierre confirmado |
            | Valeria | Cierre confirmado |
            | Mateo   | Cierre confirmado |