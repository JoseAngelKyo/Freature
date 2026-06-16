Feature: Registro de cuenta

    Como nuevo usuario
    Quiero registrarme con nombre de usuario, correo electrónico y contraseña
    Para crear una cuenta en la aplicación

    Scenario Outline: Registro exitoso
        Given que el usuario se encuentra en la pantalla de registro
        When ingresa el nombre de usuario "<usuario>", el correo "<correo>" y la contraseña "<contrasena>"
        Then el sistema crea la cuenta
        And muestra el mensaje "<mensaje>"

        ```
        Examples:
            | usuario | correo            | contrasena | mensaje                     |
            | Diego   | diego@gmail.com   | Diego123*  | Cuenta creada correctamente |
            | Valeria | valeria@gmail.com | Vale123*   | Cuenta creada correctamente |
            | Mateo   | mateo@gmail.com   | Mateo123*  | Cuenta creada correctamente |
    ```

    Scenario Outline: Registro con correo existente
        Given que el usuario intenta registrarse
        When ingresa el nombre de usuario "<usuario>", el correo "<correo>" y la contraseña "<contrasena>"
        Then el sistema muestra el mensaje "<mensaje>"

        ```
        Examples:
            | usuario | correo            | contrasena | mensaje             |
            | Diego   | usuario@gmail.com | Diego123*  | El correo ya existe |
            | Valeria | usuario@gmail.com | Vale123*   | El correo ya existe |
            | Mateo   | usuario@gmail.com | Mateo123*  | El correo ya existe |
```
