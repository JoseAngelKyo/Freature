    eature: Registro de edad

    Como usuario
    Quiero ingresar mi edad
    Para recibir recomendaciones adecuadas a mi etapa de desarrollo

    Scenario Outline: Edad válida
        Given que el usuario completa su perfil
        When ingresa la edad ""
        Then el sistema guarda el dato correctamente
        And muestra el mensaje ""

        Examples:
            | edad | mensaje                       |
            | 18   | Edad registrada correctamente |
            | 21   | Edad registrada correctamente |
            | 25   | Edad registrada correctamente |

    Scenario Outline: Edad fuera de rango
        Given que el usuario registra su edad
        When ingresa la edad ""
        Then el sistema muestra el mensaje ""

        Examples:
            | edad | mensaje             |
            | -1   | Edad fuera de rango |
            | 0    | Edad fuera de rango |
            | 150  | Edad fuera de rango |