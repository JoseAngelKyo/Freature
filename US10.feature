Feature: Registro de talla

    Como usuario
    Quiero registrar mi talla
    Para calcular requerimientos nutricionales adecuados

    Scenario Outline: Registro correcto
        Given que el usuario se encuentra en configuración de perfil
        When ingresa la talla ""
        Then el sistema almacena la información
        And muestra el mensaje ""

        Examples:
            | talla | mensaje                        |
            | 1.60  | Talla registrada correctamente |
            | 1.75  | Talla registrada correctamente |
            | 1.82  | Talla registrada correctamente |

    Scenario Outline: Formato incorrecto
        Given que el usuario ingresa su talla
        When registra el valor ""
        Then el sistema solicita corrección
        And muestra el mensaje ""

        Examples:
            | talla | mensaje                   |
            | abc   | Formato de talla inválido |
            | ##    | Formato de talla inválido |
            | uno   | Formato de talla inválido |