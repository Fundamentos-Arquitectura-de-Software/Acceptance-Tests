Feature: US13 - Recetas personalizadas
    Como usuario, quiero recibir recetas basadas en alimentos próximos a caducar 
    para aprovechar mejor mis ingredientes.

    Scenario: Recetas con ingredientes en riesgo
        Given que el usuario tiene productos próximos a vencer en su inventario
        When el usuario consulta la sección de recetas
        Then la app muestra recetas recomendadas que incluyen obligatoriamente esos ingredientes en riesgo.

    Scenario: Recetas generales
        Given que el usuario no tiene productos en riesgo de vencer en su inventario
        When el usuario consulta la sección de recetas
        Then la app muestra un catálogo de recetas generales, variadas y diversas.