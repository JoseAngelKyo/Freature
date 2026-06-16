Feature: Recuperación de contraseña

    Scenario Outline: Solicitud exitosa
        Given que el usuario selecciona recuperar contraseña
        When ingresa el correo registrado ""
        Then el sistema envía instrucciones de recuperación
        And muestra el mensaje ""

        Examples:
            | correo            | mensaje                        |
            | diego@gmail.com   | Correo de recuperación enviado |
            | valeria@gmail.com | Correo de recuperación enviado |
            | mateo@gmail.com   | Correo de recuperación enviado |

    Scenario Outline: Correo no registrado
        Given que el usuario solicita recuperación
        When ingresa el correo inexistente ""
        Then el sistema informa que no existe registro
        And muestra el mensaje ""

        Examples:
            | correo            | mensaje              |
            | falso@gmail.com   | Correo no registrado |
            | prueba@gmail.com  | Correo no registrado |
            | usuario@gmail.com | Correo no registrado |