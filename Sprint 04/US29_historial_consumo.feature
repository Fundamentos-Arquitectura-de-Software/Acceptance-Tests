Feature: US29 - Historial de consumo
    Como usuario, quiero persistir y visualizar el historial de alimentos consumidos y desperdiciados
    para analizar mis hábitos de consumo.

    Scenario: Persistencia del consumo o desperdicio
        Given que el usuario consume o desperdicia un alimento del inventario
        When se actualiza el estado del alimento
        Then el sistema persiste la acción con su fecha en el historial de consumo.

    Scenario: Visualización del historial
        Given que el usuario cuenta con registros previos en su historial
        When el usuario accede a la sección de historial de consumo
        Then la app muestra los alimentos consumidos y desperdiciados para analizar sus hábitos.
