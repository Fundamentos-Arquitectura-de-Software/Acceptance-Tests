Feature: US29 - Historial de consumo
    Como usuario, quiero consultar un historial 
    para analizar hábitos y ajustar compras futuras.

    Scenario: Registro de consumo o descarte
        Given que el usuario consume o descarta un alimento del inventario
        When se actualiza el estado del inventario para ese alimento
        Then el sistema registra automáticamente la fecha, hora y la acción realizada en el historial.

    Scenario: Visualización del historial
        Given que el usuario cuenta con datos previamente registrados en su historial
        When el usuario accede a la sección de historial de consumo
        Then la app muestra un listado detallado y gráficas estadísticas ordenadas cronológicamente por fecha.

    Scenario: Filtrar y exportar datos
        Given que el usuario aplica filtros específicos en su vista de historial
        When el usuario solicita la exportación de los datos filtrados
        Then el sistema genera y permite descargar la información en un formato común como CSV o Excel.