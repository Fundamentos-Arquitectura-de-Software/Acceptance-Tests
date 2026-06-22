Feature: US06 - Monitoreo de alimentos
    Como usuario doméstico, quiero que el sensor mida temperatura, humedad y etileno
    para conocer el estado real de mis alimentos y evitar desperdicios.

    Scenario: Registro exitoso de datos
        Given que el sensor está activo y funcionando correctamente
        When el sensor detecta variaciones en las mediciones
        Then la información se envía a la aplicación en tiempo real
        And la información es actualizada en el sistema correctamente.

    Scenario: Error de conexión
        Given que el sensor pierde conexión o hay un fallo en la transmisión
        When el sistema detecta la pérdida de señal
        Then la aplicación muestra un mensaje de error
        And sugiere al usuario intentar reconectar el sensor.
