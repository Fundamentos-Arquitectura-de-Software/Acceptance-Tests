Feature: TS31 - API para registro de sensores
    Como developer, necesito integrar el dispositivo IoT, el código embebido y el Edge API con el backend
    para registrar los datos de los sensores sin pérdida de información.

    Scenario: Captura de datos del microcontrolador
        Given que el dispositivo IoT está armado y encendido dentro del refrigerador
        When el microcontrolador procesa las lecturas de temperatura y humedad
        Then el código embebido envía las mediciones al Edge API.

    Scenario: Persistencia local en el Edge API
        Given que el Edge API recibe las mediciones del microcontrolador
        When el Edge API compara los valores contra los umbrales configurados
        Then el Edge API almacena los datos en la base de datos SQLite.

    Scenario: Reenvío al backend sin pérdida de datos
        Given que el Edge API cuenta con datos almacenados localmente
        When el Edge API establece conexión con el backend
        Then el backend recibe todas las mediciones registradas sin pérdida de información.

    Scenario: Aplicación de umbrales por categoría de alimento
        Given que un alimento pertenece a una categoría específica (fruta, verdura, etc.)
        When el Edge API evalúa las mediciones del sensor
        Then aplica los umbrales de temperatura y humedad correspondientes a esa categoría.
