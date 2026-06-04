Feature: US14 - Filtros de recetas

    Scenario: Usuario filtra recetas por dificultad
      Given el usuario esta en la seccion de recetas
      When selecciona el filtro "Easy"
      Then solo se muestran recetas con dificultad facil

    Scenario: Usuario filtra recetas por tipo de dieta
      Given el usuario esta en la seccion de recetas
      When selecciona el filtro "Vegetarian"
      Then solo se muestran recetas vegetarianas