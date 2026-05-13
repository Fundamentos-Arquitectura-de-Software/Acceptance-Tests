 Feature: US27 - Retos y competencias

    Scenario: Usuario se inscribe en un reto
      Given el usuario esta en la seccion de retos
      When hace clic en "Unirse" en un reto disponible
      Then el sistema llama POST /api/challenges/{id}/enroll
      And el boton cambia a "Salir"

    Scenario: Usuario abandona un reto
      Given el usuario esta inscrito en un reto
      When hace clic en "Salir"
      Then el sistema llama DELETE /api/challenges/{id}/enroll
      And el reto vuelve a mostrarse como disponible

    Scenario: Usuario consulta el leaderboard de un reto
      Given el usuario esta en la seccion de retos
      When selecciona un reto
      Then ve la tabla de ranking con los participantes inscritos
