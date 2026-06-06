Feature: US17 - Análisis detallado de inventario
    Como usuario premium, quiero análisis detallado de mis alimentos 
    para optimizar compras y control.

    Scenario: Acceso a reporte avanzado
        Given que el usuario tiene un plan premium activo en su cuenta
        When accede a la sección de análisis de inventario
        Then el sistema le permite el acceso completo
        And puede visualizar métricas y reportes detallados del consumo.

    Scenario: Restricción para no premium
        Given que el usuario no tiene un plan premium activo
        When intenta acceder a la sección de análisis avanzado de inventario
        Then el sistema bloquea el acceso
        And se muestra un aviso en pantalla con el texto "Función disponible en plan premium".