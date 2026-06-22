Feature: TS31 - API para registro de sensores
    Como developer, necesito una API que reciba y almacene datos de sensores
    para mantener actualizado el estado de los alimentos.

    Scenario: Recepción exitosa
        Given que el sensor envía datos válidos
        When el API recibe el request
        Then el API responde con éxito
        And almacena los datos correctamente.
