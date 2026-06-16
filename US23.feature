Feature: Registro de comidas

    Scenario Outline: Registro exitoso
        Given que el usuario accede a la sección de comidas
        When registra la comida ""
        Then el sistema guarda la información correctamente
        And muestra el mensaje ""

        Examples:
            | comida   | mensaje                         |
            | Desayuno | Comida registrada correctamente |
            | Almuerzo | Comida registrada correctamente |
            | Cena     | Comida registrada correctamente |

    Scenario Outline: Datos incompletos
        Given que el usuario intenta registrar una comida
        When deja vacío el campo ""
        Then el sistema solicita completar los datos

        Examples:
            | campo    |
            | Nombre   |
            | Cantidad |
            | Horario  |