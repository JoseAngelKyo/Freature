Feature: Actualización de datos personales

    Como usuario
    Quiero actualizar mis datos personales
    Para mantener información precisa

    Scenario Outline: Actualización exitosa
        Given que el usuario accede a edición de perfil
        When modifica el nombre "<nombre>" y el teléfono "<telefono>"
        Then el sistema guarda los cambios
        And muestra el mensaje "<mensaje>"

        ```
        Examples:
            | nombre         | telefono  | mensaje                          |
            | Diego Ramirez  | 987654321 | Datos actualizados correctamente |
            | Valeria Torres | 912345678 | Datos actualizados correctamente |
            | Mateo Rojas    | 999888777 | Datos actualizados correctamente |
    ```

    Scenario Outline: Datos incompletos
        Given que el usuario intenta actualizar información
        When deja vacío el campo obligatorio "<campo>"
        Then el sistema impide guardar cambios
        And muestra el mensaje "<mensaje>"

        ```
        Examples:
            | campo    | mensaje                          |
            | Nombre   | Complete los campos obligatorios |
            | Correo   | Complete los campos obligatorios |
            | Teléfono | Complete los campos obligatorios |
```
