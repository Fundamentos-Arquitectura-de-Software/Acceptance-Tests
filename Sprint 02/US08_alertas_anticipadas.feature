Feature: US08 - Alertas anticipadas
    Como usuario, quiero recibir alertas cuando un alimento esté por vencer
    para poder consumirlo a tiempo y evitar pérdidas.
    
    Scenario: Generar alerta
        Given que un alimento está próximo a caducar según su fecha de vencimiento
        When el sistema detecta el riesgo de vencimiento durante la verificación diaria
        Then el sistema envía una notificación de alerta al dispositivo del usuario.

    Scenario: No generar alerta innecesaria
        Given que no hay ningún alimento en riesgo de vencer en el inventario
        When el sistema realiza la verificación de fechas de caducidad
        Then no deben generarse ni enviarse notificaciones de alerta al usuario.