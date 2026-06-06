Feature: US07 - Visualización de inventario
    Como usuario, quiero ver en la app el estado de cada alimento 
    para identificar cuáles están en riesgo y gestionarlos mejor.

    Scenario: Vista con colores
        Given que el usuario accede al panel principal
        And abre la aplicación
        When la web carga la información del inventario
        Then debe mostrar el estado de los alimentos con colores diferenciados (verde, amarillo, rojo).

    Scenario: Detalle de alimento
        Given que el usuario selecciona un alimento específico de la lista
        When se muestra la pantalla de información detallada
        Then el usuario debe ver la fecha estimada de caducidad
        And debe ver las condiciones actuales de almacenamiento del alimento.