Feature: US07 - Visualización de inventario
    Como usuario, quiero ver un dashboard con semáforo de frescura
    para identificar el estado de cada alimento a partir de los datos reales del sensor.

    Scenario: Dashboard con semáforo de frescura
        Given que el usuario accede al dashboard de inventario
        When la app carga los datos reales del sensor y los umbrales del Edge API
        Then muestra el estado de cada alimento con un color de semáforo (verde, amarillo o rojo).

    Scenario: Alimento en riesgo
        Given que las mediciones de un alimento superan los umbrales de su categoría
        When la app actualiza el dashboard de inventario
        Then el alimento se muestra en color rojo para advertir el riesgo al usuario.
