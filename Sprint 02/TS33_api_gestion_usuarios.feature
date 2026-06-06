Feature: TS33 - API para gestión de usuarios
    Como developer, necesito que el API permita administrar roles y permisos 
    para controlar el acceso a funciones premium.

    Scenario: Actualización exitosa de roles/permisos
        Given que un usuario con rol de "admin" realiza un cambio válido de permisos
        When se procesa el request "PUT /api/users/{id}/permissions" en el servidor
        Then el API debe retornar un código de estado 200 OK
        And actualiza correctamente los permisos del usuario en la base de datos.