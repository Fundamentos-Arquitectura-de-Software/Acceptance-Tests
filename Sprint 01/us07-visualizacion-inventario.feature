 Feature: US07 - Visualizacion de inventario con estado

    Scenario: Usuario visualiza el estado de sus productos
      Given el usuario ha iniciado sesion en FreshSense
      When accede a la seccion de inventario
      Then ve una lista de sus productos con nombre, cantidad y fecha de vencimiento
      And cada producto muestra un indicador de estado (fresco, proximo a vencer, vencido)