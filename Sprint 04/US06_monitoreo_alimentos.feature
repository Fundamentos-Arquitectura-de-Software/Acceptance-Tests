Feature: US06 - Monitoreo de alimentos (IoT)
    Como usuario doméstico, quiero que los datos del sensor pasen por el Edge API hacia el backend
    para visualizar en el frontend el estado real de mis alimentos.

    Scenario: Envío de datos desde el sensor hacia el frontend
        Given que el sensor captura mediciones de temperatura y humedad
        When el Edge API recibe los datos y los reenvía al backend
        Then el frontend muestra la información actualizada del alimento en tiempo real.

    Scenario: Pérdida de conexión con el sensor
        Given que el sensor deja de enviar datos al Edge API
        When el backend no recibe nuevas mediciones
        Then el frontend indica que la información del sensor no está disponible.
