Feature: US11 - Edición de inventario
    Como usuario, quiero editar manualmente mi inventario
    para mantenerlo actualizado y corregir errores.

    Scenario: Edición exitosa
        Given que el usuario modifica la cantidad o la fecha de un alimento
        When el usuario guarda los cambios realizados
        Then la app actualiza el inventario correctamente.

    Scenario: Error en edición
        Given que el usuario ingresa datos inválidos
        When el usuario intenta guardar los cambios
        Then la app muestra un mensaje de error indicando el problema.
