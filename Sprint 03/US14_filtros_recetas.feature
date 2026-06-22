Feature: US14 - Filtros de recetas
    Como usuario, quiero filtrar recetas por dificultad, tiempo o dieta
    para encontrar opciones adaptadas a mi vida.

    Scenario: Aplicación de filtro
        Given que el usuario selecciona un filtro (dificultad, tiempo o dieta)
        When el usuario solicita ver las recetas filtradas
        Then la app muestra sólo las recetas que cumplen con el filtro seleccionado.

    Scenario: Sin coincidencias
        Given que no existen recetas bajo el filtro seleccionado
        When el usuario aplica el filtro
        Then la app muestra el mensaje "no se encontraron recetas".
