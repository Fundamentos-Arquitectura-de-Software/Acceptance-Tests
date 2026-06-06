Feature: US11 - Edición de inventario
    Como usuario, quiero editar manualmente mi inventario 
    para mantenerlo actualizado y corregir errores.

    Scenario: Edición exitosa
        Given que el usuario modifica la cantidad o la fecha de un alimento existente
        When el usuario guarda los cambios realizados
        Then la app actualiza el inventario correctamente con la nueva información.

    Scenario: Error en edición
        Given que el usuario ingresa datos inválidos en los campos de edición
        When el usuario intenta guardar los cambios
        Then la app no debe actualizar el inventario
        And debe mostrar un mensaje de error indicando el problema específico.