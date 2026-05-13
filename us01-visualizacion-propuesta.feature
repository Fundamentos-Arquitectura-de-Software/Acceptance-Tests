Feature: US01 - Visualizacion de la propuesta de FreshSense

    Scenario: Visitante entiende la propuesta de valor
      Given un visitante accede a la landing page de FreshSense
      When visualiza la seccion principal
      Then ve el mensaje principal con la propuesta de valor de la solucion
      And puede identificar claramente el beneficio del producto