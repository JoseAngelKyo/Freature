Feature: Edición de comidas registradas

    Scenario Outline: Edición exitosa
        Given que el usuario tiene comidas registradas
        When modifica la comida ""
        Then el sistema actualiza la información

        Examples:
            | comida   |
            | Desayuno |
            | Almuerzo |
            | Cena     |

    Scenario Outline: Cancelación
        Given que el usuario edita una comida
        When cancela la operación de ""
        Then el sistema mantiene los datos originales

        Examples:
            | comida   |
            | Desayuno |
            | Almuerzo |
            | Cena     |