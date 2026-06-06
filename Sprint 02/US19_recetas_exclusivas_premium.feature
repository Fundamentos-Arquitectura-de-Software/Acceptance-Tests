Feature: US19 - Recetas exclusivas premium
    Como usuario premium, quiero recetas avanzadas 
    para aprovechar ingredientes y diversidad.

    Scenario: Acceso permitido a recetas
        Given que el usuario tiene un plan premium activo en su cuenta
        When accede a la sección de recetas exclusivas
        Then el sistema permite visualizar y interactuar con las recetas avanzadas.

    Scenario: Acceso denegado
        Given que el usuario no tiene un plan premium activo
        When intenta acceder a la sección de recetas exclusivas
        Then el sistema deniega el acceso a la sección
        And sugiere al usuario adquirir el plan premium.