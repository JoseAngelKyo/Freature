Feature: Configuración de preferencias alimenticias

    Scenario Outline: Preferencias guardadas
        Given que el usuario accede a preferencias
        When selecciona la preferencia ""
        Then el sistema almacena la configuración
        And muestra el mensaje ""

        Examples:
            | preferencia | mensaje                              |
            | Vegetariana | Preferencias guardadas correctamente |
            | Vegana      | Preferencias guardadas correctamente |
            | Sin gluten  | Preferencias guardadas correctamente |

    Scenario Outline: Actualización de preferencias
        Given que el usuario tiene preferencias registradas
        When modifica su selección a ""
        Then el sistema actualiza la información
        And muestra el mensaje ""

        Examples:
            | preferencia | mensaje                                 |
            | Vegetariana | Preferencias actualizadas correctamente |
            | Vegana      | Preferencias actualizadas correctamente |
            | Sin gluten  | Preferencias actualizadas correctamente |