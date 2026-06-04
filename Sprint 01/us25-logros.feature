Feature: US25 - Logros y recompensas

    Scenario: Usuario visualiza sus logros
      Given el usuario ha iniciado sesion en FreshSense
      When accede a la seccion de logros
      Then ve la lista de achievements con su porcentaje de progreso

    Scenario: Logro muestra progreso actualizado
      Given el usuario tiene un logro con progreso parcial
      When el sistema consulta GET /api/users/{userId}/achievements
      Then el porcentaje de completado refleja las acciones realizadas
