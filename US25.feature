Feature: Eliminación de comidas

    Scenario Outline: Eliminación exitosa
        Given que el usuario selecciona la comida ""
        When confirma la eliminación
        Then el sistema elimina el registro

        Examples:
            | comida   |
            | Desayuno |
            | Almuerzo |
            | Cena     |

    Scenario Outline: Cancelación
        Given que el usuario intenta eliminar una comida
        When cancela la acción
        Then el sistema conserva la comida ""

        Examples:
            | comida   |
            | Desayuno |
            | Almuerzo |
            | Cena     |