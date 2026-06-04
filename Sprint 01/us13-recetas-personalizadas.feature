 Feature: US13 - Recetas personalizadas segun ingredientes

    Scenario: Usuario visualiza recetas disponibles
      Given el usuario ha iniciado sesion en FreshSense
      When accede a la seccion de recetas
      Then ve una lista de recetas obtenidas desde el backend
      And cada receta muestra nombre, descripcion y dificultad

    Scenario: Usuario abre el detalle de una receta
      Given el usuario esta en la seccion de recetas
      When hace clic en una receta
      Then se abre un modal con los ingredientes e instrucciones de preparacion
