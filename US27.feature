Feature: Cálculo de nutrientes

    Scenario Outline: Cálculo automático
        Given que el usuario registra alimentos
        When guarda la comida ""
        Then el sistema calcula los nutrientes

        Examples:
            | comida   |
            | Desayuno |
            | Almuerzo |
            | Cena     |

    Scenario Outline: Error de datos
        Given que existen datos incompletos
        When intenta calcular nutrientes
        Then el sistema muestra la advertencia ""

        Examples:
            | mensaje             |
            | Datos insuficientes |