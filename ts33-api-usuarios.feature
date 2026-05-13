Feature: TS33 - API para gestion de usuarios con JWT

    Scenario: Registro exitoso de nuevo usuario
      Given un usuario nuevo con email y contrasena validos
      When hace POST /api/accounts/register
      Then el servidor responde con 201 y setea una cookie HttpOnly authToken

    Scenario: Login exitoso
      Given un usuario registrado en el sistema
      When hace POST /api/accounts/login con credenciales correctas
      Then el servidor responde con 200 y setea la cookie authToken

    Scenario: Acceso a endpoint protegido sin token
      Given un usuario no autenticado
      When intenta acceder a GET /api/products
      Then el servidor responde con 401 Unauthorized
