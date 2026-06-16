Feature: Registro de peso corporal

    Como usuario
    Quiero registrar mi peso corporal
    Para recibir recomendaciones nutricionales personalizadas

    Scenario Outline: Registro exitoso
        Given que el usuario accede a su perfil
        When ingresa el peso "<peso>"
        Then el sistema guarda la información correctamente
        And muestra el mensaje "<mensaje>"

        ```
        Examples:
            | peso | mensaje                       |
            | 60   | Peso registrado correctamente |
            | 72   | Peso registrado correctamente |
            | 85   | Peso registrado correctamente |
    ```

    Scenario Outline: Valor inválido
        Given que el usuario intenta registrar su peso
        When ingresa el peso "<peso>"
        Then el sistema muestra el mensaje "<mensaje>"

        ```
        Examples:
            | peso | mensaje                        |
            | -5   | Peso fuera del rango permitido |
            | 0    | Peso fuera del rango permitido |
            | 500  | Peso fuera del rango permitido |
```

Feature: Registro de talla

    Como usuario
    Quiero registrar mi talla
    Para calcular requerimientos nutricionales adecuados

    Scenario Outline: Registro correcto
        Given que el usuario se encuentra en configuración de perfil
        When ingresa la talla "<talla>"
        Then el sistema almacena la información
        And muestra el mensaje "<mensaje>"

        ```
        Examples:
            | talla | mensaje                        |
            | 1.60  | Talla registrada correctamente |
            | 1.75  | Talla registrada correctamente |
            | 1.82  | Talla registrada correctamente |
    ```

    Scenario Outline: Formato incorrecto
        Given que el usuario ingresa su talla
        When registra el valor "<talla>"
        Then el sistema solicita corrección
        And muestra el mensaje "<mensaje>"

        ```
        Examples:
            | talla | mensaje                   |
            | abc   | Formato de talla inválido |
            | ##    | Formato de talla inválido |
            | uno   | Formato de talla inválido |
```
