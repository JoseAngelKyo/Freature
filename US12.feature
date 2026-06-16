Feature: Registro de nivel de actividad física

    Como usuario
    Quiero registrar mi nivel de actividad física
    Para ajustar las recomendaciones alimenticias

    Scenario Outline: Selección exitosa
        Given que el usuario accede a configuración
        When selecciona el nivel de actividad ""
        Then el sistema guarda la preferencia
        And muestra el mensaje ""

        Examples:
            | nivel    | mensaje                       |
            | Bajo     | Nivel de actividad registrado |
            | Moderado | Nivel de actividad registrado |
            | Alto     | Nivel de actividad registrado |

    Scenario Outline: Campo vacío
        Given que el usuario intenta guardar cambios
        When no selecciona ningún nivel de actividad ""
        Then el sistema solicita completar el campo
        And muestra el mensaje ""

        Examples:
            | nivel | mensaje                   |
            |       | Debe seleccionar un nivel |
            | NULL  | Debe seleccionar un nivel |
            | N/A   | Debe seleccionar un nivel |

