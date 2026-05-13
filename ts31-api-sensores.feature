 Feature: TS31 - API para registro de datos de sensores

    Scenario: Registro exitoso de lectura de sensor
      Given el sistema recibe datos de un sensor IoT
      When se hace POST /api/monitoring con temperatura, humedad y etileno
      Then el servidor responde con 200 OK
      And la lectura queda almacenada en la base de datos

    Scenario: Consulta de ultima lectura de sensor
      Given existen lecturas de sensor registradas
      When se hace GET /api/monitoring/latest
      Then el servidor retorna la lectura mas reciente con sus valores
