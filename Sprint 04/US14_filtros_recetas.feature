Feature: US14 - Filtros de recetas
    Como usuario, quiero filtrar las recetas generadas por la IA por dificultad, tiempo y tipo de dieta
    para encontrar opciones adaptadas a mis preferencias.

    Scenario: Aplicación de filtros sobre recetas de la IA
        Given que el usuario selecciona filtros de dificultad, tiempo o tipo de dieta
        When el usuario solicita ver las recetas generadas por la IA
        Then la app muestra únicamente las recetas que cumplen con los filtros seleccionados.

    Scenario: Sin coincidencias
        Given que ninguna receta generada cumple con los filtros seleccionados
        When el usuario aplica los filtros
        Then la app muestra un mensaje indicando que no hay coincidencias.
