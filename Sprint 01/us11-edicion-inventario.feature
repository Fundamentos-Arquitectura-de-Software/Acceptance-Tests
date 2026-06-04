 Feature: US11 - Edicion y eliminacion de inventario

    Scenario: Usuario edita un producto existente
      Given el usuario tiene al menos un producto en su inventario
      When selecciona el producto y modifica su cantidad
      Then el sistema actualiza el producto via PATCH /api/products/{id}
      And el inventario refleja el valor actualizado

    Scenario: Usuario descarta un producto
      Given el usuario tiene al menos un producto en su inventario
      When selecciona la opcion de descartar el producto
      Then el sistema elimina el producto via DELETE /api/products/{id}
      And el producto desaparece del inventario
