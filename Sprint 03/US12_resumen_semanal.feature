Feature: US12 - Resumen semanal
    Como usuario, quiero recibir un reporte semanal de mis alimentos consumidos y desperdiciados
    para mejorar mis hábitos.

    Scenario: Generación de reporte
        Given que ha pasado una semana desde el último reporte
        When se genera el reporte semanal
        Then el usuario puede verlo en la app.

    Scenario: Envío por correo
        Given que el usuario tiene activada la opción de correo
        When el reporte es generado
        Then el reporte se envía automáticamente al correo registrado.
