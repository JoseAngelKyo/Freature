Feature: Registro de restricciones alimentarias

    Scenario Outline: Restricción registrada
        Given que el usuario accede a restricciones alimentarias
        When selecciona la restricción ""
        Then el sistema la guarda correctamente
        And muestra el mensaje ""

        Examples:
            | restriccion            | mensaje                              |
            | Intolerancia a lactosa | Restricción registrada correctamente |
            | Alergia a frutos secos | Restricción registrada correctamente |
            | Celiaquía              | Restricción registrada correctamente |

    Scenario Outline: Recomendación filtrada
        Given que el usuario tiene restricciones registradas
        When solicita recomendaciones
        Then el sistema excluye opciones incompatibles con ""
        And muestra el mensaje ""

        Examples:
            | restriccion            | mensaje                   |
            | Intolerancia a lactosa | Recomendaciones filtradas |
            | Alergia a frutos secos | Recomendaciones filtradas |
            | Celiaquía              | Recomendaciones filtradas |