Feature: Personalización de objetivos de consumo diario

    Scenario Outline: Configuración exitosa
        Given que el usuario accede a metas nutricionales avanzadas
        When establece "" calorías diarias
        Then el sistema guarda la configuración correctamente

        Examples:
            | calorias |
            | 1800     |
            | 2200     |
            | 2500     |

    Scenario Outline: Valores inválidos
        Given que el usuario intenta configurar objetivos nutricionales
        When ingresa el valor ""
        Then el sistema muestra un mensaje de validación

        Examples:
            | calorias |
            | -100     |
            | 0        |
            | 10000    |