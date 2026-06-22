Feature: US10 - Registro automático de alimentos
    Como usuario, quiero registrar mis alimentos mediante voz o escáner
    para ahorrar tiempo y facilitar el ingreso.

    Scenario: Registro por voz
        Given que el usuario proporciona un comando de voz con los productos comprados
        When la app procesa el comando de voz
        Then la app registra los productos mencionados en el inventario.

    Scenario: Registro por escaneo
        Given que el usuario escanea un código válido
        When la app procesa el escaneo
        Then la app registra automáticamente el producto en el inventario.
