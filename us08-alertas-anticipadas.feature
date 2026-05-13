 Feature: US08 - Alertas anticipadas por vencimiento

    Scenario: Se genera alerta cuando un producto esta proximo a vencer
      Given el usuario tiene un producto con fecha de vencimiento en menos de 3 dias
      When el sistema evalua el inventario del usuario
      Then se muestra una alerta de tipo "warning" en la seccion de alertas
      And la alerta contiene el nombre del producto y los dias restantes

    Scenario: Se genera alerta critica cuando el producto ya vencio
      Given el usuario tiene un producto con fecha de vencimiento pasada
      When el sistema evalua el inventario del usuario
      Then se muestra una alerta de tipo "critical"
